
user/_kill:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	add	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	1000                	add	s0,sp,32
   8:	4785                	li	a5,1
   a:	02a7df63          	bge	a5,a0,48 <main+0x48>
   e:	e426                	sd	s1,8(sp)
  10:	e04a                	sd	s2,0(sp)
  12:	00858493          	add	s1,a1,8
  16:	ffe5091b          	addw	s2,a0,-2
  1a:	02091793          	sll	a5,s2,0x20
  1e:	01d7d913          	srl	s2,a5,0x1d
  22:	05c1                	add	a1,a1,16
  24:	992e                	add	s2,s2,a1
  26:	6088                	ld	a0,0(s1)
  28:	00000097          	auipc	ra,0x0
  2c:	1cc080e7          	jalr	460(ra) # 1f4 <atoi>
  30:	00000097          	auipc	ra,0x0
  34:	2ee080e7          	jalr	750(ra) # 31e <kill>
  38:	04a1                	add	s1,s1,8
  3a:	ff2496e3          	bne	s1,s2,26 <main+0x26>
  3e:	4501                	li	a0,0
  40:	00000097          	auipc	ra,0x0
  44:	2ae080e7          	jalr	686(ra) # 2ee <exit>
  48:	e426                	sd	s1,8(sp)
  4a:	e04a                	sd	s2,0(sp)
  4c:	00000597          	auipc	a1,0x0
  50:	7e458593          	add	a1,a1,2020 # 830 <malloc+0x102>
  54:	4509                	li	a0,2
  56:	00000097          	auipc	ra,0x0
  5a:	5f2080e7          	jalr	1522(ra) # 648 <fprintf>
  5e:	4505                	li	a0,1
  60:	00000097          	auipc	ra,0x0
  64:	28e080e7          	jalr	654(ra) # 2ee <exit>

0000000000000068 <_main>:
  68:	1141                	add	sp,sp,-16
  6a:	e406                	sd	ra,8(sp)
  6c:	e022                	sd	s0,0(sp)
  6e:	0800                	add	s0,sp,16
  70:	00000097          	auipc	ra,0x0
  74:	f90080e7          	jalr	-112(ra) # 0 <main>
  78:	4501                	li	a0,0
  7a:	00000097          	auipc	ra,0x0
  7e:	274080e7          	jalr	628(ra) # 2ee <exit>

0000000000000082 <strcpy>:
  82:	1141                	add	sp,sp,-16
  84:	e422                	sd	s0,8(sp)
  86:	0800                	add	s0,sp,16
  88:	87aa                	mv	a5,a0
  8a:	0585                	add	a1,a1,1
  8c:	0785                	add	a5,a5,1
  8e:	fff5c703          	lbu	a4,-1(a1)
  92:	fee78fa3          	sb	a4,-1(a5)
  96:	fb75                	bnez	a4,8a <strcpy+0x8>
  98:	6422                	ld	s0,8(sp)
  9a:	0141                	add	sp,sp,16
  9c:	8082                	ret

000000000000009e <strcmp>:
  9e:	1141                	add	sp,sp,-16
  a0:	e422                	sd	s0,8(sp)
  a2:	0800                	add	s0,sp,16
  a4:	00054783          	lbu	a5,0(a0)
  a8:	cb91                	beqz	a5,bc <strcmp+0x1e>
  aa:	0005c703          	lbu	a4,0(a1)
  ae:	00f71763          	bne	a4,a5,bc <strcmp+0x1e>
  b2:	0505                	add	a0,a0,1
  b4:	0585                	add	a1,a1,1
  b6:	00054783          	lbu	a5,0(a0)
  ba:	fbe5                	bnez	a5,aa <strcmp+0xc>
  bc:	0005c503          	lbu	a0,0(a1)
  c0:	40a7853b          	subw	a0,a5,a0
  c4:	6422                	ld	s0,8(sp)
  c6:	0141                	add	sp,sp,16
  c8:	8082                	ret

00000000000000ca <strlen>:
  ca:	1141                	add	sp,sp,-16
  cc:	e422                	sd	s0,8(sp)
  ce:	0800                	add	s0,sp,16
  d0:	00054783          	lbu	a5,0(a0)
  d4:	cf91                	beqz	a5,f0 <strlen+0x26>
  d6:	0505                	add	a0,a0,1
  d8:	87aa                	mv	a5,a0
  da:	86be                	mv	a3,a5
  dc:	0785                	add	a5,a5,1
  de:	fff7c703          	lbu	a4,-1(a5)
  e2:	ff65                	bnez	a4,da <strlen+0x10>
  e4:	40a6853b          	subw	a0,a3,a0
  e8:	2505                	addw	a0,a0,1
  ea:	6422                	ld	s0,8(sp)
  ec:	0141                	add	sp,sp,16
  ee:	8082                	ret
  f0:	4501                	li	a0,0
  f2:	bfe5                	j	ea <strlen+0x20>

00000000000000f4 <memset>:
  f4:	1141                	add	sp,sp,-16
  f6:	e422                	sd	s0,8(sp)
  f8:	0800                	add	s0,sp,16
  fa:	ca19                	beqz	a2,110 <memset+0x1c>
  fc:	87aa                	mv	a5,a0
  fe:	1602                	sll	a2,a2,0x20
 100:	9201                	srl	a2,a2,0x20
 102:	00a60733          	add	a4,a2,a0
 106:	00b78023          	sb	a1,0(a5)
 10a:	0785                	add	a5,a5,1
 10c:	fee79de3          	bne	a5,a4,106 <memset+0x12>
 110:	6422                	ld	s0,8(sp)
 112:	0141                	add	sp,sp,16
 114:	8082                	ret

0000000000000116 <strchr>:
 116:	1141                	add	sp,sp,-16
 118:	e422                	sd	s0,8(sp)
 11a:	0800                	add	s0,sp,16
 11c:	00054783          	lbu	a5,0(a0)
 120:	cb99                	beqz	a5,136 <strchr+0x20>
 122:	00f58763          	beq	a1,a5,130 <strchr+0x1a>
 126:	0505                	add	a0,a0,1
 128:	00054783          	lbu	a5,0(a0)
 12c:	fbfd                	bnez	a5,122 <strchr+0xc>
 12e:	4501                	li	a0,0
 130:	6422                	ld	s0,8(sp)
 132:	0141                	add	sp,sp,16
 134:	8082                	ret
 136:	4501                	li	a0,0
 138:	bfe5                	j	130 <strchr+0x1a>

000000000000013a <gets>:
 13a:	711d                	add	sp,sp,-96
 13c:	ec86                	sd	ra,88(sp)
 13e:	e8a2                	sd	s0,80(sp)
 140:	e4a6                	sd	s1,72(sp)
 142:	e0ca                	sd	s2,64(sp)
 144:	fc4e                	sd	s3,56(sp)
 146:	f852                	sd	s4,48(sp)
 148:	f456                	sd	s5,40(sp)
 14a:	f05a                	sd	s6,32(sp)
 14c:	ec5e                	sd	s7,24(sp)
 14e:	1080                	add	s0,sp,96
 150:	8baa                	mv	s7,a0
 152:	8a2e                	mv	s4,a1
 154:	892a                	mv	s2,a0
 156:	4481                	li	s1,0
 158:	4aa9                	li	s5,10
 15a:	4b35                	li	s6,13
 15c:	89a6                	mv	s3,s1
 15e:	2485                	addw	s1,s1,1
 160:	0344d863          	bge	s1,s4,190 <gets+0x56>
 164:	4605                	li	a2,1
 166:	faf40593          	add	a1,s0,-81
 16a:	4501                	li	a0,0
 16c:	00000097          	auipc	ra,0x0
 170:	19a080e7          	jalr	410(ra) # 306 <read>
 174:	00a05e63          	blez	a0,190 <gets+0x56>
 178:	faf44783          	lbu	a5,-81(s0)
 17c:	00f90023          	sb	a5,0(s2)
 180:	01578763          	beq	a5,s5,18e <gets+0x54>
 184:	0905                	add	s2,s2,1
 186:	fd679be3          	bne	a5,s6,15c <gets+0x22>
 18a:	89a6                	mv	s3,s1
 18c:	a011                	j	190 <gets+0x56>
 18e:	89a6                	mv	s3,s1
 190:	99de                	add	s3,s3,s7
 192:	00098023          	sb	zero,0(s3)
 196:	855e                	mv	a0,s7
 198:	60e6                	ld	ra,88(sp)
 19a:	6446                	ld	s0,80(sp)
 19c:	64a6                	ld	s1,72(sp)
 19e:	6906                	ld	s2,64(sp)
 1a0:	79e2                	ld	s3,56(sp)
 1a2:	7a42                	ld	s4,48(sp)
 1a4:	7aa2                	ld	s5,40(sp)
 1a6:	7b02                	ld	s6,32(sp)
 1a8:	6be2                	ld	s7,24(sp)
 1aa:	6125                	add	sp,sp,96
 1ac:	8082                	ret

00000000000001ae <stat>:
 1ae:	1101                	add	sp,sp,-32
 1b0:	ec06                	sd	ra,24(sp)
 1b2:	e822                	sd	s0,16(sp)
 1b4:	e04a                	sd	s2,0(sp)
 1b6:	1000                	add	s0,sp,32
 1b8:	892e                	mv	s2,a1
 1ba:	4581                	li	a1,0
 1bc:	00000097          	auipc	ra,0x0
 1c0:	172080e7          	jalr	370(ra) # 32e <open>
 1c4:	02054663          	bltz	a0,1f0 <stat+0x42>
 1c8:	e426                	sd	s1,8(sp)
 1ca:	84aa                	mv	s1,a0
 1cc:	85ca                	mv	a1,s2
 1ce:	00000097          	auipc	ra,0x0
 1d2:	178080e7          	jalr	376(ra) # 346 <fstat>
 1d6:	892a                	mv	s2,a0
 1d8:	8526                	mv	a0,s1
 1da:	00000097          	auipc	ra,0x0
 1de:	13c080e7          	jalr	316(ra) # 316 <close>
 1e2:	64a2                	ld	s1,8(sp)
 1e4:	854a                	mv	a0,s2
 1e6:	60e2                	ld	ra,24(sp)
 1e8:	6442                	ld	s0,16(sp)
 1ea:	6902                	ld	s2,0(sp)
 1ec:	6105                	add	sp,sp,32
 1ee:	8082                	ret
 1f0:	597d                	li	s2,-1
 1f2:	bfcd                	j	1e4 <stat+0x36>

00000000000001f4 <atoi>:
 1f4:	1141                	add	sp,sp,-16
 1f6:	e422                	sd	s0,8(sp)
 1f8:	0800                	add	s0,sp,16
 1fa:	00054683          	lbu	a3,0(a0)
 1fe:	fd06879b          	addw	a5,a3,-48
 202:	0ff7f793          	zext.b	a5,a5
 206:	4625                	li	a2,9
 208:	02f66863          	bltu	a2,a5,238 <atoi+0x44>
 20c:	872a                	mv	a4,a0
 20e:	4501                	li	a0,0
 210:	0705                	add	a4,a4,1
 212:	0025179b          	sllw	a5,a0,0x2
 216:	9fa9                	addw	a5,a5,a0
 218:	0017979b          	sllw	a5,a5,0x1
 21c:	9fb5                	addw	a5,a5,a3
 21e:	fd07851b          	addw	a0,a5,-48
 222:	00074683          	lbu	a3,0(a4)
 226:	fd06879b          	addw	a5,a3,-48
 22a:	0ff7f793          	zext.b	a5,a5
 22e:	fef671e3          	bgeu	a2,a5,210 <atoi+0x1c>
 232:	6422                	ld	s0,8(sp)
 234:	0141                	add	sp,sp,16
 236:	8082                	ret
 238:	4501                	li	a0,0
 23a:	bfe5                	j	232 <atoi+0x3e>

000000000000023c <memmove>:
 23c:	1141                	add	sp,sp,-16
 23e:	e422                	sd	s0,8(sp)
 240:	0800                	add	s0,sp,16
 242:	02b57463          	bgeu	a0,a1,26a <memmove+0x2e>
 246:	00c05f63          	blez	a2,264 <memmove+0x28>
 24a:	1602                	sll	a2,a2,0x20
 24c:	9201                	srl	a2,a2,0x20
 24e:	00c507b3          	add	a5,a0,a2
 252:	872a                	mv	a4,a0
 254:	0585                	add	a1,a1,1
 256:	0705                	add	a4,a4,1
 258:	fff5c683          	lbu	a3,-1(a1)
 25c:	fed70fa3          	sb	a3,-1(a4)
 260:	fef71ae3          	bne	a4,a5,254 <memmove+0x18>
 264:	6422                	ld	s0,8(sp)
 266:	0141                	add	sp,sp,16
 268:	8082                	ret
 26a:	00c50733          	add	a4,a0,a2
 26e:	95b2                	add	a1,a1,a2
 270:	fec05ae3          	blez	a2,264 <memmove+0x28>
 274:	fff6079b          	addw	a5,a2,-1
 278:	1782                	sll	a5,a5,0x20
 27a:	9381                	srl	a5,a5,0x20
 27c:	fff7c793          	not	a5,a5
 280:	97ba                	add	a5,a5,a4
 282:	15fd                	add	a1,a1,-1
 284:	177d                	add	a4,a4,-1
 286:	0005c683          	lbu	a3,0(a1)
 28a:	00d70023          	sb	a3,0(a4)
 28e:	fee79ae3          	bne	a5,a4,282 <memmove+0x46>
 292:	bfc9                	j	264 <memmove+0x28>

0000000000000294 <memcmp>:
 294:	1141                	add	sp,sp,-16
 296:	e422                	sd	s0,8(sp)
 298:	0800                	add	s0,sp,16
 29a:	ca05                	beqz	a2,2ca <memcmp+0x36>
 29c:	fff6069b          	addw	a3,a2,-1
 2a0:	1682                	sll	a3,a3,0x20
 2a2:	9281                	srl	a3,a3,0x20
 2a4:	0685                	add	a3,a3,1
 2a6:	96aa                	add	a3,a3,a0
 2a8:	00054783          	lbu	a5,0(a0)
 2ac:	0005c703          	lbu	a4,0(a1)
 2b0:	00e79863          	bne	a5,a4,2c0 <memcmp+0x2c>
 2b4:	0505                	add	a0,a0,1
 2b6:	0585                	add	a1,a1,1
 2b8:	fed518e3          	bne	a0,a3,2a8 <memcmp+0x14>
 2bc:	4501                	li	a0,0
 2be:	a019                	j	2c4 <memcmp+0x30>
 2c0:	40e7853b          	subw	a0,a5,a4
 2c4:	6422                	ld	s0,8(sp)
 2c6:	0141                	add	sp,sp,16
 2c8:	8082                	ret
 2ca:	4501                	li	a0,0
 2cc:	bfe5                	j	2c4 <memcmp+0x30>

00000000000002ce <memcpy>:
 2ce:	1141                	add	sp,sp,-16
 2d0:	e406                	sd	ra,8(sp)
 2d2:	e022                	sd	s0,0(sp)
 2d4:	0800                	add	s0,sp,16
 2d6:	00000097          	auipc	ra,0x0
 2da:	f66080e7          	jalr	-154(ra) # 23c <memmove>
 2de:	60a2                	ld	ra,8(sp)
 2e0:	6402                	ld	s0,0(sp)
 2e2:	0141                	add	sp,sp,16
 2e4:	8082                	ret

00000000000002e6 <fork>:
 2e6:	4885                	li	a7,1
 2e8:	00000073          	ecall
 2ec:	8082                	ret

00000000000002ee <exit>:
 2ee:	4889                	li	a7,2
 2f0:	00000073          	ecall
 2f4:	8082                	ret

00000000000002f6 <wait>:
 2f6:	488d                	li	a7,3
 2f8:	00000073          	ecall
 2fc:	8082                	ret

00000000000002fe <pipe>:
 2fe:	4891                	li	a7,4
 300:	00000073          	ecall
 304:	8082                	ret

0000000000000306 <read>:
 306:	4895                	li	a7,5
 308:	00000073          	ecall
 30c:	8082                	ret

000000000000030e <write>:
 30e:	48c1                	li	a7,16
 310:	00000073          	ecall
 314:	8082                	ret

0000000000000316 <close>:
 316:	48d5                	li	a7,21
 318:	00000073          	ecall
 31c:	8082                	ret

000000000000031e <kill>:
 31e:	4899                	li	a7,6
 320:	00000073          	ecall
 324:	8082                	ret

0000000000000326 <exec>:
 326:	489d                	li	a7,7
 328:	00000073          	ecall
 32c:	8082                	ret

000000000000032e <open>:
 32e:	48bd                	li	a7,15
 330:	00000073          	ecall
 334:	8082                	ret

0000000000000336 <mknod>:
 336:	48c5                	li	a7,17
 338:	00000073          	ecall
 33c:	8082                	ret

000000000000033e <unlink>:
 33e:	48c9                	li	a7,18
 340:	00000073          	ecall
 344:	8082                	ret

0000000000000346 <fstat>:
 346:	48a1                	li	a7,8
 348:	00000073          	ecall
 34c:	8082                	ret

000000000000034e <link>:
 34e:	48cd                	li	a7,19
 350:	00000073          	ecall
 354:	8082                	ret

0000000000000356 <mkdir>:
 356:	48d1                	li	a7,20
 358:	00000073          	ecall
 35c:	8082                	ret

000000000000035e <chdir>:
 35e:	48a5                	li	a7,9
 360:	00000073          	ecall
 364:	8082                	ret

0000000000000366 <dup>:
 366:	48a9                	li	a7,10
 368:	00000073          	ecall
 36c:	8082                	ret

000000000000036e <getpid>:
 36e:	48ad                	li	a7,11
 370:	00000073          	ecall
 374:	8082                	ret

0000000000000376 <sbrk>:
 376:	48b1                	li	a7,12
 378:	00000073          	ecall
 37c:	8082                	ret

000000000000037e <sleep>:
 37e:	48b5                	li	a7,13
 380:	00000073          	ecall
 384:	8082                	ret

0000000000000386 <uptime>:
 386:	48b9                	li	a7,14
 388:	00000073          	ecall
 38c:	8082                	ret

000000000000038e <waitx>:
 38e:	48d9                	li	a7,22
 390:	00000073          	ecall
 394:	8082                	ret

0000000000000396 <getSysCount>:
 396:	48dd                	li	a7,23
 398:	00000073          	ecall
 39c:	8082                	ret

000000000000039e <sigalarm>:
 39e:	48e1                	li	a7,24
 3a0:	00000073          	ecall
 3a4:	8082                	ret

00000000000003a6 <sigreturn>:
 3a6:	48e5                	li	a7,25
 3a8:	00000073          	ecall
 3ac:	8082                	ret

00000000000003ae <putc>:
 3ae:	1101                	add	sp,sp,-32
 3b0:	ec06                	sd	ra,24(sp)
 3b2:	e822                	sd	s0,16(sp)
 3b4:	1000                	add	s0,sp,32
 3b6:	feb407a3          	sb	a1,-17(s0)
 3ba:	4605                	li	a2,1
 3bc:	fef40593          	add	a1,s0,-17
 3c0:	00000097          	auipc	ra,0x0
 3c4:	f4e080e7          	jalr	-178(ra) # 30e <write>
 3c8:	60e2                	ld	ra,24(sp)
 3ca:	6442                	ld	s0,16(sp)
 3cc:	6105                	add	sp,sp,32
 3ce:	8082                	ret

00000000000003d0 <printint>:
 3d0:	7139                	add	sp,sp,-64
 3d2:	fc06                	sd	ra,56(sp)
 3d4:	f822                	sd	s0,48(sp)
 3d6:	f426                	sd	s1,40(sp)
 3d8:	0080                	add	s0,sp,64
 3da:	84aa                	mv	s1,a0
 3dc:	c299                	beqz	a3,3e2 <printint+0x12>
 3de:	0805cb63          	bltz	a1,474 <printint+0xa4>
 3e2:	2581                	sext.w	a1,a1
 3e4:	4881                	li	a7,0
 3e6:	fc040693          	add	a3,s0,-64
 3ea:	4701                	li	a4,0
 3ec:	2601                	sext.w	a2,a2
 3ee:	00000517          	auipc	a0,0x0
 3f2:	4ba50513          	add	a0,a0,1210 # 8a8 <digits>
 3f6:	883a                	mv	a6,a4
 3f8:	2705                	addw	a4,a4,1
 3fa:	02c5f7bb          	remuw	a5,a1,a2
 3fe:	1782                	sll	a5,a5,0x20
 400:	9381                	srl	a5,a5,0x20
 402:	97aa                	add	a5,a5,a0
 404:	0007c783          	lbu	a5,0(a5)
 408:	00f68023          	sb	a5,0(a3)
 40c:	0005879b          	sext.w	a5,a1
 410:	02c5d5bb          	divuw	a1,a1,a2
 414:	0685                	add	a3,a3,1
 416:	fec7f0e3          	bgeu	a5,a2,3f6 <printint+0x26>
 41a:	00088c63          	beqz	a7,432 <printint+0x62>
 41e:	fd070793          	add	a5,a4,-48
 422:	00878733          	add	a4,a5,s0
 426:	02d00793          	li	a5,45
 42a:	fef70823          	sb	a5,-16(a4)
 42e:	0028071b          	addw	a4,a6,2
 432:	02e05c63          	blez	a4,46a <printint+0x9a>
 436:	f04a                	sd	s2,32(sp)
 438:	ec4e                	sd	s3,24(sp)
 43a:	fc040793          	add	a5,s0,-64
 43e:	00e78933          	add	s2,a5,a4
 442:	fff78993          	add	s3,a5,-1
 446:	99ba                	add	s3,s3,a4
 448:	377d                	addw	a4,a4,-1
 44a:	1702                	sll	a4,a4,0x20
 44c:	9301                	srl	a4,a4,0x20
 44e:	40e989b3          	sub	s3,s3,a4
 452:	fff94583          	lbu	a1,-1(s2)
 456:	8526                	mv	a0,s1
 458:	00000097          	auipc	ra,0x0
 45c:	f56080e7          	jalr	-170(ra) # 3ae <putc>
 460:	197d                	add	s2,s2,-1
 462:	ff3918e3          	bne	s2,s3,452 <printint+0x82>
 466:	7902                	ld	s2,32(sp)
 468:	69e2                	ld	s3,24(sp)
 46a:	70e2                	ld	ra,56(sp)
 46c:	7442                	ld	s0,48(sp)
 46e:	74a2                	ld	s1,40(sp)
 470:	6121                	add	sp,sp,64
 472:	8082                	ret
 474:	40b005bb          	negw	a1,a1
 478:	4885                	li	a7,1
 47a:	b7b5                	j	3e6 <printint+0x16>

000000000000047c <vprintf>:
 47c:	715d                	add	sp,sp,-80
 47e:	e486                	sd	ra,72(sp)
 480:	e0a2                	sd	s0,64(sp)
 482:	f84a                	sd	s2,48(sp)
 484:	0880                	add	s0,sp,80
 486:	0005c903          	lbu	s2,0(a1)
 48a:	1a090a63          	beqz	s2,63e <vprintf+0x1c2>
 48e:	fc26                	sd	s1,56(sp)
 490:	f44e                	sd	s3,40(sp)
 492:	f052                	sd	s4,32(sp)
 494:	ec56                	sd	s5,24(sp)
 496:	e85a                	sd	s6,16(sp)
 498:	e45e                	sd	s7,8(sp)
 49a:	8aaa                	mv	s5,a0
 49c:	8bb2                	mv	s7,a2
 49e:	00158493          	add	s1,a1,1
 4a2:	4981                	li	s3,0
 4a4:	02500a13          	li	s4,37
 4a8:	4b55                	li	s6,21
 4aa:	a839                	j	4c8 <vprintf+0x4c>
 4ac:	85ca                	mv	a1,s2
 4ae:	8556                	mv	a0,s5
 4b0:	00000097          	auipc	ra,0x0
 4b4:	efe080e7          	jalr	-258(ra) # 3ae <putc>
 4b8:	a019                	j	4be <vprintf+0x42>
 4ba:	01498d63          	beq	s3,s4,4d4 <vprintf+0x58>
 4be:	0485                	add	s1,s1,1
 4c0:	fff4c903          	lbu	s2,-1(s1)
 4c4:	16090763          	beqz	s2,632 <vprintf+0x1b6>
 4c8:	fe0999e3          	bnez	s3,4ba <vprintf+0x3e>
 4cc:	ff4910e3          	bne	s2,s4,4ac <vprintf+0x30>
 4d0:	89d2                	mv	s3,s4
 4d2:	b7f5                	j	4be <vprintf+0x42>
 4d4:	13490463          	beq	s2,s4,5fc <vprintf+0x180>
 4d8:	f9d9079b          	addw	a5,s2,-99
 4dc:	0ff7f793          	zext.b	a5,a5
 4e0:	12fb6763          	bltu	s6,a5,60e <vprintf+0x192>
 4e4:	f9d9079b          	addw	a5,s2,-99
 4e8:	0ff7f713          	zext.b	a4,a5
 4ec:	12eb6163          	bltu	s6,a4,60e <vprintf+0x192>
 4f0:	00271793          	sll	a5,a4,0x2
 4f4:	00000717          	auipc	a4,0x0
 4f8:	35c70713          	add	a4,a4,860 # 850 <malloc+0x122>
 4fc:	97ba                	add	a5,a5,a4
 4fe:	439c                	lw	a5,0(a5)
 500:	97ba                	add	a5,a5,a4
 502:	8782                	jr	a5
 504:	008b8913          	add	s2,s7,8
 508:	4685                	li	a3,1
 50a:	4629                	li	a2,10
 50c:	000ba583          	lw	a1,0(s7)
 510:	8556                	mv	a0,s5
 512:	00000097          	auipc	ra,0x0
 516:	ebe080e7          	jalr	-322(ra) # 3d0 <printint>
 51a:	8bca                	mv	s7,s2
 51c:	4981                	li	s3,0
 51e:	b745                	j	4be <vprintf+0x42>
 520:	008b8913          	add	s2,s7,8
 524:	4681                	li	a3,0
 526:	4629                	li	a2,10
 528:	000ba583          	lw	a1,0(s7)
 52c:	8556                	mv	a0,s5
 52e:	00000097          	auipc	ra,0x0
 532:	ea2080e7          	jalr	-350(ra) # 3d0 <printint>
 536:	8bca                	mv	s7,s2
 538:	4981                	li	s3,0
 53a:	b751                	j	4be <vprintf+0x42>
 53c:	008b8913          	add	s2,s7,8
 540:	4681                	li	a3,0
 542:	4641                	li	a2,16
 544:	000ba583          	lw	a1,0(s7)
 548:	8556                	mv	a0,s5
 54a:	00000097          	auipc	ra,0x0
 54e:	e86080e7          	jalr	-378(ra) # 3d0 <printint>
 552:	8bca                	mv	s7,s2
 554:	4981                	li	s3,0
 556:	b7a5                	j	4be <vprintf+0x42>
 558:	e062                	sd	s8,0(sp)
 55a:	008b8c13          	add	s8,s7,8
 55e:	000bb983          	ld	s3,0(s7)
 562:	03000593          	li	a1,48
 566:	8556                	mv	a0,s5
 568:	00000097          	auipc	ra,0x0
 56c:	e46080e7          	jalr	-442(ra) # 3ae <putc>
 570:	07800593          	li	a1,120
 574:	8556                	mv	a0,s5
 576:	00000097          	auipc	ra,0x0
 57a:	e38080e7          	jalr	-456(ra) # 3ae <putc>
 57e:	4941                	li	s2,16
 580:	00000b97          	auipc	s7,0x0
 584:	328b8b93          	add	s7,s7,808 # 8a8 <digits>
 588:	03c9d793          	srl	a5,s3,0x3c
 58c:	97de                	add	a5,a5,s7
 58e:	0007c583          	lbu	a1,0(a5)
 592:	8556                	mv	a0,s5
 594:	00000097          	auipc	ra,0x0
 598:	e1a080e7          	jalr	-486(ra) # 3ae <putc>
 59c:	0992                	sll	s3,s3,0x4
 59e:	397d                	addw	s2,s2,-1
 5a0:	fe0914e3          	bnez	s2,588 <vprintf+0x10c>
 5a4:	8be2                	mv	s7,s8
 5a6:	4981                	li	s3,0
 5a8:	6c02                	ld	s8,0(sp)
 5aa:	bf11                	j	4be <vprintf+0x42>
 5ac:	008b8993          	add	s3,s7,8
 5b0:	000bb903          	ld	s2,0(s7)
 5b4:	02090163          	beqz	s2,5d6 <vprintf+0x15a>
 5b8:	00094583          	lbu	a1,0(s2)
 5bc:	c9a5                	beqz	a1,62c <vprintf+0x1b0>
 5be:	8556                	mv	a0,s5
 5c0:	00000097          	auipc	ra,0x0
 5c4:	dee080e7          	jalr	-530(ra) # 3ae <putc>
 5c8:	0905                	add	s2,s2,1
 5ca:	00094583          	lbu	a1,0(s2)
 5ce:	f9e5                	bnez	a1,5be <vprintf+0x142>
 5d0:	8bce                	mv	s7,s3
 5d2:	4981                	li	s3,0
 5d4:	b5ed                	j	4be <vprintf+0x42>
 5d6:	00000917          	auipc	s2,0x0
 5da:	27290913          	add	s2,s2,626 # 848 <malloc+0x11a>
 5de:	02800593          	li	a1,40
 5e2:	bff1                	j	5be <vprintf+0x142>
 5e4:	008b8913          	add	s2,s7,8
 5e8:	000bc583          	lbu	a1,0(s7)
 5ec:	8556                	mv	a0,s5
 5ee:	00000097          	auipc	ra,0x0
 5f2:	dc0080e7          	jalr	-576(ra) # 3ae <putc>
 5f6:	8bca                	mv	s7,s2
 5f8:	4981                	li	s3,0
 5fa:	b5d1                	j	4be <vprintf+0x42>
 5fc:	02500593          	li	a1,37
 600:	8556                	mv	a0,s5
 602:	00000097          	auipc	ra,0x0
 606:	dac080e7          	jalr	-596(ra) # 3ae <putc>
 60a:	4981                	li	s3,0
 60c:	bd4d                	j	4be <vprintf+0x42>
 60e:	02500593          	li	a1,37
 612:	8556                	mv	a0,s5
 614:	00000097          	auipc	ra,0x0
 618:	d9a080e7          	jalr	-614(ra) # 3ae <putc>
 61c:	85ca                	mv	a1,s2
 61e:	8556                	mv	a0,s5
 620:	00000097          	auipc	ra,0x0
 624:	d8e080e7          	jalr	-626(ra) # 3ae <putc>
 628:	4981                	li	s3,0
 62a:	bd51                	j	4be <vprintf+0x42>
 62c:	8bce                	mv	s7,s3
 62e:	4981                	li	s3,0
 630:	b579                	j	4be <vprintf+0x42>
 632:	74e2                	ld	s1,56(sp)
 634:	79a2                	ld	s3,40(sp)
 636:	7a02                	ld	s4,32(sp)
 638:	6ae2                	ld	s5,24(sp)
 63a:	6b42                	ld	s6,16(sp)
 63c:	6ba2                	ld	s7,8(sp)
 63e:	60a6                	ld	ra,72(sp)
 640:	6406                	ld	s0,64(sp)
 642:	7942                	ld	s2,48(sp)
 644:	6161                	add	sp,sp,80
 646:	8082                	ret

0000000000000648 <fprintf>:
 648:	715d                	add	sp,sp,-80
 64a:	ec06                	sd	ra,24(sp)
 64c:	e822                	sd	s0,16(sp)
 64e:	1000                	add	s0,sp,32
 650:	e010                	sd	a2,0(s0)
 652:	e414                	sd	a3,8(s0)
 654:	e818                	sd	a4,16(s0)
 656:	ec1c                	sd	a5,24(s0)
 658:	03043023          	sd	a6,32(s0)
 65c:	03143423          	sd	a7,40(s0)
 660:	fe843423          	sd	s0,-24(s0)
 664:	8622                	mv	a2,s0
 666:	00000097          	auipc	ra,0x0
 66a:	e16080e7          	jalr	-490(ra) # 47c <vprintf>
 66e:	60e2                	ld	ra,24(sp)
 670:	6442                	ld	s0,16(sp)
 672:	6161                	add	sp,sp,80
 674:	8082                	ret

0000000000000676 <printf>:
 676:	711d                	add	sp,sp,-96
 678:	ec06                	sd	ra,24(sp)
 67a:	e822                	sd	s0,16(sp)
 67c:	1000                	add	s0,sp,32
 67e:	e40c                	sd	a1,8(s0)
 680:	e810                	sd	a2,16(s0)
 682:	ec14                	sd	a3,24(s0)
 684:	f018                	sd	a4,32(s0)
 686:	f41c                	sd	a5,40(s0)
 688:	03043823          	sd	a6,48(s0)
 68c:	03143c23          	sd	a7,56(s0)
 690:	00840613          	add	a2,s0,8
 694:	fec43423          	sd	a2,-24(s0)
 698:	85aa                	mv	a1,a0
 69a:	4505                	li	a0,1
 69c:	00000097          	auipc	ra,0x0
 6a0:	de0080e7          	jalr	-544(ra) # 47c <vprintf>
 6a4:	60e2                	ld	ra,24(sp)
 6a6:	6442                	ld	s0,16(sp)
 6a8:	6125                	add	sp,sp,96
 6aa:	8082                	ret

00000000000006ac <free>:
 6ac:	1141                	add	sp,sp,-16
 6ae:	e422                	sd	s0,8(sp)
 6b0:	0800                	add	s0,sp,16
 6b2:	ff050693          	add	a3,a0,-16
 6b6:	00001797          	auipc	a5,0x1
 6ba:	d2a7b783          	ld	a5,-726(a5) # 13e0 <freep>
 6be:	a02d                	j	6e8 <free+0x3c>
 6c0:	4618                	lw	a4,8(a2)
 6c2:	9f2d                	addw	a4,a4,a1
 6c4:	fee52c23          	sw	a4,-8(a0)
 6c8:	6398                	ld	a4,0(a5)
 6ca:	6310                	ld	a2,0(a4)
 6cc:	a83d                	j	70a <free+0x5e>
 6ce:	ff852703          	lw	a4,-8(a0)
 6d2:	9f31                	addw	a4,a4,a2
 6d4:	c798                	sw	a4,8(a5)
 6d6:	ff053683          	ld	a3,-16(a0)
 6da:	a091                	j	71e <free+0x72>
 6dc:	6398                	ld	a4,0(a5)
 6de:	00e7e463          	bltu	a5,a4,6e6 <free+0x3a>
 6e2:	00e6ea63          	bltu	a3,a4,6f6 <free+0x4a>
 6e6:	87ba                	mv	a5,a4
 6e8:	fed7fae3          	bgeu	a5,a3,6dc <free+0x30>
 6ec:	6398                	ld	a4,0(a5)
 6ee:	00e6e463          	bltu	a3,a4,6f6 <free+0x4a>
 6f2:	fee7eae3          	bltu	a5,a4,6e6 <free+0x3a>
 6f6:	ff852583          	lw	a1,-8(a0)
 6fa:	6390                	ld	a2,0(a5)
 6fc:	02059813          	sll	a6,a1,0x20
 700:	01c85713          	srl	a4,a6,0x1c
 704:	9736                	add	a4,a4,a3
 706:	fae60de3          	beq	a2,a4,6c0 <free+0x14>
 70a:	fec53823          	sd	a2,-16(a0)
 70e:	4790                	lw	a2,8(a5)
 710:	02061593          	sll	a1,a2,0x20
 714:	01c5d713          	srl	a4,a1,0x1c
 718:	973e                	add	a4,a4,a5
 71a:	fae68ae3          	beq	a3,a4,6ce <free+0x22>
 71e:	e394                	sd	a3,0(a5)
 720:	00001717          	auipc	a4,0x1
 724:	ccf73023          	sd	a5,-832(a4) # 13e0 <freep>
 728:	6422                	ld	s0,8(sp)
 72a:	0141                	add	sp,sp,16
 72c:	8082                	ret

000000000000072e <malloc>:
 72e:	7139                	add	sp,sp,-64
 730:	fc06                	sd	ra,56(sp)
 732:	f822                	sd	s0,48(sp)
 734:	f426                	sd	s1,40(sp)
 736:	ec4e                	sd	s3,24(sp)
 738:	0080                	add	s0,sp,64
 73a:	02051493          	sll	s1,a0,0x20
 73e:	9081                	srl	s1,s1,0x20
 740:	04bd                	add	s1,s1,15
 742:	8091                	srl	s1,s1,0x4
 744:	0014899b          	addw	s3,s1,1
 748:	0485                	add	s1,s1,1
 74a:	00001517          	auipc	a0,0x1
 74e:	c9653503          	ld	a0,-874(a0) # 13e0 <freep>
 752:	c915                	beqz	a0,786 <malloc+0x58>
 754:	611c                	ld	a5,0(a0)
 756:	4798                	lw	a4,8(a5)
 758:	08977e63          	bgeu	a4,s1,7f4 <malloc+0xc6>
 75c:	f04a                	sd	s2,32(sp)
 75e:	e852                	sd	s4,16(sp)
 760:	e456                	sd	s5,8(sp)
 762:	e05a                	sd	s6,0(sp)
 764:	8a4e                	mv	s4,s3
 766:	0009871b          	sext.w	a4,s3
 76a:	6685                	lui	a3,0x1
 76c:	00d77363          	bgeu	a4,a3,772 <malloc+0x44>
 770:	6a05                	lui	s4,0x1
 772:	000a0b1b          	sext.w	s6,s4
 776:	004a1a1b          	sllw	s4,s4,0x4
 77a:	00001917          	auipc	s2,0x1
 77e:	c6690913          	add	s2,s2,-922 # 13e0 <freep>
 782:	5afd                	li	s5,-1
 784:	a091                	j	7c8 <malloc+0x9a>
 786:	f04a                	sd	s2,32(sp)
 788:	e852                	sd	s4,16(sp)
 78a:	e456                	sd	s5,8(sp)
 78c:	e05a                	sd	s6,0(sp)
 78e:	00001797          	auipc	a5,0x1
 792:	c6278793          	add	a5,a5,-926 # 13f0 <base>
 796:	00001717          	auipc	a4,0x1
 79a:	c4f73523          	sd	a5,-950(a4) # 13e0 <freep>
 79e:	e39c                	sd	a5,0(a5)
 7a0:	0007a423          	sw	zero,8(a5)
 7a4:	b7c1                	j	764 <malloc+0x36>
 7a6:	6398                	ld	a4,0(a5)
 7a8:	e118                	sd	a4,0(a0)
 7aa:	a08d                	j	80c <malloc+0xde>
 7ac:	01652423          	sw	s6,8(a0)
 7b0:	0541                	add	a0,a0,16
 7b2:	00000097          	auipc	ra,0x0
 7b6:	efa080e7          	jalr	-262(ra) # 6ac <free>
 7ba:	00093503          	ld	a0,0(s2)
 7be:	c13d                	beqz	a0,824 <malloc+0xf6>
 7c0:	611c                	ld	a5,0(a0)
 7c2:	4798                	lw	a4,8(a5)
 7c4:	02977463          	bgeu	a4,s1,7ec <malloc+0xbe>
 7c8:	00093703          	ld	a4,0(s2)
 7cc:	853e                	mv	a0,a5
 7ce:	fef719e3          	bne	a4,a5,7c0 <malloc+0x92>
 7d2:	8552                	mv	a0,s4
 7d4:	00000097          	auipc	ra,0x0
 7d8:	ba2080e7          	jalr	-1118(ra) # 376 <sbrk>
 7dc:	fd5518e3          	bne	a0,s5,7ac <malloc+0x7e>
 7e0:	4501                	li	a0,0
 7e2:	7902                	ld	s2,32(sp)
 7e4:	6a42                	ld	s4,16(sp)
 7e6:	6aa2                	ld	s5,8(sp)
 7e8:	6b02                	ld	s6,0(sp)
 7ea:	a03d                	j	818 <malloc+0xea>
 7ec:	7902                	ld	s2,32(sp)
 7ee:	6a42                	ld	s4,16(sp)
 7f0:	6aa2                	ld	s5,8(sp)
 7f2:	6b02                	ld	s6,0(sp)
 7f4:	fae489e3          	beq	s1,a4,7a6 <malloc+0x78>
 7f8:	4137073b          	subw	a4,a4,s3
 7fc:	c798                	sw	a4,8(a5)
 7fe:	02071693          	sll	a3,a4,0x20
 802:	01c6d713          	srl	a4,a3,0x1c
 806:	97ba                	add	a5,a5,a4
 808:	0137a423          	sw	s3,8(a5)
 80c:	00001717          	auipc	a4,0x1
 810:	bca73a23          	sd	a0,-1068(a4) # 13e0 <freep>
 814:	01078513          	add	a0,a5,16
 818:	70e2                	ld	ra,56(sp)
 81a:	7442                	ld	s0,48(sp)
 81c:	74a2                	ld	s1,40(sp)
 81e:	69e2                	ld	s3,24(sp)
 820:	6121                	add	sp,sp,64
 822:	8082                	ret
 824:	7902                	ld	s2,32(sp)
 826:	6a42                	ld	s4,16(sp)
 828:	6aa2                	ld	s5,8(sp)
 82a:	6b02                	ld	s6,0(sp)
 82c:	b7f5                	j	818 <malloc+0xea>
