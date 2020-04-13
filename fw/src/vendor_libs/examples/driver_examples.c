/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_examples.h"
#include "driver_init.h"
#include "utils.h"
#include <hpl_dmac_config.h>
#include <hpl_dma.h>

// To use I2S example, enable DMA and uncomment below code

#if CONF_DMAC_ENABLE == 0
#warning "DMAC system driver needs to be enabled to use I2S driver"
#endif

void I2S_0_example(void)
{
uint8_t i2sc_dma_channel_number = 0;

    uint32_t i2sc_data[16] = {0xAAAAAAAA, 0x55555555, 0x12341234, 0x56785678,
        0xAAAAAAAB, 0x55555556, 0x12341235, 0x56785679,
        0xAAAAAAAC, 0x55555557, 0x12341236, 0x5678567A,
        0xAAAAAAAD, 0x55555558, 0x12341237, 0x5678567B};

     // Configure the DMAC source address, destination address,
     // next descriptor address, data count and Enable the DMAC Channel
    _dma_set_source_address(i2sc_dma_channel_number, (const void *)i2sc_data);
    _dma_set_destination_address(i2sc_dma_channel_number, \
    (const void *) &I2S->TXDATA.reg);
    _dma_set_data_amount(i2sc_dma_channel_number, ((sizeof i2sc_data) / 4));
    _dma_enable_transaction(i2sc_dma_channel_number, false);

    while(1){
    }

}


static uint8_t src_data[512];
static uint8_t chk_data[512];
/**
 * Example of using FLASH_0 to read and write Flash main array.
 */
void FLASH_0_example(void)
{
	uint32_t page_size;
	uint16_t i;

	/* Init source data */
	page_size = flash_get_page_size(&FLASH_0);

	for (i = 0; i < page_size; i++) {
		src_data[i] = i;
	}

	/* Write data to flash */
	flash_write(&FLASH_0, 0x3200, src_data, page_size);

	/* Read data from flash */
	flash_read(&FLASH_0, 0x3200, chk_data, page_size);
}

static struct timer_task TIMER_0_task1, TIMER_0_task2;
/**
 * Example of using TIMER_0.
 */
static void TIMER_0_task1_cb(const struct timer_task *const timer_task)
{
}

static void TIMER_0_task2_cb(const struct timer_task *const timer_task)
{
}

void TIMER_0_example(void)
{
	TIMER_0_task1.interval = 100;
	TIMER_0_task1.cb       = TIMER_0_task1_cb;
	TIMER_0_task1.mode     = TIMER_TASK_REPEAT;
	TIMER_0_task2.interval = 200;
	TIMER_0_task2.cb       = TIMER_0_task2_cb;
	TIMER_0_task2.mode     = TIMER_TASK_REPEAT;

	timer_add_task(&TIMER_0, &TIMER_0_task1);
	timer_add_task(&TIMER_0, &TIMER_0_task2);
	timer_start(&TIMER_0);
}

void I2C_0_example(void)
{
	struct io_descriptor *I2C_0_io;

	i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
	i2c_m_sync_enable(&I2C_0);
	i2c_m_sync_set_slaveaddr(&I2C_0, 0x12, I2C_M_SEVEN);
	io_write(I2C_0_io, (uint8_t *)"Hello World!", 12);
}

/**
 * Example of using SPI_0 to write "Hello World" using the IO abstraction.
 */
static uint8_t example_SPI_0[12] = "Hello World!";

void SPI_0_example(void)
{
	struct io_descriptor *io;
	spi_m_sync_get_io_descriptor(&SPI_0, &io);

	spi_m_sync_enable(&SPI_0);
	io_write(io, example_SPI_0, 12);
}

void delay_example(void)
{
	delay_ms(5000);
}

/**
 * Example of using WDT_0.
 */
void WDT_0_example(void)
{
	uint32_t clk_rate;
	uint16_t timeout_period;

	clk_rate       = 1000;
	timeout_period = 4096;
	wdt_set_timeout_period(&WDT_0, clk_rate, timeout_period);
	wdt_enable(&WDT_0);
}
