#include <stdlib.h>
#include <stdio.h>

struct http_custom_header
{
	void *handle;
	char *name;
	char value[];
};


int main(void)
{
	printf("sizeof(struct http_custom_header) = %lu\n", 
	       sizeof(struct http_custom_header));
}