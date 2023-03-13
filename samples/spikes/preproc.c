#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define Z_STRINGIFY(x) #x
#define STRINGIFY(s) Z_STRINGIFY(s)

/* concatenate the values of the arguments into one */
#define _DO_CONCAT(x, y) x ## y
#define _CONCAT(x, y) _DO_CONCAT(x, y)

#define Z_LINK_SECTION(_sec) __attribute__((section(Z_STRINGIFY(_sec))))


Z_LINK_SECTION(.bss) static int bss_var;

int main(void)
{
	(void) bss_var;
}