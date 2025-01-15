
user/initcode.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <start>:
   0:	00000517          	auipc	a0,0x0
   4:	00050513          	mv	a0,a0
   8:	00000597          	auipc	a1,0x0
   c:	00058593          	mv	a1,a1
  10:	00700893          	li	a7,7
  14:	00000073          	ecall

0000000000000018 <exit>:
  18:	00200893          	li	a7,2
  1c:	00000073          	ecall
  20:	ff9ff0ef          	jal	18 <exit>

0000000000000024 <init>:
  24:	696e692f          	.word	0x696e692f
  28:	           	Address 0x28 is out of bounds.


000000000000002b <argv>:
	...
