
user/_mkdir:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	add	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	1000                	add	s0,sp,32
   8:	4785                	li	a5,1
   a:	02a7d963          	bge	a5,a0,3c <main+0x3c>
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
  2c:	340080e7          	jalr	832(ra) # 368 <mkdir>
  30:	02054663          	bltz	a0,5c <main+0x5c>
  34:	04a1                	add	s1,s1,8
  36:	ff2498e3          	bne	s1,s2,26 <main+0x26>
  3a:	a81d                	j	70 <main+0x70>
  3c:	e426                	sd	s1,8(sp)
  3e:	e04a                	sd	s2,0(sp)
  40:	00001597          	auipc	a1,0x1
  44:	80058593          	add	a1,a1,-2048 # 840 <malloc+0x100>
  48:	4509                	li	a0,2
  4a:	00000097          	auipc	ra,0x0
  4e:	610080e7          	jalr	1552(ra) # 65a <fprintf>
  52:	4505                	li	a0,1
  54:	00000097          	auipc	ra,0x0
  58:	2ac080e7          	jalr	684(ra) # 300 <exit>
  5c:	6090                	ld	a2,0(s1)
  5e:	00000597          	auipc	a1,0x0
  62:	7fa58593          	add	a1,a1,2042 # 858 <malloc+0x118>
  66:	4509                	li	a0,2
  68:	00000097          	auipc	ra,0x0
  6c:	5f2080e7          	jalr	1522(ra) # 65a <fprintf>
  70:	4501                	li	a0,0
  72:	00000097          	auipc	ra,0x0
  76:	28e080e7          	jalr	654(ra) # 300 <exit>

000000000000007a <_main>:
  7a:	1141                	add	sp,sp,-16
  7c:	e406                	sd	ra,8(sp)
  7e:	e022                	sd	s0,0(sp)
  80:	0800                	add	s0,sp,16
  82:	00000097          	auipc	ra,0x0
  86:	f7e080e7          	jalr	-130(ra) # 0 <main>
  8a:	4501                	li	a0,0
  8c:	00000097          	auipc	ra,0x0
  90:	274080e7          	jalr	628(ra) # 300 <exit>

0000000000000094 <strcpy>:
  94:	1141                	add	sp,sp,-16
  96:	e422                	sd	s0,8(sp)
  98:	0800                	add	s0,sp,16
  9a:	87aa                	mv	a5,a0
  9c:	0585                	add	a1,a1,1
  9e:	0785                	add	a5,a5,1
  a0:	fff5c703          	lbu	a4,-1(a1)
  a4:	fee78fa3          	sb	a4,-1(a5)
  a8:	fb75                	bnez	a4,9c <strcpy+0x8>
  aa:	6422                	ld	s0,8(sp)
  ac:	0141                	add	sp,sp,16
  ae:	8082                	ret

00000000000000b0 <strcmp>:
  b0:	1141                	add	sp,sp,-16
  b2:	e422                	sd	s0,8(sp)
  b4:	0800                	add	s0,sp,16
  b6:	00054783          	lbu	a5,0(a0)
  ba:	cb91                	beqz	a5,ce <strcmp+0x1e>
  bc:	0005c703          	lbu	a4,0(a1)
  c0:	00f71763          	bne	a4,a5,ce <strcmp+0x1e>
  c4:	0505                	add	a0,a0,1
  c6:	0585                	add	a1,a1,1
  c8:	00054783          	lbu	a5,0(a0)
  cc:	fbe5                	bnez	a5,bc <strcmp+0xc>
  ce:	0005c503          	lbu	a0,0(a1)
  d2:	40a7853b          	subw	a0,a5,a0
  d6:	6422                	ld	s0,8(sp)
  d8:	0141                	add	sp,sp,16
  da:	8082                	ret

00000000000000dc <strlen>:
  dc:	1141                	add	sp,sp,-16
  de:	e422                	sd	s0,8(sp)
  e0:	0800                	add	s0,sp,16
  e2:	00054783          	lbu	a5,0(a0)
  e6:	cf91                	beqz	a5,102 <strlen+0x26>
  e8:	0505                	add	a0,a0,1
  ea:	87aa                	mv	a5,a0
  ec:	86be                	mv	a3,a5
  ee:	0785                	add	a5,a5,1
  f0:	fff7c703          	lbu	a4,-1(a5)
  f4:	ff65                	bnez	a4,ec <strlen+0x10>
  f6:	40a6853b          	subw	a0,a3,a0
  fa:	2505                	addw	a0,a0,1
  fc:	6422                	ld	s0,8(sp)
  fe:	0141                	add	sp,sp,16
 100:	8082                	ret
 102:	4501                	li	a0,0
 104:	bfe5                	j	fc <strlen+0x20>

0000000000000106 <memset>:
 106:	1141                	add	sp,sp,-16
 108:	e422                	sd	s0,8(sp)
 10a:	0800                	add	s0,sp,16
 10c:	ca19                	beqz	a2,122 <memset+0x1c>
 10e:	87aa                	mv	a5,a0
 110:	1602                	sll	a2,a2,0x20
 112:	9201                	srl	a2,a2,0x20
 114:	00a60733          	add	a4,a2,a0
 118:	00b78023          	sb	a1,0(a5)
 11c:	0785                	add	a5,a5,1
 11e:	fee79de3          	bne	a5,a4,118 <memset+0x12>
 122:	6422                	ld	s0,8(sp)
 124:	0141                	add	sp,sp,16
 126:	8082                	ret

0000000000000128 <strchr>:
 128:	1141                	add	sp,sp,-16
 12a:	e422                	sd	s0,8(sp)
 12c:	0800                	add	s0,sp,16
 12e:	00054783          	lbu	a5,0(a0)
 132:	cb99                	beqz	a5,148 <strchr+0x20>
 134:	00f58763          	beq	a1,a5,142 <strchr+0x1a>
 138:	0505                	add	a0,a0,1
 13a:	00054783          	lbu	a5,0(a0)
 13e:	fbfd                	bnez	a5,134 <strchr+0xc>
 140:	4501                	li	a0,0
 142:	6422                	ld	s0,8(sp)
 144:	0141                	add	sp,sp,16
 146:	8082                	ret
 148:	4501                	li	a0,0
 14a:	bfe5                	j	142 <strchr+0x1a>

000000000000014c <gets>:
 14c:	711d                	add	sp,sp,-96
 14e:	ec86                	sd	ra,88(sp)
 150:	e8a2                	sd	s0,80(sp)
 152:	e4a6                	sd	s1,72(sp)
 154:	e0ca                	sd	s2,64(sp)
 156:	fc4e                	sd	s3,56(sp)
 158:	f852                	sd	s4,48(sp)
 15a:	f456                	sd	s5,40(sp)
 15c:	f05a                	sd	s6,32(sp)
 15e:	ec5e                	sd	s7,24(sp)
 160:	1080                	add	s0,sp,96
 162:	8baa                	mv	s7,a0
 164:	8a2e                	mv	s4,a1
 166:	892a                	mv	s2,a0
 168:	4481                	li	s1,0
 16a:	4aa9                	li	s5,10
 16c:	4b35                	li	s6,13
 16e:	89a6                	mv	s3,s1
 170:	2485                	addw	s1,s1,1
 172:	0344d863          	bge	s1,s4,1a2 <gets+0x56>
 176:	4605                	li	a2,1
 178:	faf40593          	add	a1,s0,-81
 17c:	4501                	li	a0,0
 17e:	00000097          	auipc	ra,0x0
 182:	19a080e7          	jalr	410(ra) # 318 <read>
 186:	00a05e63          	blez	a0,1a2 <gets+0x56>
 18a:	faf44783          	lbu	a5,-81(s0)
 18e:	00f90023          	sb	a5,0(s2)
 192:	01578763          	beq	a5,s5,1a0 <gets+0x54>
 196:	0905                	add	s2,s2,1
 198:	fd679be3          	bne	a5,s6,16e <gets+0x22>
 19c:	89a6                	mv	s3,s1
 19e:	a011                	j	1a2 <gets+0x56>
 1a0:	89a6                	mv	s3,s1
 1a2:	99de                	add	s3,s3,s7
 1a4:	00098023          	sb	zero,0(s3)
 1a8:	855e                	mv	a0,s7
 1aa:	60e6                	ld	ra,88(sp)
 1ac:	6446                	ld	s0,80(sp)
 1ae:	64a6                	ld	s1,72(sp)
 1b0:	6906                	ld	s2,64(sp)
 1b2:	79e2                	ld	s3,56(sp)
 1b4:	7a42                	ld	s4,48(sp)
 1b6:	7aa2                	ld	s5,40(sp)
 1b8:	7b02                	ld	s6,32(sp)
 1ba:	6be2                	ld	s7,24(sp)
 1bc:	6125                	add	sp,sp,96
 1be:	8082                	ret

00000000000001c0 <stat>:
 1c0:	1101                	add	sp,sp,-32
 1c2:	ec06                	sd	ra,24(sp)
 1c4:	e822                	sd	s0,16(sp)
 1c6:	e04a                	sd	s2,0(sp)
 1c8:	1000                	add	s0,sp,32
 1ca:	892e                	mv	s2,a1
 1cc:	4581                	li	a1,0
 1ce:	00000097          	auipc	ra,0x0
 1d2:	172080e7          	jalr	370(ra) # 340 <open>
 1d6:	02054663          	bltz	a0,202 <stat+0x42>
 1da:	e426                	sd	s1,8(sp)
 1dc:	84aa                	mv	s1,a0
 1de:	85ca                	mv	a1,s2
 1e0:	00000097          	auipc	ra,0x0
 1e4:	178080e7          	jalr	376(ra) # 358 <fstat>
 1e8:	892a                	mv	s2,a0
 1ea:	8526                	mv	a0,s1
 1ec:	00000097          	auipc	ra,0x0
 1f0:	13c080e7          	jalr	316(ra) # 328 <close>
 1f4:	64a2                	ld	s1,8(sp)
 1f6:	854a                	mv	a0,s2
 1f8:	60e2                	ld	ra,24(sp)
 1fa:	6442                	ld	s0,16(sp)
 1fc:	6902                	ld	s2,0(sp)
 1fe:	6105                	add	sp,sp,32
 200:	8082                	ret
 202:	597d                	li	s2,-1
 204:	bfcd                	j	1f6 <stat+0x36>

0000000000000206 <atoi>:
 206:	1141                	add	sp,sp,-16
 208:	e422                	sd	s0,8(sp)
 20a:	0800                	add	s0,sp,16
 20c:	00054683          	lbu	a3,0(a0)
 210:	fd06879b          	addw	a5,a3,-48
 214:	0ff7f793          	zext.b	a5,a5
 218:	4625                	li	a2,9
 21a:	02f66863          	bltu	a2,a5,24a <atoi+0x44>
 21e:	872a                	mv	a4,a0
 220:	4501                	li	a0,0
 222:	0705                	add	a4,a4,1
 224:	0025179b          	sllw	a5,a0,0x2
 228:	9fa9                	addw	a5,a5,a0
 22a:	0017979b          	sllw	a5,a5,0x1
 22e:	9fb5                	addw	a5,a5,a3
 230:	fd07851b          	addw	a0,a5,-48
 234:	00074683          	lbu	a3,0(a4)
 238:	fd06879b          	addw	a5,a3,-48
 23c:	0ff7f793          	zext.b	a5,a5
 240:	fef671e3          	bgeu	a2,a5,222 <atoi+0x1c>
 244:	6422                	ld	s0,8(sp)
 246:	0141                	add	sp,sp,16
 248:	8082                	ret
 24a:	4501                	li	a0,0
 24c:	bfe5                	j	244 <atoi+0x3e>

000000000000024e <memmove>:
 24e:	1141                	add	sp,sp,-16
 250:	e422                	sd	s0,8(sp)
 252:	0800                	add	s0,sp,16
 254:	02b57463          	bgeu	a0,a1,27c <memmove+0x2e>
 258:	00c05f63          	blez	a2,276 <memmove+0x28>
 25c:	1602                	sll	a2,a2,0x20
 25e:	9201                	srl	a2,a2,0x20
 260:	00c507b3          	add	a5,a0,a2
 264:	872a                	mv	a4,a0
 266:	0585                	add	a1,a1,1
 268:	0705                	add	a4,a4,1
 26a:	fff5c683          	lbu	a3,-1(a1)
 26e:	fed70fa3          	sb	a3,-1(a4)
 272:	fef71ae3          	bne	a4,a5,266 <memmove+0x18>
 276:	6422                	ld	s0,8(sp)
 278:	0141                	add	sp,sp,16
 27a:	8082                	ret
 27c:	00c50733          	add	a4,a0,a2
 280:	95b2                	add	a1,a1,a2
 282:	fec05ae3          	blez	a2,276 <memmove+0x28>
 286:	fff6079b          	addw	a5,a2,-1
 28a:	1782                	sll	a5,a5,0x20
 28c:	9381                	srl	a5,a5,0x20
 28e:	fff7c793          	not	a5,a5
 292:	97ba                	add	a5,a5,a4
 294:	15fd                	add	a1,a1,-1
 296:	177d                	add	a4,a4,-1
 298:	0005c683          	lbu	a3,0(a1)
 29c:	00d70023          	sb	a3,0(a4)
 2a0:	fee79ae3          	bne	a5,a4,294 <memmove+0x46>
 2a4:	bfc9                	j	276 <memmove+0x28>

00000000000002a6 <memcmp>:
 2a6:	1141                	add	sp,sp,-16
 2a8:	e422                	sd	s0,8(sp)
 2aa:	0800                	add	s0,sp,16
 2ac:	ca05                	beqz	a2,2dc <memcmp+0x36>
 2ae:	fff6069b          	addw	a3,a2,-1
 2b2:	1682                	sll	a3,a3,0x20
 2b4:	9281                	srl	a3,a3,0x20
 2b6:	0685                	add	a3,a3,1
 2b8:	96aa                	add	a3,a3,a0
 2ba:	00054783          	lbu	a5,0(a0)
 2be:	0005c703          	lbu	a4,0(a1)
 2c2:	00e79863          	bne	a5,a4,2d2 <memcmp+0x2c>
 2c6:	0505                	add	a0,a0,1
 2c8:	0585                	add	a1,a1,1
 2ca:	fed518e3          	bne	a0,a3,2ba <memcmp+0x14>
 2ce:	4501                	li	a0,0
 2d0:	a019                	j	2d6 <memcmp+0x30>
 2d2:	40e7853b          	subw	a0,a5,a4
 2d6:	6422                	ld	s0,8(sp)
 2d8:	0141                	add	sp,sp,16
 2da:	8082                	ret
 2dc:	4501                	li	a0,0
 2de:	bfe5                	j	2d6 <memcmp+0x30>

00000000000002e0 <memcpy>:
 2e0:	1141                	add	sp,sp,-16
 2e2:	e406                	sd	ra,8(sp)
 2e4:	e022                	sd	s0,0(sp)
 2e6:	0800                	add	s0,sp,16
 2e8:	00000097          	auipc	ra,0x0
 2ec:	f66080e7          	jalr	-154(ra) # 24e <memmove>
 2f0:	60a2                	ld	ra,8(sp)
 2f2:	6402                	ld	s0,0(sp)
 2f4:	0141                	add	sp,sp,16
 2f6:	8082                	ret

00000000000002f8 <fork>:
 2f8:	4885                	li	a7,1
 2fa:	00000073          	ecall
 2fe:	8082                	ret

0000000000000300 <exit>:
 300:	4889                	li	a7,2
 302:	00000073          	ecall
 306:	8082                	ret

0000000000000308 <wait>:
 308:	488d                	li	a7,3
 30a:	00000073          	ecall
 30e:	8082                	ret

0000000000000310 <pipe>:
 310:	4891                	li	a7,4
 312:	00000073          	ecall
 316:	8082                	ret

0000000000000318 <read>:
 318:	4895                	li	a7,5
 31a:	00000073          	ecall
 31e:	8082                	ret

0000000000000320 <write>:
 320:	48c1                	li	a7,16
 322:	00000073          	ecall
 326:	8082                	ret

0000000000000328 <close>:
 328:	48d5                	li	a7,21
 32a:	00000073          	ecall
 32e:	8082                	ret

0000000000000330 <kill>:
 330:	4899                	li	a7,6
 332:	00000073          	ecall
 336:	8082                	ret

0000000000000338 <exec>:
 338:	489d                	li	a7,7
 33a:	00000073          	ecall
 33e:	8082                	ret

0000000000000340 <open>:
 340:	48bd                	li	a7,15
 342:	00000073          	ecall
 346:	8082                	ret

0000000000000348 <mknod>:
 348:	48c5                	li	a7,17
 34a:	00000073          	ecall
 34e:	8082                	ret

0000000000000350 <unlink>:
 350:	48c9                	li	a7,18
 352:	00000073          	ecall
 356:	8082                	ret

0000000000000358 <fstat>:
 358:	48a1                	li	a7,8
 35a:	00000073          	ecall
 35e:	8082                	ret

0000000000000360 <link>:
 360:	48cd                	li	a7,19
 362:	00000073          	ecall
 366:	8082                	ret

0000000000000368 <mkdir>:
 368:	48d1                	li	a7,20
 36a:	00000073          	ecall
 36e:	8082                	ret

0000000000000370 <chdir>:
 370:	48a5                	li	a7,9
 372:	00000073          	ecall
 376:	8082                	ret

0000000000000378 <dup>:
 378:	48a9                	li	a7,10
 37a:	00000073          	ecall
 37e:	8082                	ret

0000000000000380 <getpid>:
 380:	48ad                	li	a7,11
 382:	00000073          	ecall
 386:	8082                	ret

0000000000000388 <sbrk>:
 388:	48b1                	li	a7,12
 38a:	00000073          	ecall
 38e:	8082                	ret

0000000000000390 <sleep>:
 390:	48b5                	li	a7,13
 392:	00000073          	ecall
 396:	8082                	ret

0000000000000398 <uptime>:
 398:	48b9                	li	a7,14
 39a:	00000073          	ecall
 39e:	8082                	ret

00000000000003a0 <waitx>:
 3a0:	48d9                	li	a7,22
 3a2:	00000073          	ecall
 3a6:	8082                	ret

00000000000003a8 <getSysCount>:
 3a8:	48dd                	li	a7,23
 3aa:	00000073          	ecall
 3ae:	8082                	ret

00000000000003b0 <sigalarm>:
 3b0:	48e1                	li	a7,24
 3b2:	00000073          	ecall
 3b6:	8082                	ret

00000000000003b8 <sigreturn>:
 3b8:	48e5                	li	a7,25
 3ba:	00000073          	ecall
 3be:	8082                	ret

00000000000003c0 <putc>:
 3c0:	1101                	add	sp,sp,-32
 3c2:	ec06                	sd	ra,24(sp)
 3c4:	e822                	sd	s0,16(sp)
 3c6:	1000                	add	s0,sp,32
 3c8:	feb407a3          	sb	a1,-17(s0)
 3cc:	4605                	li	a2,1
 3ce:	fef40593          	add	a1,s0,-17
 3d2:	00000097          	auipc	ra,0x0
 3d6:	f4e080e7          	jalr	-178(ra) # 320 <write>
 3da:	60e2                	ld	ra,24(sp)
 3dc:	6442                	ld	s0,16(sp)
 3de:	6105                	add	sp,sp,32
 3e0:	8082                	ret

00000000000003e2 <printint>:
 3e2:	7139                	add	sp,sp,-64
 3e4:	fc06                	sd	ra,56(sp)
 3e6:	f822                	sd	s0,48(sp)
 3e8:	f426                	sd	s1,40(sp)
 3ea:	0080                	add	s0,sp,64
 3ec:	84aa                	mv	s1,a0
 3ee:	c299                	beqz	a3,3f4 <printint+0x12>
 3f0:	0805cb63          	bltz	a1,486 <printint+0xa4>
 3f4:	2581                	sext.w	a1,a1
 3f6:	4881                	li	a7,0
 3f8:	fc040693          	add	a3,s0,-64
 3fc:	4701                	li	a4,0
 3fe:	2601                	sext.w	a2,a2
 400:	00000517          	auipc	a0,0x0
 404:	4d850513          	add	a0,a0,1240 # 8d8 <digits>
 408:	883a                	mv	a6,a4
 40a:	2705                	addw	a4,a4,1
 40c:	02c5f7bb          	remuw	a5,a1,a2
 410:	1782                	sll	a5,a5,0x20
 412:	9381                	srl	a5,a5,0x20
 414:	97aa                	add	a5,a5,a0
 416:	0007c783          	lbu	a5,0(a5)
 41a:	00f68023          	sb	a5,0(a3)
 41e:	0005879b          	sext.w	a5,a1
 422:	02c5d5bb          	divuw	a1,a1,a2
 426:	0685                	add	a3,a3,1
 428:	fec7f0e3          	bgeu	a5,a2,408 <printint+0x26>
 42c:	00088c63          	beqz	a7,444 <printint+0x62>
 430:	fd070793          	add	a5,a4,-48
 434:	00878733          	add	a4,a5,s0
 438:	02d00793          	li	a5,45
 43c:	fef70823          	sb	a5,-16(a4)
 440:	0028071b          	addw	a4,a6,2
 444:	02e05c63          	blez	a4,47c <printint+0x9a>
 448:	f04a                	sd	s2,32(sp)
 44a:	ec4e                	sd	s3,24(sp)
 44c:	fc040793          	add	a5,s0,-64
 450:	00e78933          	add	s2,a5,a4
 454:	fff78993          	add	s3,a5,-1
 458:	99ba                	add	s3,s3,a4
 45a:	377d                	addw	a4,a4,-1
 45c:	1702                	sll	a4,a4,0x20
 45e:	9301                	srl	a4,a4,0x20
 460:	40e989b3          	sub	s3,s3,a4
 464:	fff94583          	lbu	a1,-1(s2)
 468:	8526                	mv	a0,s1
 46a:	00000097          	auipc	ra,0x0
 46e:	f56080e7          	jalr	-170(ra) # 3c0 <putc>
 472:	197d                	add	s2,s2,-1
 474:	ff3918e3          	bne	s2,s3,464 <printint+0x82>
 478:	7902                	ld	s2,32(sp)
 47a:	69e2                	ld	s3,24(sp)
 47c:	70e2                	ld	ra,56(sp)
 47e:	7442                	ld	s0,48(sp)
 480:	74a2                	ld	s1,40(sp)
 482:	6121                	add	sp,sp,64
 484:	8082                	ret
 486:	40b005bb          	negw	a1,a1
 48a:	4885                	li	a7,1
 48c:	b7b5                	j	3f8 <printint+0x16>

000000000000048e <vprintf>:
 48e:	715d                	add	sp,sp,-80
 490:	e486                	sd	ra,72(sp)
 492:	e0a2                	sd	s0,64(sp)
 494:	f84a                	sd	s2,48(sp)
 496:	0880                	add	s0,sp,80
 498:	0005c903          	lbu	s2,0(a1)
 49c:	1a090a63          	beqz	s2,650 <vprintf+0x1c2>
 4a0:	fc26                	sd	s1,56(sp)
 4a2:	f44e                	sd	s3,40(sp)
 4a4:	f052                	sd	s4,32(sp)
 4a6:	ec56                	sd	s5,24(sp)
 4a8:	e85a                	sd	s6,16(sp)
 4aa:	e45e                	sd	s7,8(sp)
 4ac:	8aaa                	mv	s5,a0
 4ae:	8bb2                	mv	s7,a2
 4b0:	00158493          	add	s1,a1,1
 4b4:	4981                	li	s3,0
 4b6:	02500a13          	li	s4,37
 4ba:	4b55                	li	s6,21
 4bc:	a839                	j	4da <vprintf+0x4c>
 4be:	85ca                	mv	a1,s2
 4c0:	8556                	mv	a0,s5
 4c2:	00000097          	auipc	ra,0x0
 4c6:	efe080e7          	jalr	-258(ra) # 3c0 <putc>
 4ca:	a019                	j	4d0 <vprintf+0x42>
 4cc:	01498d63          	beq	s3,s4,4e6 <vprintf+0x58>
 4d0:	0485                	add	s1,s1,1
 4d2:	fff4c903          	lbu	s2,-1(s1)
 4d6:	16090763          	beqz	s2,644 <vprintf+0x1b6>
 4da:	fe0999e3          	bnez	s3,4cc <vprintf+0x3e>
 4de:	ff4910e3          	bne	s2,s4,4be <vprintf+0x30>
 4e2:	89d2                	mv	s3,s4
 4e4:	b7f5                	j	4d0 <vprintf+0x42>
 4e6:	13490463          	beq	s2,s4,60e <vprintf+0x180>
 4ea:	f9d9079b          	addw	a5,s2,-99
 4ee:	0ff7f793          	zext.b	a5,a5
 4f2:	12fb6763          	bltu	s6,a5,620 <vprintf+0x192>
 4f6:	f9d9079b          	addw	a5,s2,-99
 4fa:	0ff7f713          	zext.b	a4,a5
 4fe:	12eb6163          	bltu	s6,a4,620 <vprintf+0x192>
 502:	00271793          	sll	a5,a4,0x2
 506:	00000717          	auipc	a4,0x0
 50a:	37a70713          	add	a4,a4,890 # 880 <malloc+0x140>
 50e:	97ba                	add	a5,a5,a4
 510:	439c                	lw	a5,0(a5)
 512:	97ba                	add	a5,a5,a4
 514:	8782                	jr	a5
 516:	008b8913          	add	s2,s7,8
 51a:	4685                	li	a3,1
 51c:	4629                	li	a2,10
 51e:	000ba583          	lw	a1,0(s7)
 522:	8556                	mv	a0,s5
 524:	00000097          	auipc	ra,0x0
 528:	ebe080e7          	jalr	-322(ra) # 3e2 <printint>
 52c:	8bca                	mv	s7,s2
 52e:	4981                	li	s3,0
 530:	b745                	j	4d0 <vprintf+0x42>
 532:	008b8913          	add	s2,s7,8
 536:	4681                	li	a3,0
 538:	4629                	li	a2,10
 53a:	000ba583          	lw	a1,0(s7)
 53e:	8556                	mv	a0,s5
 540:	00000097          	auipc	ra,0x0
 544:	ea2080e7          	jalr	-350(ra) # 3e2 <printint>
 548:	8bca                	mv	s7,s2
 54a:	4981                	li	s3,0
 54c:	b751                	j	4d0 <vprintf+0x42>
 54e:	008b8913          	add	s2,s7,8
 552:	4681                	li	a3,0
 554:	4641                	li	a2,16
 556:	000ba583          	lw	a1,0(s7)
 55a:	8556                	mv	a0,s5
 55c:	00000097          	auipc	ra,0x0
 560:	e86080e7          	jalr	-378(ra) # 3e2 <printint>
 564:	8bca                	mv	s7,s2
 566:	4981                	li	s3,0
 568:	b7a5                	j	4d0 <vprintf+0x42>
 56a:	e062                	sd	s8,0(sp)
 56c:	008b8c13          	add	s8,s7,8
 570:	000bb983          	ld	s3,0(s7)
 574:	03000593          	li	a1,48
 578:	8556                	mv	a0,s5
 57a:	00000097          	auipc	ra,0x0
 57e:	e46080e7          	jalr	-442(ra) # 3c0 <putc>
 582:	07800593          	li	a1,120
 586:	8556                	mv	a0,s5
 588:	00000097          	auipc	ra,0x0
 58c:	e38080e7          	jalr	-456(ra) # 3c0 <putc>
 590:	4941                	li	s2,16
 592:	00000b97          	auipc	s7,0x0
 596:	346b8b93          	add	s7,s7,838 # 8d8 <digits>
 59a:	03c9d793          	srl	a5,s3,0x3c
 59e:	97de                	add	a5,a5,s7
 5a0:	0007c583          	lbu	a1,0(a5)
 5a4:	8556                	mv	a0,s5
 5a6:	00000097          	auipc	ra,0x0
 5aa:	e1a080e7          	jalr	-486(ra) # 3c0 <putc>
 5ae:	0992                	sll	s3,s3,0x4
 5b0:	397d                	addw	s2,s2,-1
 5b2:	fe0914e3          	bnez	s2,59a <vprintf+0x10c>
 5b6:	8be2                	mv	s7,s8
 5b8:	4981                	li	s3,0
 5ba:	6c02                	ld	s8,0(sp)
 5bc:	bf11                	j	4d0 <vprintf+0x42>
 5be:	008b8993          	add	s3,s7,8
 5c2:	000bb903          	ld	s2,0(s7)
 5c6:	02090163          	beqz	s2,5e8 <vprintf+0x15a>
 5ca:	00094583          	lbu	a1,0(s2)
 5ce:	c9a5                	beqz	a1,63e <vprintf+0x1b0>
 5d0:	8556                	mv	a0,s5
 5d2:	00000097          	auipc	ra,0x0
 5d6:	dee080e7          	jalr	-530(ra) # 3c0 <putc>
 5da:	0905                	add	s2,s2,1
 5dc:	00094583          	lbu	a1,0(s2)
 5e0:	f9e5                	bnez	a1,5d0 <vprintf+0x142>
 5e2:	8bce                	mv	s7,s3
 5e4:	4981                	li	s3,0
 5e6:	b5ed                	j	4d0 <vprintf+0x42>
 5e8:	00000917          	auipc	s2,0x0
 5ec:	29090913          	add	s2,s2,656 # 878 <malloc+0x138>
 5f0:	02800593          	li	a1,40
 5f4:	bff1                	j	5d0 <vprintf+0x142>
 5f6:	008b8913          	add	s2,s7,8
 5fa:	000bc583          	lbu	a1,0(s7)
 5fe:	8556                	mv	a0,s5
 600:	00000097          	auipc	ra,0x0
 604:	dc0080e7          	jalr	-576(ra) # 3c0 <putc>
 608:	8bca                	mv	s7,s2
 60a:	4981                	li	s3,0
 60c:	b5d1                	j	4d0 <vprintf+0x42>
 60e:	02500593          	li	a1,37
 612:	8556                	mv	a0,s5
 614:	00000097          	auipc	ra,0x0
 618:	dac080e7          	jalr	-596(ra) # 3c0 <putc>
 61c:	4981                	li	s3,0
 61e:	bd4d                	j	4d0 <vprintf+0x42>
 620:	02500593          	li	a1,37
 624:	8556                	mv	a0,s5
 626:	00000097          	auipc	ra,0x0
 62a:	d9a080e7          	jalr	-614(ra) # 3c0 <putc>
 62e:	85ca                	mv	a1,s2
 630:	8556                	mv	a0,s5
 632:	00000097          	auipc	ra,0x0
 636:	d8e080e7          	jalr	-626(ra) # 3c0 <putc>
 63a:	4981                	li	s3,0
 63c:	bd51                	j	4d0 <vprintf+0x42>
 63e:	8bce                	mv	s7,s3
 640:	4981                	li	s3,0
 642:	b579                	j	4d0 <vprintf+0x42>
 644:	74e2                	ld	s1,56(sp)
 646:	79a2                	ld	s3,40(sp)
 648:	7a02                	ld	s4,32(sp)
 64a:	6ae2                	ld	s5,24(sp)
 64c:	6b42                	ld	s6,16(sp)
 64e:	6ba2                	ld	s7,8(sp)
 650:	60a6                	ld	ra,72(sp)
 652:	6406                	ld	s0,64(sp)
 654:	7942                	ld	s2,48(sp)
 656:	6161                	add	sp,sp,80
 658:	8082                	ret

000000000000065a <fprintf>:
 65a:	715d                	add	sp,sp,-80
 65c:	ec06                	sd	ra,24(sp)
 65e:	e822                	sd	s0,16(sp)
 660:	1000                	add	s0,sp,32
 662:	e010                	sd	a2,0(s0)
 664:	e414                	sd	a3,8(s0)
 666:	e818                	sd	a4,16(s0)
 668:	ec1c                	sd	a5,24(s0)
 66a:	03043023          	sd	a6,32(s0)
 66e:	03143423          	sd	a7,40(s0)
 672:	fe843423          	sd	s0,-24(s0)
 676:	8622                	mv	a2,s0
 678:	00000097          	auipc	ra,0x0
 67c:	e16080e7          	jalr	-490(ra) # 48e <vprintf>
 680:	60e2                	ld	ra,24(sp)
 682:	6442                	ld	s0,16(sp)
 684:	6161                	add	sp,sp,80
 686:	8082                	ret

0000000000000688 <printf>:
 688:	711d                	add	sp,sp,-96
 68a:	ec06                	sd	ra,24(sp)
 68c:	e822                	sd	s0,16(sp)
 68e:	1000                	add	s0,sp,32
 690:	e40c                	sd	a1,8(s0)
 692:	e810                	sd	a2,16(s0)
 694:	ec14                	sd	a3,24(s0)
 696:	f018                	sd	a4,32(s0)
 698:	f41c                	sd	a5,40(s0)
 69a:	03043823          	sd	a6,48(s0)
 69e:	03143c23          	sd	a7,56(s0)
 6a2:	00840613          	add	a2,s0,8
 6a6:	fec43423          	sd	a2,-24(s0)
 6aa:	85aa                	mv	a1,a0
 6ac:	4505                	li	a0,1
 6ae:	00000097          	auipc	ra,0x0
 6b2:	de0080e7          	jalr	-544(ra) # 48e <vprintf>
 6b6:	60e2                	ld	ra,24(sp)
 6b8:	6442                	ld	s0,16(sp)
 6ba:	6125                	add	sp,sp,96
 6bc:	8082                	ret

00000000000006be <free>:
 6be:	1141                	add	sp,sp,-16
 6c0:	e422                	sd	s0,8(sp)
 6c2:	0800                	add	s0,sp,16
 6c4:	ff050693          	add	a3,a0,-16
 6c8:	00001797          	auipc	a5,0x1
 6cc:	d187b783          	ld	a5,-744(a5) # 13e0 <freep>
 6d0:	a02d                	j	6fa <free+0x3c>
 6d2:	4618                	lw	a4,8(a2)
 6d4:	9f2d                	addw	a4,a4,a1
 6d6:	fee52c23          	sw	a4,-8(a0)
 6da:	6398                	ld	a4,0(a5)
 6dc:	6310                	ld	a2,0(a4)
 6de:	a83d                	j	71c <free+0x5e>
 6e0:	ff852703          	lw	a4,-8(a0)
 6e4:	9f31                	addw	a4,a4,a2
 6e6:	c798                	sw	a4,8(a5)
 6e8:	ff053683          	ld	a3,-16(a0)
 6ec:	a091                	j	730 <free+0x72>
 6ee:	6398                	ld	a4,0(a5)
 6f0:	00e7e463          	bltu	a5,a4,6f8 <free+0x3a>
 6f4:	00e6ea63          	bltu	a3,a4,708 <free+0x4a>
 6f8:	87ba                	mv	a5,a4
 6fa:	fed7fae3          	bgeu	a5,a3,6ee <free+0x30>
 6fe:	6398                	ld	a4,0(a5)
 700:	00e6e463          	bltu	a3,a4,708 <free+0x4a>
 704:	fee7eae3          	bltu	a5,a4,6f8 <free+0x3a>
 708:	ff852583          	lw	a1,-8(a0)
 70c:	6390                	ld	a2,0(a5)
 70e:	02059813          	sll	a6,a1,0x20
 712:	01c85713          	srl	a4,a6,0x1c
 716:	9736                	add	a4,a4,a3
 718:	fae60de3          	beq	a2,a4,6d2 <free+0x14>
 71c:	fec53823          	sd	a2,-16(a0)
 720:	4790                	lw	a2,8(a5)
 722:	02061593          	sll	a1,a2,0x20
 726:	01c5d713          	srl	a4,a1,0x1c
 72a:	973e                	add	a4,a4,a5
 72c:	fae68ae3          	beq	a3,a4,6e0 <free+0x22>
 730:	e394                	sd	a3,0(a5)
 732:	00001717          	auipc	a4,0x1
 736:	caf73723          	sd	a5,-850(a4) # 13e0 <freep>
 73a:	6422                	ld	s0,8(sp)
 73c:	0141                	add	sp,sp,16
 73e:	8082                	ret

0000000000000740 <malloc>:
 740:	7139                	add	sp,sp,-64
 742:	fc06                	sd	ra,56(sp)
 744:	f822                	sd	s0,48(sp)
 746:	f426                	sd	s1,40(sp)
 748:	ec4e                	sd	s3,24(sp)
 74a:	0080                	add	s0,sp,64
 74c:	02051493          	sll	s1,a0,0x20
 750:	9081                	srl	s1,s1,0x20
 752:	04bd                	add	s1,s1,15
 754:	8091                	srl	s1,s1,0x4
 756:	0014899b          	addw	s3,s1,1
 75a:	0485                	add	s1,s1,1
 75c:	00001517          	auipc	a0,0x1
 760:	c8453503          	ld	a0,-892(a0) # 13e0 <freep>
 764:	c915                	beqz	a0,798 <malloc+0x58>
 766:	611c                	ld	a5,0(a0)
 768:	4798                	lw	a4,8(a5)
 76a:	08977e63          	bgeu	a4,s1,806 <malloc+0xc6>
 76e:	f04a                	sd	s2,32(sp)
 770:	e852                	sd	s4,16(sp)
 772:	e456                	sd	s5,8(sp)
 774:	e05a                	sd	s6,0(sp)
 776:	8a4e                	mv	s4,s3
 778:	0009871b          	sext.w	a4,s3
 77c:	6685                	lui	a3,0x1
 77e:	00d77363          	bgeu	a4,a3,784 <malloc+0x44>
 782:	6a05                	lui	s4,0x1
 784:	000a0b1b          	sext.w	s6,s4
 788:	004a1a1b          	sllw	s4,s4,0x4
 78c:	00001917          	auipc	s2,0x1
 790:	c5490913          	add	s2,s2,-940 # 13e0 <freep>
 794:	5afd                	li	s5,-1
 796:	a091                	j	7da <malloc+0x9a>
 798:	f04a                	sd	s2,32(sp)
 79a:	e852                	sd	s4,16(sp)
 79c:	e456                	sd	s5,8(sp)
 79e:	e05a                	sd	s6,0(sp)
 7a0:	00001797          	auipc	a5,0x1
 7a4:	c5078793          	add	a5,a5,-944 # 13f0 <base>
 7a8:	00001717          	auipc	a4,0x1
 7ac:	c2f73c23          	sd	a5,-968(a4) # 13e0 <freep>
 7b0:	e39c                	sd	a5,0(a5)
 7b2:	0007a423          	sw	zero,8(a5)
 7b6:	b7c1                	j	776 <malloc+0x36>
 7b8:	6398                	ld	a4,0(a5)
 7ba:	e118                	sd	a4,0(a0)
 7bc:	a08d                	j	81e <malloc+0xde>
 7be:	01652423          	sw	s6,8(a0)
 7c2:	0541                	add	a0,a0,16
 7c4:	00000097          	auipc	ra,0x0
 7c8:	efa080e7          	jalr	-262(ra) # 6be <free>
 7cc:	00093503          	ld	a0,0(s2)
 7d0:	c13d                	beqz	a0,836 <malloc+0xf6>
 7d2:	611c                	ld	a5,0(a0)
 7d4:	4798                	lw	a4,8(a5)
 7d6:	02977463          	bgeu	a4,s1,7fe <malloc+0xbe>
 7da:	00093703          	ld	a4,0(s2)
 7de:	853e                	mv	a0,a5
 7e0:	fef719e3          	bne	a4,a5,7d2 <malloc+0x92>
 7e4:	8552                	mv	a0,s4
 7e6:	00000097          	auipc	ra,0x0
 7ea:	ba2080e7          	jalr	-1118(ra) # 388 <sbrk>
 7ee:	fd5518e3          	bne	a0,s5,7be <malloc+0x7e>
 7f2:	4501                	li	a0,0
 7f4:	7902                	ld	s2,32(sp)
 7f6:	6a42                	ld	s4,16(sp)
 7f8:	6aa2                	ld	s5,8(sp)
 7fa:	6b02                	ld	s6,0(sp)
 7fc:	a03d                	j	82a <malloc+0xea>
 7fe:	7902                	ld	s2,32(sp)
 800:	6a42                	ld	s4,16(sp)
 802:	6aa2                	ld	s5,8(sp)
 804:	6b02                	ld	s6,0(sp)
 806:	fae489e3          	beq	s1,a4,7b8 <malloc+0x78>
 80a:	4137073b          	subw	a4,a4,s3
 80e:	c798                	sw	a4,8(a5)
 810:	02071693          	sll	a3,a4,0x20
 814:	01c6d713          	srl	a4,a3,0x1c
 818:	97ba                	add	a5,a5,a4
 81a:	0137a423          	sw	s3,8(a5)
 81e:	00001717          	auipc	a4,0x1
 822:	bca73123          	sd	a0,-1086(a4) # 13e0 <freep>
 826:	01078513          	add	a0,a5,16
 82a:	70e2                	ld	ra,56(sp)
 82c:	7442                	ld	s0,48(sp)
 82e:	74a2                	ld	s1,40(sp)
 830:	69e2                	ld	s3,24(sp)
 832:	6121                	add	sp,sp,64
 834:	8082                	ret
 836:	7902                	ld	s2,32(sp)
 838:	6a42                	ld	s4,16(sp)
 83a:	6aa2                	ld	s5,8(sp)
 83c:	6b02                	ld	s6,0(sp)
 83e:	b7f5                	j	82a <malloc+0xea>
