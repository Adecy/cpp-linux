
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 2a 2f 00 00    	pushq  0x2f2a(%rip)        # 3f50 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 2b 2f 00 00 	bnd jmpq *0x2f2b(%rip)        # 3f58 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	pushq  $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmpq 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	pushq  $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmpq 1020 <.plt>
    111f:	90                   	nop

Disassembly of section .plt.got:

0000000000001120 <__cxa_finalize@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 cd 2e 00 00 	bnd jmpq *0x2ecd(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001130 <recv@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 25 2e 00 00 	bnd jmpq *0x2e25(%rip)        # 3f60 <recv@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <puts@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 1d 2e 00 00 	bnd jmpq *0x2e1d(%rip)        # 3f68 <puts@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <fcntl@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 15 2e 00 00 	bnd jmpq *0x2e15(%rip)        # 3f70 <fcntl@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <inet_ntoa@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 0d 2e 00 00 	bnd jmpq *0x2e0d(%rip)        # 3f78 <inet_ntoa@GLIBC_2.2.5>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <__stack_chk_fail@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 05 2e 00 00 	bnd jmpq *0x2e05(%rip)        # 3f80 <__stack_chk_fail@GLIBC_2.4>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <htons@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 fd 2d 00 00 	bnd jmpq *0x2dfd(%rip)        # 3f88 <htons@GLIBC_2.2.5>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <printf@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 f5 2d 00 00 	bnd jmpq *0x2df5(%rip)        # 3f90 <printf@GLIBC_2.2.5>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011a0 <memset@plt>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	f2 ff 25 ed 2d 00 00 	bnd jmpq *0x2ded(%rip)        # 3f98 <memset@GLIBC_2.2.5>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <close@plt>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	f2 ff 25 e5 2d 00 00 	bnd jmpq *0x2de5(%rip)        # 3fa0 <close@GLIBC_2.2.5>
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <listen@plt>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	f2 ff 25 dd 2d 00 00 	bnd jmpq *0x2ddd(%rip)        # 3fa8 <listen@GLIBC_2.2.5>
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <ntohs@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 d5 2d 00 00 	bnd jmpq *0x2dd5(%rip)        # 3fb0 <ntohs@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <poll@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 cd 2d 00 00 	bnd jmpq *0x2dcd(%rip)        # 3fb8 <poll@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <bind@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 c5 2d 00 00 	bnd jmpq *0x2dc5(%rip)        # 3fc0 <bind@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <accept@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 bd 2d 00 00 	bnd jmpq *0x2dbd(%rip)        # 3fc8 <accept@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <socket@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 b5 2d 00 00 	bnd jmpq *0x2db5(%rip)        # 3fd0 <socket@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001220 <_start>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	31 ed                	xor    %ebp,%ebp
    1226:	49 89 d1             	mov    %rdx,%r9
    1229:	5e                   	pop    %rsi
    122a:	48 89 e2             	mov    %rsp,%rdx
    122d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1231:	50                   	push   %rax
    1232:	54                   	push   %rsp
    1233:	4c 8d 05 96 05 00 00 	lea    0x596(%rip),%r8        # 17d0 <__libc_csu_fini>
    123a:	48 8d 0d 1f 05 00 00 	lea    0x51f(%rip),%rcx        # 1760 <__libc_csu_init>
    1241:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1309 <main>
    1248:	ff 15 92 2d 00 00    	callq  *0x2d92(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    124e:	f4                   	hlt    
    124f:	90                   	nop

0000000000001250 <deregister_tm_clones>:
    1250:	48 8d 3d b9 2d 00 00 	lea    0x2db9(%rip),%rdi        # 4010 <__TMC_END__>
    1257:	48 8d 05 b2 2d 00 00 	lea    0x2db2(%rip),%rax        # 4010 <__TMC_END__>
    125e:	48 39 f8             	cmp    %rdi,%rax
    1261:	74 15                	je     1278 <deregister_tm_clones+0x28>
    1263:	48 8b 05 6e 2d 00 00 	mov    0x2d6e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    126a:	48 85 c0             	test   %rax,%rax
    126d:	74 09                	je     1278 <deregister_tm_clones+0x28>
    126f:	ff e0                	jmpq   *%rax
    1271:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1278:	c3                   	retq   
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <register_tm_clones>:
    1280:	48 8d 3d 89 2d 00 00 	lea    0x2d89(%rip),%rdi        # 4010 <__TMC_END__>
    1287:	48 8d 35 82 2d 00 00 	lea    0x2d82(%rip),%rsi        # 4010 <__TMC_END__>
    128e:	48 29 fe             	sub    %rdi,%rsi
    1291:	48 89 f0             	mov    %rsi,%rax
    1294:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1298:	48 c1 f8 03          	sar    $0x3,%rax
    129c:	48 01 c6             	add    %rax,%rsi
    129f:	48 d1 fe             	sar    %rsi
    12a2:	74 14                	je     12b8 <register_tm_clones+0x38>
    12a4:	48 8b 05 45 2d 00 00 	mov    0x2d45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    12ab:	48 85 c0             	test   %rax,%rax
    12ae:	74 08                	je     12b8 <register_tm_clones+0x38>
    12b0:	ff e0                	jmpq   *%rax
    12b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12b8:	c3                   	retq   
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012c0 <__do_global_dtors_aux>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	80 3d 55 2d 00 00 00 	cmpb   $0x0,0x2d55(%rip)        # 4020 <completed.8060>
    12cb:	75 2b                	jne    12f8 <__do_global_dtors_aux+0x38>
    12cd:	55                   	push   %rbp
    12ce:	48 83 3d 22 2d 00 00 	cmpq   $0x0,0x2d22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12d5:	00 
    12d6:	48 89 e5             	mov    %rsp,%rbp
    12d9:	74 0c                	je     12e7 <__do_global_dtors_aux+0x27>
    12db:	48 8b 3d 26 2d 00 00 	mov    0x2d26(%rip),%rdi        # 4008 <__dso_handle>
    12e2:	e8 39 fe ff ff       	callq  1120 <__cxa_finalize@plt>
    12e7:	e8 64 ff ff ff       	callq  1250 <deregister_tm_clones>
    12ec:	c6 05 2d 2d 00 00 01 	movb   $0x1,0x2d2d(%rip)        # 4020 <completed.8060>
    12f3:	5d                   	pop    %rbp
    12f4:	c3                   	retq   
    12f5:	0f 1f 00             	nopl   (%rax)
    12f8:	c3                   	retq   
    12f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001300 <frame_dummy>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	e9 77 ff ff ff       	jmpq   1280 <register_tm_clones>

0000000000001309 <main>:
#include "server.h"

TCPServer server = TCPServer(8080);

int main()
{
    1309:	f3 0f 1e fa          	endbr64 
    130d:	55                   	push   %rbp
    130e:	48 89 e5             	mov    %rsp,%rbp
    server.init();
    1311:	48 8d 3d 28 2d 00 00 	lea    0x2d28(%rip),%rdi        # 4040 <server>
    1318:	e8 89 00 00 00       	callq  13a6 <_ZN9TCPServer4initEv>

    while (1) {
        server.process();
    131d:	48 8d 3d 1c 2d 00 00 	lea    0x2d1c(%rip),%rdi        # 4040 <server>
    1324:	e8 e5 01 00 00       	callq  150e <_ZN9TCPServer7processEv>
    1329:	eb f2                	jmp    131d <main+0x14>

000000000000132b <_Z41__static_initialization_and_destruction_0ii>:
    }
    
    server.reset();
    132b:	f3 0f 1e fa          	endbr64 
    132f:	55                   	push   %rbp
    1330:	48 89 e5             	mov    %rsp,%rbp
    1333:	48 83 ec 10          	sub    $0x10,%rsp
    1337:	89 7d fc             	mov    %edi,-0x4(%rbp)
    133a:	89 75 f8             	mov    %esi,-0x8(%rbp)
    133d:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1341:	75 1a                	jne    135d <_Z41__static_initialization_and_destruction_0ii+0x32>
    1343:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    134a:	75 11                	jne    135d <_Z41__static_initialization_and_destruction_0ii+0x32>
TCPServer server = TCPServer(8080);
    134c:	be 90 1f 00 00       	mov    $0x1f90,%esi
    1351:	48 8d 3d e8 2c 00 00 	lea    0x2ce8(%rip),%rdi        # 4040 <server>
    1358:	e8 1d 00 00 00       	callq  137a <_ZN9TCPServerC1Et>
    135d:	90                   	nop
    135e:	c9                   	leaveq 
    135f:	c3                   	retq   

0000000000001360 <_GLOBAL__sub_I_server>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	55                   	push   %rbp
    1365:	48 89 e5             	mov    %rsp,%rbp
    1368:	be ff ff 00 00       	mov    $0xffff,%esi
    136d:	bf 01 00 00 00       	mov    $0x1,%edi
    1372:	e8 b4 ff ff ff       	callq  132b <_Z41__static_initialization_and_destruction_0ii>
    1377:	5d                   	pop    %rbp
    1378:	c3                   	retq   
    1379:	90                   	nop

000000000000137a <_ZN9TCPServerC1Et>:
    int count;

    char buffer[2048];
    size_t len;

    TCPServer(uint16_t port) : port(port)
    137a:	f3 0f 1e fa          	endbr64 
    137e:	55                   	push   %rbp
    137f:	48 89 e5             	mov    %rsp,%rbp
    1382:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1386:	89 f0                	mov    %esi,%eax
    1388:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
    138c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1390:	0f b7 55 f4          	movzwl -0xc(%rbp),%edx
    1394:	66 89 10             	mov    %dx,(%rax)
    {
        count = 0;
    1397:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    139b:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%rax)
    }
    13a2:	90                   	nop
    13a3:	5d                   	pop    %rbp
    13a4:	c3                   	retq   
    13a5:	90                   	nop

00000000000013a6 <_ZN9TCPServer4initEv>:
#include <stdio.h>

#include "server.h"

int TCPServer::init(void)
{
    13a6:	f3 0f 1e fa          	endbr64 
    13aa:	55                   	push   %rbp
    13ab:	48 89 e5             	mov    %rsp,%rbp
    13ae:	48 83 ec 20          	sub    $0x20,%rsp
    13b2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    int sock = socket(AF_INET, SOCK_STREAM, 0);
    13b6:	ba 00 00 00 00       	mov    $0x0,%edx
    13bb:	be 01 00 00 00       	mov    $0x1,%esi
    13c0:	bf 02 00 00 00       	mov    $0x2,%edi
    13c5:	e8 46 fe ff ff       	callq  1210 <socket@plt>
    13ca:	89 45 f8             	mov    %eax,-0x8(%rbp)
    if (sock < 0) {
    13cd:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    13d1:	79 1e                	jns    13f1 <_ZN9TCPServer4initEv+0x4b>
        printf("socket error=%d", sock);
    13d3:	8b 45 f8             	mov    -0x8(%rbp),%eax
    13d6:	89 c6                	mov    %eax,%esi
    13d8:	48 8d 3d 29 0c 00 00 	lea    0xc29(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    13df:	b8 00 00 00 00       	mov    $0x0,%eax
    13e4:	e8 a7 fd ff ff       	callq  1190 <printf@plt>
        return sock;
    13e9:	8b 45 f8             	mov    -0x8(%rbp),%eax
    13ec:	e9 1b 01 00 00       	jmpq   150c <_ZN9TCPServer4initEv+0x166>
    }

    int ret = fcntl(sock, F_SETFL, O_NONBLOCK);
    13f1:	8b 45 f8             	mov    -0x8(%rbp),%eax
    13f4:	ba 00 08 00 00       	mov    $0x800,%edx
    13f9:	be 04 00 00 00       	mov    $0x4,%esi
    13fe:	89 c7                	mov    %eax,%edi
    1400:	b8 00 00 00 00       	mov    $0x0,%eax
    1405:	e8 46 fd ff ff       	callq  1150 <fcntl@plt>
    140a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    if (ret < 0) {
    140d:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1411:	79 1e                	jns    1431 <_ZN9TCPServer4initEv+0x8b>
        printf("fcntl error=%d", ret);
    1413:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1416:	89 c6                	mov    %eax,%esi
    1418:	48 8d 3d f9 0b 00 00 	lea    0xbf9(%rip),%rdi        # 2018 <_IO_stdin_used+0x18>
    141f:	b8 00 00 00 00       	mov    $0x0,%eax
    1424:	e8 67 fd ff ff       	callq  1190 <printf@plt>
        return ret;
    1429:	8b 45 fc             	mov    -0x4(%rbp),%eax
    142c:	e9 db 00 00 00       	jmpq   150c <_ZN9TCPServer4initEv+0x166>
    }
    
    serv.sin_port = htons(port);
    1431:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1435:	0f b7 00             	movzwl (%rax),%eax
    1438:	0f b7 c0             	movzwl %ax,%eax
    143b:	89 c7                	mov    %eax,%edi
    143d:	e8 3e fd ff ff       	callq  1180 <htons@plt>
    1442:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1446:	66 89 42 06          	mov    %ax,0x6(%rdx)
    serv.sin_family = AF_INET;
    144a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    144e:	66 c7 40 04 02 00    	movw   $0x2,0x4(%rax)
    serv.sin_addr.s_addr = INADDR_ANY;
    1454:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1458:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    
    ret = bind(sock, (const struct sockaddr*) &serv, sizeof(struct sockaddr_in));
    145f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1463:	48 8d 48 04          	lea    0x4(%rax),%rcx
    1467:	8b 45 f8             	mov    -0x8(%rbp),%eax
    146a:	ba 10 00 00 00       	mov    $0x10,%edx
    146f:	48 89 ce             	mov    %rcx,%rsi
    1472:	89 c7                	mov    %eax,%edi
    1474:	e8 77 fd ff ff       	callq  11f0 <bind@plt>
    1479:	89 45 fc             	mov    %eax,-0x4(%rbp)
    if (ret < 0) {
    147c:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1480:	79 1b                	jns    149d <_ZN9TCPServer4initEv+0xf7>
        printf("bind error=%d", ret);
    1482:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1485:	89 c6                	mov    %eax,%esi
    1487:	48 8d 3d 99 0b 00 00 	lea    0xb99(%rip),%rdi        # 2027 <_IO_stdin_used+0x27>
    148e:	b8 00 00 00 00       	mov    $0x0,%eax
    1493:	e8 f8 fc ff ff       	callq  1190 <printf@plt>
        return ret;
    1498:	8b 45 fc             	mov    -0x4(%rbp),%eax
    149b:	eb 6f                	jmp    150c <_ZN9TCPServer4initEv+0x166>
    }

    ret = listen(sock, 0);
    149d:	8b 45 f8             	mov    -0x8(%rbp),%eax
    14a0:	be 00 00 00 00       	mov    $0x0,%esi
    14a5:	89 c7                	mov    %eax,%edi
    14a7:	e8 14 fd ff ff       	callq  11c0 <listen@plt>
    14ac:	89 45 fc             	mov    %eax,-0x4(%rbp)
    if (ret < 0) {
    14af:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    14b3:	79 1b                	jns    14d0 <_ZN9TCPServer4initEv+0x12a>
        printf("listen error=%d", ret);
    14b5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14b8:	89 c6                	mov    %eax,%esi
    14ba:	48 8d 3d 74 0b 00 00 	lea    0xb74(%rip),%rdi        # 2035 <_IO_stdin_used+0x35>
    14c1:	b8 00 00 00 00       	mov    $0x0,%eax
    14c6:	e8 c5 fc ff ff       	callq  1190 <printf@plt>
        return ret;
    14cb:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14ce:	eb 3c                	jmp    150c <_ZN9TCPServer4initEv+0x166>
    }

    memset(fds, 0x00, sizeof(fds));
    14d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14d4:	48 83 c0 24          	add    $0x24,%rax
    14d8:	ba 10 00 00 00       	mov    $0x10,%edx
    14dd:	be 00 00 00 00       	mov    $0x0,%esi
    14e2:	48 89 c7             	mov    %rax,%rdi
    14e5:	e8 b6 fc ff ff       	callq  11a0 <memset@plt>

    fds[0].fd = sock;
    14ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14ee:	8b 55 f8             	mov    -0x8(%rbp),%edx
    14f1:	89 50 24             	mov    %edx,0x24(%rax)
    fds[0].events = POLL_IN;
    14f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14f8:	66 c7 40 28 01 00    	movw   $0x1,0x28(%rax)

    count = 1;
    14fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1502:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%rax)

    return ret;
    1509:	8b 45 fc             	mov    -0x4(%rbp),%eax
}
    150c:	c9                   	leaveq 
    150d:	c3                   	retq   

000000000000150e <_ZN9TCPServer7processEv>:

int TCPServer::process(void)
{
    150e:	f3 0f 1e fa          	endbr64 
    1512:	55                   	push   %rbp
    1513:	48 89 e5             	mov    %rsp,%rbp
    1516:	53                   	push   %rbx
    1517:	48 83 ec 38          	sub    $0x38,%rsp
    151b:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    151f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1526:	00 00 
    1528:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    152c:	31 c0                	xor    %eax,%eax
    int ret = poll(fds, count, -1);
    152e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1532:	8b 40 34             	mov    0x34(%rax),%eax
    1535:	48 98                	cltq   
    1537:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    153b:	48 8d 4a 24          	lea    0x24(%rdx),%rcx
    153f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1544:	48 89 c6             	mov    %rax,%rsi
    1547:	48 89 cf             	mov    %rcx,%rdi
    154a:	e8 91 fc ff ff       	callq  11e0 <poll@plt>
    154f:	89 45 d8             	mov    %eax,-0x28(%rbp)
    if (ret > 0) {
    1552:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
    1556:	0f 8e 90 01 00 00    	jle    16ec <_ZN9TCPServer7processEv+0x1de>
        // printf("fds[0].revents = %d\n", fds[0].revents);
        // printf("fds[1].revents = %d\n", fds[1].revents);

        if (fds[0].revents & POLL_IN) {
    155c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1560:	0f b7 40 2a          	movzwl 0x2a(%rax),%eax
    1564:	98                   	cwtl   
    1565:	83 e0 01             	and    $0x1,%eax
    1568:	85 c0                	test   %eax,%eax
    156a:	0f 84 d4 00 00 00    	je     1644 <_ZN9TCPServer7processEv+0x136>
            ssize_t addr_len = sizeof(struct sockaddr_in);
    1570:	48 c7 45 e0 10 00 00 	movq   $0x10,-0x20(%rbp)
    1577:	00 
            ret = accept(fds[0].fd, (sockaddr*) &cli, (socklen_t*) &addr_len);
    1578:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    157c:	48 8d 48 14          	lea    0x14(%rax),%rcx
    1580:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1584:	8b 40 24             	mov    0x24(%rax),%eax
    1587:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    158b:	48 89 ce             	mov    %rcx,%rsi
    158e:	89 c7                	mov    %eax,%edi
    1590:	e8 6b fc ff ff       	callq  1200 <accept@plt>
    1595:	89 45 d8             	mov    %eax,-0x28(%rbp)
            
            if (ret < 0) {
    1598:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
    159c:	79 1b                	jns    15b9 <_ZN9TCPServer7processEv+0xab>
                printf("accept error=%d\n", ret);
    159e:	8b 45 d8             	mov    -0x28(%rbp),%eax
    15a1:	89 c6                	mov    %eax,%esi
    15a3:	48 8d 3d 9b 0a 00 00 	lea    0xa9b(%rip),%rdi        # 2045 <_IO_stdin_used+0x45>
    15aa:	b8 00 00 00 00       	mov    $0x0,%eax
    15af:	e8 dc fb ff ff       	callq  1190 <printf@plt>
    15b4:	e9 8b 00 00 00       	jmpq   1644 <_ZN9TCPServer7processEv+0x136>
            } else if (count == 2) {
    15b9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    15bd:	8b 40 34             	mov    0x34(%rax),%eax
    15c0:	83 f8 02             	cmp    $0x2,%eax
    15c3:	75 18                	jne    15dd <_ZN9TCPServer7processEv+0xcf>
                printf("incoming connection refused\n");
    15c5:	48 8d 3d 8a 0a 00 00 	lea    0xa8a(%rip),%rdi        # 2056 <_IO_stdin_used+0x56>
    15cc:	e8 6f fb ff ff       	callq  1140 <puts@plt>
                close(ret);
    15d1:	8b 45 d8             	mov    -0x28(%rbp),%eax
    15d4:	89 c7                	mov    %eax,%edi
    15d6:	e8 d5 fb ff ff       	callq  11b0 <close@plt>
    15db:	eb 67                	jmp    1644 <_ZN9TCPServer7processEv+0x136>
            } else {
                printf("new client connection %d (%s : %hu)\n",
                       fds[0].fd,
                       inet_ntoa(cli.sin_addr),
                       ntohs(cli.sin_port));
    15dd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    15e1:	0f b7 40 16          	movzwl 0x16(%rax),%eax
    15e5:	0f b7 c0             	movzwl %ax,%eax
    15e8:	89 c7                	mov    %eax,%edi
    15ea:	e8 e1 fb ff ff       	callq  11d0 <ntohs@plt>
                printf("new client connection %d (%s : %hu)\n",
    15ef:	0f b7 d8             	movzwl %ax,%ebx
    15f2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    15f6:	8b 40 18             	mov    0x18(%rax),%eax
    15f9:	89 c7                	mov    %eax,%edi
    15fb:	e8 60 fb ff ff       	callq  1160 <inet_ntoa@plt>
    1600:	48 89 c2             	mov    %rax,%rdx
    1603:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1607:	8b 40 24             	mov    0x24(%rax),%eax
    160a:	89 d9                	mov    %ebx,%ecx
    160c:	89 c6                	mov    %eax,%esi
    160e:	48 8d 3d 63 0a 00 00 	lea    0xa63(%rip),%rdi        # 2078 <_IO_stdin_used+0x78>
    1615:	b8 00 00 00 00       	mov    $0x0,%eax
    161a:	e8 71 fb ff ff       	callq  1190 <printf@plt>
                fds[1].fd = ret;
    161f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1623:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1626:	89 50 2c             	mov    %edx,0x2c(%rax)
                fds[1].events = POLL_IN;
    1629:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    162d:	66 c7 40 30 01 00    	movw   $0x1,0x30(%rax)
                count += 1;
    1633:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1637:	8b 40 34             	mov    0x34(%rax),%eax
    163a:	8d 50 01             	lea    0x1(%rax),%edx
    163d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1641:	89 50 34             	mov    %edx,0x34(%rax)
            }
        }
        if (fds[1].revents & POLL_IN) {
    1644:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1648:	0f b7 40 32          	movzwl 0x32(%rax),%eax
    164c:	98                   	cwtl   
    164d:	83 e0 01             	and    $0x1,%eax
    1650:	85 c0                	test   %eax,%eax
    1652:	0f 84 be 00 00 00    	je     1716 <_ZN9TCPServer7processEv+0x208>
            int received = recv(fds[1].fd, buffer, sizeof(buffer), 0);
    1658:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    165c:	48 8d 70 38          	lea    0x38(%rax),%rsi
    1660:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1664:	8b 40 2c             	mov    0x2c(%rax),%eax
    1667:	b9 00 00 00 00       	mov    $0x0,%ecx
    166c:	ba 00 08 00 00       	mov    $0x800,%edx
    1671:	89 c7                	mov    %eax,%edi
    1673:	e8 b8 fa ff ff       	callq  1130 <recv@plt>
    1678:	89 45 dc             	mov    %eax,-0x24(%rbp)
            if (received > 0) {
    167b:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    167f:	7e 42                	jle    16c3 <_ZN9TCPServer7processEv+0x1b5>
                printf("received %d bytes\n", received);
    1681:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1684:	89 c6                	mov    %eax,%esi
    1686:	48 8d 3d 10 0a 00 00 	lea    0xa10(%rip),%rdi        # 209d <_IO_stdin_used+0x9d>
    168d:	b8 00 00 00 00       	mov    $0x0,%eax
    1692:	e8 f9 fa ff ff       	callq  1190 <printf@plt>
                buffer[received] = 0;
    1697:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    169b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    169e:	48 98                	cltq   
    16a0:	c6 44 02 38 00       	movb   $0x0,0x38(%rdx,%rax,1)
                printf("> %s", buffer);
    16a5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    16a9:	48 83 c0 38          	add    $0x38,%rax
    16ad:	48 89 c6             	mov    %rax,%rsi
    16b0:	48 8d 3d f9 09 00 00 	lea    0x9f9(%rip),%rdi        # 20b0 <_IO_stdin_used+0xb0>
    16b7:	b8 00 00 00 00       	mov    $0x0,%eax
    16bc:	e8 cf fa ff ff       	callq  1190 <printf@plt>
    16c1:	eb 53                	jmp    1716 <_ZN9TCPServer7processEv+0x208>
            } else {
                printf("closing client socket\n");
    16c3:	48 8d 3d eb 09 00 00 	lea    0x9eb(%rip),%rdi        # 20b5 <_IO_stdin_used+0xb5>
    16ca:	e8 71 fa ff ff       	callq  1140 <puts@plt>
                close(received);
    16cf:	8b 45 dc             	mov    -0x24(%rbp),%eax
    16d2:	89 c7                	mov    %eax,%edi
    16d4:	e8 d7 fa ff ff       	callq  11b0 <close@plt>
                count -= 1;
    16d9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    16dd:	8b 40 34             	mov    0x34(%rax),%eax
    16e0:	8d 50 ff             	lea    -0x1(%rax),%edx
    16e3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    16e7:	89 50 34             	mov    %edx,0x34(%rax)
    16ea:	eb 2a                	jmp    1716 <_ZN9TCPServer7processEv+0x208>
            }
        }
    } else if (ret == 0) {
    16ec:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
    16f0:	75 0e                	jne    1700 <_ZN9TCPServer7processEv+0x1f2>
        printf("poll timeout\n");
    16f2:	48 8d 3d d2 09 00 00 	lea    0x9d2(%rip),%rdi        # 20cb <_IO_stdin_used+0xcb>
    16f9:	e8 42 fa ff ff       	callq  1140 <puts@plt>
    16fe:	eb 16                	jmp    1716 <_ZN9TCPServer7processEv+0x208>
    } else {
        printf("poll error=%d", ret);
    1700:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1703:	89 c6                	mov    %eax,%esi
    1705:	48 8d 3d cc 09 00 00 	lea    0x9cc(%rip),%rdi        # 20d8 <_IO_stdin_used+0xd8>
    170c:	b8 00 00 00 00       	mov    $0x0,%eax
    1711:	e8 7a fa ff ff       	callq  1190 <printf@plt>
    }
    return ret;
    1716:	8b 45 d8             	mov    -0x28(%rbp),%eax
}
    1719:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    171d:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    1724:	00 00 
    1726:	74 05                	je     172d <_ZN9TCPServer7processEv+0x21f>
    1728:	e8 43 fa ff ff       	callq  1170 <__stack_chk_fail@plt>
    172d:	48 83 c4 38          	add    $0x38,%rsp
    1731:	5b                   	pop    %rbx
    1732:	5d                   	pop    %rbp
    1733:	c3                   	retq   

0000000000001734 <_ZN9TCPServer5resetEv>:

void TCPServer::reset(void)
{
    1734:	f3 0f 1e fa          	endbr64 
    1738:	55                   	push   %rbp
    1739:	48 89 e5             	mov    %rsp,%rbp
    173c:	48 83 ec 10          	sub    $0x10,%rsp
    1740:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    close(fds[0].fd);
    1744:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1748:	8b 40 24             	mov    0x24(%rax),%eax
    174b:	89 c7                	mov    %eax,%edi
    174d:	e8 5e fa ff ff       	callq  11b0 <close@plt>
    1752:	90                   	nop
    1753:	c9                   	leaveq 
    1754:	c3                   	retq   
    1755:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    175c:	00 00 00 
    175f:	90                   	nop

0000000000001760 <__libc_csu_init>:
    1760:	f3 0f 1e fa          	endbr64 
    1764:	41 57                	push   %r15
    1766:	4c 8d 3d d3 25 00 00 	lea    0x25d3(%rip),%r15        # 3d40 <__frame_dummy_init_array_entry>
    176d:	41 56                	push   %r14
    176f:	49 89 d6             	mov    %rdx,%r14
    1772:	41 55                	push   %r13
    1774:	49 89 f5             	mov    %rsi,%r13
    1777:	41 54                	push   %r12
    1779:	41 89 fc             	mov    %edi,%r12d
    177c:	55                   	push   %rbp
    177d:	48 8d 2d cc 25 00 00 	lea    0x25cc(%rip),%rbp        # 3d50 <__do_global_dtors_aux_fini_array_entry>
    1784:	53                   	push   %rbx
    1785:	4c 29 fd             	sub    %r15,%rbp
    1788:	48 83 ec 08          	sub    $0x8,%rsp
    178c:	e8 6f f8 ff ff       	callq  1000 <_init>
    1791:	48 c1 fd 03          	sar    $0x3,%rbp
    1795:	74 1f                	je     17b6 <__libc_csu_init+0x56>
    1797:	31 db                	xor    %ebx,%ebx
    1799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17a0:	4c 89 f2             	mov    %r14,%rdx
    17a3:	4c 89 ee             	mov    %r13,%rsi
    17a6:	44 89 e7             	mov    %r12d,%edi
    17a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    17ad:	48 83 c3 01          	add    $0x1,%rbx
    17b1:	48 39 dd             	cmp    %rbx,%rbp
    17b4:	75 ea                	jne    17a0 <__libc_csu_init+0x40>
    17b6:	48 83 c4 08          	add    $0x8,%rsp
    17ba:	5b                   	pop    %rbx
    17bb:	5d                   	pop    %rbp
    17bc:	41 5c                	pop    %r12
    17be:	41 5d                	pop    %r13
    17c0:	41 5e                	pop    %r14
    17c2:	41 5f                	pop    %r15
    17c4:	c3                   	retq   
    17c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    17cc:	00 00 00 00 

00000000000017d0 <__libc_csu_fini>:
    17d0:	f3 0f 1e fa          	endbr64 
    17d4:	c3                   	retq   

Disassembly of section .fini:

00000000000017d8 <_fini>:
    17d8:	f3 0f 1e fa          	endbr64 
    17dc:	48 83 ec 08          	sub    $0x8,%rsp
    17e0:	48 83 c4 08          	add    $0x8,%rsp
    17e4:	c3                   	retq   
