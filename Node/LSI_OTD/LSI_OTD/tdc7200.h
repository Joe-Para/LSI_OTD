/*
 * tdc7200.h
 *
 * Created: 4/12/2019 7:08:18 PM
 *  Author: paran
 */ 


#ifndef TDC7200_H_
#define TDC7200_H_

#include <atmel_start.h>
#include "tdc7200.c"

#define REF_CLOCK_HZ 10000000 //10mhz clock
#define CALIBRATION2_PERIODS 40.0 //write 11 to TDC_CONFIG2[7:6]

#define TDC_CONFIG1 0x00 //Configuration Register 1  Bytes: 8 Reset Val: 00h
#define TDC_CONFIG2 0x01 //Configuration Register 2  Bytes: 8 Reset Val: 40h
#define TDC_INT_STATUS 0x02 //Interrupt Status Register  Bytes: 8 Reset Val: 00h
#define TDC_INT_MASK 0x03 //Interrupt Mask Register  Bytes: 8 Reset Val: 07h
#define TDC_COARSE_CNTR_OVF_H 0x04 //Coarse Counter Overflow Value HighBytes: 8 Reset Val: FFh
#define TDC_COARSE_CNTR_OVF_L 0x05 //Coarse Counter Overflow Value LowBytes: 8 Reset Val: FFh
#define TDC_CLOCK_CNTR_OVF_H 0x06 //CLOCK Counter Overflow Value HighBytes: 8 Reset Val: FFh
#define TDC_CLOCK_CNTR_OVF_L 0x07 //CLOCK Counter Overflow Value LowBytes: 8 Reset Val: FFh
#define TDC_CLOCK_CNTR_STOP_MASK_H 0x08 //CLOCK Counter STOP Mask HighBytes: 8 Reset Val: 00h
#define TDC_CLOCK_CNTR_STOP_MASK_L 0x09 //CLOCK Counter STOP Mask LowBytes: 8 Reset Val: 00h
#define TDC_TIME1 0x10 //Measured Time 1 Bytes: 24 Reset Val: 00_0000h
#define TDC_CLOCK_COUNT1 0x11 //CLOCK Counter Value  Bytes: 24 Reset Val: 00_0000h
#define TDC_TIME2 0x12 //Measured Time 2  Bytes: 24 Reset Val: 00_0000h
#define TDC_CLOCK_COUNT2 0x13 //CLOCK Counter Value  Bytes: 24 Reset Val: 00_0000h
#define TDC_TIME3 0x14 //Measured Time 3  Bytes: 24 Reset Val: 00_0000h
#define TDC_CLOCK_COUNT3 0x15 //CLOCK Counter Value  Bytes: 24 Reset Val: 00_0000h
#define TDC_TIME4 0x16 //Measured Time 4  Bytes: 24 Reset Val: 00_0000h
#define TDC_CLOCK_COUNT4 0x17 //CLOCK Counter Value  Bytes: 24 Reset Val: 00_0000h
#define TDC_TIME5 0x18 //Measured Time 5  Bytes: 24 Reset Val: 00_0000h
#define TDC_CLOCK_COUNT5 0x19 //CLOCK Counter Value  Bytes: 24 Reset Val: 00_0000h
#define TDC_TIME6 0x1A //Measured Time 6  Bytes: 24 Reset Val: 00_0000h
#define TDC_CALIBRATION1 0x1B //Calibration 1, 1 CLOCK PeriodBytes: 24 Reset Val: 00_0000h
#define TDC_CALIBRATION2 0x1C //Calibration 2, 2/10/20/40 CLOCK PeriodsBytes: 24 Reset Val: 00_0000h

uint32_t tdc_read_24(struct io_descriptor *const io, uint8_t *const commandbuf);
uint8_t tdc_read_8(struct io_descriptor *const io, uint8_t *const commandbuf);
void tdc_write(struct io_descriptor *const io, uint8_t *const commandbuf, uint8_t *const databuf);
uint32_t get_tof(struct io_descriptor *const io);
void tdc_setup(struct io_descriptor *const io);




#endif /* TDC7200_H_ */