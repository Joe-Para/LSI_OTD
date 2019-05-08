/*
 * i2c_setup.h
 *
 * Created: 4/15/2019 11:49:08 AM
 *  Author: Joe
 */ 


#ifndef I2C_SETUP_H_
#define I2C_SETUP_H_
#include "atmel_start.h"

#define SFP_ADDR 1
#define DISP_ADDR 0x20


//Arduino compatibility defines
#define HIGH 0x1
#define LOW  0x0

#define INPUT 0x0
#define OUTPUT 0x1


////////////////////
// I2C Backpack
////////////////////

// Adapted from https://github.com/adafruit/Adafruit-RGB-LCD-Shield-Library/blob/master/utility/Adafruit_MCP23017.h
#define MCP23017_IODIRA 0x00
#define MCP23017_IPOLA 0x02
#define MCP23017_GPINTENA 0x04
#define MCP23017_DEFVALA 0x06
#define MCP23017_INTCONA 0x08
#define MCP23017_IOCONA 0x0A
#define MCP23017_GPPUA 0x0C
#define MCP23017_INTFA 0x0E
#define MCP23017_INTCAPA 0x10
#define MCP23017_GPIOA 0x12
#define MCP23017_OLATA 0x14

#define MCP23017_IODIRB 0x01
#define MCP23017_IPOLB 0x03
#define MCP23017_GPINTENB 0x05
#define MCP23017_DEFVALB 0x07
#define MCP23017_INTCONB 0x09
#define MCP23017_IOCONB 0x0B
#define MCP23017_GPPUB 0x0D
#define MCP23017_INTFB 0x0F
#define MCP23017_INTCAPB 0x11
#define MCP23017_GPIOB 0x13
#define MCP23017_OLATB 0x15

////////////////////
// Display Commands
////////////////////

//adapted from https://github.com/adafruit/Adafruit-RGB-LCD-Shield-Library/blob/master/Adafruit_RGBLCDShield.h
#define LCD_CLEARDISPLAY 0x01
#define LCD_RETURNHOME 0x02
#define LCD_ENTRYMODESET 0x04
#define LCD_DISPLAYCONTROL 0x08
#define LCD_CURSORSHIFT 0x10
#define LCD_FUNCTIONSET 0x20
#define LCD_SETCGRAMADDR 0x40
#define LCD_SETDDRAMADDR 0x80

// flags for display entry mode
#define LCD_ENTRYRIGHT 0x00
#define LCD_ENTRYLEFT 0x02
#define LCD_ENTRYSHIFTINCREMENT 0x01
#define LCD_ENTRYSHIFTDECREMENT 0x00

// flags for display on/off control
#define LCD_DISPLAYON 0x04
#define LCD_DISPLAYOFF 0x00
#define LCD_CURSORON 0x02
#define LCD_CURSOROFF 0x00
#define LCD_BLINKON 0x01
#define LCD_BLINKOFF 0x00

// flags for display/cursor shift
#define LCD_DISPLAYMOVE 0x08
#define LCD_CURSORMOVE 0x00
#define LCD_MOVERIGHT 0x04
#define LCD_MOVELEFT 0x00

// flags for function set
#define LCD_8BITMODE 0x10
#define LCD_4BITMODE 0x00
#define LCD_2LINE 0x08
#define LCD_1LINE 0x00
#define LCD_5x10DOTS 0x04
#define LCD_5x8DOTS 0x00

#define BUTTON_UP 0x08
#define BUTTON_DOWN 0x04
#define BUTTON_LEFT 0x10
#define BUTTON_RIGHT 0x02
#define BUTTON_SELECT 0x01

void LCD_begin(void);
void LCD_pinMode(uint8_t p, uint8_t d);
void LCD_digitalWrite(uint8_t p, uint8_t d);
uint8_t LCD_digitalRead(uint8_t p);
void LCD_setBacklight(uint8_t status);
void LCD_pullUp(uint8_t p, uint8_t d);
void LCD_write4bits(uint8_t value);
void LCD_writeGPIOAB(uint16_t ba);
void LCD_write8bits(uint8_t value);
void LCD_pulseEnable(void);
uint8_t LCD_readButtons(void);
uint16_t LCD_readGPIOAB(void);
void LCD_command(uint8_t value);
void LCD_send(uint8_t value, uint8_t mode);
void LCD_clear();
void LCD_home();
void LCD_setCursor(uint8_t col, uint8_t row);
void LCD_noDisplay();
void LCD_display();
void LCD_noCursor();
void LCD_cursor();
void LCD_noBlink();
void LCD_blink();
void LCD_scrollDisplayLeft(void);
void LCD_scrollDisplayRight(void);
void LCD_leftToRight(void);
void LCD_rightToLeft(void);
void LCD_autoscroll(void);
void LCD_noAutoscroll(void);
void LCD_createChar(uint8_t location, uint8_t charmap[]);
void LCD_write(uint8_t value);

void LCD_print(char message[]);

#endif /* I2C_SETUP_H_ */
