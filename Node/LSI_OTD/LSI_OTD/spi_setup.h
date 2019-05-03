/*
 * spi_setup.h
 *
 * initializes and contains functions to read and write to spi devices
 
 * Created: 4/12/2019 5:17:26 PM
 *  Author: Joe
 */ 


#ifndef SPI_SETUP_H_
#define SPI_SETUP_H_

#include "atmel_start.h"

extern struct io_descriptor *io; //this is for spi

void start_spi();
int32_t spi_custom_io_rw(struct io_descriptor *const io, uint8_t *inbuf, const uint8_t *const outbuf, const uint16_t length);

#endif /* SPI_H_ */