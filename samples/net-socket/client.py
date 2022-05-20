import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM, socket.IPPROTO_TCP)

s.connect(("127.0.0.1", 8080))

s.send(b"Hello from client\n")

s.close()