#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "server.h"

TCPServer server = TCPServer(8080);

int main()
{
    server.init();

    while (1) {
        server.process();
    }
    
    server.reset();
}