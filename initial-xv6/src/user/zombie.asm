
user/_zombie:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1141                	add	sp,sp,-16
   2:	e406                	sd	ra,8(sp)
   4:	e022                	sd	s0,0(sp)
   6:	0800                	add	s0,sp,16
   8:	00000097          	auipc	ra,0x0
   c:	2a0080e7          	jalr	672(ra) # 2a8 <fork>
  10:	00a04763          	bgtz	a0,1e <main+0x1e>
  14:	4501                	li	a0,0
  16:	00000097          	auipc	ra,0x0
  1a:	29a080e7          	jalr	666(ra) # 2b0 <exit>
  1e:	4515                	li	a0,5
  20:	00000097          	auipc	ra,0x0
  24:	320080e7          	jalr	800(ra) # 340 <sleep>
  28:	b7f5                	j	14 <main+0x14>

000000000000002a <_main>:
  2a:	1141                	add	sp,sp,-16
  2c:	e406                	sd	ra,8(sp)
  2e:	e022                	sd	s0,0(sp)
  30:	0800                	add	s0,sp,16
  32:	00000097          	auipc	ra,0x0
  36:	fce080e7          	jalr	-50(ra) # 0 <main>
  3a:	4501                	li	a0,0
  3c:	00000097          	auipc	ra,0x0
  40:	274080e7          	jalr	628(ra) # 2b0 <exit>

0000000000000044 <strcpy>:
  44:	1141                	add	sp,sp,-16
  46:	e422                	sd	s0,8(sp)
  48:	0800                	add	s0,sp,16
  4a:	87aa                	mv	a5,a0
  4c:	0585                	add	a1,a1,1
  4e:	0785                	add	a5,a5,1
  50:	fff5c703          	lbu	a4,-1(a1)
  54:	fee78fa3          	sb	a4,-1(a5)
  58:	fb75                	bnez	a4,4c <strcpy+0x8>
  5a:	6422                	ld	s0,8(sp)
  5c:	0141                	add	sp,sp,16
  5e:	8082                	ret

0000000000000060 <strcmp>:
  60:	1141                	add	sp,sp,-16
  62:	e422                	sd	s0,8(sp)
  64:	0800                	add	s0,sp,16
  66:	00054783          	lbu	a5,0(a0)
  6a:	cb91                	beqz	a5,7e <strcmp+0x1e>
  6c:	0005c703          	lbu	a4,0(a1)
  70:	00f71763          	bne	a4,a5,7e <strcmp+0x1e>
  74:	0505                	add	a0,a0,1
  76:	0585                	add	a1,a1,1
  78:	00054783          	lbu	a5,0(a0)
  7c:	fbe5                	bnez	a5,6c <strcmp+0xc>
  7e:	0005c503          	lbu	a0,0(a1)
  82:	40a7853b          	subw	a0,a5,a0
  86:	6422                	ld	s0,8(sp)
  88:	0141                	add	sp,sp,16
  8a:	8082                	ret

000000000000008c <strlen>:
  8c:	1141                	add	sp,sp,-16
  8e:	e422                	sd	s0,8(sp)
  90:	0800                	add	s0,sp,16
  92:	00054783          	lbu	a5,0(a0)
  96:	cf91                	beqz	a5,b2 <strlen+0x26>
  98:	0505                	add	a0,a0,1
  9a:	87aa                	mv	a5,a0
  9c:	86be                	mv	a3,a5
  9e:	0785                	add	a5,a5,1
  a0:	fff7c703          	lbu	a4,-1(a5)
  a4:	ff65                	bnez	a4,9c <strlen+0x10>
  a6:	40a6853b          	subw	a0,a3,a0
  aa:	2505                	addw	a0,a0,1
  ac:	6422                	ld	s0,8(sp)
  ae:	0141                	add	sp,sp,16
  b0:	8082                	ret
  b2:	4501                	li	a0,0
  b4:	bfe5                	j	ac <strlen+0x20>

00000000000000b6 <memset>:
  b6:	1141                	add	sp,sp,-16
  b8:	e422                	sd	s0,8(sp)
  ba:	0800                	add	s0,sp,16
  bc:	ca19                	beqz	a2,d2 <memset+0x1c>
  be:	87aa                	mv	a5,a0
  c0:	1602                	sll	a2,a2,0x20
  c2:	9201                	srl	a2,a2,0x20
  c4:	00a60733          	add	a4,a2,a0
  c8:	00b78023          	sb	a1,0(a5)
  cc:	0785                	add	a5,a5,1
  ce:	fee79de3          	bne	a5,a4,c8 <memset+0x12>
  d2:	6422                	ld	s0,8(sp)
  d4:	0141                	add	sp,sp,16
  d6:	8082                	ret

00000000000000d8 <strchr>:
  d8:	1141                	add	sp,sp,-16
  da:	e422                	sd	s0,8(sp)
  dc:	0800                	add	s0,sp,16
  de:	00054783          	lbu	a5,0(a0)
  e2:	cb99                	beqz	a5,f8 <strchr+0x20>
  e4:	00f58763          	beq	a1,a5,f2 <strchr+0x1a>
  e8:	0505                	add	a0,a0,1
  ea:	00054783          	lbu	a5,0(a0)
  ee:	fbfd                	bnez	a5,e4 <strchr+0xc>
  f0:	4501                	li	a0,0
  f2:	6422                	ld	s0,8(sp)
  f4:	0141                	add	sp,sp,16
  f6:	8082                	ret
  f8:	4501                	li	a0,0
  fa:	bfe5                	j	f2 <strchr+0x1a>

00000000000000fc <gets>:
  fc:	711d                	add	sp,sp,-96
  fe:	ec86                	sd	ra,88(sp)
 100:	e8a2                	sd	s0,80(sp)
 102:	e4a6                	sd	s1,72(sp)
 104:	e0ca                	sd	s2,64(sp)
 106:	fc4e                	sd	s3,56(sp)
 108:	f852                	sd	s4,48(sp)
 10a:	f456                	sd	s5,40(sp)
 10c:	f05a                	sd	s6,32(sp)
 10e:	ec5e                	sd	s7,24(sp)
 110:	1080                	add	s0,sp,96
 112:	8baa                	mv	s7,a0
 114:	8a2e                	mv	s4,a1
 116:	892a                	mv	s2,a0
 118:	4481                	li	s1,0
 11a:	4aa9                	li	s5,10
 11c:	4b35                	li	s6,13
 11e:	89a6                	mv	s3,s1
 120:	2485                	addw	s1,s1,1
 122:	0344d863          	bge	s1,s4,152 <gets+0x56>
 126:	4605                	li	a2,1
 128:	faf40593          	add	a1,s0,-81
 12c:	4501                	li	a0,0
 12e:	00000097          	auipc	ra,0x0
 132:	19a080e7          	jalr	410(ra) # 2c8 <read>
 136:	00a05e63          	blez	a0,152 <gets+0x56>
 13a:	faf44783          	lbu	a5,-81(s0)
 13e:	00f90023          	sb	a5,0(s2)
 142:	01578763          	beq	a5,s5,150 <gets+0x54>
 146:	0905                	add	s2,s2,1
 148:	fd679be3          	bne	a5,s6,11e <gets+0x22>
 14c:	89a6                	mv	s3,s1
 14e:	a011                	j	152 <gets+0x56>
 150:	89a6                	mv	s3,s1
 152:	99de                	add	s3,s3,s7
 154:	00098023          	sb	zero,0(s3)
 158:	855e                	mv	a0,s7
 15a:	60e6                	ld	ra,88(sp)
 15c:	6446                	ld	s0,80(sp)
 15e:	64a6                	ld	s1,72(sp)
 160:	6906                	ld	s2,64(sp)
 162:	79e2                	ld	s3,56(sp)
 164:	7a42                	ld	s4,48(sp)
 166:	7aa2                	ld	s5,40(sp)
 168:	7b02                	ld	s6,32(sp)
 16a:	6be2                	ld	s7,24(sp)
 16c:	6125                	add	sp,sp,96
 16e:	8082                	ret

0000000000000170 <stat>:
 170:	1101                	add	sp,sp,-32
 172:	ec06                	sd	ra,24(sp)
 174:	e822                	sd	s0,16(sp)
 176:	e04a                	sd	s2,0(sp)
 178:	1000                	add	s0,sp,32
 17a:	892e                	mv	s2,a1
 17c:	4581                	li	a1,0
 17e:	00000097          	auipc	ra,0x0
 182:	172080e7          	jalr	370(ra) # 2f0 <open>
 186:	02054663          	bltz	a0,1b2 <stat+0x42>
 18a:	e426                	sd	s1,8(sp)
 18c:	84aa                	mv	s1,a0
 18e:	85ca                	mv	a1,s2
 190:	00000097          	auipc	ra,0x0
 194:	178080e7          	jalr	376(ra) # 308 <fstat>
 198:	892a                	mv	s2,a0
 19a:	8526                	mv	a0,s1
 19c:	00000097          	auipc	ra,0x0
 1a0:	13c080e7          	jalr	316(ra) # 2d8 <close>
 1a4:	64a2                	ld	s1,8(sp)
 1a6:	854a                	mv	a0,s2
 1a8:	60e2                	ld	ra,24(sp)
 1aa:	6442                	ld	s0,16(sp)
 1ac:	6902                	ld	s2,0(sp)
 1ae:	6105                	add	sp,sp,32
 1b0:	8082                	ret
 1b2:	597d                	li	s2,-1
 1b4:	bfcd                	j	1a6 <stat+0x36>

00000000000001b6 <atoi>:
 1b6:	1141                	add	sp,sp,-16
 1b8:	e422                	sd	s0,8(sp)
 1ba:	0800                	add	s0,sp,16
 1bc:	00054683          	lbu	a3,0(a0)
 1c0:	fd06879b          	addw	a5,a3,-48
 1c4:	0ff7f793          	zext.b	a5,a5
 1c8:	4625                	li	a2,9
 1ca:	02f66863          	bltu	a2,a5,1fa <atoi+0x44>
 1ce:	872a                	mv	a4,a0
 1d0:	4501                	li	a0,0
 1d2:	0705                	add	a4,a4,1
 1d4:	0025179b          	sllw	a5,a0,0x2
 1d8:	9fa9                	addw	a5,a5,a0
 1da:	0017979b          	sllw	a5,a5,0x1
 1de:	9fb5                	addw	a5,a5,a3
 1e0:	fd07851b          	addw	a0,a5,-48
 1e4:	00074683          	lbu	a3,0(a4)
 1e8:	fd06879b          	addw	a5,a3,-48
 1ec:	0ff7f793          	zext.b	a5,a5
 1f0:	fef671e3          	bgeu	a2,a5,1d2 <atoi+0x1c>
 1f4:	6422                	ld	s0,8(sp)
 1f6:	0141                	add	sp,sp,16
 1f8:	8082                	ret
 1fa:	4501                	li	a0,0
 1fc:	bfe5                	j	1f4 <atoi+0x3e>

00000000000001fe <memmove>:
 1fe:	1141                	add	sp,sp,-16
 200:	e422                	sd	s0,8(sp)
 202:	0800                	add	s0,sp,16
 204:	02b57463          	bgeu	a0,a1,22c <memmove+0x2e>
 208:	00c05f63          	blez	a2,226 <memmove+0x28>
 20c:	1602                	sll	a2,a2,0x20
 20e:	9201                	srl	a2,a2,0x20
 210:	00c507b3          	add	a5,a0,a2
 214:	872a                	mv	a4,a0
 216:	0585                	add	a1,a1,1
 218:	0705                	add	a4,a4,1
 21a:	fff5c683          	lbu	a3,-1(a1)
 21e:	fed70fa3          	sb	a3,-1(a4)
 222:	fef71ae3          	bne	a4,a5,216 <memmove+0x18>
 226:	6422                	ld	s0,8(sp)
 228:	0141                	add	sp,sp,16
 22a:	8082                	ret
 22c:	00c50733          	add	a4,a0,a2
 230:	95b2                	add	a1,a1,a2
 232:	fec05ae3          	blez	a2,226 <memmove+0x28>
 236:	fff6079b          	addw	a5,a2,-1
 23a:	1782                	sll	a5,a5,0x20
 23c:	9381                	srl	a5,a5,0x20
 23e:	fff7c793          	not	a5,a5
 242:	97ba                	add	a5,a5,a4
 244:	15fd                	add	a1,a1,-1
 246:	177d                	add	a4,a4,-1
 248:	0005c683          	lbu	a3,0(a1)
 24c:	00d70023          	sb	a3,0(a4)
 250:	fee79ae3          	bne	a5,a4,244 <memmove+0x46>
 254:	bfc9                	j	226 <memmove+0x28>

0000000000000256 <memcmp>:
 256:	1141                	add	sp,sp,-16
 258:	e422                	sd	s0,8(sp)
 25a:	0800                	add	s0,sp,16
 25c:	ca05                	beqz	a2,28c <memcmp+0x36>
 25e:	fff6069b          	addw	a3,a2,-1
 262:	1682                	sll	a3,a3,0x20
 264:	9281                	srl	a3,a3,0x20
 266:	0685                	add	a3,a3,1
 268:	96aa                	add	a3,a3,a0
 26a:	00054783          	lbu	a5,0(a0)
 26e:	0005c703          	lbu	a4,0(a1)
 272:	00e79863          	bne	a5,a4,282 <memcmp+0x2c>
 276:	0505                	add	a0,a0,1
 278:	0585                	add	a1,a1,1
 27a:	fed518e3          	bne	a0,a3,26a <memcmp+0x14>
 27e:	4501                	li	a0,0
 280:	a019                	j	286 <memcmp+0x30>
 282:	40e7853b          	subw	a0,a5,a4
 286:	6422                	ld	s0,8(sp)
 288:	0141                	add	sp,sp,16
 28a:	8082                	ret
 28c:	4501                	li	a0,0
 28e:	bfe5                	j	286 <memcmp+0x30>

0000000000000290 <memcpy>:
 290:	1141                	add	sp,sp,-16
 292:	e406                	sd	ra,8(sp)
 294:	e022                	sd	s0,0(sp)
 296:	0800                	add	s0,sp,16
 298:	00000097          	auipc	ra,0x0
 29c:	f66080e7          	jalr	-154(ra) # 1fe <memmove>
 2a0:	60a2                	ld	ra,8(sp)
 2a2:	6402                	ld	s0,0(sp)
 2a4:	0141                	add	sp,sp,16
 2a6:	8082                	ret

00000000000002a8 <fork>:
 2a8:	4885                	li	a7,1
 2aa:	00000073          	ecall
 2ae:	8082                	ret

00000000000002b0 <exit>:
 2b0:	4889                	li	a7,2
 2b2:	00000073          	ecall
 2b6:	8082                	ret

00000000000002b8 <wait>:
 2b8:	488d                	li	a7,3
 2ba:	00000073          	ecall
 2be:	8082                	ret

00000000000002c0 <pipe>:
 2c0:	4891                	li	a7,4
 2c2:	00000073          	ecall
 2c6:	8082                	ret

00000000000002c8 <read>:
 2c8:	4895                	li	a7,5
 2ca:	00000073          	ecall
 2ce:	8082                	ret

00000000000002d0 <write>:
 2d0:	48c1                	li	a7,16
 2d2:	00000073          	ecall
 2d6:	8082                	ret

00000000000002d8 <close>:
 2d8:	48d5                	li	a7,21
 2da:	00000073          	ecall
 2de:	8082                	ret

00000000000002e0 <kill>:
 2e0:	4899                	li	a7,6
 2e2:	00000073          	ecall
 2e6:	8082                	ret

00000000000002e8 <exec>:
 2e8:	489d                	li	a7,7
 2ea:	00000073          	ecall
 2ee:	8082                	ret

00000000000002f0 <open>:
 2f0:	48bd                	li	a7,15
 2f2:	00000073          	ecall
 2f6:	8082                	ret

00000000000002f8 <mknod>:
 2f8:	48c5                	li	a7,17
 2fa:	00000073          	ecall
 2fe:	8082                	ret

0000000000000300 <unlink>:
 300:	48c9                	li	a7,18
 302:	00000073          	ecall
 306:	8082                	ret

0000000000000308 <fstat>:
 308:	48a1                	li	a7,8
 30a:	00000073          	ecall
 30e:	8082                	ret

0000000000000310 <link>:
 310:	48cd                	li	a7,19
 312:	00000073          	ecall
 316:	8082                	ret

0000000000000318 <mkdir>:
 318:	48d1                	li	a7,20
 31a:	00000073          	ecall
 31e:	8082                	ret

0000000000000320 <chdir>:
 320:	48a5                	li	a7,9
 322:	00000073          	ecall
 326:	8082                	ret

0000000000000328 <dup>:
 328:	48a9                	li	a7,10
 32a:	00000073          	ecall
 32e:	8082                	ret

0000000000000330 <getpid>:
 330:	48ad                	li	a7,11
 332:	00000073          	ecall
 336:	8082                	ret

0000000000000338 <sbrk>:
 338:	48b1                	li	a7,12
 33a:	00000073          	ecall
 33e:	8082                	ret

0000000000000340 <sleep>:
 340:	48b5                	li	a7,13
 342:	00000073          	ecall
 346:	8082                	ret

0000000000000348 <uptime>:
 348:	48b9                	li	a7,14
 34a:	00000073          	ecall
 34e:	8082                	ret

0000000000000350 <waitx>:
 350:	48d9                	li	a7,22
 352:	00000073          	ecall
 356:	8082                	ret

0000000000000358 <getSysCount>:
 358:	48dd                	li	a7,23
 35a:	00000073          	ecall
 35e:	8082                	ret

0000000000000360 <sigalarm>:
 360:	48e1                	li	a7,24
 362:	00000073          	ecall
 366:	8082                	ret

0000000000000368 <sigreturn>:
 368:	48e5                	li	a7,25
 36a:	00000073          	ecall
 36e:	8082                	ret

0000000000000370 <putc>:
 370:	1101                	add	sp,sp,-32
 372:	ec06                	sd	ra,24(sp)
 374:	e822                	sd	s0,16(sp)
 376:	1000                	add	s0,sp,32
 378:	feb407a3          	sb	a1,-17(s0)
 37c:	4605                	li	a2,1
 37e:	fef40593          	add	a1,s0,-17
 382:	00000097          	auipc	ra,0x0
 386:	f4e080e7          	jalr	-178(ra) # 2d0 <write>
 38a:	60e2                	ld	ra,24(sp)
 38c:	6442                	ld	s0,16(sp)
 38e:	6105                	add	sp,sp,32
 390:	8082                	ret

0000000000000392 <printint>:
 392:	7139                	add	sp,sp,-64
 394:	fc06                	sd	ra,56(sp)
 396:	f822                	sd	s0,48(sp)
 398:	f426                	sd	s1,40(sp)
 39a:	0080                	add	s0,sp,64
 39c:	84aa                	mv	s1,a0
 39e:	c299                	beqz	a3,3a4 <printint+0x12>
 3a0:	0805cb63          	bltz	a1,436 <printint+0xa4>
 3a4:	2581                	sext.w	a1,a1
 3a6:	4881                	li	a7,0
 3a8:	fc040693          	add	a3,s0,-64
 3ac:	4701                	li	a4,0
 3ae:	2601                	sext.w	a2,a2
 3b0:	00000517          	auipc	a0,0x0
 3b4:	4a050513          	add	a0,a0,1184 # 850 <digits>
 3b8:	883a                	mv	a6,a4
 3ba:	2705                	addw	a4,a4,1
 3bc:	02c5f7bb          	remuw	a5,a1,a2
 3c0:	1782                	sll	a5,a5,0x20
 3c2:	9381                	srl	a5,a5,0x20
 3c4:	97aa                	add	a5,a5,a0
 3c6:	0007c783          	lbu	a5,0(a5)
 3ca:	00f68023          	sb	a5,0(a3)
 3ce:	0005879b          	sext.w	a5,a1
 3d2:	02c5d5bb          	divuw	a1,a1,a2
 3d6:	0685                	add	a3,a3,1
 3d8:	fec7f0e3          	bgeu	a5,a2,3b8 <printint+0x26>
 3dc:	00088c63          	beqz	a7,3f4 <printint+0x62>
 3e0:	fd070793          	add	a5,a4,-48
 3e4:	00878733          	add	a4,a5,s0
 3e8:	02d00793          	li	a5,45
 3ec:	fef70823          	sb	a5,-16(a4)
 3f0:	0028071b          	addw	a4,a6,2
 3f4:	02e05c63          	blez	a4,42c <printint+0x9a>
 3f8:	f04a                	sd	s2,32(sp)
 3fa:	ec4e                	sd	s3,24(sp)
 3fc:	fc040793          	add	a5,s0,-64
 400:	00e78933          	add	s2,a5,a4
 404:	fff78993          	add	s3,a5,-1
 408:	99ba                	add	s3,s3,a4
 40a:	377d                	addw	a4,a4,-1
 40c:	1702                	sll	a4,a4,0x20
 40e:	9301                	srl	a4,a4,0x20
 410:	40e989b3          	sub	s3,s3,a4
 414:	fff94583          	lbu	a1,-1(s2)
 418:	8526                	mv	a0,s1
 41a:	00000097          	auipc	ra,0x0
 41e:	f56080e7          	jalr	-170(ra) # 370 <putc>
 422:	197d                	add	s2,s2,-1
 424:	ff3918e3          	bne	s2,s3,414 <printint+0x82>
 428:	7902                	ld	s2,32(sp)
 42a:	69e2                	ld	s3,24(sp)
 42c:	70e2                	ld	ra,56(sp)
 42e:	7442                	ld	s0,48(sp)
 430:	74a2                	ld	s1,40(sp)
 432:	6121                	add	sp,sp,64
 434:	8082                	ret
 436:	40b005bb          	negw	a1,a1
 43a:	4885                	li	a7,1
 43c:	b7b5                	j	3a8 <printint+0x16>

000000000000043e <vprintf>:
 43e:	715d                	add	sp,sp,-80
 440:	e486                	sd	ra,72(sp)
 442:	e0a2                	sd	s0,64(sp)
 444:	f84a                	sd	s2,48(sp)
 446:	0880                	add	s0,sp,80
 448:	0005c903          	lbu	s2,0(a1)
 44c:	1a090a63          	beqz	s2,600 <vprintf+0x1c2>
 450:	fc26                	sd	s1,56(sp)
 452:	f44e                	sd	s3,40(sp)
 454:	f052                	sd	s4,32(sp)
 456:	ec56                	sd	s5,24(sp)
 458:	e85a                	sd	s6,16(sp)
 45a:	e45e                	sd	s7,8(sp)
 45c:	8aaa                	mv	s5,a0
 45e:	8bb2                	mv	s7,a2
 460:	00158493          	add	s1,a1,1
 464:	4981                	li	s3,0
 466:	02500a13          	li	s4,37
 46a:	4b55                	li	s6,21
 46c:	a839                	j	48a <vprintf+0x4c>
 46e:	85ca                	mv	a1,s2
 470:	8556                	mv	a0,s5
 472:	00000097          	auipc	ra,0x0
 476:	efe080e7          	jalr	-258(ra) # 370 <putc>
 47a:	a019                	j	480 <vprintf+0x42>
 47c:	01498d63          	beq	s3,s4,496 <vprintf+0x58>
 480:	0485                	add	s1,s1,1
 482:	fff4c903          	lbu	s2,-1(s1)
 486:	16090763          	beqz	s2,5f4 <vprintf+0x1b6>
 48a:	fe0999e3          	bnez	s3,47c <vprintf+0x3e>
 48e:	ff4910e3          	bne	s2,s4,46e <vprintf+0x30>
 492:	89d2                	mv	s3,s4
 494:	b7f5                	j	480 <vprintf+0x42>
 496:	13490463          	beq	s2,s4,5be <vprintf+0x180>
 49a:	f9d9079b          	addw	a5,s2,-99
 49e:	0ff7f793          	zext.b	a5,a5
 4a2:	12fb6763          	bltu	s6,a5,5d0 <vprintf+0x192>
 4a6:	f9d9079b          	addw	a5,s2,-99
 4aa:	0ff7f713          	zext.b	a4,a5
 4ae:	12eb6163          	bltu	s6,a4,5d0 <vprintf+0x192>
 4b2:	00271793          	sll	a5,a4,0x2
 4b6:	00000717          	auipc	a4,0x0
 4ba:	34270713          	add	a4,a4,834 # 7f8 <malloc+0x108>
 4be:	97ba                	add	a5,a5,a4
 4c0:	439c                	lw	a5,0(a5)
 4c2:	97ba                	add	a5,a5,a4
 4c4:	8782                	jr	a5
 4c6:	008b8913          	add	s2,s7,8
 4ca:	4685                	li	a3,1
 4cc:	4629                	li	a2,10
 4ce:	000ba583          	lw	a1,0(s7)
 4d2:	8556                	mv	a0,s5
 4d4:	00000097          	auipc	ra,0x0
 4d8:	ebe080e7          	jalr	-322(ra) # 392 <printint>
 4dc:	8bca                	mv	s7,s2
 4de:	4981                	li	s3,0
 4e0:	b745                	j	480 <vprintf+0x42>
 4e2:	008b8913          	add	s2,s7,8
 4e6:	4681                	li	a3,0
 4e8:	4629                	li	a2,10
 4ea:	000ba583          	lw	a1,0(s7)
 4ee:	8556                	mv	a0,s5
 4f0:	00000097          	auipc	ra,0x0
 4f4:	ea2080e7          	jalr	-350(ra) # 392 <printint>
 4f8:	8bca                	mv	s7,s2
 4fa:	4981                	li	s3,0
 4fc:	b751                	j	480 <vprintf+0x42>
 4fe:	008b8913          	add	s2,s7,8
 502:	4681                	li	a3,0
 504:	4641                	li	a2,16
 506:	000ba583          	lw	a1,0(s7)
 50a:	8556                	mv	a0,s5
 50c:	00000097          	auipc	ra,0x0
 510:	e86080e7          	jalr	-378(ra) # 392 <printint>
 514:	8bca                	mv	s7,s2
 516:	4981                	li	s3,0
 518:	b7a5                	j	480 <vprintf+0x42>
 51a:	e062                	sd	s8,0(sp)
 51c:	008b8c13          	add	s8,s7,8
 520:	000bb983          	ld	s3,0(s7)
 524:	03000593          	li	a1,48
 528:	8556                	mv	a0,s5
 52a:	00000097          	auipc	ra,0x0
 52e:	e46080e7          	jalr	-442(ra) # 370 <putc>
 532:	07800593          	li	a1,120
 536:	8556                	mv	a0,s5
 538:	00000097          	auipc	ra,0x0
 53c:	e38080e7          	jalr	-456(ra) # 370 <putc>
 540:	4941                	li	s2,16
 542:	00000b97          	auipc	s7,0x0
 546:	30eb8b93          	add	s7,s7,782 # 850 <digits>
 54a:	03c9d793          	srl	a5,s3,0x3c
 54e:	97de                	add	a5,a5,s7
 550:	0007c583          	lbu	a1,0(a5)
 554:	8556                	mv	a0,s5
 556:	00000097          	auipc	ra,0x0
 55a:	e1a080e7          	jalr	-486(ra) # 370 <putc>
 55e:	0992                	sll	s3,s3,0x4
 560:	397d                	addw	s2,s2,-1
 562:	fe0914e3          	bnez	s2,54a <vprintf+0x10c>
 566:	8be2                	mv	s7,s8
 568:	4981                	li	s3,0
 56a:	6c02                	ld	s8,0(sp)
 56c:	bf11                	j	480 <vprintf+0x42>
 56e:	008b8993          	add	s3,s7,8
 572:	000bb903          	ld	s2,0(s7)
 576:	02090163          	beqz	s2,598 <vprintf+0x15a>
 57a:	00094583          	lbu	a1,0(s2)
 57e:	c9a5                	beqz	a1,5ee <vprintf+0x1b0>
 580:	8556                	mv	a0,s5
 582:	00000097          	auipc	ra,0x0
 586:	dee080e7          	jalr	-530(ra) # 370 <putc>
 58a:	0905                	add	s2,s2,1
 58c:	00094583          	lbu	a1,0(s2)
 590:	f9e5                	bnez	a1,580 <vprintf+0x142>
 592:	8bce                	mv	s7,s3
 594:	4981                	li	s3,0
 596:	b5ed                	j	480 <vprintf+0x42>
 598:	00000917          	auipc	s2,0x0
 59c:	25890913          	add	s2,s2,600 # 7f0 <malloc+0x100>
 5a0:	02800593          	li	a1,40
 5a4:	bff1                	j	580 <vprintf+0x142>
 5a6:	008b8913          	add	s2,s7,8
 5aa:	000bc583          	lbu	a1,0(s7)
 5ae:	8556                	mv	a0,s5
 5b0:	00000097          	auipc	ra,0x0
 5b4:	dc0080e7          	jalr	-576(ra) # 370 <putc>
 5b8:	8bca                	mv	s7,s2
 5ba:	4981                	li	s3,0
 5bc:	b5d1                	j	480 <vprintf+0x42>
 5be:	02500593          	li	a1,37
 5c2:	8556                	mv	a0,s5
 5c4:	00000097          	auipc	ra,0x0
 5c8:	dac080e7          	jalr	-596(ra) # 370 <putc>
 5cc:	4981                	li	s3,0
 5ce:	bd4d                	j	480 <vprintf+0x42>
 5d0:	02500593          	li	a1,37
 5d4:	8556                	mv	a0,s5
 5d6:	00000097          	auipc	ra,0x0
 5da:	d9a080e7          	jalr	-614(ra) # 370 <putc>
 5de:	85ca                	mv	a1,s2
 5e0:	8556                	mv	a0,s5
 5e2:	00000097          	auipc	ra,0x0
 5e6:	d8e080e7          	jalr	-626(ra) # 370 <putc>
 5ea:	4981                	li	s3,0
 5ec:	bd51                	j	480 <vprintf+0x42>
 5ee:	8bce                	mv	s7,s3
 5f0:	4981                	li	s3,0
 5f2:	b579                	j	480 <vprintf+0x42>
 5f4:	74e2                	ld	s1,56(sp)
 5f6:	79a2                	ld	s3,40(sp)
 5f8:	7a02                	ld	s4,32(sp)
 5fa:	6ae2                	ld	s5,24(sp)
 5fc:	6b42                	ld	s6,16(sp)
 5fe:	6ba2                	ld	s7,8(sp)
 600:	60a6                	ld	ra,72(sp)
 602:	6406                	ld	s0,64(sp)
 604:	7942                	ld	s2,48(sp)
 606:	6161                	add	sp,sp,80
 608:	8082                	ret

000000000000060a <fprintf>:
 60a:	715d                	add	sp,sp,-80
 60c:	ec06                	sd	ra,24(sp)
 60e:	e822                	sd	s0,16(sp)
 610:	1000                	add	s0,sp,32
 612:	e010                	sd	a2,0(s0)
 614:	e414                	sd	a3,8(s0)
 616:	e818                	sd	a4,16(s0)
 618:	ec1c                	sd	a5,24(s0)
 61a:	03043023          	sd	a6,32(s0)
 61e:	03143423          	sd	a7,40(s0)
 622:	fe843423          	sd	s0,-24(s0)
 626:	8622                	mv	a2,s0
 628:	00000097          	auipc	ra,0x0
 62c:	e16080e7          	jalr	-490(ra) # 43e <vprintf>
 630:	60e2                	ld	ra,24(sp)
 632:	6442                	ld	s0,16(sp)
 634:	6161                	add	sp,sp,80
 636:	8082                	ret

0000000000000638 <printf>:
 638:	711d                	add	sp,sp,-96
 63a:	ec06                	sd	ra,24(sp)
 63c:	e822                	sd	s0,16(sp)
 63e:	1000                	add	s0,sp,32
 640:	e40c                	sd	a1,8(s0)
 642:	e810                	sd	a2,16(s0)
 644:	ec14                	sd	a3,24(s0)
 646:	f018                	sd	a4,32(s0)
 648:	f41c                	sd	a5,40(s0)
 64a:	03043823          	sd	a6,48(s0)
 64e:	03143c23          	sd	a7,56(s0)
 652:	00840613          	add	a2,s0,8
 656:	fec43423          	sd	a2,-24(s0)
 65a:	85aa                	mv	a1,a0
 65c:	4505                	li	a0,1
 65e:	00000097          	auipc	ra,0x0
 662:	de0080e7          	jalr	-544(ra) # 43e <vprintf>
 666:	60e2                	ld	ra,24(sp)
 668:	6442                	ld	s0,16(sp)
 66a:	6125                	add	sp,sp,96
 66c:	8082                	ret

000000000000066e <free>:
 66e:	1141                	add	sp,sp,-16
 670:	e422                	sd	s0,8(sp)
 672:	0800                	add	s0,sp,16
 674:	ff050693          	add	a3,a0,-16
 678:	00001797          	auipc	a5,0x1
 67c:	d687b783          	ld	a5,-664(a5) # 13e0 <freep>
 680:	a02d                	j	6aa <free+0x3c>
 682:	4618                	lw	a4,8(a2)
 684:	9f2d                	addw	a4,a4,a1
 686:	fee52c23          	sw	a4,-8(a0)
 68a:	6398                	ld	a4,0(a5)
 68c:	6310                	ld	a2,0(a4)
 68e:	a83d                	j	6cc <free+0x5e>
 690:	ff852703          	lw	a4,-8(a0)
 694:	9f31                	addw	a4,a4,a2
 696:	c798                	sw	a4,8(a5)
 698:	ff053683          	ld	a3,-16(a0)
 69c:	a091                	j	6e0 <free+0x72>
 69e:	6398                	ld	a4,0(a5)
 6a0:	00e7e463          	bltu	a5,a4,6a8 <free+0x3a>
 6a4:	00e6ea63          	bltu	a3,a4,6b8 <free+0x4a>
 6a8:	87ba                	mv	a5,a4
 6aa:	fed7fae3          	bgeu	a5,a3,69e <free+0x30>
 6ae:	6398                	ld	a4,0(a5)
 6b0:	00e6e463          	bltu	a3,a4,6b8 <free+0x4a>
 6b4:	fee7eae3          	bltu	a5,a4,6a8 <free+0x3a>
 6b8:	ff852583          	lw	a1,-8(a0)
 6bc:	6390                	ld	a2,0(a5)
 6be:	02059813          	sll	a6,a1,0x20
 6c2:	01c85713          	srl	a4,a6,0x1c
 6c6:	9736                	add	a4,a4,a3
 6c8:	fae60de3          	beq	a2,a4,682 <free+0x14>
 6cc:	fec53823          	sd	a2,-16(a0)
 6d0:	4790                	lw	a2,8(a5)
 6d2:	02061593          	sll	a1,a2,0x20
 6d6:	01c5d713          	srl	a4,a1,0x1c
 6da:	973e                	add	a4,a4,a5
 6dc:	fae68ae3          	beq	a3,a4,690 <free+0x22>
 6e0:	e394                	sd	a3,0(a5)
 6e2:	00001717          	auipc	a4,0x1
 6e6:	cef73f23          	sd	a5,-770(a4) # 13e0 <freep>
 6ea:	6422                	ld	s0,8(sp)
 6ec:	0141                	add	sp,sp,16
 6ee:	8082                	ret

00000000000006f0 <malloc>:
 6f0:	7139                	add	sp,sp,-64
 6f2:	fc06                	sd	ra,56(sp)
 6f4:	f822                	sd	s0,48(sp)
 6f6:	f426                	sd	s1,40(sp)
 6f8:	ec4e                	sd	s3,24(sp)
 6fa:	0080                	add	s0,sp,64
 6fc:	02051493          	sll	s1,a0,0x20
 700:	9081                	srl	s1,s1,0x20
 702:	04bd                	add	s1,s1,15
 704:	8091                	srl	s1,s1,0x4
 706:	0014899b          	addw	s3,s1,1
 70a:	0485                	add	s1,s1,1
 70c:	00001517          	auipc	a0,0x1
 710:	cd453503          	ld	a0,-812(a0) # 13e0 <freep>
 714:	c915                	beqz	a0,748 <malloc+0x58>
 716:	611c                	ld	a5,0(a0)
 718:	4798                	lw	a4,8(a5)
 71a:	08977e63          	bgeu	a4,s1,7b6 <malloc+0xc6>
 71e:	f04a                	sd	s2,32(sp)
 720:	e852                	sd	s4,16(sp)
 722:	e456                	sd	s5,8(sp)
 724:	e05a                	sd	s6,0(sp)
 726:	8a4e                	mv	s4,s3
 728:	0009871b          	sext.w	a4,s3
 72c:	6685                	lui	a3,0x1
 72e:	00d77363          	bgeu	a4,a3,734 <malloc+0x44>
 732:	6a05                	lui	s4,0x1
 734:	000a0b1b          	sext.w	s6,s4
 738:	004a1a1b          	sllw	s4,s4,0x4
 73c:	00001917          	auipc	s2,0x1
 740:	ca490913          	add	s2,s2,-860 # 13e0 <freep>
 744:	5afd                	li	s5,-1
 746:	a091                	j	78a <malloc+0x9a>
 748:	f04a                	sd	s2,32(sp)
 74a:	e852                	sd	s4,16(sp)
 74c:	e456                	sd	s5,8(sp)
 74e:	e05a                	sd	s6,0(sp)
 750:	00001797          	auipc	a5,0x1
 754:	ca078793          	add	a5,a5,-864 # 13f0 <base>
 758:	00001717          	auipc	a4,0x1
 75c:	c8f73423          	sd	a5,-888(a4) # 13e0 <freep>
 760:	e39c                	sd	a5,0(a5)
 762:	0007a423          	sw	zero,8(a5)
 766:	b7c1                	j	726 <malloc+0x36>
 768:	6398                	ld	a4,0(a5)
 76a:	e118                	sd	a4,0(a0)
 76c:	a08d                	j	7ce <malloc+0xde>
 76e:	01652423          	sw	s6,8(a0)
 772:	0541                	add	a0,a0,16
 774:	00000097          	auipc	ra,0x0
 778:	efa080e7          	jalr	-262(ra) # 66e <free>
 77c:	00093503          	ld	a0,0(s2)
 780:	c13d                	beqz	a0,7e6 <malloc+0xf6>
 782:	611c                	ld	a5,0(a0)
 784:	4798                	lw	a4,8(a5)
 786:	02977463          	bgeu	a4,s1,7ae <malloc+0xbe>
 78a:	00093703          	ld	a4,0(s2)
 78e:	853e                	mv	a0,a5
 790:	fef719e3          	bne	a4,a5,782 <malloc+0x92>
 794:	8552                	mv	a0,s4
 796:	00000097          	auipc	ra,0x0
 79a:	ba2080e7          	jalr	-1118(ra) # 338 <sbrk>
 79e:	fd5518e3          	bne	a0,s5,76e <malloc+0x7e>
 7a2:	4501                	li	a0,0
 7a4:	7902                	ld	s2,32(sp)
 7a6:	6a42                	ld	s4,16(sp)
 7a8:	6aa2                	ld	s5,8(sp)
 7aa:	6b02                	ld	s6,0(sp)
 7ac:	a03d                	j	7da <malloc+0xea>
 7ae:	7902                	ld	s2,32(sp)
 7b0:	6a42                	ld	s4,16(sp)
 7b2:	6aa2                	ld	s5,8(sp)
 7b4:	6b02                	ld	s6,0(sp)
 7b6:	fae489e3          	beq	s1,a4,768 <malloc+0x78>
 7ba:	4137073b          	subw	a4,a4,s3
 7be:	c798                	sw	a4,8(a5)
 7c0:	02071693          	sll	a3,a4,0x20
 7c4:	01c6d713          	srl	a4,a3,0x1c
 7c8:	97ba                	add	a5,a5,a4
 7ca:	0137a423          	sw	s3,8(a5)
 7ce:	00001717          	auipc	a4,0x1
 7d2:	c0a73923          	sd	a0,-1006(a4) # 13e0 <freep>
 7d6:	01078513          	add	a0,a5,16
 7da:	70e2                	ld	ra,56(sp)
 7dc:	7442                	ld	s0,48(sp)
 7de:	74a2                	ld	s1,40(sp)
 7e0:	69e2                	ld	s3,24(sp)
 7e2:	6121                	add	sp,sp,64
 7e4:	8082                	ret
 7e6:	7902                	ld	s2,32(sp)
 7e8:	6a42                	ld	s4,16(sp)
 7ea:	6aa2                	ld	s5,8(sp)
 7ec:	6b02                	ld	s6,0(sp)
 7ee:	b7f5                	j	7da <malloc+0xea>
