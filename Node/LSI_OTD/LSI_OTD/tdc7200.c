﻿/*
 * tdc7200.c
 *
 * Created: 4/12/2019 7:08:00 PM
 *  Author: paran
 */ 

#include "tdc7200.h"
#include "spi_setup.h"
#define TDC_DEBUG_ON 1

void tdc_setup(struct io_descriptor *const io){
	
	gpio_set_pin_level( TDC_ENABLE,	false);
	gpio_set_pin_direction(TDC_ENABLE, GPIO_DIRECTION_OUT);
	gpio_set_pin_function(TDC_ENABLE, GPIO_PIN_FUNCTION_OFF);  //(func off means gpio)
	gpio_set_pin_level(TDC_ENABLE, false);
	
	//enable tdc chip, needs clean rising edge some time after power up, fully ready 1.5ms after enable.
	gpio_set_pin_level(TDC_ENABLE, true);
	delay_ms(2);
	

	
	//TDC CONFIG1; MEASE MODE 2
	tdc_write(io, TDC_CONFIG1, 0x02);
	delay_us(5);
	//TDC CONFIG2; CAL PERIODS 40
	tdc_write(io, TDC_CONFIG2, 0xC0);
	delay_us(5);
	//TDC INT MASK; enable new meas interrupt
	tdc_write(io, TDC_INT_MASK, 0x01);
	delay_us(5);
	
	TDC_DEBUG("TDC setup done\n");
}

//beware, writing 0x01 to conf1 will erase any measurements
uint32_t start_tof_meas(struct io_descriptor *const io){
	//ref datasheet 7.4.6: Measurement Sequence
	//Enable: lo to high transition	(happens in setup)
	//request measurement by writing CONFIG1

	uint8_t conf1 = tdc_read_8(io, TDC_CONFIG1);
	conf1 |= 0x1;
	tdc_write(io, TDC_CONFIG1, &conf1);
	TDC_DEBUG("Starting TOF Meas\n");
	//wait for trigger to be enabled 
		//see ISR for TDC_TRIG
	//set output line to fiber channels high
	//wait for return interrupt
		//see ISR for TDC_INT

	return 0;
}
//fetches and calculates time of flight from tdc in picoseconds
uint32_t get_tof(struct io_descriptor *const io ){
	//ref section 7.4.2.2.1 of datasheet
	
	//fetch variables for math
	volatile int time1 = tdc_read_8(io, TDC_TIME1);
	TDC_DEBUG(time1);
	delay_us(5);
	volatile int time2 = tdc_read_8(io, TDC_TIME2);
	TDC_DEBUG(time2);
	delay_us(5);
	volatile int clock_count1 = tdc_read_8(io, TDC_CLOCK_COUNT1);
	TDC_DEBUG(clock_count1);
	delay_us(5);
	volatile int calibration1 = tdc_read_24(io, TDC_CALIBRATION1);
	TDC_DEBUG(calibration1);
	delay_us(5);
	volatile int calibration2 = tdc_read_24(io, TDC_CALIBRATION2);
	TDC_DEBUG(calibration2);
	//this is a very small decimal, do the calcs as doubles?
	volatile double clock_period = 1.0 / REF_CLOCK_HZ;
	
	//math, see datasheet
	volatile double cal_count = (calibration2 - calibration1)/(CALIBRATION2_PERIODS - 1.0);
	volatile double normLSB = clock_period / cal_count;
	volatile double tof1 = normLSB*((time1 - time2)) + (clock_count1*clock_period);

	//return value of tof in picoseconds
	volatile  uint32_t tof_ps = tof1 * 1e12 - CORRECTION_FACTOR;
	TDC_DEBUG(tof_ps);
	return tof_ps;
}
//input takes a multiple of 2 (1,2,4...128)
uint32_t set_averaging(struct io_descriptor *const io, uint32_t samples){
	uint32_t err = 0;
	uint8_t conf2 = 0;
	switch (samples)
	{ //this is a replacement for log2(samples), good up to 128
		case 1:
			conf2 = 0; break;
		case 2:
			conf2 = 1; break;
		case 4:
			conf2 = 2; break;
		case 8:
			conf2 = 3; break;
		case 16:
			conf2 = 4; break;
		case 32:
			conf2 = 5; break;
		case 64:
			conf2 = 6; break;
		case 128:
			conf2 = 7; break;
		default:
			return -1;
	}
	TDC_DEBUG("enabling multicycle averaging #:");
	TDC_DEBUG(samples);
	uint8_t confold = tdc_read_8(io, TDC_CONFIG2);
	//clear averaging bits [5:3]
	confold &= 0xC7;
	confold |= (conf2<<3);
	tdc_write(io, TDC_CONFIG2, &confold);
	return err;
}


//writes one byte to TDC chip
void tdc_write(struct io_descriptor *const io, uint8_t commandbuf, uint8_t databuf){
	// need to write 2 bytes, one command one data
	commandbuf |= 0x40; //enable write
	gpio_set_pin_level(SPI0_SS, false);
	io_write(io, &commandbuf, 1);
	io_write(io, &databuf, 1);
	gpio_set_pin_level(SPI0_SS, true);
	
}
//reads one byte from TDC chip
uint8_t tdc_read_8(struct io_descriptor *const io, uint8_t const commandbuf){
	// need to write command byte and read 3 data bytes
	uint8_t datain = 0;
	gpio_set_pin_level(SPI0_SS, false);
	io_write(io, &commandbuf, 1);
	io_read(io, &datain, 1);
	//spi_custom_io_rw(io, &datain, &commandbuf, 2);
	//datain = datain >> 9; //issue with MISO being 1 clock ahead
	gpio_set_pin_level(SPI0_SS, true);
	TDC_DEBUG((uint8_t)datain);
	return datain;
}
//reads three bytes from TDC chip
uint32_t tdc_read_24(struct io_descriptor *const io, uint8_t const commandbuf){
	// need to write command byte and read 3 data bytes
	uint32_t datain = 0;
	gpio_set_pin_level(SPI0_SS, false);
	io_write(io, &commandbuf, 1);
	io_read(io, &datain, 1);
	//spi_custom_io_rw(io, &datain, &commandbuf, 4);
	//datain = datain >> 1; //issue with MISO being 1 clock ahead
	gpio_set_pin_level(SPI0_SS, true);

	return datain;
}