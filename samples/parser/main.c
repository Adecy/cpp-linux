#include <stdio.h>
#include <memory.h>

extern void test_query(void);
extern void test_route(void);

int main(void)
{

	const char ref[] = "caniot:u";
	const char cmp[] = "caniot";

	int ret = strncmp(ref, cmp, strlen("caniotd"));
	printf("ret = %d", ret);

	// test_query();
	// test_route();

	return 0U;
}