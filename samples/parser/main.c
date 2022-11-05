#include <stdio.h>
#include <memory.h>

#include <libparser/libparser.h>

extern void test_query(void);
extern void test_route(void);

int main(void)
{
	// test_query();
	test_route();

	return 0U;
}