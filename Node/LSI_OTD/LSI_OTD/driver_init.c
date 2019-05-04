/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <hal_init.h>
#include <hpl_pmc.h>
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hpl_spi_base.h>
#include <hpl_usart_base.h>

struct spi_m_sync_descriptor SPI_0;

struct i2c_m_sync_desc I2C_AT24MAC;

struct usart_sync_descriptor TARGET_IO;

struct mac_async_descriptor MACIF;

void EXTERNAL_IRQ_0_PC_init(void)
{

	// Set pin direction to input
	gpio_set_pin_direction(TDC_TRIG, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(TDC_TRIG,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_DOWN);

	gpio_set_pin_function(TDC_TRIG, GPIO_PIN_FUNCTION_OFF);
}

void EXTERNAL_IRQ_1_PD_init(void)
{

	// Set pin direction to input
	gpio_set_pin_direction(TDC_LPBK, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(TDC_LPBK,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_DOWN);

	gpio_set_pin_function(TDC_LPBK, GPIO_PIN_FUNCTION_OFF);

	// Set pin direction to input
	gpio_set_pin_direction(TDC_INT, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(TDC_INT,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_UP);

	gpio_set_pin_function(TDC_INT, GPIO_PIN_FUNCTION_OFF);
}

void SPI_0_PORT_init(void)
{

	gpio_set_pin_function(SPI0_MISO, MUX_PD20B_SPI0_MISO);

	gpio_set_pin_function(SPI0_MOSI, MUX_PD21B_SPI0_MOSI);

	gpio_set_pin_function(SPI0_SCK, MUX_PD22B_SPI0_SPCK);
}

void SPI_0_CLOCK_init(void)
{
	_pmc_enable_periph_clock(ID_SPI0);
}

void SPI_0_init(void)
{
	SPI_0_CLOCK_init();
	spi_m_sync_set_func_ptr(&SPI_0, _spi_get_spi_m_sync());
	spi_m_sync_init(&SPI_0, SPI0);
	SPI_0_PORT_init();
}

void I2C_AT24MAC_PORT_init(void)
{

	gpio_set_pin_function(I2C0_SCL, MUX_PA4A_TWIHS0_TWCK0);

	gpio_set_pin_function(I2C0_SDA, MUX_PA3A_TWIHS0_TWD0);
}

void I2C_AT24MAC_CLOCK_init(void)
{
	_pmc_enable_periph_clock(ID_TWIHS0);
}

void I2C_AT24MAC_init(void)
{
	I2C_AT24MAC_CLOCK_init();

	i2c_m_sync_init(&I2C_AT24MAC, TWIHS0);

	I2C_AT24MAC_PORT_init();
}

void TARGET_IO_PORT_init(void)
{

	gpio_set_pin_function(PA21, MUX_PA21A_USART1_RXD1);

	gpio_set_pin_function(PB4, MUX_PB4D_USART1_TXD1);
}

void TARGET_IO_CLOCK_init(void)
{
	_pmc_enable_periph_clock(ID_USART1);
}

void TARGET_IO_init(void)
{
	TARGET_IO_CLOCK_init();
	TARGET_IO_PORT_init();
	usart_sync_init(&TARGET_IO, USART1, _usart_get_usart_sync());
}

void MACIF_PORT_init(void)
{

	gpio_set_pin_function(PD8, MUX_PD8A_GMAC_GMDC);

	gpio_set_pin_function(PD9, MUX_PD9A_GMAC_GMDIO);

	gpio_set_pin_function(PD5, MUX_PD5A_GMAC_GRX0);

	gpio_set_pin_function(PD6, MUX_PD6A_GMAC_GRX1);

	gpio_set_pin_function(PD4, MUX_PD4A_GMAC_GRXDV);

	gpio_set_pin_function(PD7, MUX_PD7A_GMAC_GRXER);

	gpio_set_pin_function(PD2, MUX_PD2A_GMAC_GTX0);

	gpio_set_pin_function(PD3, MUX_PD3A_GMAC_GTX1);

	gpio_set_pin_function(PD0, MUX_PD0A_GMAC_GTXCK);

	gpio_set_pin_function(PD1, MUX_PD1A_GMAC_GTXEN);
}

void MACIF_CLOCK_init(void)
{
	_pmc_enable_periph_clock(ID_GMAC);
}

void MACIF_init(void)
{
	MACIF_CLOCK_init();
	mac_async_init(&MACIF, GMAC);
	MACIF_PORT_init();
}

void system_init(void)
{
	init_mcu();

	_pmc_enable_periph_clock(ID_PIOA);

	_pmc_enable_periph_clock(ID_PIOB);

	_pmc_enable_periph_clock(ID_PIOC);

	_pmc_enable_periph_clock(ID_PIOD);

	/* Disable Watchdog */
	hri_wdt_set_MR_WDDIS_bit(WDT);

	/* GPIO on PA0 */

	// Set pin direction to input
	gpio_set_pin_direction(TX_FAULT_DOWN, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(TX_FAULT_DOWN,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_UP);

	gpio_set_pin_function(TX_FAULT_DOWN, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PA19 */

	// Set pin direction to input
	gpio_set_pin_direction(RX_LOSS_UP, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(RX_LOSS_UP,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_UP);

	gpio_set_pin_function(RX_LOSS_UP, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PB0 */

	// Set pin direction to input
	gpio_set_pin_direction(RX_PULSE, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(RX_PULSE,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(RX_PULSE, GPIO_PIN_FUNCTION_OFF);
	
	/* GPIO on PD30 */

	// Set pin direction to input
	gpio_set_pin_direction(TX_DISABLE_UP, GPIO_DIRECTION_OUT);
	
	gpio_set_pin_level(TX_DISABLE_UP, false);

	gpio_set_pin_pull_mode(TX_DISABLE_UP,
							// <y> Pull configuration
							// <id> pad_pull_config
							// <GPIO_PULL_OFF"> Off
							// <GPIO_PULL_UP"> Pull-up
							// <GPIO_PULL_DOWN"> Pull-down
							GPIO_PULL_DOWN);

	gpio_set_pin_function(TX_DISABLE_UP, GPIO_PIN_FUNCTION_OFF);
		
	/* GPIO on PC13 */

	// Set pin direction to input
	gpio_set_pin_direction(TX_DISABLE_DOWN, GPIO_DIRECTION_OUT);
	
	gpio_set_pin_level(TX_DISABLE_DOWN, false);

	gpio_set_pin_pull_mode(TX_DISABLE_DOWN,
							// <y> Pull configuration
							// <id> pad_pull_config
							// <GPIO_PULL_OFF"> Off
							// <GPIO_PULL_UP"> Pull-up
							// <GPIO_PULL_DOWN"> Pull-down
							GPIO_PULL_DOWN);

	gpio_set_pin_function(TX_DISABLE_DOWN, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PB1 */

	gpio_set_pin_level(TX_PULSE,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(TX_PULSE, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(TX_PULSE, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PB2 */

	gpio_set_pin_level(TDC_ENABLE,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(TDC_ENABLE, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(TDC_ENABLE, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PB3 */

	gpio_set_pin_level(SPI0_SS,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   true);

	// Set pin direction to output
	gpio_set_pin_direction(SPI0_SS, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(SPI0_SS, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PC10 */

	gpio_set_pin_level(PHY_RESET_PIN,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   true);

	// Set pin direction to output
	gpio_set_pin_direction(PHY_RESET_PIN, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PHY_RESET_PIN, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PC30 */

	// Set pin direction to input
	gpio_set_pin_direction(RX_LOSS_DOWN, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(RX_LOSS_DOWN,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_UP);

	gpio_set_pin_function(RX_LOSS_DOWN, GPIO_PIN_FUNCTION_OFF);

	/* GPIO on PC31 */

	// Set pin direction to input
	gpio_set_pin_direction(TX_FAULT_UP, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(TX_FAULT_UP,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_UP);

	gpio_set_pin_function(TX_FAULT_UP, GPIO_PIN_FUNCTION_OFF);

	// Set pin direction to output
	gpio_set_pin_direction(LED0, GPIO_DIRECTION_OUT);
	gpio_set_pin_function(LED0, GPIO_PIN_FUNCTION_OFF);
	gpio_set_pin_level(LED0, true);

	EXTERNAL_IRQ_0_PC_init();
	EXTERNAL_IRQ_1_PD_init();

	SPI_0_init();
	gpio_set_pin_function(LED0, GPIO_PIN_FUNCTION_OFF);
	
	gpio_set_pin_level(LED0, true);

	I2C_AT24MAC_init();

	TARGET_IO_init();

	MACIF_init();

	ext_irq_init();
}
