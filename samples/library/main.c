#include <stdio.h>

#include <mylib/mylib.h>

#include "defs.h"

int main(void)
{
	printf("DEFS : %d\n", VAR);
	mylib_test();

	return 0U;
}