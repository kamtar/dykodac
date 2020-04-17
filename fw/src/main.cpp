
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

volatile uint16_t last_usb_ms[128];
volatile uint32_t ss = 0;
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
extern volatile uint16_t cache[4048];
extern volatile uint16_t uindex;
extern volatile uint16_t incnt;
extern volatile uint16_t outcnt;
extern volatile uint16_t f_size;
extern volatile uint32_t n_frames;

int start = 0;
uint32_t last_samples = 0;
uint64_t samples = 0;
uint32_t feedback = 48 << 14;

constexpr uint32_t feedback_buff_target = 48*8;
uint32_t lastcnt = 0;
void USB_AudioFeedbackDataUpdate()
{
    static int32_t audioSpeakerUsedDiff = 0x0, audioSpeakerDiffThres = 0x0;
    static uint32_t feedbackValue = 0x0, originFeedbackValue = 0x0, audioSpeakerUsedSpace = 0x0,
                    audioSpeakerLastUsedSpace = 0x0;

    uint32_t s = samples;

    start++;
    if (start == 2)
    {
        originFeedbackValue =
            ((s - last_samples) << 4) /
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
    s = samples/2;
}
int delta_num = 0;
int last_tr = 0;
int offg = 0;

void do_feedback()
{

	uint32_t step = 10;

		uint16_t buff_size = fifo_space_occupied(incnt,outcnt,f_size);
		if(((Dmac *)DMAC)->ACTIVE.bit.ID == 1)
			buff_size = buff_size + (last_tr-(uint16_t)((Dmac *)DMAC)->ACTIVE.bit.BTCNT);

		if(abs((int)(buff_size-feedback_buff_target)) > 500 )
			step = 50;
		else if(abs((int)(buff_size-feedback_buff_target)) > 100 )
			step = 20;
		else if (abs((int)(buff_size-feedback_buff_target)) > 30 )
			step = 10;
		else
			step = 1;


		if ((buff_size < (feedback_buff_target -96)) && (delta_num < 5)) {

								offg += 10;
								delta_num++;
								//old_gap = gap;
							}
							else if ( (buff_size > ((feedback_buff_target) + 96)) && (delta_num > -5)) {
								offg -= 10;
								delta_num--;
									//old_gap = gap;
								}


	return;
}
extern volatile uint32_t dotherest;
extern volatile uint32_t offset ;

uint32_t blink = 0;
static struct timer_task TIMER_0_task1;
static uint32_t ms_tick = 0;
static void TIMER_0_task1_cb(const struct timer_task *const timer_task)
{
	ms_tick++;
	if(ss < 1500)
		ss++;

	if(blink>0)
		blink--;
	EVSYS->SWEVT.bit.CHANNEL0 = 1;
}
constexpr int dma_size = 64;
uint32_t dma_buffer[48];
int ii = dma_size;
uint8_t bff[2];
#include <hpl_dma.h>

struct _dma_resource *i2ss_dma;
struct _dma_resource *i2s_dma;
bool fail = true;

uint32_t last_jump=0;
bool dma_done = true;
uint32_t num = 0;
bool do_feed = false;
void I2S_Handler(void)
{
	((I2s *)I2S_0_0.dev.prvt)->INTFLAG.bit.TXRDY0 = 1;
	samples++;
}



void transfer_done(struct _dma_resource *resource)
{

	if(dotherest!=0)
	{
		_dma_set_destination_address(0,  (const void *) (&cache[0]));
		_dma_set_source_address(0, (const void*)(offset));
		_dma_set_data_amount(0, (dotherest));
		_dma_enable_transaction(0, true);
		dotherest=0;
	}
	hri_dmac_clear_CHINTFLAG_TCMPL_bit(DMAC, 0);

}
extern volatile uint32_t in;
uint32_t last = 0;
uint32_t lastp = 0;
volatile bool check_later_dma = false;
void i2stransfer_done(struct _dma_resource *resource)
{
	__disable_irq();
	hri_dmac_clear_CHINTFLAG_TERR_bit(DMAC, 1);

	uint16_t buff_size = fifo_space_occupied(incnt,outcnt,f_size);
	bool t = false;
	if(buff_size == 0)
	{

		check_later_dma = true;
		hri_dmac_clear_CHINTFLAG_TCMPL_bit(DMAC, 1);
		__enable_irq();
		return;
	}

	if((outcnt + buff_size) >= f_size)
	{
		buff_size = (f_size - outcnt);
		t = true;
	}

		_dma_set_destination_address(1,  (const void *) (((uint32_t)&((I2s *)I2S_0_0.dev.prvt)->TXDATA.reg)+2));

		_dma_set_source_address(1, (const void*)(&cache[outcnt]));
		_dma_set_data_amount(1, buff_size);

		_dma_enable_transaction(1, false);
		last_tr = buff_size;
		if(t)
			outcnt = 0;
		else
			outcnt += buff_size;

		in -= buff_size;
		hri_dmac_clear_CHINTFLAG_TCMPL_bit(DMAC, 1);
		__enable_irq();

}

void EIC_6_Handler()
{
	__asm__("bkpt");
}
extern float avg;
void start_counter();
int main(void)
{
	/* Initializes MCU, drivers and middleware */
	system_init();

	 _dma_get_channel_resource(&i2s_dma, 0);
	 _dma_get_channel_resource(&i2ss_dma, 1);
	 i2s_dma->dma_cb.transfer_done = transfer_done;
	 i2ss_dma->dma_cb.transfer_done = i2stransfer_done;
	 i2ss_dma->dma_cb.error = i2stransfer_done;

	 //NVIC_EnableIRQ(I2S_IRQn);
	// NVIC_SetPriority(I2S_IRQn, NVIC_EncodePriority (2, 1, 1));
	 NVIC_DisableIRQ(DMAC_0_IRQn);
	 NVIC_DisableIRQ(DMAC_1_IRQn);
		//NVIC_SetPriority(DMAC_0_IRQn, NVIC_EncodePriority (2, 2, 2));
	//NVIC_SetPriority(DMAC_1_IRQn, NVIC_EncodePriority (1, 1, 0));
	 NVIC_EnableIRQ(DMAC_0_IRQn);
	 NVIC_EnableIRQ(DMAC_1_IRQn);

	for(uint8_t i=0; i<(sizeof(output_pins)/sizeof(output_pins[0])); i++)
		output_pins[i]->init();

	cs4398_cs.set();
	xosc_48_pin.set();

	delay_ms(10);

	I2S_0_init();
	delay_ms(200);
	cs4398_rst.clear();
	delay_ms(200);
	cs4398_rst.set();
	delay_ms(500);
	led.set();


	usb.init_start();

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

	start_counter();
	/*event_system_init();
	event_system_enable_generator(EVSYS_ID_GEN_EIC_EXTINT_6, 0);
	event_system_enable_user(EVSYS_ID_USER_TC5_EVU,0);
	EVSYS->Channel[0].CHANNEL.bit.PATH = 0x02;*/



	while(fifo_space_occupied(incnt,outcnt,f_size)==0);


	((I2s *)I2S_0_0.dev.prvt)->INTENSET.bit.TXRDY0 = 1;
	((I2s *)I2S_0_0.dev.prvt)->TXCTRL.bit.DATASIZE = 0x01;
	((I2s *)I2S_0_0.dev.prvt)->TXCTRL.bit.TXSAME = 1;
	((I2s *)I2S_0_0.dev.prvt)->CTRLA.reg |= I2S_CTRLA_TXEN;

	DMAC->DBGCTRL.bit.DBGRUN = 1;
	 _dma_set_irq_state(0, DMA_TRANSFER_COMPLETE_CB, true);
	 _dma_set_irq_state(1, DMA_TRANSFER_COMPLETE_CB, true);
	 _dma_set_irq_state(1, DMA_TRANSFER_ERROR_CB, true);
	//_dma_set_source_address(0, (const void *)dma_buffer);
	//_dma_set_destination_address(0,  (const void *) &((I2s *)I2S_0_0.dev.prvt)->TXDATA.reg);
	//_dma_set_data_amount(0, (dma_size));

	_dma_set_source_address(1, (const void*)(i));
	_dma_set_destination_address(1,  (const void *) &((I2s *)I2S_0_0.dev.prvt)->TXDATA.reg);
	_dma_set_data_amount(1, (1));
	_dma_enable_transaction(1, false);
	check_later_dma = true;
	while (1) {

		uint16_t buff_size = fifo_space_occupied(incnt,outcnt,f_size);
		if((check_later_dma && buff_size > 0) )
		{

			blink=100;
			check_later_dma = false;
			i2stransfer_done(nullptr);


		}
		if(((I2s *)I2S_0_0.dev.prvt)->INTFLAG.bit.TXUR0){
			blink=10;
			((I2s *)I2S_0_0.dev.prvt)->INTFLAG.bit.TXUR0=1;
		}
		if(blink==0)
			led.set();
		else
			led.clear();

		if(ms_tick > 7)
			{

			do_feedback();
				uint64_t f = 0;
				for (int c=0;c<128;c++)
					f += last_usb_ms[c];
				f = f/128;
				f = (125*f)/64;
				f += offg;
				uint16_t whole_number = f/1000;
				uint16_t part = f%1000;


				int e = 20;
				for(e=15;e>=0;e--)
					if(((1<<e) & part) != 0)
						break;

				uint32_t af = (((uint32_t)whole_number)<<14)|(((uint32_t)part)<<4);
				uint32_t arr = 0;
				uint8_t *arr_buff = (uint8_t*)&arr;
				AUDIO_UPDATE_FEEDBACK_DATA(arr_buff,af);
				usbdc_xfer(0x83,arr_buff, 3, false);
				ms_tick = 0;
			}

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



	}
}

void start_counter()
{

	gpio_set_pin_direction(PB11, GPIO_DIRECTION_IN);
	gpio_set_pin_level(PB11,  false);
	gpio_set_pin_pull_mode(PB11,GPIO_PULL_OFF);
	gpio_set_pin_function(PB11, PINMUX_PB11M_GCLK_IO5);
/*
	gpio_set_pin_direction(PA22, GPIO_DIRECTION_IN);
	gpio_set_pin_level(PA22,  false);
	gpio_set_pin_pull_mode(PA22,GPIO_PULL_UP);
	gpio_set_pin_function(PA22, PINMUX_PA22A_EIC_EXTINT6);


	hri_mclk_set_APBAMASK_EIC_bit(MCLK);
	hri_gclk_write_PCHCTRL_reg(GCLK, EIC_GCLK_ID, 2 | (1 << GCLK_PCHCTRL_CHEN_Pos));

	 EIC->EVCTRL.reg |= 1<<6;
	  EIC->CONFIG[0].reg |= EIC_CONFIG_SENSE6_HIGH;
	  EIC->ASYNCH.bit.ASYNCH = 1 <<6;
	  EIC->INTENSET.bit.EXTINT = 1 <<6;
	  EIC->CTRLA.bit.ENABLE = 1;
	  while (EIC->SYNCBUSY.bit.ENABLE);
*/
		// CONFIGURE CLOCK GENERATOR 5
		GCLK->GENCTRL[5].bit.SRC = 0x02; // use PLL0 as the input
		GCLK->GENCTRL[5].bit.DIV = 1; // divisor 1 for the input clock from the PLL
		GCLK->GENCTRL[5].bit.GENEN = 1;



	hri_mclk_set_APBCMASK_TC5_bit(MCLK);
	hri_gclk_write_PCHCTRL_reg(GCLK, TC5_GCLK_ID, 5 | (1 << GCLK_PCHCTRL_CHEN_Pos));

		TC5->COUNT16.CTRLA.bit.SWRST = 0;
		  while (TC5->COUNT16.SYNCBUSY.bit.SWRST);
		  TC5->COUNT16.CTRLA.bit.COPEN1 = 0;
		  //TC5->COUNT16.CTRLA.bit.MODE = 2;
		  TC5->COUNT16.CTRLA.bit.CAPTEN0 = 0;

		  TC5->COUNT16.EVCTRL.bit.EVACT = 0x01;
		  TC5->COUNT16.EVCTRL.bit.TCEI = 0;
		TC5->COUNT16.WAVE.bit.WAVEGEN = 0;
		TC5->COUNT16.CTRLA.bit.ENABLE = 1;


	  while (TC5->COUNT16.SYNCBUSY.bit.ENABLE);

}
