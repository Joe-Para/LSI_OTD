/*
 * tdc7200.c
 *
 * Created: 4/12/2019 7:08:00 PM
 *  Author: paran
 */ 

#include "tdc7200.h"
#include "spi_setup.h"
#define TDC_DEBUG_ON 0

uint32_t time1, time2, clock_count1, calibration1, calibration2 = 0;
double clock_period, cal_count, normLSB, tof1, tof_us;

void tdc_setup(struct io_descriptor *const io){
	
	//enable tdc chip, needs clean rising edge some time after power up, fully ready 1.5ms after enable.
	gpio_set_pin_level(TDC_ENABLE, false);
	delay_us(10);
	gpio_set_pin_level(TDC_ENABLE, true);
	delay_ms(2);
	
	//TDC CONFIG1; MEASE MODE 2
	tdc_write(io, TDC_CONFIG1, 0x02);
	delay_us(5);
	//TDC CONFIG2; CAL PERIODS 2
	tdc_write(io, TDC_CONFIG2, 0x00);
	delay_us(5);
	//TDC INT MASK; enable new meas interrupt
	tdc_write(io, TDC_INT_MASK, 0x07);
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
	tdc_write(io, TDC_CONFIG1, conf1);
	TDC_DEBUG("Starting TOF Meas\n");

	//wait for trigger to be enabled 
		//see ISR for TDC_TRIG
	//set output line to fiber channels high
	//wait for return interrupt
		//see ISR for TDC_INT

	return 0;
}
//fetches and calculates time of flight from tdc in picoseconds
double get_tof(struct io_descriptor *const io ){
	//ref section 7.4.2.2.1 of datasheet
	
	//fetch variables for math
	time1 = tdc_read_24(io, TDC_TIME1);
	//TDC_DEBUG(time1);
	delay_us(5);
	time2 = tdc_read_24(io, TDC_TIME2);
	//TDC_DEBUG(time2);
	delay_us(5);
	clock_count1 = tdc_read_24(io, TDC_CLOCK_COUNT1);
	//TDC_DEBUG(clock_count1);
	delay_us(5);
	calibration1 = tdc_read_24(io, TDC_CALIBRATION1);
	//TDC_DEBUG(calibration1);
	delay_us(5);
	calibration2 = tdc_read_24(io, TDC_CALIBRATION2);
	//TDC_DEBUG(calibration2);
	//this is a very small decimal, do the calcs as doubles?
	clock_period = 1.0 / REF_CLOCK_HZ;
	
	//math, see datasheet
	cal_count = (calibration2 - calibration1)/(CALIBRATION2_PERIODS - 1.0);
	normLSB = clock_period / cal_count;
	tof1 = (normLSB*time1)  + (clock_count1*clock_period) - (normLSB * time2);

	//return value of tof in microseconds
	tof_us = tof1 * 1e6; //- CORRECTION_FACTOR;
	//TDC_DEBUG(tof_ps);
	return tof_us;
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
	return datain;
}
//reads three bytes from TDC chip
uint32_t tdc_read_24(struct io_descriptor *const io, uint8_t const commandbuf){
	// need to write command byte and read 3 data bytes
	uint8_t datain1 = 0;
	uint8_t datain2 = 0;
	uint8_t datain3 = 0;
	gpio_set_pin_level(SPI0_SS, false);
	io_write(io, &commandbuf, 1);
	io_read(io, &datain1, 1);
	io_read(io, &datain2, 1);
	io_read(io, &datain3, 1);
	//spi_custom_io_rw(io, &datain, &commandbuf, 3);
	//datain = datain >> 1; //issue with MISO being 1 clock ahead
	gpio_set_pin_level(SPI0_SS, true);
	return (datain1 << 16) | (datain2 << 8) | datain3;
}