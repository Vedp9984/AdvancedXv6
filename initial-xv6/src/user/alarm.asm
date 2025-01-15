
user/_alarm:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <handler>:
   0:	1141                	add	sp,sp,-16
   2:	e406                	sd	ra,8(sp)
   4:	e022                	sd	s0,0(sp)
   6:	0800                	add	s0,sp,16
   8:	00001517          	auipc	a0,0x1
   c:	85850513          	add	a0,a0,-1960 # 860 <malloc+0x106>
  10:	00000097          	auipc	ra,0x0
  14:	692080e7          	jalr	1682(ra) # 6a2 <printf>
  18:	00000097          	auipc	ra,0x0
  1c:	3ba080e7          	jalr	954(ra) # 3d2 <sigreturn>
  20:	60a2                	ld	ra,8(sp)
  22:	6402                	ld	s0,0(sp)
  24:	0141                	add	sp,sp,16
  26:	8082                	ret

0000000000000028 <main>:
  28:	7179                	add	sp,sp,-48
  2a:	f406                	sd	ra,40(sp)
  2c:	f022                	sd	s0,32(sp)
  2e:	ec26                	sd	s1,24(sp)
  30:	e84a                	sd	s2,16(sp)
  32:	e44e                	sd	s3,8(sp)
  34:	e052                	sd	s4,0(sp)
  36:	1800                	add	s0,sp,48
  38:	00000597          	auipc	a1,0x0
  3c:	fc858593          	add	a1,a1,-56 # 0 <handler>
  40:	4529                	li	a0,10
  42:	00000097          	auipc	ra,0x0
  46:	388080e7          	jalr	904(ra) # 3ca <sigalarm>
  4a:	4481                	li	s1,0
  4c:	0007a9b7          	lui	s3,0x7a
  50:	1209899b          	addw	s3,s3,288 # 7a120 <base+0x78d00>
  54:	00001a17          	auipc	s4,0x1
  58:	81ca0a13          	add	s4,s4,-2020 # 870 <malloc+0x116>
  5c:	017d8937          	lui	s2,0x17d8
  60:	84090913          	add	s2,s2,-1984 # 17d7840 <base+0x17d6420>
  64:	a021                	j	6c <main+0x44>
  66:	2485                	addw	s1,s1,1
  68:	01248b63          	beq	s1,s2,7e <main+0x56>
  6c:	0334e7bb          	remw	a5,s1,s3
  70:	fbfd                	bnez	a5,66 <main+0x3e>
  72:	8552                	mv	a0,s4
  74:	00000097          	auipc	ra,0x0
  78:	62e080e7          	jalr	1582(ra) # 6a2 <printf>
  7c:	b7ed                	j	66 <main+0x3e>
  7e:	4581                	li	a1,0
  80:	4501                	li	a0,0
  82:	00000097          	auipc	ra,0x0
  86:	348080e7          	jalr	840(ra) # 3ca <sigalarm>
  8a:	4501                	li	a0,0
  8c:	00000097          	auipc	ra,0x0
  90:	28e080e7          	jalr	654(ra) # 31a <exit>

0000000000000094 <_main>:
  94:	1141                	add	sp,sp,-16
  96:	e406                	sd	ra,8(sp)
  98:	e022                	sd	s0,0(sp)
  9a:	0800                	add	s0,sp,16
  9c:	00000097          	auipc	ra,0x0
  a0:	f8c080e7          	jalr	-116(ra) # 28 <main>
  a4:	4501                	li	a0,0
  a6:	00000097          	auipc	ra,0x0
  aa:	274080e7          	jalr	628(ra) # 31a <exit>

00000000000000ae <strcpy>:
  ae:	1141                	add	sp,sp,-16
  b0:	e422                	sd	s0,8(sp)
  b2:	0800                	add	s0,sp,16
  b4:	87aa                	mv	a5,a0
  b6:	0585                	add	a1,a1,1
  b8:	0785                	add	a5,a5,1
  ba:	fff5c703          	lbu	a4,-1(a1)
  be:	fee78fa3          	sb	a4,-1(a5)
  c2:	fb75                	bnez	a4,b6 <strcpy+0x8>
  c4:	6422                	ld	s0,8(sp)
  c6:	0141                	add	sp,sp,16
  c8:	8082                	ret

00000000000000ca <strcmp>:
  ca:	1141                	add	sp,sp,-16
  cc:	e422                	sd	s0,8(sp)
  ce:	0800                	add	s0,sp,16
  d0:	00054783          	lbu	a5,0(a0)
  d4:	cb91                	beqz	a5,e8 <strcmp+0x1e>
  d6:	0005c703          	lbu	a4,0(a1)
  da:	00f71763          	bne	a4,a5,e8 <strcmp+0x1e>
  de:	0505                	add	a0,a0,1
  e0:	0585                	add	a1,a1,1
  e2:	00054783          	lbu	a5,0(a0)
  e6:	fbe5                	bnez	a5,d6 <strcmp+0xc>
  e8:	0005c503          	lbu	a0,0(a1)
  ec:	40a7853b          	subw	a0,a5,a0
  f0:	6422                	ld	s0,8(sp)
  f2:	0141                	add	sp,sp,16
  f4:	8082                	ret

00000000000000f6 <strlen>:
  f6:	1141                	add	sp,sp,-16
  f8:	e422                	sd	s0,8(sp)
  fa:	0800                	add	s0,sp,16
  fc:	00054783          	lbu	a5,0(a0)
 100:	cf91                	beqz	a5,11c <strlen+0x26>
 102:	0505                	add	a0,a0,1
 104:	87aa                	mv	a5,a0
 106:	86be                	mv	a3,a5
 108:	0785                	add	a5,a5,1
 10a:	fff7c703          	lbu	a4,-1(a5)
 10e:	ff65                	bnez	a4,106 <strlen+0x10>
 110:	40a6853b          	subw	a0,a3,a0
 114:	2505                	addw	a0,a0,1
 116:	6422                	ld	s0,8(sp)
 118:	0141                	add	sp,sp,16
 11a:	8082                	ret
 11c:	4501                	li	a0,0
 11e:	bfe5                	j	116 <strlen+0x20>

0000000000000120 <memset>:
 120:	1141                	add	sp,sp,-16
 122:	e422                	sd	s0,8(sp)
 124:	0800                	add	s0,sp,16
 126:	ca19                	beqz	a2,13c <memset+0x1c>
 128:	87aa                	mv	a5,a0
 12a:	1602                	sll	a2,a2,0x20
 12c:	9201                	srl	a2,a2,0x20
 12e:	00a60733          	add	a4,a2,a0
 132:	00b78023          	sb	a1,0(a5)
 136:	0785                	add	a5,a5,1
 138:	fee79de3          	bne	a5,a4,132 <memset+0x12>
 13c:	6422                	ld	s0,8(sp)
 13e:	0141                	add	sp,sp,16
 140:	8082                	ret

0000000000000142 <strchr>:
 142:	1141                	add	sp,sp,-16
 144:	e422                	sd	s0,8(sp)
 146:	0800                	add	s0,sp,16
 148:	00054783          	lbu	a5,0(a0)
 14c:	cb99                	beqz	a5,162 <strchr+0x20>
 14e:	00f58763          	beq	a1,a5,15c <strchr+0x1a>
 152:	0505                	add	a0,a0,1
 154:	00054783          	lbu	a5,0(a0)
 158:	fbfd                	bnez	a5,14e <strchr+0xc>
 15a:	4501                	li	a0,0
 15c:	6422                	ld	s0,8(sp)
 15e:	0141                	add	sp,sp,16
 160:	8082                	ret
 162:	4501                	li	a0,0
 164:	bfe5                	j	15c <strchr+0x1a>

0000000000000166 <gets>:
 166:	711d                	add	sp,sp,-96
 168:	ec86                	sd	ra,88(sp)
 16a:	e8a2                	sd	s0,80(sp)
 16c:	e4a6                	sd	s1,72(sp)
 16e:	e0ca                	sd	s2,64(sp)
 170:	fc4e                	sd	s3,56(sp)
 172:	f852                	sd	s4,48(sp)
 174:	f456                	sd	s5,40(sp)
 176:	f05a                	sd	s6,32(sp)
 178:	ec5e                	sd	s7,24(sp)
 17a:	1080                	add	s0,sp,96
 17c:	8baa                	mv	s7,a0
 17e:	8a2e                	mv	s4,a1
 180:	892a                	mv	s2,a0
 182:	4481                	li	s1,0
 184:	4aa9                	li	s5,10
 186:	4b35                	li	s6,13
 188:	89a6                	mv	s3,s1
 18a:	2485                	addw	s1,s1,1
 18c:	0344d863          	bge	s1,s4,1bc <gets+0x56>
 190:	4605                	li	a2,1
 192:	faf40593          	add	a1,s0,-81
 196:	4501                	li	a0,0
 198:	00000097          	auipc	ra,0x0
 19c:	19a080e7          	jalr	410(ra) # 332 <read>
 1a0:	00a05e63          	blez	a0,1bc <gets+0x56>
 1a4:	faf44783          	lbu	a5,-81(s0)
 1a8:	00f90023          	sb	a5,0(s2)
 1ac:	01578763          	beq	a5,s5,1ba <gets+0x54>
 1b0:	0905                	add	s2,s2,1
 1b2:	fd679be3          	bne	a5,s6,188 <gets+0x22>
 1b6:	89a6                	mv	s3,s1
 1b8:	a011                	j	1bc <gets+0x56>
 1ba:	89a6                	mv	s3,s1
 1bc:	99de                	add	s3,s3,s7
 1be:	00098023          	sb	zero,0(s3)
 1c2:	855e                	mv	a0,s7
 1c4:	60e6                	ld	ra,88(sp)
 1c6:	6446                	ld	s0,80(sp)
 1c8:	64a6                	ld	s1,72(sp)
 1ca:	6906                	ld	s2,64(sp)
 1cc:	79e2                	ld	s3,56(sp)
 1ce:	7a42                	ld	s4,48(sp)
 1d0:	7aa2                	ld	s5,40(sp)
 1d2:	7b02                	ld	s6,32(sp)
 1d4:	6be2                	ld	s7,24(sp)
 1d6:	6125                	add	sp,sp,96
 1d8:	8082                	ret

00000000000001da <stat>:
 1da:	1101                	add	sp,sp,-32
 1dc:	ec06                	sd	ra,24(sp)
 1de:	e822                	sd	s0,16(sp)
 1e0:	e04a                	sd	s2,0(sp)
 1e2:	1000                	add	s0,sp,32
 1e4:	892e                	mv	s2,a1
 1e6:	4581                	li	a1,0
 1e8:	00000097          	auipc	ra,0x0
 1ec:	172080e7          	jalr	370(ra) # 35a <open>
 1f0:	02054663          	bltz	a0,21c <stat+0x42>
 1f4:	e426                	sd	s1,8(sp)
 1f6:	84aa                	mv	s1,a0
 1f8:	85ca                	mv	a1,s2
 1fa:	00000097          	auipc	ra,0x0
 1fe:	178080e7          	jalr	376(ra) # 372 <fstat>
 202:	892a                	mv	s2,a0
 204:	8526                	mv	a0,s1
 206:	00000097          	auipc	ra,0x0
 20a:	13c080e7          	jalr	316(ra) # 342 <close>
 20e:	64a2                	ld	s1,8(sp)
 210:	854a                	mv	a0,s2
 212:	60e2                	ld	ra,24(sp)
 214:	6442                	ld	s0,16(sp)
 216:	6902                	ld	s2,0(sp)
 218:	6105                	add	sp,sp,32
 21a:	8082                	ret
 21c:	597d                	li	s2,-1
 21e:	bfcd                	j	210 <stat+0x36>

0000000000000220 <atoi>:
 220:	1141                	add	sp,sp,-16
 222:	e422                	sd	s0,8(sp)
 224:	0800                	add	s0,sp,16
 226:	00054683          	lbu	a3,0(a0)
 22a:	fd06879b          	addw	a5,a3,-48
 22e:	0ff7f793          	zext.b	a5,a5
 232:	4625                	li	a2,9
 234:	02f66863          	bltu	a2,a5,264 <atoi+0x44>
 238:	872a                	mv	a4,a0
 23a:	4501                	li	a0,0
 23c:	0705                	add	a4,a4,1
 23e:	0025179b          	sllw	a5,a0,0x2
 242:	9fa9                	addw	a5,a5,a0
 244:	0017979b          	sllw	a5,a5,0x1
 248:	9fb5                	addw	a5,a5,a3
 24a:	fd07851b          	addw	a0,a5,-48
 24e:	00074683          	lbu	a3,0(a4)
 252:	fd06879b          	addw	a5,a3,-48
 256:	0ff7f793          	zext.b	a5,a5
 25a:	fef671e3          	bgeu	a2,a5,23c <atoi+0x1c>
 25e:	6422                	ld	s0,8(sp)
 260:	0141                	add	sp,sp,16
 262:	8082                	ret
 264:	4501                	li	a0,0
 266:	bfe5                	j	25e <atoi+0x3e>

0000000000000268 <memmove>:
 268:	1141                	add	sp,sp,-16
 26a:	e422                	sd	s0,8(sp)
 26c:	0800                	add	s0,sp,16
 26e:	02b57463          	bgeu	a0,a1,296 <memmove+0x2e>
 272:	00c05f63          	blez	a2,290 <memmove+0x28>
 276:	1602                	sll	a2,a2,0x20
 278:	9201                	srl	a2,a2,0x20
 27a:	00c507b3          	add	a5,a0,a2
 27e:	872a                	mv	a4,a0
 280:	0585                	add	a1,a1,1
 282:	0705                	add	a4,a4,1
 284:	fff5c683          	lbu	a3,-1(a1)
 288:	fed70fa3          	sb	a3,-1(a4)
 28c:	fef71ae3          	bne	a4,a5,280 <memmove+0x18>
 290:	6422                	ld	s0,8(sp)
 292:	0141                	add	sp,sp,16
 294:	8082                	ret
 296:	00c50733          	add	a4,a0,a2
 29a:	95b2                	add	a1,a1,a2
 29c:	fec05ae3          	blez	a2,290 <memmove+0x28>
 2a0:	fff6079b          	addw	a5,a2,-1
 2a4:	1782                	sll	a5,a5,0x20
 2a6:	9381                	srl	a5,a5,0x20
 2a8:	fff7c793          	not	a5,a5
 2ac:	97ba                	add	a5,a5,a4
 2ae:	15fd                	add	a1,a1,-1
 2b0:	177d                	add	a4,a4,-1
 2b2:	0005c683          	lbu	a3,0(a1)
 2b6:	00d70023          	sb	a3,0(a4)
 2ba:	fee79ae3          	bne	a5,a4,2ae <memmove+0x46>
 2be:	bfc9                	j	290 <memmove+0x28>

00000000000002c0 <memcmp>:
 2c0:	1141                	add	sp,sp,-16
 2c2:	e422                	sd	s0,8(sp)
 2c4:	0800                	add	s0,sp,16
 2c6:	ca05                	beqz	a2,2f6 <memcmp+0x36>
 2c8:	fff6069b          	addw	a3,a2,-1
 2cc:	1682                	sll	a3,a3,0x20
 2ce:	9281                	srl	a3,a3,0x20
 2d0:	0685                	add	a3,a3,1
 2d2:	96aa                	add	a3,a3,a0
 2d4:	00054783          	lbu	a5,0(a0)
 2d8:	0005c703          	lbu	a4,0(a1)
 2dc:	00e79863          	bne	a5,a4,2ec <memcmp+0x2c>
 2e0:	0505                	add	a0,a0,1
 2e2:	0585                	add	a1,a1,1
 2e4:	fed518e3          	bne	a0,a3,2d4 <memcmp+0x14>
 2e8:	4501                	li	a0,0
 2ea:	a019                	j	2f0 <memcmp+0x30>
 2ec:	40e7853b          	subw	a0,a5,a4
 2f0:	6422                	ld	s0,8(sp)
 2f2:	0141                	add	sp,sp,16
 2f4:	8082                	ret
 2f6:	4501                	li	a0,0
 2f8:	bfe5                	j	2f0 <memcmp+0x30>

00000000000002fa <memcpy>:
 2fa:	1141                	add	sp,sp,-16
 2fc:	e406                	sd	ra,8(sp)
 2fe:	e022                	sd	s0,0(sp)
 300:	0800                	add	s0,sp,16
 302:	00000097          	auipc	ra,0x0
 306:	f66080e7          	jalr	-154(ra) # 268 <memmove>
 30a:	60a2                	ld	ra,8(sp)
 30c:	6402                	ld	s0,0(sp)
 30e:	0141                	add	sp,sp,16
 310:	8082                	ret

0000000000000312 <fork>:
 312:	4885                	li	a7,1
 314:	00000073          	ecall
 318:	8082                	ret

000000000000031a <exit>:
 31a:	4889                	li	a7,2
 31c:	00000073          	ecall
 320:	8082                	ret

0000000000000322 <wait>:
 322:	488d                	li	a7,3
 324:	00000073          	ecall
 328:	8082                	ret

000000000000032a <pipe>:
 32a:	4891                	li	a7,4
 32c:	00000073          	ecall
 330:	8082                	ret

0000000000000332 <read>:
 332:	4895                	li	a7,5
 334:	00000073          	ecall
 338:	8082                	ret

000000000000033a <write>:
 33a:	48c1                	li	a7,16
 33c:	00000073          	ecall
 340:	8082                	ret

0000000000000342 <close>:
 342:	48d5                	li	a7,21
 344:	00000073          	ecall
 348:	8082                	ret

000000000000034a <kill>:
 34a:	4899                	li	a7,6
 34c:	00000073          	ecall
 350:	8082                	ret

0000000000000352 <exec>:
 352:	489d                	li	a7,7
 354:	00000073          	ecall
 358:	8082                	ret

000000000000035a <open>:
 35a:	48bd                	li	a7,15
 35c:	00000073          	ecall
 360:	8082                	ret

0000000000000362 <mknod>:
 362:	48c5                	li	a7,17
 364:	00000073          	ecall
 368:	8082                	ret

000000000000036a <unlink>:
 36a:	48c9                	li	a7,18
 36c:	00000073          	ecall
 370:	8082                	ret

0000000000000372 <fstat>:
 372:	48a1                	li	a7,8
 374:	00000073          	ecall
 378:	8082                	ret

000000000000037a <link>:
 37a:	48cd                	li	a7,19
 37c:	00000073          	ecall
 380:	8082                	ret

0000000000000382 <mkdir>:
 382:	48d1                	li	a7,20
 384:	00000073          	ecall
 388:	8082                	ret

000000000000038a <chdir>:
 38a:	48a5                	li	a7,9
 38c:	00000073          	ecall
 390:	8082                	ret

0000000000000392 <dup>:
 392:	48a9                	li	a7,10
 394:	00000073          	ecall
 398:	8082                	ret

000000000000039a <getpid>:
 39a:	48ad                	li	a7,11
 39c:	00000073          	ecall
 3a0:	8082                	ret

00000000000003a2 <sbrk>:
 3a2:	48b1                	li	a7,12
 3a4:	00000073          	ecall
 3a8:	8082                	ret

00000000000003aa <sleep>:
 3aa:	48b5                	li	a7,13
 3ac:	00000073          	ecall
 3b0:	8082                	ret

00000000000003b2 <uptime>:
 3b2:	48b9                	li	a7,14
 3b4:	00000073          	ecall
 3b8:	8082                	ret

00000000000003ba <waitx>:
 3ba:	48d9                	li	a7,22
 3bc:	00000073          	ecall
 3c0:	8082                	ret

00000000000003c2 <getSysCount>:
 3c2:	48dd                	li	a7,23
 3c4:	00000073          	ecall
 3c8:	8082                	ret

00000000000003ca <sigalarm>:
 3ca:	48e1                	li	a7,24
 3cc:	00000073          	ecall
 3d0:	8082                	ret

00000000000003d2 <sigreturn>:
 3d2:	48e5                	li	a7,25
 3d4:	00000073          	ecall
 3d8:	8082                	ret

00000000000003da <putc>:
 3da:	1101                	add	sp,sp,-32
 3dc:	ec06                	sd	ra,24(sp)
 3de:	e822                	sd	s0,16(sp)
 3e0:	1000                	add	s0,sp,32
 3e2:	feb407a3          	sb	a1,-17(s0)
 3e6:	4605                	li	a2,1
 3e8:	fef40593          	add	a1,s0,-17
 3ec:	00000097          	auipc	ra,0x0
 3f0:	f4e080e7          	jalr	-178(ra) # 33a <write>
 3f4:	60e2                	ld	ra,24(sp)
 3f6:	6442                	ld	s0,16(sp)
 3f8:	6105                	add	sp,sp,32
 3fa:	8082                	ret

00000000000003fc <printint>:
 3fc:	7139                	add	sp,sp,-64
 3fe:	fc06                	sd	ra,56(sp)
 400:	f822                	sd	s0,48(sp)
 402:	f426                	sd	s1,40(sp)
 404:	0080                	add	s0,sp,64
 406:	84aa                	mv	s1,a0
 408:	c299                	beqz	a3,40e <printint+0x12>
 40a:	0805cb63          	bltz	a1,4a0 <printint+0xa4>
 40e:	2581                	sext.w	a1,a1
 410:	4881                	li	a7,0
 412:	fc040693          	add	a3,s0,-64
 416:	4701                	li	a4,0
 418:	2601                	sext.w	a2,a2
 41a:	00000517          	auipc	a0,0x0
 41e:	4be50513          	add	a0,a0,1214 # 8d8 <digits>
 422:	883a                	mv	a6,a4
 424:	2705                	addw	a4,a4,1
 426:	02c5f7bb          	remuw	a5,a1,a2
 42a:	1782                	sll	a5,a5,0x20
 42c:	9381                	srl	a5,a5,0x20
 42e:	97aa                	add	a5,a5,a0
 430:	0007c783          	lbu	a5,0(a5)
 434:	00f68023          	sb	a5,0(a3)
 438:	0005879b          	sext.w	a5,a1
 43c:	02c5d5bb          	divuw	a1,a1,a2
 440:	0685                	add	a3,a3,1
 442:	fec7f0e3          	bgeu	a5,a2,422 <printint+0x26>
 446:	00088c63          	beqz	a7,45e <printint+0x62>
 44a:	fd070793          	add	a5,a4,-48
 44e:	00878733          	add	a4,a5,s0
 452:	02d00793          	li	a5,45
 456:	fef70823          	sb	a5,-16(a4)
 45a:	0028071b          	addw	a4,a6,2
 45e:	02e05c63          	blez	a4,496 <printint+0x9a>
 462:	f04a                	sd	s2,32(sp)
 464:	ec4e                	sd	s3,24(sp)
 466:	fc040793          	add	a5,s0,-64
 46a:	00e78933          	add	s2,a5,a4
 46e:	fff78993          	add	s3,a5,-1
 472:	99ba                	add	s3,s3,a4
 474:	377d                	addw	a4,a4,-1
 476:	1702                	sll	a4,a4,0x20
 478:	9301                	srl	a4,a4,0x20
 47a:	40e989b3          	sub	s3,s3,a4
 47e:	fff94583          	lbu	a1,-1(s2)
 482:	8526                	mv	a0,s1
 484:	00000097          	auipc	ra,0x0
 488:	f56080e7          	jalr	-170(ra) # 3da <putc>
 48c:	197d                	add	s2,s2,-1
 48e:	ff3918e3          	bne	s2,s3,47e <printint+0x82>
 492:	7902                	ld	s2,32(sp)
 494:	69e2                	ld	s3,24(sp)
 496:	70e2                	ld	ra,56(sp)
 498:	7442                	ld	s0,48(sp)
 49a:	74a2                	ld	s1,40(sp)
 49c:	6121                	add	sp,sp,64
 49e:	8082                	ret
 4a0:	40b005bb          	negw	a1,a1
 4a4:	4885                	li	a7,1
 4a6:	b7b5                	j	412 <printint+0x16>

00000000000004a8 <vprintf>:
 4a8:	715d                	add	sp,sp,-80
 4aa:	e486                	sd	ra,72(sp)
 4ac:	e0a2                	sd	s0,64(sp)
 4ae:	f84a                	sd	s2,48(sp)
 4b0:	0880                	add	s0,sp,80
 4b2:	0005c903          	lbu	s2,0(a1)
 4b6:	1a090a63          	beqz	s2,66a <vprintf+0x1c2>
 4ba:	fc26                	sd	s1,56(sp)
 4bc:	f44e                	sd	s3,40(sp)
 4be:	f052                	sd	s4,32(sp)
 4c0:	ec56                	sd	s5,24(sp)
 4c2:	e85a                	sd	s6,16(sp)
 4c4:	e45e                	sd	s7,8(sp)
 4c6:	8aaa                	mv	s5,a0
 4c8:	8bb2                	mv	s7,a2
 4ca:	00158493          	add	s1,a1,1
 4ce:	4981                	li	s3,0
 4d0:	02500a13          	li	s4,37
 4d4:	4b55                	li	s6,21
 4d6:	a839                	j	4f4 <vprintf+0x4c>
 4d8:	85ca                	mv	a1,s2
 4da:	8556                	mv	a0,s5
 4dc:	00000097          	auipc	ra,0x0
 4e0:	efe080e7          	jalr	-258(ra) # 3da <putc>
 4e4:	a019                	j	4ea <vprintf+0x42>
 4e6:	01498d63          	beq	s3,s4,500 <vprintf+0x58>
 4ea:	0485                	add	s1,s1,1
 4ec:	fff4c903          	lbu	s2,-1(s1)
 4f0:	16090763          	beqz	s2,65e <vprintf+0x1b6>
 4f4:	fe0999e3          	bnez	s3,4e6 <vprintf+0x3e>
 4f8:	ff4910e3          	bne	s2,s4,4d8 <vprintf+0x30>
 4fc:	89d2                	mv	s3,s4
 4fe:	b7f5                	j	4ea <vprintf+0x42>
 500:	13490463          	beq	s2,s4,628 <vprintf+0x180>
 504:	f9d9079b          	addw	a5,s2,-99
 508:	0ff7f793          	zext.b	a5,a5
 50c:	12fb6763          	bltu	s6,a5,63a <vprintf+0x192>
 510:	f9d9079b          	addw	a5,s2,-99
 514:	0ff7f713          	zext.b	a4,a5
 518:	12eb6163          	bltu	s6,a4,63a <vprintf+0x192>
 51c:	00271793          	sll	a5,a4,0x2
 520:	00000717          	auipc	a4,0x0
 524:	36070713          	add	a4,a4,864 # 880 <malloc+0x126>
 528:	97ba                	add	a5,a5,a4
 52a:	439c                	lw	a5,0(a5)
 52c:	97ba                	add	a5,a5,a4
 52e:	8782                	jr	a5
 530:	008b8913          	add	s2,s7,8
 534:	4685                	li	a3,1
 536:	4629                	li	a2,10
 538:	000ba583          	lw	a1,0(s7)
 53c:	8556                	mv	a0,s5
 53e:	00000097          	auipc	ra,0x0
 542:	ebe080e7          	jalr	-322(ra) # 3fc <printint>
 546:	8bca                	mv	s7,s2
 548:	4981                	li	s3,0
 54a:	b745                	j	4ea <vprintf+0x42>
 54c:	008b8913          	add	s2,s7,8
 550:	4681                	li	a3,0
 552:	4629                	li	a2,10
 554:	000ba583          	lw	a1,0(s7)
 558:	8556                	mv	a0,s5
 55a:	00000097          	auipc	ra,0x0
 55e:	ea2080e7          	jalr	-350(ra) # 3fc <printint>
 562:	8bca                	mv	s7,s2
 564:	4981                	li	s3,0
 566:	b751                	j	4ea <vprintf+0x42>
 568:	008b8913          	add	s2,s7,8
 56c:	4681                	li	a3,0
 56e:	4641                	li	a2,16
 570:	000ba583          	lw	a1,0(s7)
 574:	8556                	mv	a0,s5
 576:	00000097          	auipc	ra,0x0
 57a:	e86080e7          	jalr	-378(ra) # 3fc <printint>
 57e:	8bca                	mv	s7,s2
 580:	4981                	li	s3,0
 582:	b7a5                	j	4ea <vprintf+0x42>
 584:	e062                	sd	s8,0(sp)
 586:	008b8c13          	add	s8,s7,8
 58a:	000bb983          	ld	s3,0(s7)
 58e:	03000593          	li	a1,48
 592:	8556                	mv	a0,s5
 594:	00000097          	auipc	ra,0x0
 598:	e46080e7          	jalr	-442(ra) # 3da <putc>
 59c:	07800593          	li	a1,120
 5a0:	8556                	mv	a0,s5
 5a2:	00000097          	auipc	ra,0x0
 5a6:	e38080e7          	jalr	-456(ra) # 3da <putc>
 5aa:	4941                	li	s2,16
 5ac:	00000b97          	auipc	s7,0x0
 5b0:	32cb8b93          	add	s7,s7,812 # 8d8 <digits>
 5b4:	03c9d793          	srl	a5,s3,0x3c
 5b8:	97de                	add	a5,a5,s7
 5ba:	0007c583          	lbu	a1,0(a5)
 5be:	8556                	mv	a0,s5
 5c0:	00000097          	auipc	ra,0x0
 5c4:	e1a080e7          	jalr	-486(ra) # 3da <putc>
 5c8:	0992                	sll	s3,s3,0x4
 5ca:	397d                	addw	s2,s2,-1
 5cc:	fe0914e3          	bnez	s2,5b4 <vprintf+0x10c>
 5d0:	8be2                	mv	s7,s8
 5d2:	4981                	li	s3,0
 5d4:	6c02                	ld	s8,0(sp)
 5d6:	bf11                	j	4ea <vprintf+0x42>
 5d8:	008b8993          	add	s3,s7,8
 5dc:	000bb903          	ld	s2,0(s7)
 5e0:	02090163          	beqz	s2,602 <vprintf+0x15a>
 5e4:	00094583          	lbu	a1,0(s2)
 5e8:	c9a5                	beqz	a1,658 <vprintf+0x1b0>
 5ea:	8556                	mv	a0,s5
 5ec:	00000097          	auipc	ra,0x0
 5f0:	dee080e7          	jalr	-530(ra) # 3da <putc>
 5f4:	0905                	add	s2,s2,1
 5f6:	00094583          	lbu	a1,0(s2)
 5fa:	f9e5                	bnez	a1,5ea <vprintf+0x142>
 5fc:	8bce                	mv	s7,s3
 5fe:	4981                	li	s3,0
 600:	b5ed                	j	4ea <vprintf+0x42>
 602:	00000917          	auipc	s2,0x0
 606:	27690913          	add	s2,s2,630 # 878 <malloc+0x11e>
 60a:	02800593          	li	a1,40
 60e:	bff1                	j	5ea <vprintf+0x142>
 610:	008b8913          	add	s2,s7,8
 614:	000bc583          	lbu	a1,0(s7)
 618:	8556                	mv	a0,s5
 61a:	00000097          	auipc	ra,0x0
 61e:	dc0080e7          	jalr	-576(ra) # 3da <putc>
 622:	8bca                	mv	s7,s2
 624:	4981                	li	s3,0
 626:	b5d1                	j	4ea <vprintf+0x42>
 628:	02500593          	li	a1,37
 62c:	8556                	mv	a0,s5
 62e:	00000097          	auipc	ra,0x0
 632:	dac080e7          	jalr	-596(ra) # 3da <putc>
 636:	4981                	li	s3,0
 638:	bd4d                	j	4ea <vprintf+0x42>
 63a:	02500593          	li	a1,37
 63e:	8556                	mv	a0,s5
 640:	00000097          	auipc	ra,0x0
 644:	d9a080e7          	jalr	-614(ra) # 3da <putc>
 648:	85ca                	mv	a1,s2
 64a:	8556                	mv	a0,s5
 64c:	00000097          	auipc	ra,0x0
 650:	d8e080e7          	jalr	-626(ra) # 3da <putc>
 654:	4981                	li	s3,0
 656:	bd51                	j	4ea <vprintf+0x42>
 658:	8bce                	mv	s7,s3
 65a:	4981                	li	s3,0
 65c:	b579                	j	4ea <vprintf+0x42>
 65e:	74e2                	ld	s1,56(sp)
 660:	79a2                	ld	s3,40(sp)
 662:	7a02                	ld	s4,32(sp)
 664:	6ae2                	ld	s5,24(sp)
 666:	6b42                	ld	s6,16(sp)
 668:	6ba2                	ld	s7,8(sp)
 66a:	60a6                	ld	ra,72(sp)
 66c:	6406                	ld	s0,64(sp)
 66e:	7942                	ld	s2,48(sp)
 670:	6161                	add	sp,sp,80
 672:	8082                	ret

0000000000000674 <fprintf>:
 674:	715d                	add	sp,sp,-80
 676:	ec06                	sd	ra,24(sp)
 678:	e822                	sd	s0,16(sp)
 67a:	1000                	add	s0,sp,32
 67c:	e010                	sd	a2,0(s0)
 67e:	e414                	sd	a3,8(s0)
 680:	e818                	sd	a4,16(s0)
 682:	ec1c                	sd	a5,24(s0)
 684:	03043023          	sd	a6,32(s0)
 688:	03143423          	sd	a7,40(s0)
 68c:	fe843423          	sd	s0,-24(s0)
 690:	8622                	mv	a2,s0
 692:	00000097          	auipc	ra,0x0
 696:	e16080e7          	jalr	-490(ra) # 4a8 <vprintf>
 69a:	60e2                	ld	ra,24(sp)
 69c:	6442                	ld	s0,16(sp)
 69e:	6161                	add	sp,sp,80
 6a0:	8082                	ret

00000000000006a2 <printf>:
 6a2:	711d                	add	sp,sp,-96
 6a4:	ec06                	sd	ra,24(sp)
 6a6:	e822                	sd	s0,16(sp)
 6a8:	1000                	add	s0,sp,32
 6aa:	e40c                	sd	a1,8(s0)
 6ac:	e810                	sd	a2,16(s0)
 6ae:	ec14                	sd	a3,24(s0)
 6b0:	f018                	sd	a4,32(s0)
 6b2:	f41c                	sd	a5,40(s0)
 6b4:	03043823          	sd	a6,48(s0)
 6b8:	03143c23          	sd	a7,56(s0)
 6bc:	00840613          	add	a2,s0,8
 6c0:	fec43423          	sd	a2,-24(s0)
 6c4:	85aa                	mv	a1,a0
 6c6:	4505                	li	a0,1
 6c8:	00000097          	auipc	ra,0x0
 6cc:	de0080e7          	jalr	-544(ra) # 4a8 <vprintf>
 6d0:	60e2                	ld	ra,24(sp)
 6d2:	6442                	ld	s0,16(sp)
 6d4:	6125                	add	sp,sp,96
 6d6:	8082                	ret

00000000000006d8 <free>:
 6d8:	1141                	add	sp,sp,-16
 6da:	e422                	sd	s0,8(sp)
 6dc:	0800                	add	s0,sp,16
 6de:	ff050693          	add	a3,a0,-16
 6e2:	00001797          	auipc	a5,0x1
 6e6:	d2e7b783          	ld	a5,-722(a5) # 1410 <freep>
 6ea:	a02d                	j	714 <free+0x3c>
 6ec:	4618                	lw	a4,8(a2)
 6ee:	9f2d                	addw	a4,a4,a1
 6f0:	fee52c23          	sw	a4,-8(a0)
 6f4:	6398                	ld	a4,0(a5)
 6f6:	6310                	ld	a2,0(a4)
 6f8:	a83d                	j	736 <free+0x5e>
 6fa:	ff852703          	lw	a4,-8(a0)
 6fe:	9f31                	addw	a4,a4,a2
 700:	c798                	sw	a4,8(a5)
 702:	ff053683          	ld	a3,-16(a0)
 706:	a091                	j	74a <free+0x72>
 708:	6398                	ld	a4,0(a5)
 70a:	00e7e463          	bltu	a5,a4,712 <free+0x3a>
 70e:	00e6ea63          	bltu	a3,a4,722 <free+0x4a>
 712:	87ba                	mv	a5,a4
 714:	fed7fae3          	bgeu	a5,a3,708 <free+0x30>
 718:	6398                	ld	a4,0(a5)
 71a:	00e6e463          	bltu	a3,a4,722 <free+0x4a>
 71e:	fee7eae3          	bltu	a5,a4,712 <free+0x3a>
 722:	ff852583          	lw	a1,-8(a0)
 726:	6390                	ld	a2,0(a5)
 728:	02059813          	sll	a6,a1,0x20
 72c:	01c85713          	srl	a4,a6,0x1c
 730:	9736                	add	a4,a4,a3
 732:	fae60de3          	beq	a2,a4,6ec <free+0x14>
 736:	fec53823          	sd	a2,-16(a0)
 73a:	4790                	lw	a2,8(a5)
 73c:	02061593          	sll	a1,a2,0x20
 740:	01c5d713          	srl	a4,a1,0x1c
 744:	973e                	add	a4,a4,a5
 746:	fae68ae3          	beq	a3,a4,6fa <free+0x22>
 74a:	e394                	sd	a3,0(a5)
 74c:	00001717          	auipc	a4,0x1
 750:	ccf73223          	sd	a5,-828(a4) # 1410 <freep>
 754:	6422                	ld	s0,8(sp)
 756:	0141                	add	sp,sp,16
 758:	8082                	ret

000000000000075a <malloc>:
 75a:	7139                	add	sp,sp,-64
 75c:	fc06                	sd	ra,56(sp)
 75e:	f822                	sd	s0,48(sp)
 760:	f426                	sd	s1,40(sp)
 762:	ec4e                	sd	s3,24(sp)
 764:	0080                	add	s0,sp,64
 766:	02051493          	sll	s1,a0,0x20
 76a:	9081                	srl	s1,s1,0x20
 76c:	04bd                	add	s1,s1,15
 76e:	8091                	srl	s1,s1,0x4
 770:	0014899b          	addw	s3,s1,1
 774:	0485                	add	s1,s1,1
 776:	00001517          	auipc	a0,0x1
 77a:	c9a53503          	ld	a0,-870(a0) # 1410 <freep>
 77e:	c915                	beqz	a0,7b2 <malloc+0x58>
 780:	611c                	ld	a5,0(a0)
 782:	4798                	lw	a4,8(a5)
 784:	08977e63          	bgeu	a4,s1,820 <malloc+0xc6>
 788:	f04a                	sd	s2,32(sp)
 78a:	e852                	sd	s4,16(sp)
 78c:	e456                	sd	s5,8(sp)
 78e:	e05a                	sd	s6,0(sp)
 790:	8a4e                	mv	s4,s3
 792:	0009871b          	sext.w	a4,s3
 796:	6685                	lui	a3,0x1
 798:	00d77363          	bgeu	a4,a3,79e <malloc+0x44>
 79c:	6a05                	lui	s4,0x1
 79e:	000a0b1b          	sext.w	s6,s4
 7a2:	004a1a1b          	sllw	s4,s4,0x4
 7a6:	00001917          	auipc	s2,0x1
 7aa:	c6a90913          	add	s2,s2,-918 # 1410 <freep>
 7ae:	5afd                	li	s5,-1
 7b0:	a091                	j	7f4 <malloc+0x9a>
 7b2:	f04a                	sd	s2,32(sp)
 7b4:	e852                	sd	s4,16(sp)
 7b6:	e456                	sd	s5,8(sp)
 7b8:	e05a                	sd	s6,0(sp)
 7ba:	00001797          	auipc	a5,0x1
 7be:	c6678793          	add	a5,a5,-922 # 1420 <base>
 7c2:	00001717          	auipc	a4,0x1
 7c6:	c4f73723          	sd	a5,-946(a4) # 1410 <freep>
 7ca:	e39c                	sd	a5,0(a5)
 7cc:	0007a423          	sw	zero,8(a5)
 7d0:	b7c1                	j	790 <malloc+0x36>
 7d2:	6398                	ld	a4,0(a5)
 7d4:	e118                	sd	a4,0(a0)
 7d6:	a08d                	j	838 <malloc+0xde>
 7d8:	01652423          	sw	s6,8(a0)
 7dc:	0541                	add	a0,a0,16
 7de:	00000097          	auipc	ra,0x0
 7e2:	efa080e7          	jalr	-262(ra) # 6d8 <free>
 7e6:	00093503          	ld	a0,0(s2)
 7ea:	c13d                	beqz	a0,850 <malloc+0xf6>
 7ec:	611c                	ld	a5,0(a0)
 7ee:	4798                	lw	a4,8(a5)
 7f0:	02977463          	bgeu	a4,s1,818 <malloc+0xbe>
 7f4:	00093703          	ld	a4,0(s2)
 7f8:	853e                	mv	a0,a5
 7fa:	fef719e3          	bne	a4,a5,7ec <malloc+0x92>
 7fe:	8552                	mv	a0,s4
 800:	00000097          	auipc	ra,0x0
 804:	ba2080e7          	jalr	-1118(ra) # 3a2 <sbrk>
 808:	fd5518e3          	bne	a0,s5,7d8 <malloc+0x7e>
 80c:	4501                	li	a0,0
 80e:	7902                	ld	s2,32(sp)
 810:	6a42                	ld	s4,16(sp)
 812:	6aa2                	ld	s5,8(sp)
 814:	6b02                	ld	s6,0(sp)
 816:	a03d                	j	844 <malloc+0xea>
 818:	7902                	ld	s2,32(sp)
 81a:	6a42                	ld	s4,16(sp)
 81c:	6aa2                	ld	s5,8(sp)
 81e:	6b02                	ld	s6,0(sp)
 820:	fae489e3          	beq	s1,a4,7d2 <malloc+0x78>
 824:	4137073b          	subw	a4,a4,s3
 828:	c798                	sw	a4,8(a5)
 82a:	02071693          	sll	a3,a4,0x20
 82e:	01c6d713          	srl	a4,a3,0x1c
 832:	97ba                	add	a5,a5,a4
 834:	0137a423          	sw	s3,8(a5)
 838:	00001717          	auipc	a4,0x1
 83c:	bca73c23          	sd	a0,-1064(a4) # 1410 <freep>
 840:	01078513          	add	a0,a5,16
 844:	70e2                	ld	ra,56(sp)
 846:	7442                	ld	s0,48(sp)
 848:	74a2                	ld	s1,40(sp)
 84a:	69e2                	ld	s3,24(sp)
 84c:	6121                	add	sp,sp,64
 84e:	8082                	ret
 850:	7902                	ld	s2,32(sp)
 852:	6a42                	ld	s4,16(sp)
 854:	6aa2                	ld	s5,8(sp)
 856:	6b02                	ld	s6,0(sp)
 858:	b7f5                	j	844 <malloc+0xea>
