#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "server.h"

TCPServer server = TCPServer(8080);

int main()
{
    server.init();

    printf("port = %d\n", server.port);
    while (1) {
        server.process();
    }
    
    server.reset();
}