
#include "driver_init.h"
#include <OutputPin.hpp>
#include <UAC1_USB.hpp>
#include <stdlib.h>
#include "fifo.h"
OutputPin xosc_22_pin(GPIO_PORTA, 13);
OutputPin xosc_48_pin(GPIO_PORTA, 14);
OutputPin cs4398_rst(GPIO_PORTA, 12);
OutputPin cs4398_cs(GPIO_PORTB, 15);

OutputPin cs4398_m0(GPIO_PORTB, 14);
OutputPin cs4398_m2(GPIO_PORTB, 13);
OutputPin cs4398_m3(GPIO_PORTB, 12);

UAC1_USB usb;

OutputPin led(GPIO_PORTB, 7);

IOutputPin* output_pins[] {
	&xosc_22_pin,
	&xosc_48_pin,
	&led,
	&cs4398_rst,
	&cs4398_cs,
	&cs4398_m0,
	&cs4398_m2,
	&cs4398_m3
};
#define AUDIO_UPDATE_FEEDBACK_DATA(m, n) \
    {                                    \
        m[0] = (n & 0xFFU);              \
        m[1] = ((n >> 8U) & 0xFFU);      \
        m[2] = ((n >> 16U) & 0xFFU);     \
    }
extern volatile uint8_t cache[8048];
extern volatile uint16_t uindex;
extern volatile uint16_t incnt;
extern volatile uint16_t outcnt;
extern volatile uint16_t f_size;
extern volatile uint32_t n_frames;

int start = 0;
uint32_t last_samples = 0;
uint16_t samples = 0;
uint32_t feedback = 0;

constexpr uint32_t feedback_buff_target = 512;
uint32_t lastcnt = 0;
void USB_AudioFeedbackDataUpdate()
{
    static int32_t audioSpeakerUsedDiff = 0x0, audioSpeakerDiffThres = 0x0;
    static uint32_t feedbackValue = 0x0, originFeedbackValue = 0x0, audioSpeakerUsedSpace = 0x0,
                    audioSpeakerLastUsedSpace = 0x0;



    start++;
    if (start == 2)
    {
        originFeedbackValue =
            ((samples - last_samples) << 4) /
            (AUDIO_FORMAT_CHANNELS * AUDIO_FORMAT_SIZE);
        feedback = originFeedbackValue;
        audioSpeakerUsedSpace =  fifo_space_occupied(incnt,outcnt,f_size);
        audioSpeakerLastUsedSpace = audioSpeakerLastUsedSpace;
    }
    else if (start > 2)
    {
        audioSpeakerUsedSpace = fifo_space_occupied(incnt,outcnt,f_size);
        audioSpeakerUsedDiff += (audioSpeakerUsedSpace - audioSpeakerLastUsedSpace);
        audioSpeakerLastUsedSpace = audioSpeakerUsedSpace;

        if ((audioSpeakerUsedDiff > -AUDIO_SAMPLING_RATE_KHZ) && (audioSpeakerUsedDiff < AUDIO_SAMPLING_RATE_KHZ))
        {
            audioSpeakerDiffThres = 4 * AUDIO_SAMPLING_RATE_KHZ;
        }
        if (audioSpeakerUsedDiff <= -audioSpeakerDiffThres)
        {
            audioSpeakerDiffThres += 4 * AUDIO_SAMPLING_RATE_KHZ;
            feedbackValue += (AUDIO_SAMPLING_RATE_KHZ / AUDIO_SAMPLING_RATE_16KHZ) * (1);
        }
        if (audioSpeakerUsedDiff >= audioSpeakerDiffThres)
        {
            audioSpeakerDiffThres += 4 * AUDIO_SAMPLING_RATE_KHZ;
            feedbackValue -= (AUDIO_SAMPLING_RATE_KHZ / AUDIO_SAMPLING_RATE_16KHZ) * (1);
        }
    }
    else
    {
    }
    last_samples = samples/2;
}

void do_feedback()
{
	uint32_t step = 10;
	if(start < 2)
	{
		 feedback = 0x000FFF;//((samples-last_samples)<<4)/(AUDIO_FORMAT_CHANNELS * AUDIO_FORMAT_SIZE);
		last_samples = samples/2;
		samples = 0;
		start++;
	}else{
		uint16_t buff_size = fifo_space_occupied(incnt,outcnt,f_size);

		if(abs((int)(buff_size-feedback_buff_target)) > 40 )
			step = 500;
		else if (abs((int)(buff_size-feedback_buff_target)) > 20 )
			step = 5;
		else
			step = 1;

		if(abs((int)(buff_size-feedback_buff_target)) > 0){
		if(buff_size > (feedback_buff_target)){
			if(feedback>step)
				feedback -= step;
		}
		else if(buff_size < (feedback_buff_target))
		{
			if(feedback<(0xFFFFFF-step))
				feedback += step;
		}}
	}

	return;
}
extern volatile uint32_t dotherest;
extern volatile uint32_t offset ;

static struct timer_task TIMER_0_task1;
static uint32_t ms_tick = 0;
static void TIMER_0_task1_cb(const struct timer_task *const timer_task)
{
	ms_tick++;
}
constexpr int dma_size = 64;
uint32_t dma_buffer[48];
int ii = dma_size;
uint8_t bff[2];
#include <hpl_dma.h>

struct _dma_resource *i2s_dma;
bool fail = true;

uint32_t last_jump=0;
bool dma_done = true;
void I2S_Handler(void)
{
	led.set();


	ii++;


	volatile int16_t dt;

	if(!fifo_empty(incnt,outcnt)){
			 fifo_out(bff[0],cache,outcnt,f_size);
			 fifo_out(bff[1],cache,outcnt,f_size);
			 dt = (int16_t)((((int16_t)bff[1])<<8)|(int16_t)bff[0])/4;
	}
	else
		dt = 0;


	hri_i2s_write_TXDATA_reg(I2S_0_0.dev.prvt, (((uint32_t)dt)<<16));

	led.clear();
	((I2s *)I2S_0_0.dev.prvt)->INTFLAG.bit.TXRDY0 = 1;
	//samples++;

}



void transfer_done(struct _dma_resource *resource)
{

	if(dotherest!=0)
	{
		_dma_set_destination_address(0,  (const void *) (cache+dotherest));
		_dma_set_source_address(0, (const void*)(offset));
		_dma_set_data_amount(0, (dotherest)/4);
		_dma_enable_transaction(0, true);
		dotherest=0;
	}

}

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	system_init();

	 _dma_get_channel_resource(&i2s_dma, 0);
	 i2s_dma->dma_cb.transfer_done = transfer_done;
	 NVIC_SetPriority(I2S_IRQn, NVIC_EncodePriority (2, 1, 1));
	 NVIC_EnableIRQ(I2S_IRQn);

	for(uint8_t i=0; i<(sizeof(output_pins)/sizeof(output_pins[0])); i++)
		output_pins[i]->init();

	cs4398_cs.set();
	xosc_22_pin.set();

	delay_ms(10);

	I2S_0_init();
	delay_ms(200);
	cs4398_rst.clear();
	delay_ms(200);
	cs4398_rst.set();
	delay_ms(500);
	led.set();


	usb.init_start();
	int ss = 0;
	//((I2s *)I2S_0_0.dev.prvt)->CLKCTRL[0].bit.MCKEN = 0;
	uint32_t time = 0;
	((I2s *)I2S_0_0.dev.prvt)->CTRLA.reg |= I2S_CTRLA_TXEN;
	/* Replace with your application code */

	TIMER_0_task1.interval = 1;
	TIMER_0_task1.cb       = TIMER_0_task1_cb;
	TIMER_0_task1.mode     = TIMER_TASK_REPEAT;

	timer_add_task(&TIMER_0, &TIMER_0_task1);
	timer_start(&TIMER_0);

	int i = 0;

	((I2s *)I2S_0_0.dev.prvt)->INTENSET.bit.TXRDY0 = 1;
	((I2s *)I2S_0_0.dev.prvt)->TXCTRL.bit.DATASIZE = 0x04;
	((I2s *)I2S_0_0.dev.prvt)->CTRLA.reg |= I2S_CTRLA_TXEN;


	 _dma_set_irq_state(0, DMA_TRANSFER_COMPLETE_CB, true);
	//_dma_set_source_address(0, (const void *)dma_buffer);
	_dma_set_destination_address(0,  (const void *) &((I2s *)I2S_0_0.dev.prvt)->TXDATA.reg);
	_dma_set_data_amount(0, (dma_size));




	while (1) {

	/*	if(fifo_space_occupied(incnt,outcnt,f_size)>(2*dma_size))
		{
			if((outcnt+dma_size) > f_size){
				outcnt=0;
				_dma_set_source_address(0, (const void *)(cache+outcnt));
								_dma_set_destination_address(0,  (const void *) &((I2s *)I2S_0_0.dev.prvt)->TXDATA.reg);
								_dma_set_data_amount(0, ((outcnt+dma_size)-f_size));
								_dma_enable_transaction(0, false);

			}else{
				outcnt+=dma_size;
				_dma_set_source_address(0, (const void *)(cache+outcnt));
				_dma_set_destination_address(0,  (const void *) &((I2s *)I2S_0_0.dev.prvt)->TXDATA.reg);
				_dma_set_data_amount(0, (dma_size));
				_dma_enable_transaction(0, false);

			}

		}*/

		if(ms_tick > 20){


			do_feedback();
						uint32_t arr = 0;
						uint8_t *arr_buff = (uint8_t*)&arr;
						AUDIO_UPDATE_FEEDBACK_DATA(arr_buff,feedback);
						//arr_buff[0] = 0xAA;arr_buff[1] = 0xEE;arr_buff[2] = 0xAA;
						usbdc_xfer(0x83,arr_buff, 3, false);ms_tick=0;}


			ss++;

	}
}
