#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>


int main(void)
{
	const char * string = "5000";

	uint32_t number;
	int ret = sscanf(string, "%u", &number);

	printf("ret = %d, number = %u\n", ret, number);
	
	return 0;
}