
user/_echo:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7139                	add	sp,sp,-64
   2:	fc06                	sd	ra,56(sp)
   4:	f822                	sd	s0,48(sp)
   6:	f426                	sd	s1,40(sp)
   8:	f04a                	sd	s2,32(sp)
   a:	ec4e                	sd	s3,24(sp)
   c:	e852                	sd	s4,16(sp)
   e:	e456                	sd	s5,8(sp)
  10:	0080                	add	s0,sp,64
  12:	4785                	li	a5,1
  14:	06a7d863          	bge	a5,a0,84 <main+0x84>
  18:	00858493          	add	s1,a1,8
  1c:	3579                	addw	a0,a0,-2
  1e:	02051793          	sll	a5,a0,0x20
  22:	01d7d513          	srl	a0,a5,0x1d
  26:	00a48a33          	add	s4,s1,a0
  2a:	05c1                	add	a1,a1,16
  2c:	00a589b3          	add	s3,a1,a0
  30:	00001a97          	auipc	s5,0x1
  34:	830a8a93          	add	s5,s5,-2000 # 860 <malloc+0x10c>
  38:	a819                	j	4e <main+0x4e>
  3a:	4605                	li	a2,1
  3c:	85d6                	mv	a1,s5
  3e:	4505                	li	a0,1
  40:	00000097          	auipc	ra,0x0
  44:	2f4080e7          	jalr	756(ra) # 334 <write>
  48:	04a1                	add	s1,s1,8
  4a:	03348d63          	beq	s1,s3,84 <main+0x84>
  4e:	0004b903          	ld	s2,0(s1)
  52:	854a                	mv	a0,s2
  54:	00000097          	auipc	ra,0x0
  58:	09c080e7          	jalr	156(ra) # f0 <strlen>
  5c:	0005061b          	sext.w	a2,a0
  60:	85ca                	mv	a1,s2
  62:	4505                	li	a0,1
  64:	00000097          	auipc	ra,0x0
  68:	2d0080e7          	jalr	720(ra) # 334 <write>
  6c:	fd4497e3          	bne	s1,s4,3a <main+0x3a>
  70:	4605                	li	a2,1
  72:	00000597          	auipc	a1,0x0
  76:	7f658593          	add	a1,a1,2038 # 868 <malloc+0x114>
  7a:	4505                	li	a0,1
  7c:	00000097          	auipc	ra,0x0
  80:	2b8080e7          	jalr	696(ra) # 334 <write>
  84:	4501                	li	a0,0
  86:	00000097          	auipc	ra,0x0
  8a:	28e080e7          	jalr	654(ra) # 314 <exit>

000000000000008e <_main>:
  8e:	1141                	add	sp,sp,-16
  90:	e406                	sd	ra,8(sp)
  92:	e022                	sd	s0,0(sp)
  94:	0800                	add	s0,sp,16
  96:	00000097          	auipc	ra,0x0
  9a:	f6a080e7          	jalr	-150(ra) # 0 <main>
  9e:	4501                	li	a0,0
  a0:	00000097          	auipc	ra,0x0
  a4:	274080e7          	jalr	628(ra) # 314 <exit>

00000000000000a8 <strcpy>:
  a8:	1141                	add	sp,sp,-16
  aa:	e422                	sd	s0,8(sp)
  ac:	0800                	add	s0,sp,16
  ae:	87aa                	mv	a5,a0
  b0:	0585                	add	a1,a1,1
  b2:	0785                	add	a5,a5,1
  b4:	fff5c703          	lbu	a4,-1(a1)
  b8:	fee78fa3          	sb	a4,-1(a5)
  bc:	fb75                	bnez	a4,b0 <strcpy+0x8>
  be:	6422                	ld	s0,8(sp)
  c0:	0141                	add	sp,sp,16
  c2:	8082                	ret

00000000000000c4 <strcmp>:
  c4:	1141                	add	sp,sp,-16
  c6:	e422                	sd	s0,8(sp)
  c8:	0800                	add	s0,sp,16
  ca:	00054783          	lbu	a5,0(a0)
  ce:	cb91                	beqz	a5,e2 <strcmp+0x1e>
  d0:	0005c703          	lbu	a4,0(a1)
  d4:	00f71763          	bne	a4,a5,e2 <strcmp+0x1e>
  d8:	0505                	add	a0,a0,1
  da:	0585                	add	a1,a1,1
  dc:	00054783          	lbu	a5,0(a0)
  e0:	fbe5                	bnez	a5,d0 <strcmp+0xc>
  e2:	0005c503          	lbu	a0,0(a1)
  e6:	40a7853b          	subw	a0,a5,a0
  ea:	6422                	ld	s0,8(sp)
  ec:	0141                	add	sp,sp,16
  ee:	8082                	ret

00000000000000f0 <strlen>:
  f0:	1141                	add	sp,sp,-16
  f2:	e422                	sd	s0,8(sp)
  f4:	0800                	add	s0,sp,16
  f6:	00054783          	lbu	a5,0(a0)
  fa:	cf91                	beqz	a5,116 <strlen+0x26>
  fc:	0505                	add	a0,a0,1
  fe:	87aa                	mv	a5,a0
 100:	86be                	mv	a3,a5
 102:	0785                	add	a5,a5,1
 104:	fff7c703          	lbu	a4,-1(a5)
 108:	ff65                	bnez	a4,100 <strlen+0x10>
 10a:	40a6853b          	subw	a0,a3,a0
 10e:	2505                	addw	a0,a0,1
 110:	6422                	ld	s0,8(sp)
 112:	0141                	add	sp,sp,16
 114:	8082                	ret
 116:	4501                	li	a0,0
 118:	bfe5                	j	110 <strlen+0x20>

000000000000011a <memset>:
 11a:	1141                	add	sp,sp,-16
 11c:	e422                	sd	s0,8(sp)
 11e:	0800                	add	s0,sp,16
 120:	ca19                	beqz	a2,136 <memset+0x1c>
 122:	87aa                	mv	a5,a0
 124:	1602                	sll	a2,a2,0x20
 126:	9201                	srl	a2,a2,0x20
 128:	00a60733          	add	a4,a2,a0
 12c:	00b78023          	sb	a1,0(a5)
 130:	0785                	add	a5,a5,1
 132:	fee79de3          	bne	a5,a4,12c <memset+0x12>
 136:	6422                	ld	s0,8(sp)
 138:	0141                	add	sp,sp,16
 13a:	8082                	ret

000000000000013c <strchr>:
 13c:	1141                	add	sp,sp,-16
 13e:	e422                	sd	s0,8(sp)
 140:	0800                	add	s0,sp,16
 142:	00054783          	lbu	a5,0(a0)
 146:	cb99                	beqz	a5,15c <strchr+0x20>
 148:	00f58763          	beq	a1,a5,156 <strchr+0x1a>
 14c:	0505                	add	a0,a0,1
 14e:	00054783          	lbu	a5,0(a0)
 152:	fbfd                	bnez	a5,148 <strchr+0xc>
 154:	4501                	li	a0,0
 156:	6422                	ld	s0,8(sp)
 158:	0141                	add	sp,sp,16
 15a:	8082                	ret
 15c:	4501                	li	a0,0
 15e:	bfe5                	j	156 <strchr+0x1a>

0000000000000160 <gets>:
 160:	711d                	add	sp,sp,-96
 162:	ec86                	sd	ra,88(sp)
 164:	e8a2                	sd	s0,80(sp)
 166:	e4a6                	sd	s1,72(sp)
 168:	e0ca                	sd	s2,64(sp)
 16a:	fc4e                	sd	s3,56(sp)
 16c:	f852                	sd	s4,48(sp)
 16e:	f456                	sd	s5,40(sp)
 170:	f05a                	sd	s6,32(sp)
 172:	ec5e                	sd	s7,24(sp)
 174:	1080                	add	s0,sp,96
 176:	8baa                	mv	s7,a0
 178:	8a2e                	mv	s4,a1
 17a:	892a                	mv	s2,a0
 17c:	4481                	li	s1,0
 17e:	4aa9                	li	s5,10
 180:	4b35                	li	s6,13
 182:	89a6                	mv	s3,s1
 184:	2485                	addw	s1,s1,1
 186:	0344d863          	bge	s1,s4,1b6 <gets+0x56>
 18a:	4605                	li	a2,1
 18c:	faf40593          	add	a1,s0,-81
 190:	4501                	li	a0,0
 192:	00000097          	auipc	ra,0x0
 196:	19a080e7          	jalr	410(ra) # 32c <read>
 19a:	00a05e63          	blez	a0,1b6 <gets+0x56>
 19e:	faf44783          	lbu	a5,-81(s0)
 1a2:	00f90023          	sb	a5,0(s2)
 1a6:	01578763          	beq	a5,s5,1b4 <gets+0x54>
 1aa:	0905                	add	s2,s2,1
 1ac:	fd679be3          	bne	a5,s6,182 <gets+0x22>
 1b0:	89a6                	mv	s3,s1
 1b2:	a011                	j	1b6 <gets+0x56>
 1b4:	89a6                	mv	s3,s1
 1b6:	99de                	add	s3,s3,s7
 1b8:	00098023          	sb	zero,0(s3)
 1bc:	855e                	mv	a0,s7
 1be:	60e6                	ld	ra,88(sp)
 1c0:	6446                	ld	s0,80(sp)
 1c2:	64a6                	ld	s1,72(sp)
 1c4:	6906                	ld	s2,64(sp)
 1c6:	79e2                	ld	s3,56(sp)
 1c8:	7a42                	ld	s4,48(sp)
 1ca:	7aa2                	ld	s5,40(sp)
 1cc:	7b02                	ld	s6,32(sp)
 1ce:	6be2                	ld	s7,24(sp)
 1d0:	6125                	add	sp,sp,96
 1d2:	8082                	ret

00000000000001d4 <stat>:
 1d4:	1101                	add	sp,sp,-32
 1d6:	ec06                	sd	ra,24(sp)
 1d8:	e822                	sd	s0,16(sp)
 1da:	e04a                	sd	s2,0(sp)
 1dc:	1000                	add	s0,sp,32
 1de:	892e                	mv	s2,a1
 1e0:	4581                	li	a1,0
 1e2:	00000097          	auipc	ra,0x0
 1e6:	172080e7          	jalr	370(ra) # 354 <open>
 1ea:	02054663          	bltz	a0,216 <stat+0x42>
 1ee:	e426                	sd	s1,8(sp)
 1f0:	84aa                	mv	s1,a0
 1f2:	85ca                	mv	a1,s2
 1f4:	00000097          	auipc	ra,0x0
 1f8:	178080e7          	jalr	376(ra) # 36c <fstat>
 1fc:	892a                	mv	s2,a0
 1fe:	8526                	mv	a0,s1
 200:	00000097          	auipc	ra,0x0
 204:	13c080e7          	jalr	316(ra) # 33c <close>
 208:	64a2                	ld	s1,8(sp)
 20a:	854a                	mv	a0,s2
 20c:	60e2                	ld	ra,24(sp)
 20e:	6442                	ld	s0,16(sp)
 210:	6902                	ld	s2,0(sp)
 212:	6105                	add	sp,sp,32
 214:	8082                	ret
 216:	597d                	li	s2,-1
 218:	bfcd                	j	20a <stat+0x36>

000000000000021a <atoi>:
 21a:	1141                	add	sp,sp,-16
 21c:	e422                	sd	s0,8(sp)
 21e:	0800                	add	s0,sp,16
 220:	00054683          	lbu	a3,0(a0)
 224:	fd06879b          	addw	a5,a3,-48
 228:	0ff7f793          	zext.b	a5,a5
 22c:	4625                	li	a2,9
 22e:	02f66863          	bltu	a2,a5,25e <atoi+0x44>
 232:	872a                	mv	a4,a0
 234:	4501                	li	a0,0
 236:	0705                	add	a4,a4,1
 238:	0025179b          	sllw	a5,a0,0x2
 23c:	9fa9                	addw	a5,a5,a0
 23e:	0017979b          	sllw	a5,a5,0x1
 242:	9fb5                	addw	a5,a5,a3
 244:	fd07851b          	addw	a0,a5,-48
 248:	00074683          	lbu	a3,0(a4)
 24c:	fd06879b          	addw	a5,a3,-48
 250:	0ff7f793          	zext.b	a5,a5
 254:	fef671e3          	bgeu	a2,a5,236 <atoi+0x1c>
 258:	6422                	ld	s0,8(sp)
 25a:	0141                	add	sp,sp,16
 25c:	8082                	ret
 25e:	4501                	li	a0,0
 260:	bfe5                	j	258 <atoi+0x3e>

0000000000000262 <memmove>:
 262:	1141                	add	sp,sp,-16
 264:	e422                	sd	s0,8(sp)
 266:	0800                	add	s0,sp,16
 268:	02b57463          	bgeu	a0,a1,290 <memmove+0x2e>
 26c:	00c05f63          	blez	a2,28a <memmove+0x28>
 270:	1602                	sll	a2,a2,0x20
 272:	9201                	srl	a2,a2,0x20
 274:	00c507b3          	add	a5,a0,a2
 278:	872a                	mv	a4,a0
 27a:	0585                	add	a1,a1,1
 27c:	0705                	add	a4,a4,1
 27e:	fff5c683          	lbu	a3,-1(a1)
 282:	fed70fa3          	sb	a3,-1(a4)
 286:	fef71ae3          	bne	a4,a5,27a <memmove+0x18>
 28a:	6422                	ld	s0,8(sp)
 28c:	0141                	add	sp,sp,16
 28e:	8082                	ret
 290:	00c50733          	add	a4,a0,a2
 294:	95b2                	add	a1,a1,a2
 296:	fec05ae3          	blez	a2,28a <memmove+0x28>
 29a:	fff6079b          	addw	a5,a2,-1
 29e:	1782                	sll	a5,a5,0x20
 2a0:	9381                	srl	a5,a5,0x20
 2a2:	fff7c793          	not	a5,a5
 2a6:	97ba                	add	a5,a5,a4
 2a8:	15fd                	add	a1,a1,-1
 2aa:	177d                	add	a4,a4,-1
 2ac:	0005c683          	lbu	a3,0(a1)
 2b0:	00d70023          	sb	a3,0(a4)
 2b4:	fee79ae3          	bne	a5,a4,2a8 <memmove+0x46>
 2b8:	bfc9                	j	28a <memmove+0x28>

00000000000002ba <memcmp>:
 2ba:	1141                	add	sp,sp,-16
 2bc:	e422                	sd	s0,8(sp)
 2be:	0800                	add	s0,sp,16
 2c0:	ca05                	beqz	a2,2f0 <memcmp+0x36>
 2c2:	fff6069b          	addw	a3,a2,-1
 2c6:	1682                	sll	a3,a3,0x20
 2c8:	9281                	srl	a3,a3,0x20
 2ca:	0685                	add	a3,a3,1
 2cc:	96aa                	add	a3,a3,a0
 2ce:	00054783          	lbu	a5,0(a0)
 2d2:	0005c703          	lbu	a4,0(a1)
 2d6:	00e79863          	bne	a5,a4,2e6 <memcmp+0x2c>
 2da:	0505                	add	a0,a0,1
 2dc:	0585                	add	a1,a1,1
 2de:	fed518e3          	bne	a0,a3,2ce <memcmp+0x14>
 2e2:	4501                	li	a0,0
 2e4:	a019                	j	2ea <memcmp+0x30>
 2e6:	40e7853b          	subw	a0,a5,a4
 2ea:	6422                	ld	s0,8(sp)
 2ec:	0141                	add	sp,sp,16
 2ee:	8082                	ret
 2f0:	4501                	li	a0,0
 2f2:	bfe5                	j	2ea <memcmp+0x30>

00000000000002f4 <memcpy>:
 2f4:	1141                	add	sp,sp,-16
 2f6:	e406                	sd	ra,8(sp)
 2f8:	e022                	sd	s0,0(sp)
 2fa:	0800                	add	s0,sp,16
 2fc:	00000097          	auipc	ra,0x0
 300:	f66080e7          	jalr	-154(ra) # 262 <memmove>
 304:	60a2                	ld	ra,8(sp)
 306:	6402                	ld	s0,0(sp)
 308:	0141                	add	sp,sp,16
 30a:	8082                	ret

000000000000030c <fork>:
 30c:	4885                	li	a7,1
 30e:	00000073          	ecall
 312:	8082                	ret

0000000000000314 <exit>:
 314:	4889                	li	a7,2
 316:	00000073          	ecall
 31a:	8082                	ret

000000000000031c <wait>:
 31c:	488d                	li	a7,3
 31e:	00000073          	ecall
 322:	8082                	ret

0000000000000324 <pipe>:
 324:	4891                	li	a7,4
 326:	00000073          	ecall
 32a:	8082                	ret

000000000000032c <read>:
 32c:	4895                	li	a7,5
 32e:	00000073          	ecall
 332:	8082                	ret

0000000000000334 <write>:
 334:	48c1                	li	a7,16
 336:	00000073          	ecall
 33a:	8082                	ret

000000000000033c <close>:
 33c:	48d5                	li	a7,21
 33e:	00000073          	ecall
 342:	8082                	ret

0000000000000344 <kill>:
 344:	4899                	li	a7,6
 346:	00000073          	ecall
 34a:	8082                	ret

000000000000034c <exec>:
 34c:	489d                	li	a7,7
 34e:	00000073          	ecall
 352:	8082                	ret

0000000000000354 <open>:
 354:	48bd                	li	a7,15
 356:	00000073          	ecall
 35a:	8082                	ret

000000000000035c <mknod>:
 35c:	48c5                	li	a7,17
 35e:	00000073          	ecall
 362:	8082                	ret

0000000000000364 <unlink>:
 364:	48c9                	li	a7,18
 366:	00000073          	ecall
 36a:	8082                	ret

000000000000036c <fstat>:
 36c:	48a1                	li	a7,8
 36e:	00000073          	ecall
 372:	8082                	ret

0000000000000374 <link>:
 374:	48cd                	li	a7,19
 376:	00000073          	ecall
 37a:	8082                	ret

000000000000037c <mkdir>:
 37c:	48d1                	li	a7,20
 37e:	00000073          	ecall
 382:	8082                	ret

0000000000000384 <chdir>:
 384:	48a5                	li	a7,9
 386:	00000073          	ecall
 38a:	8082                	ret

000000000000038c <dup>:
 38c:	48a9                	li	a7,10
 38e:	00000073          	ecall
 392:	8082                	ret

0000000000000394 <getpid>:
 394:	48ad                	li	a7,11
 396:	00000073          	ecall
 39a:	8082                	ret

000000000000039c <sbrk>:
 39c:	48b1                	li	a7,12
 39e:	00000073          	ecall
 3a2:	8082                	ret

00000000000003a4 <sleep>:
 3a4:	48b5                	li	a7,13
 3a6:	00000073          	ecall
 3aa:	8082                	ret

00000000000003ac <uptime>:
 3ac:	48b9                	li	a7,14
 3ae:	00000073          	ecall
 3b2:	8082                	ret

00000000000003b4 <waitx>:
 3b4:	48d9                	li	a7,22
 3b6:	00000073          	ecall
 3ba:	8082                	ret

00000000000003bc <getSysCount>:
 3bc:	48dd                	li	a7,23
 3be:	00000073          	ecall
 3c2:	8082                	ret

00000000000003c4 <sigalarm>:
 3c4:	48e1                	li	a7,24
 3c6:	00000073          	ecall
 3ca:	8082                	ret

00000000000003cc <sigreturn>:
 3cc:	48e5                	li	a7,25
 3ce:	00000073          	ecall
 3d2:	8082                	ret

00000000000003d4 <putc>:
 3d4:	1101                	add	sp,sp,-32
 3d6:	ec06                	sd	ra,24(sp)
 3d8:	e822                	sd	s0,16(sp)
 3da:	1000                	add	s0,sp,32
 3dc:	feb407a3          	sb	a1,-17(s0)
 3e0:	4605                	li	a2,1
 3e2:	fef40593          	add	a1,s0,-17
 3e6:	00000097          	auipc	ra,0x0
 3ea:	f4e080e7          	jalr	-178(ra) # 334 <write>
 3ee:	60e2                	ld	ra,24(sp)
 3f0:	6442                	ld	s0,16(sp)
 3f2:	6105                	add	sp,sp,32
 3f4:	8082                	ret

00000000000003f6 <printint>:
 3f6:	7139                	add	sp,sp,-64
 3f8:	fc06                	sd	ra,56(sp)
 3fa:	f822                	sd	s0,48(sp)
 3fc:	f426                	sd	s1,40(sp)
 3fe:	0080                	add	s0,sp,64
 400:	84aa                	mv	s1,a0
 402:	c299                	beqz	a3,408 <printint+0x12>
 404:	0805cb63          	bltz	a1,49a <printint+0xa4>
 408:	2581                	sext.w	a1,a1
 40a:	4881                	li	a7,0
 40c:	fc040693          	add	a3,s0,-64
 410:	4701                	li	a4,0
 412:	2601                	sext.w	a2,a2
 414:	00000517          	auipc	a0,0x0
 418:	4bc50513          	add	a0,a0,1212 # 8d0 <digits>
 41c:	883a                	mv	a6,a4
 41e:	2705                	addw	a4,a4,1
 420:	02c5f7bb          	remuw	a5,a1,a2
 424:	1782                	sll	a5,a5,0x20
 426:	9381                	srl	a5,a5,0x20
 428:	97aa                	add	a5,a5,a0
 42a:	0007c783          	lbu	a5,0(a5)
 42e:	00f68023          	sb	a5,0(a3)
 432:	0005879b          	sext.w	a5,a1
 436:	02c5d5bb          	divuw	a1,a1,a2
 43a:	0685                	add	a3,a3,1
 43c:	fec7f0e3          	bgeu	a5,a2,41c <printint+0x26>
 440:	00088c63          	beqz	a7,458 <printint+0x62>
 444:	fd070793          	add	a5,a4,-48
 448:	00878733          	add	a4,a5,s0
 44c:	02d00793          	li	a5,45
 450:	fef70823          	sb	a5,-16(a4)
 454:	0028071b          	addw	a4,a6,2
 458:	02e05c63          	blez	a4,490 <printint+0x9a>
 45c:	f04a                	sd	s2,32(sp)
 45e:	ec4e                	sd	s3,24(sp)
 460:	fc040793          	add	a5,s0,-64
 464:	00e78933          	add	s2,a5,a4
 468:	fff78993          	add	s3,a5,-1
 46c:	99ba                	add	s3,s3,a4
 46e:	377d                	addw	a4,a4,-1
 470:	1702                	sll	a4,a4,0x20
 472:	9301                	srl	a4,a4,0x20
 474:	40e989b3          	sub	s3,s3,a4
 478:	fff94583          	lbu	a1,-1(s2)
 47c:	8526                	mv	a0,s1
 47e:	00000097          	auipc	ra,0x0
 482:	f56080e7          	jalr	-170(ra) # 3d4 <putc>
 486:	197d                	add	s2,s2,-1
 488:	ff3918e3          	bne	s2,s3,478 <printint+0x82>
 48c:	7902                	ld	s2,32(sp)
 48e:	69e2                	ld	s3,24(sp)
 490:	70e2                	ld	ra,56(sp)
 492:	7442                	ld	s0,48(sp)
 494:	74a2                	ld	s1,40(sp)
 496:	6121                	add	sp,sp,64
 498:	8082                	ret
 49a:	40b005bb          	negw	a1,a1
 49e:	4885                	li	a7,1
 4a0:	b7b5                	j	40c <printint+0x16>

00000000000004a2 <vprintf>:
 4a2:	715d                	add	sp,sp,-80
 4a4:	e486                	sd	ra,72(sp)
 4a6:	e0a2                	sd	s0,64(sp)
 4a8:	f84a                	sd	s2,48(sp)
 4aa:	0880                	add	s0,sp,80
 4ac:	0005c903          	lbu	s2,0(a1)
 4b0:	1a090a63          	beqz	s2,664 <vprintf+0x1c2>
 4b4:	fc26                	sd	s1,56(sp)
 4b6:	f44e                	sd	s3,40(sp)
 4b8:	f052                	sd	s4,32(sp)
 4ba:	ec56                	sd	s5,24(sp)
 4bc:	e85a                	sd	s6,16(sp)
 4be:	e45e                	sd	s7,8(sp)
 4c0:	8aaa                	mv	s5,a0
 4c2:	8bb2                	mv	s7,a2
 4c4:	00158493          	add	s1,a1,1
 4c8:	4981                	li	s3,0
 4ca:	02500a13          	li	s4,37
 4ce:	4b55                	li	s6,21
 4d0:	a839                	j	4ee <vprintf+0x4c>
 4d2:	85ca                	mv	a1,s2
 4d4:	8556                	mv	a0,s5
 4d6:	00000097          	auipc	ra,0x0
 4da:	efe080e7          	jalr	-258(ra) # 3d4 <putc>
 4de:	a019                	j	4e4 <vprintf+0x42>
 4e0:	01498d63          	beq	s3,s4,4fa <vprintf+0x58>
 4e4:	0485                	add	s1,s1,1
 4e6:	fff4c903          	lbu	s2,-1(s1)
 4ea:	16090763          	beqz	s2,658 <vprintf+0x1b6>
 4ee:	fe0999e3          	bnez	s3,4e0 <vprintf+0x3e>
 4f2:	ff4910e3          	bne	s2,s4,4d2 <vprintf+0x30>
 4f6:	89d2                	mv	s3,s4
 4f8:	b7f5                	j	4e4 <vprintf+0x42>
 4fa:	13490463          	beq	s2,s4,622 <vprintf+0x180>
 4fe:	f9d9079b          	addw	a5,s2,-99
 502:	0ff7f793          	zext.b	a5,a5
 506:	12fb6763          	bltu	s6,a5,634 <vprintf+0x192>
 50a:	f9d9079b          	addw	a5,s2,-99
 50e:	0ff7f713          	zext.b	a4,a5
 512:	12eb6163          	bltu	s6,a4,634 <vprintf+0x192>
 516:	00271793          	sll	a5,a4,0x2
 51a:	00000717          	auipc	a4,0x0
 51e:	35e70713          	add	a4,a4,862 # 878 <malloc+0x124>
 522:	97ba                	add	a5,a5,a4
 524:	439c                	lw	a5,0(a5)
 526:	97ba                	add	a5,a5,a4
 528:	8782                	jr	a5
 52a:	008b8913          	add	s2,s7,8
 52e:	4685                	li	a3,1
 530:	4629                	li	a2,10
 532:	000ba583          	lw	a1,0(s7)
 536:	8556                	mv	a0,s5
 538:	00000097          	auipc	ra,0x0
 53c:	ebe080e7          	jalr	-322(ra) # 3f6 <printint>
 540:	8bca                	mv	s7,s2
 542:	4981                	li	s3,0
 544:	b745                	j	4e4 <vprintf+0x42>
 546:	008b8913          	add	s2,s7,8
 54a:	4681                	li	a3,0
 54c:	4629                	li	a2,10
 54e:	000ba583          	lw	a1,0(s7)
 552:	8556                	mv	a0,s5
 554:	00000097          	auipc	ra,0x0
 558:	ea2080e7          	jalr	-350(ra) # 3f6 <printint>
 55c:	8bca                	mv	s7,s2
 55e:	4981                	li	s3,0
 560:	b751                	j	4e4 <vprintf+0x42>
 562:	008b8913          	add	s2,s7,8
 566:	4681                	li	a3,0
 568:	4641                	li	a2,16
 56a:	000ba583          	lw	a1,0(s7)
 56e:	8556                	mv	a0,s5
 570:	00000097          	auipc	ra,0x0
 574:	e86080e7          	jalr	-378(ra) # 3f6 <printint>
 578:	8bca                	mv	s7,s2
 57a:	4981                	li	s3,0
 57c:	b7a5                	j	4e4 <vprintf+0x42>
 57e:	e062                	sd	s8,0(sp)
 580:	008b8c13          	add	s8,s7,8
 584:	000bb983          	ld	s3,0(s7)
 588:	03000593          	li	a1,48
 58c:	8556                	mv	a0,s5
 58e:	00000097          	auipc	ra,0x0
 592:	e46080e7          	jalr	-442(ra) # 3d4 <putc>
 596:	07800593          	li	a1,120
 59a:	8556                	mv	a0,s5
 59c:	00000097          	auipc	ra,0x0
 5a0:	e38080e7          	jalr	-456(ra) # 3d4 <putc>
 5a4:	4941                	li	s2,16
 5a6:	00000b97          	auipc	s7,0x0
 5aa:	32ab8b93          	add	s7,s7,810 # 8d0 <digits>
 5ae:	03c9d793          	srl	a5,s3,0x3c
 5b2:	97de                	add	a5,a5,s7
 5b4:	0007c583          	lbu	a1,0(a5)
 5b8:	8556                	mv	a0,s5
 5ba:	00000097          	auipc	ra,0x0
 5be:	e1a080e7          	jalr	-486(ra) # 3d4 <putc>
 5c2:	0992                	sll	s3,s3,0x4
 5c4:	397d                	addw	s2,s2,-1
 5c6:	fe0914e3          	bnez	s2,5ae <vprintf+0x10c>
 5ca:	8be2                	mv	s7,s8
 5cc:	4981                	li	s3,0
 5ce:	6c02                	ld	s8,0(sp)
 5d0:	bf11                	j	4e4 <vprintf+0x42>
 5d2:	008b8993          	add	s3,s7,8
 5d6:	000bb903          	ld	s2,0(s7)
 5da:	02090163          	beqz	s2,5fc <vprintf+0x15a>
 5de:	00094583          	lbu	a1,0(s2)
 5e2:	c9a5                	beqz	a1,652 <vprintf+0x1b0>
 5e4:	8556                	mv	a0,s5
 5e6:	00000097          	auipc	ra,0x0
 5ea:	dee080e7          	jalr	-530(ra) # 3d4 <putc>
 5ee:	0905                	add	s2,s2,1
 5f0:	00094583          	lbu	a1,0(s2)
 5f4:	f9e5                	bnez	a1,5e4 <vprintf+0x142>
 5f6:	8bce                	mv	s7,s3
 5f8:	4981                	li	s3,0
 5fa:	b5ed                	j	4e4 <vprintf+0x42>
 5fc:	00000917          	auipc	s2,0x0
 600:	27490913          	add	s2,s2,628 # 870 <malloc+0x11c>
 604:	02800593          	li	a1,40
 608:	bff1                	j	5e4 <vprintf+0x142>
 60a:	008b8913          	add	s2,s7,8
 60e:	000bc583          	lbu	a1,0(s7)
 612:	8556                	mv	a0,s5
 614:	00000097          	auipc	ra,0x0
 618:	dc0080e7          	jalr	-576(ra) # 3d4 <putc>
 61c:	8bca                	mv	s7,s2
 61e:	4981                	li	s3,0
 620:	b5d1                	j	4e4 <vprintf+0x42>
 622:	02500593          	li	a1,37
 626:	8556                	mv	a0,s5
 628:	00000097          	auipc	ra,0x0
 62c:	dac080e7          	jalr	-596(ra) # 3d4 <putc>
 630:	4981                	li	s3,0
 632:	bd4d                	j	4e4 <vprintf+0x42>
 634:	02500593          	li	a1,37
 638:	8556                	mv	a0,s5
 63a:	00000097          	auipc	ra,0x0
 63e:	d9a080e7          	jalr	-614(ra) # 3d4 <putc>
 642:	85ca                	mv	a1,s2
 644:	8556                	mv	a0,s5
 646:	00000097          	auipc	ra,0x0
 64a:	d8e080e7          	jalr	-626(ra) # 3d4 <putc>
 64e:	4981                	li	s3,0
 650:	bd51                	j	4e4 <vprintf+0x42>
 652:	8bce                	mv	s7,s3
 654:	4981                	li	s3,0
 656:	b579                	j	4e4 <vprintf+0x42>
 658:	74e2                	ld	s1,56(sp)
 65a:	79a2                	ld	s3,40(sp)
 65c:	7a02                	ld	s4,32(sp)
 65e:	6ae2                	ld	s5,24(sp)
 660:	6b42                	ld	s6,16(sp)
 662:	6ba2                	ld	s7,8(sp)
 664:	60a6                	ld	ra,72(sp)
 666:	6406                	ld	s0,64(sp)
 668:	7942                	ld	s2,48(sp)
 66a:	6161                	add	sp,sp,80
 66c:	8082                	ret

000000000000066e <fprintf>:
 66e:	715d                	add	sp,sp,-80
 670:	ec06                	sd	ra,24(sp)
 672:	e822                	sd	s0,16(sp)
 674:	1000                	add	s0,sp,32
 676:	e010                	sd	a2,0(s0)
 678:	e414                	sd	a3,8(s0)
 67a:	e818                	sd	a4,16(s0)
 67c:	ec1c                	sd	a5,24(s0)
 67e:	03043023          	sd	a6,32(s0)
 682:	03143423          	sd	a7,40(s0)
 686:	fe843423          	sd	s0,-24(s0)
 68a:	8622                	mv	a2,s0
 68c:	00000097          	auipc	ra,0x0
 690:	e16080e7          	jalr	-490(ra) # 4a2 <vprintf>
 694:	60e2                	ld	ra,24(sp)
 696:	6442                	ld	s0,16(sp)
 698:	6161                	add	sp,sp,80
 69a:	8082                	ret

000000000000069c <printf>:
 69c:	711d                	add	sp,sp,-96
 69e:	ec06                	sd	ra,24(sp)
 6a0:	e822                	sd	s0,16(sp)
 6a2:	1000                	add	s0,sp,32
 6a4:	e40c                	sd	a1,8(s0)
 6a6:	e810                	sd	a2,16(s0)
 6a8:	ec14                	sd	a3,24(s0)
 6aa:	f018                	sd	a4,32(s0)
 6ac:	f41c                	sd	a5,40(s0)
 6ae:	03043823          	sd	a6,48(s0)
 6b2:	03143c23          	sd	a7,56(s0)
 6b6:	00840613          	add	a2,s0,8
 6ba:	fec43423          	sd	a2,-24(s0)
 6be:	85aa                	mv	a1,a0
 6c0:	4505                	li	a0,1
 6c2:	00000097          	auipc	ra,0x0
 6c6:	de0080e7          	jalr	-544(ra) # 4a2 <vprintf>
 6ca:	60e2                	ld	ra,24(sp)
 6cc:	6442                	ld	s0,16(sp)
 6ce:	6125                	add	sp,sp,96
 6d0:	8082                	ret

00000000000006d2 <free>:
 6d2:	1141                	add	sp,sp,-16
 6d4:	e422                	sd	s0,8(sp)
 6d6:	0800                	add	s0,sp,16
 6d8:	ff050693          	add	a3,a0,-16
 6dc:	00001797          	auipc	a5,0x1
 6e0:	d047b783          	ld	a5,-764(a5) # 13e0 <freep>
 6e4:	a02d                	j	70e <free+0x3c>
 6e6:	4618                	lw	a4,8(a2)
 6e8:	9f2d                	addw	a4,a4,a1
 6ea:	fee52c23          	sw	a4,-8(a0)
 6ee:	6398                	ld	a4,0(a5)
 6f0:	6310                	ld	a2,0(a4)
 6f2:	a83d                	j	730 <free+0x5e>
 6f4:	ff852703          	lw	a4,-8(a0)
 6f8:	9f31                	addw	a4,a4,a2
 6fa:	c798                	sw	a4,8(a5)
 6fc:	ff053683          	ld	a3,-16(a0)
 700:	a091                	j	744 <free+0x72>
 702:	6398                	ld	a4,0(a5)
 704:	00e7e463          	bltu	a5,a4,70c <free+0x3a>
 708:	00e6ea63          	bltu	a3,a4,71c <free+0x4a>
 70c:	87ba                	mv	a5,a4
 70e:	fed7fae3          	bgeu	a5,a3,702 <free+0x30>
 712:	6398                	ld	a4,0(a5)
 714:	00e6e463          	bltu	a3,a4,71c <free+0x4a>
 718:	fee7eae3          	bltu	a5,a4,70c <free+0x3a>
 71c:	ff852583          	lw	a1,-8(a0)
 720:	6390                	ld	a2,0(a5)
 722:	02059813          	sll	a6,a1,0x20
 726:	01c85713          	srl	a4,a6,0x1c
 72a:	9736                	add	a4,a4,a3
 72c:	fae60de3          	beq	a2,a4,6e6 <free+0x14>
 730:	fec53823          	sd	a2,-16(a0)
 734:	4790                	lw	a2,8(a5)
 736:	02061593          	sll	a1,a2,0x20
 73a:	01c5d713          	srl	a4,a1,0x1c
 73e:	973e                	add	a4,a4,a5
 740:	fae68ae3          	beq	a3,a4,6f4 <free+0x22>
 744:	e394                	sd	a3,0(a5)
 746:	00001717          	auipc	a4,0x1
 74a:	c8f73d23          	sd	a5,-870(a4) # 13e0 <freep>
 74e:	6422                	ld	s0,8(sp)
 750:	0141                	add	sp,sp,16
 752:	8082                	ret

0000000000000754 <malloc>:
 754:	7139                	add	sp,sp,-64
 756:	fc06                	sd	ra,56(sp)
 758:	f822                	sd	s0,48(sp)
 75a:	f426                	sd	s1,40(sp)
 75c:	ec4e                	sd	s3,24(sp)
 75e:	0080                	add	s0,sp,64
 760:	02051493          	sll	s1,a0,0x20
 764:	9081                	srl	s1,s1,0x20
 766:	04bd                	add	s1,s1,15
 768:	8091                	srl	s1,s1,0x4
 76a:	0014899b          	addw	s3,s1,1
 76e:	0485                	add	s1,s1,1
 770:	00001517          	auipc	a0,0x1
 774:	c7053503          	ld	a0,-912(a0) # 13e0 <freep>
 778:	c915                	beqz	a0,7ac <malloc+0x58>
 77a:	611c                	ld	a5,0(a0)
 77c:	4798                	lw	a4,8(a5)
 77e:	08977e63          	bgeu	a4,s1,81a <malloc+0xc6>
 782:	f04a                	sd	s2,32(sp)
 784:	e852                	sd	s4,16(sp)
 786:	e456                	sd	s5,8(sp)
 788:	e05a                	sd	s6,0(sp)
 78a:	8a4e                	mv	s4,s3
 78c:	0009871b          	sext.w	a4,s3
 790:	6685                	lui	a3,0x1
 792:	00d77363          	bgeu	a4,a3,798 <malloc+0x44>
 796:	6a05                	lui	s4,0x1
 798:	000a0b1b          	sext.w	s6,s4
 79c:	004a1a1b          	sllw	s4,s4,0x4
 7a0:	00001917          	auipc	s2,0x1
 7a4:	c4090913          	add	s2,s2,-960 # 13e0 <freep>
 7a8:	5afd                	li	s5,-1
 7aa:	a091                	j	7ee <malloc+0x9a>
 7ac:	f04a                	sd	s2,32(sp)
 7ae:	e852                	sd	s4,16(sp)
 7b0:	e456                	sd	s5,8(sp)
 7b2:	e05a                	sd	s6,0(sp)
 7b4:	00001797          	auipc	a5,0x1
 7b8:	c3c78793          	add	a5,a5,-964 # 13f0 <base>
 7bc:	00001717          	auipc	a4,0x1
 7c0:	c2f73223          	sd	a5,-988(a4) # 13e0 <freep>
 7c4:	e39c                	sd	a5,0(a5)
 7c6:	0007a423          	sw	zero,8(a5)
 7ca:	b7c1                	j	78a <malloc+0x36>
 7cc:	6398                	ld	a4,0(a5)
 7ce:	e118                	sd	a4,0(a0)
 7d0:	a08d                	j	832 <malloc+0xde>
 7d2:	01652423          	sw	s6,8(a0)
 7d6:	0541                	add	a0,a0,16
 7d8:	00000097          	auipc	ra,0x0
 7dc:	efa080e7          	jalr	-262(ra) # 6d2 <free>
 7e0:	00093503          	ld	a0,0(s2)
 7e4:	c13d                	beqz	a0,84a <malloc+0xf6>
 7e6:	611c                	ld	a5,0(a0)
 7e8:	4798                	lw	a4,8(a5)
 7ea:	02977463          	bgeu	a4,s1,812 <malloc+0xbe>
 7ee:	00093703          	ld	a4,0(s2)
 7f2:	853e                	mv	a0,a5
 7f4:	fef719e3          	bne	a4,a5,7e6 <malloc+0x92>
 7f8:	8552                	mv	a0,s4
 7fa:	00000097          	auipc	ra,0x0
 7fe:	ba2080e7          	jalr	-1118(ra) # 39c <sbrk>
 802:	fd5518e3          	bne	a0,s5,7d2 <malloc+0x7e>
 806:	4501                	li	a0,0
 808:	7902                	ld	s2,32(sp)
 80a:	6a42                	ld	s4,16(sp)
 80c:	6aa2                	ld	s5,8(sp)
 80e:	6b02                	ld	s6,0(sp)
 810:	a03d                	j	83e <malloc+0xea>
 812:	7902                	ld	s2,32(sp)
 814:	6a42                	ld	s4,16(sp)
 816:	6aa2                	ld	s5,8(sp)
 818:	6b02                	ld	s6,0(sp)
 81a:	fae489e3          	beq	s1,a4,7cc <malloc+0x78>
 81e:	4137073b          	subw	a4,a4,s3
 822:	c798                	sw	a4,8(a5)
 824:	02071693          	sll	a3,a4,0x20
 828:	01c6d713          	srl	a4,a3,0x1c
 82c:	97ba                	add	a5,a5,a4
 82e:	0137a423          	sw	s3,8(a5)
 832:	00001717          	auipc	a4,0x1
 836:	baa73723          	sd	a0,-1106(a4) # 13e0 <freep>
 83a:	01078513          	add	a0,a5,16
 83e:	70e2                	ld	ra,56(sp)
 840:	7442                	ld	s0,48(sp)
 842:	74a2                	ld	s1,40(sp)
 844:	69e2                	ld	s3,24(sp)
 846:	6121                	add	sp,sp,64
 848:	8082                	ret
 84a:	7902                	ld	s2,32(sp)
 84c:	6a42                	ld	s4,16(sp)
 84e:	6aa2                	ld	s5,8(sp)
 850:	6b02                	ld	s6,0(sp)
 852:	b7f5                	j	83e <malloc+0xea>
