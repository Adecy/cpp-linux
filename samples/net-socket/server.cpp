#include <stdio.h>

#include "server.h"

int TCPServer::init(void)
{
    int sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) {
        printf("socket error=%d", sock);
        return sock;
    }

    int ret = fcntl(sock, F_SETFL, O_NONBLOCK);
    if (ret < 0) {
        printf("fcntl error=%d", ret);
        return ret;
    }
    
    serv.sin_port = htons(port);
    serv.sin_family = AF_INET;
    serv.sin_addr.s_addr = INADDR_ANY;
    
    ret = bind(sock, (const struct sockaddr*) &serv, sizeof(struct sockaddr_in));
    if (ret < 0) {
        printf("bind error=%d", ret);
        return ret;
    }

    ret = listen(sock, 0);
    if (ret < 0) {
        printf("listen error=%d", ret);
        return ret;
    }

    memset(fds, 0x00, sizeof(fds));

    fds[0].fd = sock;
    fds[0].events = POLL_IN;

    count = 1;

    return ret;
}

int TCPServer::process(void)
{
    int ret = poll(fds, count, -1);
    if (ret > 0) {
        // printf("fds[0].revents = %d\n", fds[0].revents);
        // printf("fds[1].revents = %d\n", fds[1].revents);

        if (fds[0].revents & POLL_IN) {
            ssize_t addr_len = sizeof(struct sockaddr_in);
            ret = accept(fds[0].fd, (sockaddr*) &cli, (socklen_t*) &addr_len);
            
            if (ret < 0) {
                printf("accept error=%d\n", ret);
            } else if (count == 2) {
                printf("incoming connection refused\n");
                close(ret);
            } else {
                printf("new client connection %d (%s : %hu)\n",
                       fds[0].fd,
                       inet_ntoa(cli.sin_addr),
                       ntohs(cli.sin_port));
                fds[1].fd = ret;
                fds[1].events = POLL_IN;
                count += 1;
            }
        }
        if (fds[1].revents & POLL_IN) {
            int received = recv(fds[1].fd, buffer, sizeof(buffer), 0);
            if (received > 0) {
                printf("received %d bytes\n", received);
                buffer[received] = 0;
                printf("> %s", buffer);
            } else {
                printf("closing client socket\n");
                close(received);
                count -= 1;
            }
        }
    } else if (ret == 0) {
        printf("poll timeout\n");
    } else {
        printf("poll error=%d", ret);
    }
    return ret;
}

void TCPServer::reset(void)
{
    close(fds[0].fd);
}