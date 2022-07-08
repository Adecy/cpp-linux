#include <stdio.h>
#include <stdint.h>

typedef uint32_t http_route_args_t[3];

struct test
{
	http_route_args_t args;
};

int main(void)
{
	printf("sizeof = %lu\n", sizeof(struct test));
	
	return 0;
}