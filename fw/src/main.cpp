
#include "driver_init.h"
#include <OutputPin.hpp>

#include "song.h"

OutputPin xosc_22_pin(GPIO_PORTA, 13);
OutputPin cs4398_rst(GPIO_PORTA, 12);
OutputPin cs4398_cs(GPIO_PORTB, 15);

OutputPin cs4398_m0(GPIO_PORTB, 14);
OutputPin cs4398_m2(GPIO_PORTB, 13);
OutputPin cs4398_m3(GPIO_PORTB, 12);



OutputPin led(GPIO_PORTB, 7);

IOutputPin* output_pins[] {
	&xosc_22_pin,
	&led,
	&cs4398_rst,
	&cs4398_cs,
	&cs4398_m0,
	&cs4398_m2,
	&cs4398_m3
};
int main(void)
{
	/* Initializes MCU, drivers and middleware */
	system_init();

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

	volatile uint8_t test = 0;
	struct io_descriptor *io;
	usart_sync_get_io_descriptor(&USART_0, &io);
	usart_sync_enable(&USART_0);

	io_write(io, (uint8_t *)"Hello World!", 12);
	((I2s *)I2S_0_0.dev.prvt)->CTRLA.reg |= I2S_CTRLA_TXEN;
	/* Replace with your application code */
	while (1) {

		for(int i=0; i<((sizeof(song)/4)-1); )
		{
			while(hri_i2s_get_INTFLAG_TXRDY0_bit(I2S_0_0.dev.prvt) == false);
			hri_i2s_write_TXDATA_reg(I2S_0_0.dev.prvt, (song[i++])<<(32-24));
			while(hri_i2s_get_INTFLAG_TXRDY0_bit(I2S_0_0.dev.prvt) == false);
			hri_i2s_write_TXDATA_reg(I2S_0_0.dev.prvt, (song[i++])<<(32-24));
		}

	}
}
