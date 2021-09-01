#ifndef _CLASS_H_
#define _CLASS_H_

#include <stdint.h>

class MyClass{
public:
    uint8_t value;

    MyClass(void) : value(0)
    {

    }

    void hello(void);
};

#endif