#include <stdio.h>
#include <stdint.h>

#include "common.h"

uint16_t caniot_dt_T16_to_T10(int16_t T16)
{
	T16 /= 10;
	T16 = MAX(MIN(T16, 720), -280);

	const uint16_t T10 = T16 + 280;

	return T10;
}

int16_t caniot_dt_T10_to_T16(uint16_t T)
{
	return ((int16_t)T * 10) - 2800;
}

int main2(void)
{
	int16_t T16 = -1000;

	uint16_t T10 = caniot_dt_T16_to_T10(T16);

	int16_t T16_ = caniot_dt_T10_to_T16(T10);

	printf("T16 = %d, T10 = %d, T16_ = %d\n", T16, T10, T16_);

	return 0;
}

int16_t tcn75_temp2int16(uint8_t msb, uint8_t lsb)
{
	int16_t i16_temp;

	const uint8_t neg = msb >> 7u;

	/* Resolution of abs is 2^-4 °C */
	uint16_t abs = (msb << 4u) | (lsb >> 4u);
	if (neg) { /* 2s complement if negative value */
		abs = ~abs + 1u;
	}
	/* cast to 12 bits value */
	abs &= 0x7ffu;

	/* i16_temp resolution is 0.01°C */
	i16_temp = (100.0/16) * abs;

	if (neg) {
		i16_temp = -i16_temp;
	}

	return i16_temp;
}

int main(void)
{
	
	uint8_t msb = 0xFFu;
	uint8_t lsb = 0x80u;

	int16_t i16_temp = tcn75_temp2int16(msb, lsb);
	float f_temp = i16_temp / 100.0f;

	// const uint8_t neg = msb >> 7u;

	// uint16_t abs = (msb << 4u) | (lsb >> 4u);
	// if (neg) {
	// 	abs = ~abs + 1u;
	// }
	// abs &= 0x7ffu;

	// value = 0.0625 * abs;

	// if (neg) {
	// 	value = -value;
	// }

	printf("msb=%hhu lsb=%hhu i16_temp=%d value=%f\n", 
	       msb, lsb, i16_temp, f_temp);

	return 0;
}