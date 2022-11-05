#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

int main(void)
{
	const char * string = "5000";

	uint32_t number;
	int ret = sscanf(string, "%u", &number);

	printf("ret = %d, number = %u\n", ret, number);

	const char * route = "/devices/caniot/57/endpoint/blc1/command";

	ret = sscanf(route, "/devices/caniot/%u/endpoint/blc0/command", &number);

	printf("ret = %d, number = %u\n", ret, number);
	
	return 0;
}