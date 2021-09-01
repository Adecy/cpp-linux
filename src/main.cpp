#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "class.h"

uint32_t counter = 0;

int main()
{
    MyClass instance = MyClass();

    while(1)
    {
        instance.hello();

        printf("counter = %d\n", counter++);
    }
}