/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */
#ifndef DRIVER_INIT_INCLUDED
#define DRIVER_INIT_INCLUDED

#include "atmel_start_pins.h"

#ifdef __cplusplus
extern "C" {
#endif

#include <hal_atomic.h>
#include <hal_delay.h>
#include <hal_gpio.h>
#include <hal_init.h>
#include <hal_io.h>
#include <hal_sleep.h>

#include <hal_evsys.h>

#include <hal_i2s_controller_sync.h>

#include <hal_flash.h>

#include <hal_timer.h>



#include <hal_i2c_m_sync.h>
#include <hal_spi_m_sync.h>

#include <hal_delay.h>

#include "hal_usb_device.h"

#include <hal_wdt.h>

extern struct i2s_c_sync_desc I2S_0_0;

extern struct flash_descriptor FLASH_0;
extern struct timer_descriptor TIMER_0;

extern struct usart_sync_descriptor USART_0;

extern struct i2c_m_sync_desc       I2C_0;
extern struct spi_m_sync_descriptor SPI_0;

extern struct wdt_descriptor WDT_0;

void I2S_0_PORT_init(void);
void I2S_0_CLOCK_init(void);
void I2S_0_init(void);

void FLASH_0_init(void);
void FLASH_0_CLOCK_init(void);

void USART_0_PORT_init(void);
void USART_0_CLOCK_init(void);
void USART_0_init(void);

void I2C_0_CLOCK_init(void);
void I2C_0_init(void);
void I2C_0_PORT_init(void);

void SPI_0_PORT_init(void);
void SPI_0_CLOCK_init(void);
void SPI_0_init(void);

void delay_driver_init(void);

void USB_0_CLOCK_init(void);
void USB_0_init(void);

void WDT_0_CLOCK_init(void);
void WDT_0_init(void);

/**
 * \brief Perform system initialization, initialize pins and clocks for
 * peripherals
 */
void system_init(void);

#ifdef __cplusplus
}
#endif
#endif // DRIVER_INIT_INCLUDED
