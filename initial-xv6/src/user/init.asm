
user/_init:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	add	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	e426                	sd	s1,8(sp)
   8:	e04a                	sd	s2,0(sp)
   a:	1000                	add	s0,sp,32
   c:	4589                	li	a1,2
   e:	00001517          	auipc	a0,0x1
  12:	8b250513          	add	a0,a0,-1870 # 8c0 <malloc+0x102>
  16:	00000097          	auipc	ra,0x0
  1a:	3a8080e7          	jalr	936(ra) # 3be <open>
  1e:	06054363          	bltz	a0,84 <main+0x84>
  22:	4501                	li	a0,0
  24:	00000097          	auipc	ra,0x0
  28:	3d2080e7          	jalr	978(ra) # 3f6 <dup>
  2c:	4501                	li	a0,0
  2e:	00000097          	auipc	ra,0x0
  32:	3c8080e7          	jalr	968(ra) # 3f6 <dup>
  36:	00001917          	auipc	s2,0x1
  3a:	89290913          	add	s2,s2,-1902 # 8c8 <malloc+0x10a>
  3e:	854a                	mv	a0,s2
  40:	00000097          	auipc	ra,0x0
  44:	6c6080e7          	jalr	1734(ra) # 706 <printf>
  48:	00000097          	auipc	ra,0x0
  4c:	32e080e7          	jalr	814(ra) # 376 <fork>
  50:	84aa                	mv	s1,a0
  52:	04054d63          	bltz	a0,ac <main+0xac>
  56:	c925                	beqz	a0,c6 <main+0xc6>
  58:	4501                	li	a0,0
  5a:	00000097          	auipc	ra,0x0
  5e:	32c080e7          	jalr	812(ra) # 386 <wait>
  62:	fca48ee3          	beq	s1,a0,3e <main+0x3e>
  66:	fe0559e3          	bgez	a0,58 <main+0x58>
  6a:	00001517          	auipc	a0,0x1
  6e:	8ae50513          	add	a0,a0,-1874 # 918 <malloc+0x15a>
  72:	00000097          	auipc	ra,0x0
  76:	694080e7          	jalr	1684(ra) # 706 <printf>
  7a:	4505                	li	a0,1
  7c:	00000097          	auipc	ra,0x0
  80:	302080e7          	jalr	770(ra) # 37e <exit>
  84:	4601                	li	a2,0
  86:	4585                	li	a1,1
  88:	00001517          	auipc	a0,0x1
  8c:	83850513          	add	a0,a0,-1992 # 8c0 <malloc+0x102>
  90:	00000097          	auipc	ra,0x0
  94:	336080e7          	jalr	822(ra) # 3c6 <mknod>
  98:	4589                	li	a1,2
  9a:	00001517          	auipc	a0,0x1
  9e:	82650513          	add	a0,a0,-2010 # 8c0 <malloc+0x102>
  a2:	00000097          	auipc	ra,0x0
  a6:	31c080e7          	jalr	796(ra) # 3be <open>
  aa:	bfa5                	j	22 <main+0x22>
  ac:	00001517          	auipc	a0,0x1
  b0:	83450513          	add	a0,a0,-1996 # 8e0 <malloc+0x122>
  b4:	00000097          	auipc	ra,0x0
  b8:	652080e7          	jalr	1618(ra) # 706 <printf>
  bc:	4505                	li	a0,1
  be:	00000097          	auipc	ra,0x0
  c2:	2c0080e7          	jalr	704(ra) # 37e <exit>
  c6:	00001597          	auipc	a1,0x1
  ca:	31a58593          	add	a1,a1,794 # 13e0 <argv>
  ce:	00001517          	auipc	a0,0x1
  d2:	82a50513          	add	a0,a0,-2006 # 8f8 <malloc+0x13a>
  d6:	00000097          	auipc	ra,0x0
  da:	2e0080e7          	jalr	736(ra) # 3b6 <exec>
  de:	00001517          	auipc	a0,0x1
  e2:	82250513          	add	a0,a0,-2014 # 900 <malloc+0x142>
  e6:	00000097          	auipc	ra,0x0
  ea:	620080e7          	jalr	1568(ra) # 706 <printf>
  ee:	4505                	li	a0,1
  f0:	00000097          	auipc	ra,0x0
  f4:	28e080e7          	jalr	654(ra) # 37e <exit>

00000000000000f8 <_main>:
  f8:	1141                	add	sp,sp,-16
  fa:	e406                	sd	ra,8(sp)
  fc:	e022                	sd	s0,0(sp)
  fe:	0800                	add	s0,sp,16
 100:	00000097          	auipc	ra,0x0
 104:	f00080e7          	jalr	-256(ra) # 0 <main>
 108:	4501                	li	a0,0
 10a:	00000097          	auipc	ra,0x0
 10e:	274080e7          	jalr	628(ra) # 37e <exit>

0000000000000112 <strcpy>:
 112:	1141                	add	sp,sp,-16
 114:	e422                	sd	s0,8(sp)
 116:	0800                	add	s0,sp,16
 118:	87aa                	mv	a5,a0
 11a:	0585                	add	a1,a1,1
 11c:	0785                	add	a5,a5,1
 11e:	fff5c703          	lbu	a4,-1(a1)
 122:	fee78fa3          	sb	a4,-1(a5)
 126:	fb75                	bnez	a4,11a <strcpy+0x8>
 128:	6422                	ld	s0,8(sp)
 12a:	0141                	add	sp,sp,16
 12c:	8082                	ret

000000000000012e <strcmp>:
 12e:	1141                	add	sp,sp,-16
 130:	e422                	sd	s0,8(sp)
 132:	0800                	add	s0,sp,16
 134:	00054783          	lbu	a5,0(a0)
 138:	cb91                	beqz	a5,14c <strcmp+0x1e>
 13a:	0005c703          	lbu	a4,0(a1)
 13e:	00f71763          	bne	a4,a5,14c <strcmp+0x1e>
 142:	0505                	add	a0,a0,1
 144:	0585                	add	a1,a1,1
 146:	00054783          	lbu	a5,0(a0)
 14a:	fbe5                	bnez	a5,13a <strcmp+0xc>
 14c:	0005c503          	lbu	a0,0(a1)
 150:	40a7853b          	subw	a0,a5,a0
 154:	6422                	ld	s0,8(sp)
 156:	0141                	add	sp,sp,16
 158:	8082                	ret

000000000000015a <strlen>:
 15a:	1141                	add	sp,sp,-16
 15c:	e422                	sd	s0,8(sp)
 15e:	0800                	add	s0,sp,16
 160:	00054783          	lbu	a5,0(a0)
 164:	cf91                	beqz	a5,180 <strlen+0x26>
 166:	0505                	add	a0,a0,1
 168:	87aa                	mv	a5,a0
 16a:	86be                	mv	a3,a5
 16c:	0785                	add	a5,a5,1
 16e:	fff7c703          	lbu	a4,-1(a5)
 172:	ff65                	bnez	a4,16a <strlen+0x10>
 174:	40a6853b          	subw	a0,a3,a0
 178:	2505                	addw	a0,a0,1
 17a:	6422                	ld	s0,8(sp)
 17c:	0141                	add	sp,sp,16
 17e:	8082                	ret
 180:	4501                	li	a0,0
 182:	bfe5                	j	17a <strlen+0x20>

0000000000000184 <memset>:
 184:	1141                	add	sp,sp,-16
 186:	e422                	sd	s0,8(sp)
 188:	0800                	add	s0,sp,16
 18a:	ca19                	beqz	a2,1a0 <memset+0x1c>
 18c:	87aa                	mv	a5,a0
 18e:	1602                	sll	a2,a2,0x20
 190:	9201                	srl	a2,a2,0x20
 192:	00a60733          	add	a4,a2,a0
 196:	00b78023          	sb	a1,0(a5)
 19a:	0785                	add	a5,a5,1
 19c:	fee79de3          	bne	a5,a4,196 <memset+0x12>
 1a0:	6422                	ld	s0,8(sp)
 1a2:	0141                	add	sp,sp,16
 1a4:	8082                	ret

00000000000001a6 <strchr>:
 1a6:	1141                	add	sp,sp,-16
 1a8:	e422                	sd	s0,8(sp)
 1aa:	0800                	add	s0,sp,16
 1ac:	00054783          	lbu	a5,0(a0)
 1b0:	cb99                	beqz	a5,1c6 <strchr+0x20>
 1b2:	00f58763          	beq	a1,a5,1c0 <strchr+0x1a>
 1b6:	0505                	add	a0,a0,1
 1b8:	00054783          	lbu	a5,0(a0)
 1bc:	fbfd                	bnez	a5,1b2 <strchr+0xc>
 1be:	4501                	li	a0,0
 1c0:	6422                	ld	s0,8(sp)
 1c2:	0141                	add	sp,sp,16
 1c4:	8082                	ret
 1c6:	4501                	li	a0,0
 1c8:	bfe5                	j	1c0 <strchr+0x1a>

00000000000001ca <gets>:
 1ca:	711d                	add	sp,sp,-96
 1cc:	ec86                	sd	ra,88(sp)
 1ce:	e8a2                	sd	s0,80(sp)
 1d0:	e4a6                	sd	s1,72(sp)
 1d2:	e0ca                	sd	s2,64(sp)
 1d4:	fc4e                	sd	s3,56(sp)
 1d6:	f852                	sd	s4,48(sp)
 1d8:	f456                	sd	s5,40(sp)
 1da:	f05a                	sd	s6,32(sp)
 1dc:	ec5e                	sd	s7,24(sp)
 1de:	1080                	add	s0,sp,96
 1e0:	8baa                	mv	s7,a0
 1e2:	8a2e                	mv	s4,a1
 1e4:	892a                	mv	s2,a0
 1e6:	4481                	li	s1,0
 1e8:	4aa9                	li	s5,10
 1ea:	4b35                	li	s6,13
 1ec:	89a6                	mv	s3,s1
 1ee:	2485                	addw	s1,s1,1
 1f0:	0344d863          	bge	s1,s4,220 <gets+0x56>
 1f4:	4605                	li	a2,1
 1f6:	faf40593          	add	a1,s0,-81
 1fa:	4501                	li	a0,0
 1fc:	00000097          	auipc	ra,0x0
 200:	19a080e7          	jalr	410(ra) # 396 <read>
 204:	00a05e63          	blez	a0,220 <gets+0x56>
 208:	faf44783          	lbu	a5,-81(s0)
 20c:	00f90023          	sb	a5,0(s2)
 210:	01578763          	beq	a5,s5,21e <gets+0x54>
 214:	0905                	add	s2,s2,1
 216:	fd679be3          	bne	a5,s6,1ec <gets+0x22>
 21a:	89a6                	mv	s3,s1
 21c:	a011                	j	220 <gets+0x56>
 21e:	89a6                	mv	s3,s1
 220:	99de                	add	s3,s3,s7
 222:	00098023          	sb	zero,0(s3)
 226:	855e                	mv	a0,s7
 228:	60e6                	ld	ra,88(sp)
 22a:	6446                	ld	s0,80(sp)
 22c:	64a6                	ld	s1,72(sp)
 22e:	6906                	ld	s2,64(sp)
 230:	79e2                	ld	s3,56(sp)
 232:	7a42                	ld	s4,48(sp)
 234:	7aa2                	ld	s5,40(sp)
 236:	7b02                	ld	s6,32(sp)
 238:	6be2                	ld	s7,24(sp)
 23a:	6125                	add	sp,sp,96
 23c:	8082                	ret

000000000000023e <stat>:
 23e:	1101                	add	sp,sp,-32
 240:	ec06                	sd	ra,24(sp)
 242:	e822                	sd	s0,16(sp)
 244:	e04a                	sd	s2,0(sp)
 246:	1000                	add	s0,sp,32
 248:	892e                	mv	s2,a1
 24a:	4581                	li	a1,0
 24c:	00000097          	auipc	ra,0x0
 250:	172080e7          	jalr	370(ra) # 3be <open>
 254:	02054663          	bltz	a0,280 <stat+0x42>
 258:	e426                	sd	s1,8(sp)
 25a:	84aa                	mv	s1,a0
 25c:	85ca                	mv	a1,s2
 25e:	00000097          	auipc	ra,0x0
 262:	178080e7          	jalr	376(ra) # 3d6 <fstat>
 266:	892a                	mv	s2,a0
 268:	8526                	mv	a0,s1
 26a:	00000097          	auipc	ra,0x0
 26e:	13c080e7          	jalr	316(ra) # 3a6 <close>
 272:	64a2                	ld	s1,8(sp)
 274:	854a                	mv	a0,s2
 276:	60e2                	ld	ra,24(sp)
 278:	6442                	ld	s0,16(sp)
 27a:	6902                	ld	s2,0(sp)
 27c:	6105                	add	sp,sp,32
 27e:	8082                	ret
 280:	597d                	li	s2,-1
 282:	bfcd                	j	274 <stat+0x36>

0000000000000284 <atoi>:
 284:	1141                	add	sp,sp,-16
 286:	e422                	sd	s0,8(sp)
 288:	0800                	add	s0,sp,16
 28a:	00054683          	lbu	a3,0(a0)
 28e:	fd06879b          	addw	a5,a3,-48
 292:	0ff7f793          	zext.b	a5,a5
 296:	4625                	li	a2,9
 298:	02f66863          	bltu	a2,a5,2c8 <atoi+0x44>
 29c:	872a                	mv	a4,a0
 29e:	4501                	li	a0,0
 2a0:	0705                	add	a4,a4,1
 2a2:	0025179b          	sllw	a5,a0,0x2
 2a6:	9fa9                	addw	a5,a5,a0
 2a8:	0017979b          	sllw	a5,a5,0x1
 2ac:	9fb5                	addw	a5,a5,a3
 2ae:	fd07851b          	addw	a0,a5,-48
 2b2:	00074683          	lbu	a3,0(a4)
 2b6:	fd06879b          	addw	a5,a3,-48
 2ba:	0ff7f793          	zext.b	a5,a5
 2be:	fef671e3          	bgeu	a2,a5,2a0 <atoi+0x1c>
 2c2:	6422                	ld	s0,8(sp)
 2c4:	0141                	add	sp,sp,16
 2c6:	8082                	ret
 2c8:	4501                	li	a0,0
 2ca:	bfe5                	j	2c2 <atoi+0x3e>

00000000000002cc <memmove>:
 2cc:	1141                	add	sp,sp,-16
 2ce:	e422                	sd	s0,8(sp)
 2d0:	0800                	add	s0,sp,16
 2d2:	02b57463          	bgeu	a0,a1,2fa <memmove+0x2e>
 2d6:	00c05f63          	blez	a2,2f4 <memmove+0x28>
 2da:	1602                	sll	a2,a2,0x20
 2dc:	9201                	srl	a2,a2,0x20
 2de:	00c507b3          	add	a5,a0,a2
 2e2:	872a                	mv	a4,a0
 2e4:	0585                	add	a1,a1,1
 2e6:	0705                	add	a4,a4,1
 2e8:	fff5c683          	lbu	a3,-1(a1)
 2ec:	fed70fa3          	sb	a3,-1(a4)
 2f0:	fef71ae3          	bne	a4,a5,2e4 <memmove+0x18>
 2f4:	6422                	ld	s0,8(sp)
 2f6:	0141                	add	sp,sp,16
 2f8:	8082                	ret
 2fa:	00c50733          	add	a4,a0,a2
 2fe:	95b2                	add	a1,a1,a2
 300:	fec05ae3          	blez	a2,2f4 <memmove+0x28>
 304:	fff6079b          	addw	a5,a2,-1
 308:	1782                	sll	a5,a5,0x20
 30a:	9381                	srl	a5,a5,0x20
 30c:	fff7c793          	not	a5,a5
 310:	97ba                	add	a5,a5,a4
 312:	15fd                	add	a1,a1,-1
 314:	177d                	add	a4,a4,-1
 316:	0005c683          	lbu	a3,0(a1)
 31a:	00d70023          	sb	a3,0(a4)
 31e:	fee79ae3          	bne	a5,a4,312 <memmove+0x46>
 322:	bfc9                	j	2f4 <memmove+0x28>

0000000000000324 <memcmp>:
 324:	1141                	add	sp,sp,-16
 326:	e422                	sd	s0,8(sp)
 328:	0800                	add	s0,sp,16
 32a:	ca05                	beqz	a2,35a <memcmp+0x36>
 32c:	fff6069b          	addw	a3,a2,-1
 330:	1682                	sll	a3,a3,0x20
 332:	9281                	srl	a3,a3,0x20
 334:	0685                	add	a3,a3,1
 336:	96aa                	add	a3,a3,a0
 338:	00054783          	lbu	a5,0(a0)
 33c:	0005c703          	lbu	a4,0(a1)
 340:	00e79863          	bne	a5,a4,350 <memcmp+0x2c>
 344:	0505                	add	a0,a0,1
 346:	0585                	add	a1,a1,1
 348:	fed518e3          	bne	a0,a3,338 <memcmp+0x14>
 34c:	4501                	li	a0,0
 34e:	a019                	j	354 <memcmp+0x30>
 350:	40e7853b          	subw	a0,a5,a4
 354:	6422                	ld	s0,8(sp)
 356:	0141                	add	sp,sp,16
 358:	8082                	ret
 35a:	4501                	li	a0,0
 35c:	bfe5                	j	354 <memcmp+0x30>

000000000000035e <memcpy>:
 35e:	1141                	add	sp,sp,-16
 360:	e406                	sd	ra,8(sp)
 362:	e022                	sd	s0,0(sp)
 364:	0800                	add	s0,sp,16
 366:	00000097          	auipc	ra,0x0
 36a:	f66080e7          	jalr	-154(ra) # 2cc <memmove>
 36e:	60a2                	ld	ra,8(sp)
 370:	6402                	ld	s0,0(sp)
 372:	0141                	add	sp,sp,16
 374:	8082                	ret

0000000000000376 <fork>:
 376:	4885                	li	a7,1
 378:	00000073          	ecall
 37c:	8082                	ret

000000000000037e <exit>:
 37e:	4889                	li	a7,2
 380:	00000073          	ecall
 384:	8082                	ret

0000000000000386 <wait>:
 386:	488d                	li	a7,3
 388:	00000073          	ecall
 38c:	8082                	ret

000000000000038e <pipe>:
 38e:	4891                	li	a7,4
 390:	00000073          	ecall
 394:	8082                	ret

0000000000000396 <read>:
 396:	4895                	li	a7,5
 398:	00000073          	ecall
 39c:	8082                	ret

000000000000039e <write>:
 39e:	48c1                	li	a7,16
 3a0:	00000073          	ecall
 3a4:	8082                	ret

00000000000003a6 <close>:
 3a6:	48d5                	li	a7,21
 3a8:	00000073          	ecall
 3ac:	8082                	ret

00000000000003ae <kill>:
 3ae:	4899                	li	a7,6
 3b0:	00000073          	ecall
 3b4:	8082                	ret

00000000000003b6 <exec>:
 3b6:	489d                	li	a7,7
 3b8:	00000073          	ecall
 3bc:	8082                	ret

00000000000003be <open>:
 3be:	48bd                	li	a7,15
 3c0:	00000073          	ecall
 3c4:	8082                	ret

00000000000003c6 <mknod>:
 3c6:	48c5                	li	a7,17
 3c8:	00000073          	ecall
 3cc:	8082                	ret

00000000000003ce <unlink>:
 3ce:	48c9                	li	a7,18
 3d0:	00000073          	ecall
 3d4:	8082                	ret

00000000000003d6 <fstat>:
 3d6:	48a1                	li	a7,8
 3d8:	00000073          	ecall
 3dc:	8082                	ret

00000000000003de <link>:
 3de:	48cd                	li	a7,19
 3e0:	00000073          	ecall
 3e4:	8082                	ret

00000000000003e6 <mkdir>:
 3e6:	48d1                	li	a7,20
 3e8:	00000073          	ecall
 3ec:	8082                	ret

00000000000003ee <chdir>:
 3ee:	48a5                	li	a7,9
 3f0:	00000073          	ecall
 3f4:	8082                	ret

00000000000003f6 <dup>:
 3f6:	48a9                	li	a7,10
 3f8:	00000073          	ecall
 3fc:	8082                	ret

00000000000003fe <getpid>:
 3fe:	48ad                	li	a7,11
 400:	00000073          	ecall
 404:	8082                	ret

0000000000000406 <sbrk>:
 406:	48b1                	li	a7,12
 408:	00000073          	ecall
 40c:	8082                	ret

000000000000040e <sleep>:
 40e:	48b5                	li	a7,13
 410:	00000073          	ecall
 414:	8082                	ret

0000000000000416 <uptime>:
 416:	48b9                	li	a7,14
 418:	00000073          	ecall
 41c:	8082                	ret

000000000000041e <waitx>:
 41e:	48d9                	li	a7,22
 420:	00000073          	ecall
 424:	8082                	ret

0000000000000426 <getSysCount>:
 426:	48dd                	li	a7,23
 428:	00000073          	ecall
 42c:	8082                	ret

000000000000042e <sigalarm>:
 42e:	48e1                	li	a7,24
 430:	00000073          	ecall
 434:	8082                	ret

0000000000000436 <sigreturn>:
 436:	48e5                	li	a7,25
 438:	00000073          	ecall
 43c:	8082                	ret

000000000000043e <putc>:
 43e:	1101                	add	sp,sp,-32
 440:	ec06                	sd	ra,24(sp)
 442:	e822                	sd	s0,16(sp)
 444:	1000                	add	s0,sp,32
 446:	feb407a3          	sb	a1,-17(s0)
 44a:	4605                	li	a2,1
 44c:	fef40593          	add	a1,s0,-17
 450:	00000097          	auipc	ra,0x0
 454:	f4e080e7          	jalr	-178(ra) # 39e <write>
 458:	60e2                	ld	ra,24(sp)
 45a:	6442                	ld	s0,16(sp)
 45c:	6105                	add	sp,sp,32
 45e:	8082                	ret

0000000000000460 <printint>:
 460:	7139                	add	sp,sp,-64
 462:	fc06                	sd	ra,56(sp)
 464:	f822                	sd	s0,48(sp)
 466:	f426                	sd	s1,40(sp)
 468:	0080                	add	s0,sp,64
 46a:	84aa                	mv	s1,a0
 46c:	c299                	beqz	a3,472 <printint+0x12>
 46e:	0805cb63          	bltz	a1,504 <printint+0xa4>
 472:	2581                	sext.w	a1,a1
 474:	4881                	li	a7,0
 476:	fc040693          	add	a3,s0,-64
 47a:	4701                	li	a4,0
 47c:	2601                	sext.w	a2,a2
 47e:	00000517          	auipc	a0,0x0
 482:	51a50513          	add	a0,a0,1306 # 998 <digits>
 486:	883a                	mv	a6,a4
 488:	2705                	addw	a4,a4,1
 48a:	02c5f7bb          	remuw	a5,a1,a2
 48e:	1782                	sll	a5,a5,0x20
 490:	9381                	srl	a5,a5,0x20
 492:	97aa                	add	a5,a5,a0
 494:	0007c783          	lbu	a5,0(a5)
 498:	00f68023          	sb	a5,0(a3)
 49c:	0005879b          	sext.w	a5,a1
 4a0:	02c5d5bb          	divuw	a1,a1,a2
 4a4:	0685                	add	a3,a3,1
 4a6:	fec7f0e3          	bgeu	a5,a2,486 <printint+0x26>
 4aa:	00088c63          	beqz	a7,4c2 <printint+0x62>
 4ae:	fd070793          	add	a5,a4,-48
 4b2:	00878733          	add	a4,a5,s0
 4b6:	02d00793          	li	a5,45
 4ba:	fef70823          	sb	a5,-16(a4)
 4be:	0028071b          	addw	a4,a6,2
 4c2:	02e05c63          	blez	a4,4fa <printint+0x9a>
 4c6:	f04a                	sd	s2,32(sp)
 4c8:	ec4e                	sd	s3,24(sp)
 4ca:	fc040793          	add	a5,s0,-64
 4ce:	00e78933          	add	s2,a5,a4
 4d2:	fff78993          	add	s3,a5,-1
 4d6:	99ba                	add	s3,s3,a4
 4d8:	377d                	addw	a4,a4,-1
 4da:	1702                	sll	a4,a4,0x20
 4dc:	9301                	srl	a4,a4,0x20
 4de:	40e989b3          	sub	s3,s3,a4
 4e2:	fff94583          	lbu	a1,-1(s2)
 4e6:	8526                	mv	a0,s1
 4e8:	00000097          	auipc	ra,0x0
 4ec:	f56080e7          	jalr	-170(ra) # 43e <putc>
 4f0:	197d                	add	s2,s2,-1
 4f2:	ff3918e3          	bne	s2,s3,4e2 <printint+0x82>
 4f6:	7902                	ld	s2,32(sp)
 4f8:	69e2                	ld	s3,24(sp)
 4fa:	70e2                	ld	ra,56(sp)
 4fc:	7442                	ld	s0,48(sp)
 4fe:	74a2                	ld	s1,40(sp)
 500:	6121                	add	sp,sp,64
 502:	8082                	ret
 504:	40b005bb          	negw	a1,a1
 508:	4885                	li	a7,1
 50a:	b7b5                	j	476 <printint+0x16>

000000000000050c <vprintf>:
 50c:	715d                	add	sp,sp,-80
 50e:	e486                	sd	ra,72(sp)
 510:	e0a2                	sd	s0,64(sp)
 512:	f84a                	sd	s2,48(sp)
 514:	0880                	add	s0,sp,80
 516:	0005c903          	lbu	s2,0(a1)
 51a:	1a090a63          	beqz	s2,6ce <vprintf+0x1c2>
 51e:	fc26                	sd	s1,56(sp)
 520:	f44e                	sd	s3,40(sp)
 522:	f052                	sd	s4,32(sp)
 524:	ec56                	sd	s5,24(sp)
 526:	e85a                	sd	s6,16(sp)
 528:	e45e                	sd	s7,8(sp)
 52a:	8aaa                	mv	s5,a0
 52c:	8bb2                	mv	s7,a2
 52e:	00158493          	add	s1,a1,1
 532:	4981                	li	s3,0
 534:	02500a13          	li	s4,37
 538:	4b55                	li	s6,21
 53a:	a839                	j	558 <vprintf+0x4c>
 53c:	85ca                	mv	a1,s2
 53e:	8556                	mv	a0,s5
 540:	00000097          	auipc	ra,0x0
 544:	efe080e7          	jalr	-258(ra) # 43e <putc>
 548:	a019                	j	54e <vprintf+0x42>
 54a:	01498d63          	beq	s3,s4,564 <vprintf+0x58>
 54e:	0485                	add	s1,s1,1
 550:	fff4c903          	lbu	s2,-1(s1)
 554:	16090763          	beqz	s2,6c2 <vprintf+0x1b6>
 558:	fe0999e3          	bnez	s3,54a <vprintf+0x3e>
 55c:	ff4910e3          	bne	s2,s4,53c <vprintf+0x30>
 560:	89d2                	mv	s3,s4
 562:	b7f5                	j	54e <vprintf+0x42>
 564:	13490463          	beq	s2,s4,68c <vprintf+0x180>
 568:	f9d9079b          	addw	a5,s2,-99
 56c:	0ff7f793          	zext.b	a5,a5
 570:	12fb6763          	bltu	s6,a5,69e <vprintf+0x192>
 574:	f9d9079b          	addw	a5,s2,-99
 578:	0ff7f713          	zext.b	a4,a5
 57c:	12eb6163          	bltu	s6,a4,69e <vprintf+0x192>
 580:	00271793          	sll	a5,a4,0x2
 584:	00000717          	auipc	a4,0x0
 588:	3bc70713          	add	a4,a4,956 # 940 <malloc+0x182>
 58c:	97ba                	add	a5,a5,a4
 58e:	439c                	lw	a5,0(a5)
 590:	97ba                	add	a5,a5,a4
 592:	8782                	jr	a5
 594:	008b8913          	add	s2,s7,8
 598:	4685                	li	a3,1
 59a:	4629                	li	a2,10
 59c:	000ba583          	lw	a1,0(s7)
 5a0:	8556                	mv	a0,s5
 5a2:	00000097          	auipc	ra,0x0
 5a6:	ebe080e7          	jalr	-322(ra) # 460 <printint>
 5aa:	8bca                	mv	s7,s2
 5ac:	4981                	li	s3,0
 5ae:	b745                	j	54e <vprintf+0x42>
 5b0:	008b8913          	add	s2,s7,8
 5b4:	4681                	li	a3,0
 5b6:	4629                	li	a2,10
 5b8:	000ba583          	lw	a1,0(s7)
 5bc:	8556                	mv	a0,s5
 5be:	00000097          	auipc	ra,0x0
 5c2:	ea2080e7          	jalr	-350(ra) # 460 <printint>
 5c6:	8bca                	mv	s7,s2
 5c8:	4981                	li	s3,0
 5ca:	b751                	j	54e <vprintf+0x42>
 5cc:	008b8913          	add	s2,s7,8
 5d0:	4681                	li	a3,0
 5d2:	4641                	li	a2,16
 5d4:	000ba583          	lw	a1,0(s7)
 5d8:	8556                	mv	a0,s5
 5da:	00000097          	auipc	ra,0x0
 5de:	e86080e7          	jalr	-378(ra) # 460 <printint>
 5e2:	8bca                	mv	s7,s2
 5e4:	4981                	li	s3,0
 5e6:	b7a5                	j	54e <vprintf+0x42>
 5e8:	e062                	sd	s8,0(sp)
 5ea:	008b8c13          	add	s8,s7,8
 5ee:	000bb983          	ld	s3,0(s7)
 5f2:	03000593          	li	a1,48
 5f6:	8556                	mv	a0,s5
 5f8:	00000097          	auipc	ra,0x0
 5fc:	e46080e7          	jalr	-442(ra) # 43e <putc>
 600:	07800593          	li	a1,120
 604:	8556                	mv	a0,s5
 606:	00000097          	auipc	ra,0x0
 60a:	e38080e7          	jalr	-456(ra) # 43e <putc>
 60e:	4941                	li	s2,16
 610:	00000b97          	auipc	s7,0x0
 614:	388b8b93          	add	s7,s7,904 # 998 <digits>
 618:	03c9d793          	srl	a5,s3,0x3c
 61c:	97de                	add	a5,a5,s7
 61e:	0007c583          	lbu	a1,0(a5)
 622:	8556                	mv	a0,s5
 624:	00000097          	auipc	ra,0x0
 628:	e1a080e7          	jalr	-486(ra) # 43e <putc>
 62c:	0992                	sll	s3,s3,0x4
 62e:	397d                	addw	s2,s2,-1
 630:	fe0914e3          	bnez	s2,618 <vprintf+0x10c>
 634:	8be2                	mv	s7,s8
 636:	4981                	li	s3,0
 638:	6c02                	ld	s8,0(sp)
 63a:	bf11                	j	54e <vprintf+0x42>
 63c:	008b8993          	add	s3,s7,8
 640:	000bb903          	ld	s2,0(s7)
 644:	02090163          	beqz	s2,666 <vprintf+0x15a>
 648:	00094583          	lbu	a1,0(s2)
 64c:	c9a5                	beqz	a1,6bc <vprintf+0x1b0>
 64e:	8556                	mv	a0,s5
 650:	00000097          	auipc	ra,0x0
 654:	dee080e7          	jalr	-530(ra) # 43e <putc>
 658:	0905                	add	s2,s2,1
 65a:	00094583          	lbu	a1,0(s2)
 65e:	f9e5                	bnez	a1,64e <vprintf+0x142>
 660:	8bce                	mv	s7,s3
 662:	4981                	li	s3,0
 664:	b5ed                	j	54e <vprintf+0x42>
 666:	00000917          	auipc	s2,0x0
 66a:	2d290913          	add	s2,s2,722 # 938 <malloc+0x17a>
 66e:	02800593          	li	a1,40
 672:	bff1                	j	64e <vprintf+0x142>
 674:	008b8913          	add	s2,s7,8
 678:	000bc583          	lbu	a1,0(s7)
 67c:	8556                	mv	a0,s5
 67e:	00000097          	auipc	ra,0x0
 682:	dc0080e7          	jalr	-576(ra) # 43e <putc>
 686:	8bca                	mv	s7,s2
 688:	4981                	li	s3,0
 68a:	b5d1                	j	54e <vprintf+0x42>
 68c:	02500593          	li	a1,37
 690:	8556                	mv	a0,s5
 692:	00000097          	auipc	ra,0x0
 696:	dac080e7          	jalr	-596(ra) # 43e <putc>
 69a:	4981                	li	s3,0
 69c:	bd4d                	j	54e <vprintf+0x42>
 69e:	02500593          	li	a1,37
 6a2:	8556                	mv	a0,s5
 6a4:	00000097          	auipc	ra,0x0
 6a8:	d9a080e7          	jalr	-614(ra) # 43e <putc>
 6ac:	85ca                	mv	a1,s2
 6ae:	8556                	mv	a0,s5
 6b0:	00000097          	auipc	ra,0x0
 6b4:	d8e080e7          	jalr	-626(ra) # 43e <putc>
 6b8:	4981                	li	s3,0
 6ba:	bd51                	j	54e <vprintf+0x42>
 6bc:	8bce                	mv	s7,s3
 6be:	4981                	li	s3,0
 6c0:	b579                	j	54e <vprintf+0x42>
 6c2:	74e2                	ld	s1,56(sp)
 6c4:	79a2                	ld	s3,40(sp)
 6c6:	7a02                	ld	s4,32(sp)
 6c8:	6ae2                	ld	s5,24(sp)
 6ca:	6b42                	ld	s6,16(sp)
 6cc:	6ba2                	ld	s7,8(sp)
 6ce:	60a6                	ld	ra,72(sp)
 6d0:	6406                	ld	s0,64(sp)
 6d2:	7942                	ld	s2,48(sp)
 6d4:	6161                	add	sp,sp,80
 6d6:	8082                	ret

00000000000006d8 <fprintf>:
 6d8:	715d                	add	sp,sp,-80
 6da:	ec06                	sd	ra,24(sp)
 6dc:	e822                	sd	s0,16(sp)
 6de:	1000                	add	s0,sp,32
 6e0:	e010                	sd	a2,0(s0)
 6e2:	e414                	sd	a3,8(s0)
 6e4:	e818                	sd	a4,16(s0)
 6e6:	ec1c                	sd	a5,24(s0)
 6e8:	03043023          	sd	a6,32(s0)
 6ec:	03143423          	sd	a7,40(s0)
 6f0:	fe843423          	sd	s0,-24(s0)
 6f4:	8622                	mv	a2,s0
 6f6:	00000097          	auipc	ra,0x0
 6fa:	e16080e7          	jalr	-490(ra) # 50c <vprintf>
 6fe:	60e2                	ld	ra,24(sp)
 700:	6442                	ld	s0,16(sp)
 702:	6161                	add	sp,sp,80
 704:	8082                	ret

0000000000000706 <printf>:
 706:	711d                	add	sp,sp,-96
 708:	ec06                	sd	ra,24(sp)
 70a:	e822                	sd	s0,16(sp)
 70c:	1000                	add	s0,sp,32
 70e:	e40c                	sd	a1,8(s0)
 710:	e810                	sd	a2,16(s0)
 712:	ec14                	sd	a3,24(s0)
 714:	f018                	sd	a4,32(s0)
 716:	f41c                	sd	a5,40(s0)
 718:	03043823          	sd	a6,48(s0)
 71c:	03143c23          	sd	a7,56(s0)
 720:	00840613          	add	a2,s0,8
 724:	fec43423          	sd	a2,-24(s0)
 728:	85aa                	mv	a1,a0
 72a:	4505                	li	a0,1
 72c:	00000097          	auipc	ra,0x0
 730:	de0080e7          	jalr	-544(ra) # 50c <vprintf>
 734:	60e2                	ld	ra,24(sp)
 736:	6442                	ld	s0,16(sp)
 738:	6125                	add	sp,sp,96
 73a:	8082                	ret

000000000000073c <free>:
 73c:	1141                	add	sp,sp,-16
 73e:	e422                	sd	s0,8(sp)
 740:	0800                	add	s0,sp,16
 742:	ff050693          	add	a3,a0,-16
 746:	00001797          	auipc	a5,0x1
 74a:	caa7b783          	ld	a5,-854(a5) # 13f0 <freep>
 74e:	a02d                	j	778 <free+0x3c>
 750:	4618                	lw	a4,8(a2)
 752:	9f2d                	addw	a4,a4,a1
 754:	fee52c23          	sw	a4,-8(a0)
 758:	6398                	ld	a4,0(a5)
 75a:	6310                	ld	a2,0(a4)
 75c:	a83d                	j	79a <free+0x5e>
 75e:	ff852703          	lw	a4,-8(a0)
 762:	9f31                	addw	a4,a4,a2
 764:	c798                	sw	a4,8(a5)
 766:	ff053683          	ld	a3,-16(a0)
 76a:	a091                	j	7ae <free+0x72>
 76c:	6398                	ld	a4,0(a5)
 76e:	00e7e463          	bltu	a5,a4,776 <free+0x3a>
 772:	00e6ea63          	bltu	a3,a4,786 <free+0x4a>
 776:	87ba                	mv	a5,a4
 778:	fed7fae3          	bgeu	a5,a3,76c <free+0x30>
 77c:	6398                	ld	a4,0(a5)
 77e:	00e6e463          	bltu	a3,a4,786 <free+0x4a>
 782:	fee7eae3          	bltu	a5,a4,776 <free+0x3a>
 786:	ff852583          	lw	a1,-8(a0)
 78a:	6390                	ld	a2,0(a5)
 78c:	02059813          	sll	a6,a1,0x20
 790:	01c85713          	srl	a4,a6,0x1c
 794:	9736                	add	a4,a4,a3
 796:	fae60de3          	beq	a2,a4,750 <free+0x14>
 79a:	fec53823          	sd	a2,-16(a0)
 79e:	4790                	lw	a2,8(a5)
 7a0:	02061593          	sll	a1,a2,0x20
 7a4:	01c5d713          	srl	a4,a1,0x1c
 7a8:	973e                	add	a4,a4,a5
 7aa:	fae68ae3          	beq	a3,a4,75e <free+0x22>
 7ae:	e394                	sd	a3,0(a5)
 7b0:	00001717          	auipc	a4,0x1
 7b4:	c4f73023          	sd	a5,-960(a4) # 13f0 <freep>
 7b8:	6422                	ld	s0,8(sp)
 7ba:	0141                	add	sp,sp,16
 7bc:	8082                	ret

00000000000007be <malloc>:
 7be:	7139                	add	sp,sp,-64
 7c0:	fc06                	sd	ra,56(sp)
 7c2:	f822                	sd	s0,48(sp)
 7c4:	f426                	sd	s1,40(sp)
 7c6:	ec4e                	sd	s3,24(sp)
 7c8:	0080                	add	s0,sp,64
 7ca:	02051493          	sll	s1,a0,0x20
 7ce:	9081                	srl	s1,s1,0x20
 7d0:	04bd                	add	s1,s1,15
 7d2:	8091                	srl	s1,s1,0x4
 7d4:	0014899b          	addw	s3,s1,1
 7d8:	0485                	add	s1,s1,1
 7da:	00001517          	auipc	a0,0x1
 7de:	c1653503          	ld	a0,-1002(a0) # 13f0 <freep>
 7e2:	c915                	beqz	a0,816 <malloc+0x58>
 7e4:	611c                	ld	a5,0(a0)
 7e6:	4798                	lw	a4,8(a5)
 7e8:	08977e63          	bgeu	a4,s1,884 <malloc+0xc6>
 7ec:	f04a                	sd	s2,32(sp)
 7ee:	e852                	sd	s4,16(sp)
 7f0:	e456                	sd	s5,8(sp)
 7f2:	e05a                	sd	s6,0(sp)
 7f4:	8a4e                	mv	s4,s3
 7f6:	0009871b          	sext.w	a4,s3
 7fa:	6685                	lui	a3,0x1
 7fc:	00d77363          	bgeu	a4,a3,802 <malloc+0x44>
 800:	6a05                	lui	s4,0x1
 802:	000a0b1b          	sext.w	s6,s4
 806:	004a1a1b          	sllw	s4,s4,0x4
 80a:	00001917          	auipc	s2,0x1
 80e:	be690913          	add	s2,s2,-1050 # 13f0 <freep>
 812:	5afd                	li	s5,-1
 814:	a091                	j	858 <malloc+0x9a>
 816:	f04a                	sd	s2,32(sp)
 818:	e852                	sd	s4,16(sp)
 81a:	e456                	sd	s5,8(sp)
 81c:	e05a                	sd	s6,0(sp)
 81e:	00001797          	auipc	a5,0x1
 822:	be278793          	add	a5,a5,-1054 # 1400 <base>
 826:	00001717          	auipc	a4,0x1
 82a:	bcf73523          	sd	a5,-1078(a4) # 13f0 <freep>
 82e:	e39c                	sd	a5,0(a5)
 830:	0007a423          	sw	zero,8(a5)
 834:	b7c1                	j	7f4 <malloc+0x36>
 836:	6398                	ld	a4,0(a5)
 838:	e118                	sd	a4,0(a0)
 83a:	a08d                	j	89c <malloc+0xde>
 83c:	01652423          	sw	s6,8(a0)
 840:	0541                	add	a0,a0,16
 842:	00000097          	auipc	ra,0x0
 846:	efa080e7          	jalr	-262(ra) # 73c <free>
 84a:	00093503          	ld	a0,0(s2)
 84e:	c13d                	beqz	a0,8b4 <malloc+0xf6>
 850:	611c                	ld	a5,0(a0)
 852:	4798                	lw	a4,8(a5)
 854:	02977463          	bgeu	a4,s1,87c <malloc+0xbe>
 858:	00093703          	ld	a4,0(s2)
 85c:	853e                	mv	a0,a5
 85e:	fef719e3          	bne	a4,a5,850 <malloc+0x92>
 862:	8552                	mv	a0,s4
 864:	00000097          	auipc	ra,0x0
 868:	ba2080e7          	jalr	-1118(ra) # 406 <sbrk>
 86c:	fd5518e3          	bne	a0,s5,83c <malloc+0x7e>
 870:	4501                	li	a0,0
 872:	7902                	ld	s2,32(sp)
 874:	6a42                	ld	s4,16(sp)
 876:	6aa2                	ld	s5,8(sp)
 878:	6b02                	ld	s6,0(sp)
 87a:	a03d                	j	8a8 <malloc+0xea>
 87c:	7902                	ld	s2,32(sp)
 87e:	6a42                	ld	s4,16(sp)
 880:	6aa2                	ld	s5,8(sp)
 882:	6b02                	ld	s6,0(sp)
 884:	fae489e3          	beq	s1,a4,836 <malloc+0x78>
 888:	4137073b          	subw	a4,a4,s3
 88c:	c798                	sw	a4,8(a5)
 88e:	02071693          	sll	a3,a4,0x20
 892:	01c6d713          	srl	a4,a3,0x1c
 896:	97ba                	add	a5,a5,a4
 898:	0137a423          	sw	s3,8(a5)
 89c:	00001717          	auipc	a4,0x1
 8a0:	b4a73a23          	sd	a0,-1196(a4) # 13f0 <freep>
 8a4:	01078513          	add	a0,a5,16
 8a8:	70e2                	ld	ra,56(sp)
 8aa:	7442                	ld	s0,48(sp)
 8ac:	74a2                	ld	s1,40(sp)
 8ae:	69e2                	ld	s3,24(sp)
 8b0:	6121                	add	sp,sp,64
 8b2:	8082                	ret
 8b4:	7902                	ld	s2,32(sp)
 8b6:	6a42                	ld	s4,16(sp)
 8b8:	6aa2                	ld	s5,8(sp)
 8ba:	6b02                	ld	s6,0(sp)
 8bc:	b7f5                	j	8a8 <malloc+0xea>
