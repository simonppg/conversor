#if !defined (_datatype_H_)
#define _datatype_H_

#include <stdint.h>

float getFloat(uint32_t int32);
uint16_t from8To16(uint8_t msb, uint8_t lsb);
uint32_t from16to32(uint16_t msb, uint16_t lsb);

#endif