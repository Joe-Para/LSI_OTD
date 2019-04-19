/*
 * i2c_setup.c
 * 
 * This file is a merge of the Adafruit RGB LCD Shield library and the
 * MCP23017 I2C backpack library 
 * Author: Joe Leach
 * 
 */ 


#include "i2c_setup.h"
// note we are using hte i2c initialized for reading the mac address,
// otherwise you would need to create a separate I2C struct 
// struct i2c_m_sync_desc I2C_AT24MAC;

uint8_t _displayfunction = LCD_4BITMODE | LCD_1LINE | LCD_5x8DOTS \
| LCD_2LINE;
uint8_t _displaycontrol, _displaymode;
uint8_t _numlines = 2;
uint8_t _currline = 0;
uint8_t _rs_pin = 15;
uint8_t _rw_pin = 14;
uint8_t _enable_pin = 13;
uint8_t _data_pins[8];
uint8_t _button_pins[5];



void LCD_begin(void){
	_data_pins[0] = 12;  // really d4
	_data_pins[1] = 11;  // really d5
	_data_pins[2] = 10;  // really d6
	_data_pins[3] = 9;  // really d7

	_button_pins[0] = 0;
	_button_pins[1] = 1;
	_button_pins[2] = 2;
	_button_pins[3] = 3;
	_button_pins[4] = 4;
	
	i2c_m_sync_enable(&I2C_AT24MAC);
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, DISP_ADDR, I2C_M_SEVEN);
	
	//Set Defaults to all inputs (_i2c.begin from adafruit)
	io_write(&(I2C_AT24MAC.io), MCP23017_IODIRA, 1);
	io_write(&(I2C_AT24MAC.io), 0xFF, 1);
	
	io_write(&(I2C_AT24MAC.io), MCP23017_IODIRB, 1);
	io_write(&(I2C_AT24MAC.io), 0xFF, 1);
	
	LCD_pinMode(8, OUTPUT);
	LCD_pinMode(6, OUTPUT);
	LCD_pinMode(7, OUTPUT);
	LCD_setBacklight(0x7);
	
	LCD_pinMode(_rw_pin, OUTPUT);

	LCD_pinMode(_rs_pin, OUTPUT);
	LCD_pinMode(_enable_pin, OUTPUT);
	for (uint8_t i=0; i<4; i++){
		LCD_pinMode(_data_pins[i], OUTPUT);
	}
	
	for (uint8_t i=0; i<5; i++) {
		LCD_pinMode(_button_pins[i], INPUT);
		LCD_pullUp(_button_pins[i], 1);
	}
	
    // SEE PAGE 45/46 FOR INITIALIZATION SPECIFICATION!
    // according to datasheet, we need at least 40ms after power rises above 2.7V
    // before sending commands. Arduino can turn on way befor 4.5V so we'll wait 50
    delay_ms(50);
    // Now we pull both RS and R/W low to begin commands
    LCD_digitalWrite(_rs_pin, LOW);
    LCD_digitalWrite(_enable_pin, LOW);
    LCD_digitalWrite(_rw_pin, LOW);
   
    //put the LCD into 4 bit or 8 bit mode
    if (! (_displayfunction & LCD_8BITMODE)) {
	    // this is according to the hitachi HD44780 datasheet
	    // figure 24, pg 46

	    // we start in 8bit mode, try to set 4 bit mode
	    LCD_write4bits(0x03);
	    delay_us(4500); // wait min 4.1ms

	    // second try
	    LCD_write4bits(0x03);
	    delay_us(4500); // wait min 4.1ms
	    
	    // third go!
	    LCD_write4bits(0x03);
	    delay_us(150);

	    // finally, set to 8-bit interface
	    LCD_write4bits(0x02);
	    } else {
	    // this is according to the hitachi HD44780 datasheet
	    // page 45 figure 23

	    // Send function set command sequence
	    LCD_command(LCD_FUNCTIONSET | _displayfunction);
	    delay_us(4500);  // wait more than 4.1ms

	    // second try
	    LCD_command(LCD_FUNCTIONSET | _displayfunction);
	    delay_us(150);

	    // third go
	    LCD_command(LCD_FUNCTIONSET | _displayfunction);
    }

    // finally, set # lines, font size, etc.
    LCD_command(LCD_FUNCTIONSET | _displayfunction);

    // turn the display on with no cursor or blinking default
    _displaycontrol = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
    LCD_display();

    // clear it off
    LCD_clear();

    // Initialize to default text direction (for romance languages)
    _displaymode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
    // set the entry mode
    LCD_command(LCD_ENTRYMODESET | _displaymode);
	
}

void LCD_pinMode(uint8_t p, uint8_t d){
	uint8_t iodir;
	uint8_t iodiraddr;
	
	if (p < 8)
	iodiraddr = MCP23017_IODIRA;
	else {
		iodiraddr = MCP23017_IODIRB;
		p -= 8;
	}
	//don't forget to set slave back just in case its changed!
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, DISP_ADDR, I2C_M_SEVEN);
	io_write(&(I2C_AT24MAC.io), iodiraddr, 1);
	io_read(&(I2C_AT24MAC.io), &iodir, 1);
	
	if (d == INPUT) {
		iodir |= 1 << p;
		} else {
		iodir &= ~(1 << p);
	}
	
	io_write(&(I2C_AT24MAC.io), iodiraddr, 1);
	io_write(&(I2C_AT24MAC.io), iodir, 1);
}

void LCD_digitalWrite(uint8_t p, uint8_t d) {
	uint8_t gpio;
	uint8_t gpioaddr, olataddr;

	// only 16 bits!
	if (p > 15)
	return;

	if (p < 8) {
		olataddr = MCP23017_OLATA;
		gpioaddr = MCP23017_GPIOA;
		} else {
		olataddr = MCP23017_OLATB;
		gpioaddr = MCP23017_GPIOB;
		p -= 8;
	}
	// read the current GPIO output latches
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, DISP_ADDR, I2C_M_SEVEN);
	io_write(&(I2C_AT24MAC.io), olataddr, 1);
	io_read(&(I2C_AT24MAC.io), &gpio, 1);

	// set the pin and direction
	if (d == HIGH) {
		gpio |= 1 << p;
		} else {
		gpio &= ~(1 << p);
	}

	// write the new GPIO
	io_write(&(I2C_AT24MAC.io), gpioaddr, 1);
	io_write(&(I2C_AT24MAC.io), gpio, 1);
}

uint8_t LCD_digitalRead(uint8_t p) {
	uint8_t gpioaddr;
	uint8_t gpioin;

	if (p < 8)
	gpioaddr = MCP23017_GPIOA;
	else {
		gpioaddr = MCP23017_GPIOB;
		p -= 8;
	}
	
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, DISP_ADDR, I2C_M_SEVEN);
	io_write(&(I2C_AT24MAC.io), gpioaddr, 1);
	io_read(&(I2C_AT24MAC.io), &gpioin, 1);
	return (gpioin >> p) & 0x1;
}

// Allows to set the backlight, if the LCD backpack is used
void LCD_setBacklight(uint8_t status) {
	// check if i2c or SPI
	LCD_digitalWrite(8, ~(status >> 2) & 0x1);
	LCD_digitalWrite(7, ~(status >> 1) & 0x1);
	LCD_digitalWrite(6, ~status & 0x1);
}

void LCD_pullUp(uint8_t p, uint8_t d) {
	uint8_t gppu;
	uint8_t gppuaddr;

	// only 16 bits!
	if (p > 15)
	return;

	if (p < 8)
	gppuaddr = MCP23017_GPPUA;
	else {
		gppuaddr = MCP23017_GPPUB;
		p -= 8;
	}

	// read the current pullup resistor set
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, DISP_ADDR, I2C_M_SEVEN);
	io_write(&(I2C_AT24MAC.io), gppuaddr, 1);
	io_read(&(I2C_AT24MAC.io), &gppu, 1);

	// set the pin and direction
	if (d == HIGH) {
		gppu |= 1 << p;
		} else {
		gppu &= ~(1 << p);
	}
	
	// write the new GPIO
	io_write(&(I2C_AT24MAC.io), gppuaddr, 1);
	io_write(&(I2C_AT24MAC.io), gppu, 1);
}

void LCD_write4bits(uint8_t value) {
	
		uint16_t out = 0;

		out = LCD_readGPIOAB();

		// speed up for i2c since its sluggish
		for (int i = 0; i < 4; i++) {
			out &= ~(1 << _data_pins[i]);
			out |= ((value >> i) & 0x1) << _data_pins[i];
		
		// make sure enable is low
		out &= ~(1 << _enable_pin);

		LCD_writeGPIOAB(out);

		// pulse enable
		delay_us(1);
		out |= (1 << _enable_pin);
		LCD_writeGPIOAB(out);
		delay_us(1);
		out &= ~(1 << _enable_pin);
		LCD_writeGPIOAB(out);
		delay_us(100);

		LCD_pulseEnable();
	}
}

void LCD_writeGPIOAB(uint16_t ba) {
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, DISP_ADDR, I2C_M_SEVEN);
	io_write(&(I2C_AT24MAC.io), MCP23017_GPIOA, 1);
	io_write(&(I2C_AT24MAC.io), (ba & 0xFF), 1);
	io_write(&(I2C_AT24MAC.io), (ba >> 8), 1);
}

void LCD_write8bits(uint8_t value) {
	for (int i = 0; i < 8; i++) {
		LCD_pinMode(_data_pins[i], OUTPUT);
		LCD_digitalWrite(_data_pins[i], (value >> i) & 0x01);
	}
	
	pulseEnable();
}

void LCD_pulseEnable(void) {
	LCD_digitalWrite(_enable_pin, LOW);
	delay_us(1);
	LCD_digitalWrite(_enable_pin, HIGH);
	delay_us(1);    // enable pulse must be >450ns
	LCD_digitalWrite(_enable_pin, LOW);
	delay_us(100);   // commands need > 37us to settle
}

uint8_t LCD_readButtons(void) {
	uint8_t reply = 0x1F;

	for (uint8_t i=0; i<5; i++) {
		reply &= ~((LCD_digitalRead(_button_pins[i])) << i);
	}
	return reply;
}

uint16_t LCD_readGPIOAB(void) {
	uint16_t ba = 0;
	uint8_t a;

	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, DISP_ADDR, I2C_M_SEVEN);
	// read the current GPIO output latches	
	io_write(&(I2C_AT24MAC.io), MCP23017_GPIOA, 1);
	io_read(&(I2C_AT24MAC.io), &a, 1);
	io_read(&(I2C_AT24MAC.io), &ba, 1);

	ba <<= 8;
	ba |= a;
	return ba;
}

inline void LCD_command(uint8_t value) {
	LCD_send(value, LOW);
}
// write either command or data, with automatic 4/8-bit selection
void LCD_send(uint8_t value, uint8_t mode) {
	LCD_digitalWrite(_rs_pin, mode);

	// if there is a RW pin indicated, set it low to Write
	if (_rw_pin != 255) {
		_digitalWrite(_rw_pin, LOW);
	}
	
	if (_displayfunction & LCD_8BITMODE) {
		LCD_write8bits(value);
		} else {
		LCD_write4bits(value>>4);
		LCD_write4bits(value);
	}
}




/********** high level commands, for the user! */
void LCD_clear()
{
	LCD_command(LCD_CLEARDISPLAY);  // clear display, set cursor position to zero
	delay_us(2000);  // this command takes a long time!
}

void LCD_home()
{
	LCD_command(LCD_RETURNHOME);  // set cursor position to zero
	delay_us(2000);  // this command takes a long time!
}

void LCD_setCursor(uint8_t col, uint8_t row)
{
	int row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
	if ( row > _numlines ) {
		row = _numlines-1;    // we count rows starting w/0
	}
	
	LCD_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
}

// Turn the display on/off (quickly)
void LCD_noDisplay() {
	_displaycontrol &= ~LCD_DISPLAYON;
	LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}
void LCD_display() {
	_displaycontrol |= LCD_DISPLAYON;
	LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}

// Turns the underline cursor on/off
void LCD_noCursor() {
	_displaycontrol &= ~LCD_CURSORON;
	LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}
void LCD_cursor() {
	_displaycontrol |= LCD_CURSORON;
	LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}

// Turn on and off the blinking cursor
void LCD_noBlink() {
	_displaycontrol &= ~LCD_BLINKON;
	LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}
void LCD_blink() {
	_displaycontrol |= LCD_BLINKON;
	LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}

// These commands scroll the display without changing the RAM
void LCD_scrollDisplayLeft(void) {
	LCD_command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVELEFT);
}
void LCD_scrollDisplayRight(void) {
	LCD_command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVERIGHT);
}

// This is for text that flows Left to Right
void LCD_leftToRight(void) {
	_displaymode |= LCD_ENTRYLEFT;
	LCD_command(LCD_ENTRYMODESET | _displaymode);
}

// This is for text that flows Right to Left
void LCD_rightToLeft(void) {
	_displaymode &= ~LCD_ENTRYLEFT;
	LCD_command(LCD_ENTRYMODESET | _displaymode);
}

// This will 'right justify' text from the cursor
void LCD_autoscroll(void) {
	_displaymode |= LCD_ENTRYSHIFTINCREMENT;
	LCD_command(LCD_ENTRYMODESET | _displaymode);
}

// This will 'left justify' text from the cursor
void LCD_noAutoscroll(void) {
	_displaymode &= ~LCD_ENTRYSHIFTINCREMENT;
	LCD_command(LCD_ENTRYMODESET | _displaymode);
}

// Allows us to fill the first 8 CGRAM locations
// with custom characters
void LCD_createChar(uint8_t location, uint8_t charmap[]) {
	location &= 0x7; // we only have 8 locations 0-7
	LCD_command(LCD_SETCGRAMADDR | (location << 3));
	for (int i=0; i<8; i++) {
		write(charmap[i]);
	}
	LCD_command(LCD_SETDDRAMADDR);  // unfortunately resets the location to 0,0
}