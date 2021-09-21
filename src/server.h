#ifndef _CLASS_H_
#define _CLASS_H_

#include <stdint.h>

#include <net/if.h>
#include <netinet/in.h>
#include <unistd.h> 
#include <signal.h>
#include <poll.h>
#include <fcntl.h>
#include <cstring>

#include <sys/socket.h>
#include <arpa/inet.h>


class TCPServer{
public:
    uint16_t port;
    struct sockaddr_in serv;
    struct sockaddr_in cli;
    
    struct pollfd fds[2];
    int count;

    char buffer[2048];
    size_t len;

    TCPServer(uint16_t port) : port(port)
    {
        count = 0;
    }

    int init(void);

    int process(void);

    void reset(void);
};

#endif