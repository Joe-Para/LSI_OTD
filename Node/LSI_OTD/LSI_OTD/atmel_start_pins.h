/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */
#ifndef ATMEL_START_PINS_H_INCLUDED
#define ATMEL_START_PINS_H_INCLUDED

#include <hal_gpio.h>

// SAME70 has 4 pin functions

#define GPIO_PIN_FUNCTION_A 0
#define GPIO_PIN_FUNCTION_B 1
#define GPIO_PIN_FUNCTION_C 2
#define GPIO_PIN_FUNCTION_D 3

#define GPIO_SPARE3 GPIO(GPIO_PORTA, 0)
#define I2C0_SDA GPIO(GPIO_PORTA, 3)
#define I2C0_SCL GPIO(GPIO_PORTA, 4)
#define GPIO_SPARE2 GPIO(GPIO_PORTA, 19)
#define PA21 GPIO(GPIO_PORTA, 21)
#define RX_PULSE GPIO(GPIO_PORTB, 0)
#define TX_PULSE GPIO(GPIO_PORTB, 1)
#define TDC_ENABLE GPIO(GPIO_PORTB, 2)
#define SPI0_SS GPIO(GPIO_PORTB, 3)
#define PB4 GPIO(GPIO_PORTB, 4)
#define PHY_RESET_PIN GPIO(GPIO_PORTC, 10)
#define TDC_TRIG GPIO(GPIO_PORTC, 17)
#define GPIO_SPARE4 GPIO(GPIO_PORTC, 30)
#define GPIO_SPARE1 GPIO(GPIO_PORTC, 31)
#define PD0 GPIO(GPIO_PORTD, 0)
#define PD1 GPIO(GPIO_PORTD, 1)
#define PD2 GPIO(GPIO_PORTD, 2)
#define PD3 GPIO(GPIO_PORTD, 3)
#define PD4 GPIO(GPIO_PORTD, 4)
#define PD5 GPIO(GPIO_PORTD, 5)
#define PD6 GPIO(GPIO_PORTD, 6)
#define PD7 GPIO(GPIO_PORTD, 7)
#define PD8 GPIO(GPIO_PORTD, 8)
#define PD9 GPIO(GPIO_PORTD, 9)
#define SPI0_MISO GPIO(GPIO_PORTD, 20)
#define SPI0_MOSI GPIO(GPIO_PORTD, 21)
#define SPI0_SCK GPIO(GPIO_PORTD, 22)
#define TDC_LPBK GPIO(GPIO_PORTD, 25)
#define TDC_INT GPIO(GPIO_PORTD, 28)

#endif // ATMEL_START_PINS_H_INCLUDED
