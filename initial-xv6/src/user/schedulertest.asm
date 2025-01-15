
user/_schedulertest:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7139                	add	sp,sp,-64
   2:	fc06                	sd	ra,56(sp)
   4:	f822                	sd	s0,48(sp)
   6:	f426                	sd	s1,40(sp)
   8:	f04a                	sd	s2,32(sp)
   a:	ec4e                	sd	s3,24(sp)
   c:	0080                	add	s0,sp,64
   e:	4481                	li	s1,0
  10:	4929                	li	s2,10
  12:	00000097          	auipc	ra,0x0
  16:	33a080e7          	jalr	826(ra) # 34c <fork>
  1a:	00054963          	bltz	a0,2c <main+0x2c>
  1e:	cd0d                	beqz	a0,58 <main+0x58>
  20:	2485                	addw	s1,s1,1
  22:	ff2498e3          	bne	s1,s2,12 <main+0x12>
  26:	4901                	li	s2,0
  28:	4981                	li	s3,0
  2a:	a8b5                	j	a6 <main+0xa6>
  2c:	fe904de3          	bgtz	s1,26 <main+0x26>
  30:	4901                	li	s2,0
  32:	4981                	li	s3,0
  34:	45a9                	li	a1,10
  36:	02b9c63b          	divw	a2,s3,a1
  3a:	02b945bb          	divw	a1,s2,a1
  3e:	00001517          	auipc	a0,0x1
  42:	86250513          	add	a0,a0,-1950 # 8a0 <malloc+0x10c>
  46:	00000097          	auipc	ra,0x0
  4a:	696080e7          	jalr	1686(ra) # 6dc <printf>
  4e:	4501                	li	a0,0
  50:	00000097          	auipc	ra,0x0
  54:	304080e7          	jalr	772(ra) # 354 <exit>
  58:	4791                	li	a5,4
  5a:	0297dd63          	bge	a5,s1,94 <main+0x94>
  5e:	fc042223          	sw	zero,-60(s0)
  62:	fc442703          	lw	a4,-60(s0)
  66:	2701                	sext.w	a4,a4
  68:	3b9ad7b7          	lui	a5,0x3b9ad
  6c:	9ff78793          	add	a5,a5,-1537 # 3b9ac9ff <base+0x3b9ab60f>
  70:	00e7cd63          	blt	a5,a4,8a <main+0x8a>
  74:	873e                	mv	a4,a5
  76:	fc442783          	lw	a5,-60(s0)
  7a:	2785                	addw	a5,a5,1
  7c:	fcf42223          	sw	a5,-60(s0)
  80:	fc442783          	lw	a5,-60(s0)
  84:	2781                	sext.w	a5,a5
  86:	fef758e3          	bge	a4,a5,76 <main+0x76>
  8a:	4501                	li	a0,0
  8c:	00000097          	auipc	ra,0x0
  90:	2c8080e7          	jalr	712(ra) # 354 <exit>
  94:	0c800513          	li	a0,200
  98:	00000097          	auipc	ra,0x0
  9c:	34c080e7          	jalr	844(ra) # 3e4 <sleep>
  a0:	b7ed                	j	8a <main+0x8a>
  a2:	34fd                	addw	s1,s1,-1
  a4:	d8c1                	beqz	s1,34 <main+0x34>
  a6:	fc840613          	add	a2,s0,-56
  aa:	fcc40593          	add	a1,s0,-52
  ae:	4501                	li	a0,0
  b0:	00000097          	auipc	ra,0x0
  b4:	344080e7          	jalr	836(ra) # 3f4 <waitx>
  b8:	fe0545e3          	bltz	a0,a2 <main+0xa2>
  bc:	fc842783          	lw	a5,-56(s0)
  c0:	0127893b          	addw	s2,a5,s2
  c4:	fcc42783          	lw	a5,-52(s0)
  c8:	013789bb          	addw	s3,a5,s3
  cc:	bfd9                	j	a2 <main+0xa2>

00000000000000ce <_main>:
  ce:	1141                	add	sp,sp,-16
  d0:	e406                	sd	ra,8(sp)
  d2:	e022                	sd	s0,0(sp)
  d4:	0800                	add	s0,sp,16
  d6:	00000097          	auipc	ra,0x0
  da:	f2a080e7          	jalr	-214(ra) # 0 <main>
  de:	4501                	li	a0,0
  e0:	00000097          	auipc	ra,0x0
  e4:	274080e7          	jalr	628(ra) # 354 <exit>

00000000000000e8 <strcpy>:
  e8:	1141                	add	sp,sp,-16
  ea:	e422                	sd	s0,8(sp)
  ec:	0800                	add	s0,sp,16
  ee:	87aa                	mv	a5,a0
  f0:	0585                	add	a1,a1,1
  f2:	0785                	add	a5,a5,1
  f4:	fff5c703          	lbu	a4,-1(a1)
  f8:	fee78fa3          	sb	a4,-1(a5)
  fc:	fb75                	bnez	a4,f0 <strcpy+0x8>
  fe:	6422                	ld	s0,8(sp)
 100:	0141                	add	sp,sp,16
 102:	8082                	ret

0000000000000104 <strcmp>:
 104:	1141                	add	sp,sp,-16
 106:	e422                	sd	s0,8(sp)
 108:	0800                	add	s0,sp,16
 10a:	00054783          	lbu	a5,0(a0)
 10e:	cb91                	beqz	a5,122 <strcmp+0x1e>
 110:	0005c703          	lbu	a4,0(a1)
 114:	00f71763          	bne	a4,a5,122 <strcmp+0x1e>
 118:	0505                	add	a0,a0,1
 11a:	0585                	add	a1,a1,1
 11c:	00054783          	lbu	a5,0(a0)
 120:	fbe5                	bnez	a5,110 <strcmp+0xc>
 122:	0005c503          	lbu	a0,0(a1)
 126:	40a7853b          	subw	a0,a5,a0
 12a:	6422                	ld	s0,8(sp)
 12c:	0141                	add	sp,sp,16
 12e:	8082                	ret

0000000000000130 <strlen>:
 130:	1141                	add	sp,sp,-16
 132:	e422                	sd	s0,8(sp)
 134:	0800                	add	s0,sp,16
 136:	00054783          	lbu	a5,0(a0)
 13a:	cf91                	beqz	a5,156 <strlen+0x26>
 13c:	0505                	add	a0,a0,1
 13e:	87aa                	mv	a5,a0
 140:	86be                	mv	a3,a5
 142:	0785                	add	a5,a5,1
 144:	fff7c703          	lbu	a4,-1(a5)
 148:	ff65                	bnez	a4,140 <strlen+0x10>
 14a:	40a6853b          	subw	a0,a3,a0
 14e:	2505                	addw	a0,a0,1
 150:	6422                	ld	s0,8(sp)
 152:	0141                	add	sp,sp,16
 154:	8082                	ret
 156:	4501                	li	a0,0
 158:	bfe5                	j	150 <strlen+0x20>

000000000000015a <memset>:
 15a:	1141                	add	sp,sp,-16
 15c:	e422                	sd	s0,8(sp)
 15e:	0800                	add	s0,sp,16
 160:	ca19                	beqz	a2,176 <memset+0x1c>
 162:	87aa                	mv	a5,a0
 164:	1602                	sll	a2,a2,0x20
 166:	9201                	srl	a2,a2,0x20
 168:	00a60733          	add	a4,a2,a0
 16c:	00b78023          	sb	a1,0(a5)
 170:	0785                	add	a5,a5,1
 172:	fee79de3          	bne	a5,a4,16c <memset+0x12>
 176:	6422                	ld	s0,8(sp)
 178:	0141                	add	sp,sp,16
 17a:	8082                	ret

000000000000017c <strchr>:
 17c:	1141                	add	sp,sp,-16
 17e:	e422                	sd	s0,8(sp)
 180:	0800                	add	s0,sp,16
 182:	00054783          	lbu	a5,0(a0)
 186:	cb99                	beqz	a5,19c <strchr+0x20>
 188:	00f58763          	beq	a1,a5,196 <strchr+0x1a>
 18c:	0505                	add	a0,a0,1
 18e:	00054783          	lbu	a5,0(a0)
 192:	fbfd                	bnez	a5,188 <strchr+0xc>
 194:	4501                	li	a0,0
 196:	6422                	ld	s0,8(sp)
 198:	0141                	add	sp,sp,16
 19a:	8082                	ret
 19c:	4501                	li	a0,0
 19e:	bfe5                	j	196 <strchr+0x1a>

00000000000001a0 <gets>:
 1a0:	711d                	add	sp,sp,-96
 1a2:	ec86                	sd	ra,88(sp)
 1a4:	e8a2                	sd	s0,80(sp)
 1a6:	e4a6                	sd	s1,72(sp)
 1a8:	e0ca                	sd	s2,64(sp)
 1aa:	fc4e                	sd	s3,56(sp)
 1ac:	f852                	sd	s4,48(sp)
 1ae:	f456                	sd	s5,40(sp)
 1b0:	f05a                	sd	s6,32(sp)
 1b2:	ec5e                	sd	s7,24(sp)
 1b4:	1080                	add	s0,sp,96
 1b6:	8baa                	mv	s7,a0
 1b8:	8a2e                	mv	s4,a1
 1ba:	892a                	mv	s2,a0
 1bc:	4481                	li	s1,0
 1be:	4aa9                	li	s5,10
 1c0:	4b35                	li	s6,13
 1c2:	89a6                	mv	s3,s1
 1c4:	2485                	addw	s1,s1,1
 1c6:	0344d863          	bge	s1,s4,1f6 <gets+0x56>
 1ca:	4605                	li	a2,1
 1cc:	faf40593          	add	a1,s0,-81
 1d0:	4501                	li	a0,0
 1d2:	00000097          	auipc	ra,0x0
 1d6:	19a080e7          	jalr	410(ra) # 36c <read>
 1da:	00a05e63          	blez	a0,1f6 <gets+0x56>
 1de:	faf44783          	lbu	a5,-81(s0)
 1e2:	00f90023          	sb	a5,0(s2)
 1e6:	01578763          	beq	a5,s5,1f4 <gets+0x54>
 1ea:	0905                	add	s2,s2,1
 1ec:	fd679be3          	bne	a5,s6,1c2 <gets+0x22>
 1f0:	89a6                	mv	s3,s1
 1f2:	a011                	j	1f6 <gets+0x56>
 1f4:	89a6                	mv	s3,s1
 1f6:	99de                	add	s3,s3,s7
 1f8:	00098023          	sb	zero,0(s3)
 1fc:	855e                	mv	a0,s7
 1fe:	60e6                	ld	ra,88(sp)
 200:	6446                	ld	s0,80(sp)
 202:	64a6                	ld	s1,72(sp)
 204:	6906                	ld	s2,64(sp)
 206:	79e2                	ld	s3,56(sp)
 208:	7a42                	ld	s4,48(sp)
 20a:	7aa2                	ld	s5,40(sp)
 20c:	7b02                	ld	s6,32(sp)
 20e:	6be2                	ld	s7,24(sp)
 210:	6125                	add	sp,sp,96
 212:	8082                	ret

0000000000000214 <stat>:
 214:	1101                	add	sp,sp,-32
 216:	ec06                	sd	ra,24(sp)
 218:	e822                	sd	s0,16(sp)
 21a:	e04a                	sd	s2,0(sp)
 21c:	1000                	add	s0,sp,32
 21e:	892e                	mv	s2,a1
 220:	4581                	li	a1,0
 222:	00000097          	auipc	ra,0x0
 226:	172080e7          	jalr	370(ra) # 394 <open>
 22a:	02054663          	bltz	a0,256 <stat+0x42>
 22e:	e426                	sd	s1,8(sp)
 230:	84aa                	mv	s1,a0
 232:	85ca                	mv	a1,s2
 234:	00000097          	auipc	ra,0x0
 238:	178080e7          	jalr	376(ra) # 3ac <fstat>
 23c:	892a                	mv	s2,a0
 23e:	8526                	mv	a0,s1
 240:	00000097          	auipc	ra,0x0
 244:	13c080e7          	jalr	316(ra) # 37c <close>
 248:	64a2                	ld	s1,8(sp)
 24a:	854a                	mv	a0,s2
 24c:	60e2                	ld	ra,24(sp)
 24e:	6442                	ld	s0,16(sp)
 250:	6902                	ld	s2,0(sp)
 252:	6105                	add	sp,sp,32
 254:	8082                	ret
 256:	597d                	li	s2,-1
 258:	bfcd                	j	24a <stat+0x36>

000000000000025a <atoi>:
 25a:	1141                	add	sp,sp,-16
 25c:	e422                	sd	s0,8(sp)
 25e:	0800                	add	s0,sp,16
 260:	00054683          	lbu	a3,0(a0)
 264:	fd06879b          	addw	a5,a3,-48
 268:	0ff7f793          	zext.b	a5,a5
 26c:	4625                	li	a2,9
 26e:	02f66863          	bltu	a2,a5,29e <atoi+0x44>
 272:	872a                	mv	a4,a0
 274:	4501                	li	a0,0
 276:	0705                	add	a4,a4,1
 278:	0025179b          	sllw	a5,a0,0x2
 27c:	9fa9                	addw	a5,a5,a0
 27e:	0017979b          	sllw	a5,a5,0x1
 282:	9fb5                	addw	a5,a5,a3
 284:	fd07851b          	addw	a0,a5,-48
 288:	00074683          	lbu	a3,0(a4)
 28c:	fd06879b          	addw	a5,a3,-48
 290:	0ff7f793          	zext.b	a5,a5
 294:	fef671e3          	bgeu	a2,a5,276 <atoi+0x1c>
 298:	6422                	ld	s0,8(sp)
 29a:	0141                	add	sp,sp,16
 29c:	8082                	ret
 29e:	4501                	li	a0,0
 2a0:	bfe5                	j	298 <atoi+0x3e>

00000000000002a2 <memmove>:
 2a2:	1141                	add	sp,sp,-16
 2a4:	e422                	sd	s0,8(sp)
 2a6:	0800                	add	s0,sp,16
 2a8:	02b57463          	bgeu	a0,a1,2d0 <memmove+0x2e>
 2ac:	00c05f63          	blez	a2,2ca <memmove+0x28>
 2b0:	1602                	sll	a2,a2,0x20
 2b2:	9201                	srl	a2,a2,0x20
 2b4:	00c507b3          	add	a5,a0,a2
 2b8:	872a                	mv	a4,a0
 2ba:	0585                	add	a1,a1,1
 2bc:	0705                	add	a4,a4,1
 2be:	fff5c683          	lbu	a3,-1(a1)
 2c2:	fed70fa3          	sb	a3,-1(a4)
 2c6:	fef71ae3          	bne	a4,a5,2ba <memmove+0x18>
 2ca:	6422                	ld	s0,8(sp)
 2cc:	0141                	add	sp,sp,16
 2ce:	8082                	ret
 2d0:	00c50733          	add	a4,a0,a2
 2d4:	95b2                	add	a1,a1,a2
 2d6:	fec05ae3          	blez	a2,2ca <memmove+0x28>
 2da:	fff6079b          	addw	a5,a2,-1
 2de:	1782                	sll	a5,a5,0x20
 2e0:	9381                	srl	a5,a5,0x20
 2e2:	fff7c793          	not	a5,a5
 2e6:	97ba                	add	a5,a5,a4
 2e8:	15fd                	add	a1,a1,-1
 2ea:	177d                	add	a4,a4,-1
 2ec:	0005c683          	lbu	a3,0(a1)
 2f0:	00d70023          	sb	a3,0(a4)
 2f4:	fee79ae3          	bne	a5,a4,2e8 <memmove+0x46>
 2f8:	bfc9                	j	2ca <memmove+0x28>

00000000000002fa <memcmp>:
 2fa:	1141                	add	sp,sp,-16
 2fc:	e422                	sd	s0,8(sp)
 2fe:	0800                	add	s0,sp,16
 300:	ca05                	beqz	a2,330 <memcmp+0x36>
 302:	fff6069b          	addw	a3,a2,-1
 306:	1682                	sll	a3,a3,0x20
 308:	9281                	srl	a3,a3,0x20
 30a:	0685                	add	a3,a3,1
 30c:	96aa                	add	a3,a3,a0
 30e:	00054783          	lbu	a5,0(a0)
 312:	0005c703          	lbu	a4,0(a1)
 316:	00e79863          	bne	a5,a4,326 <memcmp+0x2c>
 31a:	0505                	add	a0,a0,1
 31c:	0585                	add	a1,a1,1
 31e:	fed518e3          	bne	a0,a3,30e <memcmp+0x14>
 322:	4501                	li	a0,0
 324:	a019                	j	32a <memcmp+0x30>
 326:	40e7853b          	subw	a0,a5,a4
 32a:	6422                	ld	s0,8(sp)
 32c:	0141                	add	sp,sp,16
 32e:	8082                	ret
 330:	4501                	li	a0,0
 332:	bfe5                	j	32a <memcmp+0x30>

0000000000000334 <memcpy>:
 334:	1141                	add	sp,sp,-16
 336:	e406                	sd	ra,8(sp)
 338:	e022                	sd	s0,0(sp)
 33a:	0800                	add	s0,sp,16
 33c:	00000097          	auipc	ra,0x0
 340:	f66080e7          	jalr	-154(ra) # 2a2 <memmove>
 344:	60a2                	ld	ra,8(sp)
 346:	6402                	ld	s0,0(sp)
 348:	0141                	add	sp,sp,16
 34a:	8082                	ret

000000000000034c <fork>:
 34c:	4885                	li	a7,1
 34e:	00000073          	ecall
 352:	8082                	ret

0000000000000354 <exit>:
 354:	4889                	li	a7,2
 356:	00000073          	ecall
 35a:	8082                	ret

000000000000035c <wait>:
 35c:	488d                	li	a7,3
 35e:	00000073          	ecall
 362:	8082                	ret

0000000000000364 <pipe>:
 364:	4891                	li	a7,4
 366:	00000073          	ecall
 36a:	8082                	ret

000000000000036c <read>:
 36c:	4895                	li	a7,5
 36e:	00000073          	ecall
 372:	8082                	ret

0000000000000374 <write>:
 374:	48c1                	li	a7,16
 376:	00000073          	ecall
 37a:	8082                	ret

000000000000037c <close>:
 37c:	48d5                	li	a7,21
 37e:	00000073          	ecall
 382:	8082                	ret

0000000000000384 <kill>:
 384:	4899                	li	a7,6
 386:	00000073          	ecall
 38a:	8082                	ret

000000000000038c <exec>:
 38c:	489d                	li	a7,7
 38e:	00000073          	ecall
 392:	8082                	ret

0000000000000394 <open>:
 394:	48bd                	li	a7,15
 396:	00000073          	ecall
 39a:	8082                	ret

000000000000039c <mknod>:
 39c:	48c5                	li	a7,17
 39e:	00000073          	ecall
 3a2:	8082                	ret

00000000000003a4 <unlink>:
 3a4:	48c9                	li	a7,18
 3a6:	00000073          	ecall
 3aa:	8082                	ret

00000000000003ac <fstat>:
 3ac:	48a1                	li	a7,8
 3ae:	00000073          	ecall
 3b2:	8082                	ret

00000000000003b4 <link>:
 3b4:	48cd                	li	a7,19
 3b6:	00000073          	ecall
 3ba:	8082                	ret

00000000000003bc <mkdir>:
 3bc:	48d1                	li	a7,20
 3be:	00000073          	ecall
 3c2:	8082                	ret

00000000000003c4 <chdir>:
 3c4:	48a5                	li	a7,9
 3c6:	00000073          	ecall
 3ca:	8082                	ret

00000000000003cc <dup>:
 3cc:	48a9                	li	a7,10
 3ce:	00000073          	ecall
 3d2:	8082                	ret

00000000000003d4 <getpid>:
 3d4:	48ad                	li	a7,11
 3d6:	00000073          	ecall
 3da:	8082                	ret

00000000000003dc <sbrk>:
 3dc:	48b1                	li	a7,12
 3de:	00000073          	ecall
 3e2:	8082                	ret

00000000000003e4 <sleep>:
 3e4:	48b5                	li	a7,13
 3e6:	00000073          	ecall
 3ea:	8082                	ret

00000000000003ec <uptime>:
 3ec:	48b9                	li	a7,14
 3ee:	00000073          	ecall
 3f2:	8082                	ret

00000000000003f4 <waitx>:
 3f4:	48d9                	li	a7,22
 3f6:	00000073          	ecall
 3fa:	8082                	ret

00000000000003fc <getSysCount>:
 3fc:	48dd                	li	a7,23
 3fe:	00000073          	ecall
 402:	8082                	ret

0000000000000404 <sigalarm>:
 404:	48e1                	li	a7,24
 406:	00000073          	ecall
 40a:	8082                	ret

000000000000040c <sigreturn>:
 40c:	48e5                	li	a7,25
 40e:	00000073          	ecall
 412:	8082                	ret

0000000000000414 <putc>:
 414:	1101                	add	sp,sp,-32
 416:	ec06                	sd	ra,24(sp)
 418:	e822                	sd	s0,16(sp)
 41a:	1000                	add	s0,sp,32
 41c:	feb407a3          	sb	a1,-17(s0)
 420:	4605                	li	a2,1
 422:	fef40593          	add	a1,s0,-17
 426:	00000097          	auipc	ra,0x0
 42a:	f4e080e7          	jalr	-178(ra) # 374 <write>
 42e:	60e2                	ld	ra,24(sp)
 430:	6442                	ld	s0,16(sp)
 432:	6105                	add	sp,sp,32
 434:	8082                	ret

0000000000000436 <printint>:
 436:	7139                	add	sp,sp,-64
 438:	fc06                	sd	ra,56(sp)
 43a:	f822                	sd	s0,48(sp)
 43c:	f426                	sd	s1,40(sp)
 43e:	0080                	add	s0,sp,64
 440:	84aa                	mv	s1,a0
 442:	c299                	beqz	a3,448 <printint+0x12>
 444:	0805cb63          	bltz	a1,4da <printint+0xa4>
 448:	2581                	sext.w	a1,a1
 44a:	4881                	li	a7,0
 44c:	fc040693          	add	a3,s0,-64
 450:	4701                	li	a4,0
 452:	2601                	sext.w	a2,a2
 454:	00000517          	auipc	a0,0x0
 458:	4cc50513          	add	a0,a0,1228 # 920 <digits>
 45c:	883a                	mv	a6,a4
 45e:	2705                	addw	a4,a4,1
 460:	02c5f7bb          	remuw	a5,a1,a2
 464:	1782                	sll	a5,a5,0x20
 466:	9381                	srl	a5,a5,0x20
 468:	97aa                	add	a5,a5,a0
 46a:	0007c783          	lbu	a5,0(a5)
 46e:	00f68023          	sb	a5,0(a3)
 472:	0005879b          	sext.w	a5,a1
 476:	02c5d5bb          	divuw	a1,a1,a2
 47a:	0685                	add	a3,a3,1
 47c:	fec7f0e3          	bgeu	a5,a2,45c <printint+0x26>
 480:	00088c63          	beqz	a7,498 <printint+0x62>
 484:	fd070793          	add	a5,a4,-48
 488:	00878733          	add	a4,a5,s0
 48c:	02d00793          	li	a5,45
 490:	fef70823          	sb	a5,-16(a4)
 494:	0028071b          	addw	a4,a6,2
 498:	02e05c63          	blez	a4,4d0 <printint+0x9a>
 49c:	f04a                	sd	s2,32(sp)
 49e:	ec4e                	sd	s3,24(sp)
 4a0:	fc040793          	add	a5,s0,-64
 4a4:	00e78933          	add	s2,a5,a4
 4a8:	fff78993          	add	s3,a5,-1
 4ac:	99ba                	add	s3,s3,a4
 4ae:	377d                	addw	a4,a4,-1
 4b0:	1702                	sll	a4,a4,0x20
 4b2:	9301                	srl	a4,a4,0x20
 4b4:	40e989b3          	sub	s3,s3,a4
 4b8:	fff94583          	lbu	a1,-1(s2)
 4bc:	8526                	mv	a0,s1
 4be:	00000097          	auipc	ra,0x0
 4c2:	f56080e7          	jalr	-170(ra) # 414 <putc>
 4c6:	197d                	add	s2,s2,-1
 4c8:	ff3918e3          	bne	s2,s3,4b8 <printint+0x82>
 4cc:	7902                	ld	s2,32(sp)
 4ce:	69e2                	ld	s3,24(sp)
 4d0:	70e2                	ld	ra,56(sp)
 4d2:	7442                	ld	s0,48(sp)
 4d4:	74a2                	ld	s1,40(sp)
 4d6:	6121                	add	sp,sp,64
 4d8:	8082                	ret
 4da:	40b005bb          	negw	a1,a1
 4de:	4885                	li	a7,1
 4e0:	b7b5                	j	44c <printint+0x16>

00000000000004e2 <vprintf>:
 4e2:	715d                	add	sp,sp,-80
 4e4:	e486                	sd	ra,72(sp)
 4e6:	e0a2                	sd	s0,64(sp)
 4e8:	f84a                	sd	s2,48(sp)
 4ea:	0880                	add	s0,sp,80
 4ec:	0005c903          	lbu	s2,0(a1)
 4f0:	1a090a63          	beqz	s2,6a4 <vprintf+0x1c2>
 4f4:	fc26                	sd	s1,56(sp)
 4f6:	f44e                	sd	s3,40(sp)
 4f8:	f052                	sd	s4,32(sp)
 4fa:	ec56                	sd	s5,24(sp)
 4fc:	e85a                	sd	s6,16(sp)
 4fe:	e45e                	sd	s7,8(sp)
 500:	8aaa                	mv	s5,a0
 502:	8bb2                	mv	s7,a2
 504:	00158493          	add	s1,a1,1
 508:	4981                	li	s3,0
 50a:	02500a13          	li	s4,37
 50e:	4b55                	li	s6,21
 510:	a839                	j	52e <vprintf+0x4c>
 512:	85ca                	mv	a1,s2
 514:	8556                	mv	a0,s5
 516:	00000097          	auipc	ra,0x0
 51a:	efe080e7          	jalr	-258(ra) # 414 <putc>
 51e:	a019                	j	524 <vprintf+0x42>
 520:	01498d63          	beq	s3,s4,53a <vprintf+0x58>
 524:	0485                	add	s1,s1,1
 526:	fff4c903          	lbu	s2,-1(s1)
 52a:	16090763          	beqz	s2,698 <vprintf+0x1b6>
 52e:	fe0999e3          	bnez	s3,520 <vprintf+0x3e>
 532:	ff4910e3          	bne	s2,s4,512 <vprintf+0x30>
 536:	89d2                	mv	s3,s4
 538:	b7f5                	j	524 <vprintf+0x42>
 53a:	13490463          	beq	s2,s4,662 <vprintf+0x180>
 53e:	f9d9079b          	addw	a5,s2,-99
 542:	0ff7f793          	zext.b	a5,a5
 546:	12fb6763          	bltu	s6,a5,674 <vprintf+0x192>
 54a:	f9d9079b          	addw	a5,s2,-99
 54e:	0ff7f713          	zext.b	a4,a5
 552:	12eb6163          	bltu	s6,a4,674 <vprintf+0x192>
 556:	00271793          	sll	a5,a4,0x2
 55a:	00000717          	auipc	a4,0x0
 55e:	36e70713          	add	a4,a4,878 # 8c8 <malloc+0x134>
 562:	97ba                	add	a5,a5,a4
 564:	439c                	lw	a5,0(a5)
 566:	97ba                	add	a5,a5,a4
 568:	8782                	jr	a5
 56a:	008b8913          	add	s2,s7,8
 56e:	4685                	li	a3,1
 570:	4629                	li	a2,10
 572:	000ba583          	lw	a1,0(s7)
 576:	8556                	mv	a0,s5
 578:	00000097          	auipc	ra,0x0
 57c:	ebe080e7          	jalr	-322(ra) # 436 <printint>
 580:	8bca                	mv	s7,s2
 582:	4981                	li	s3,0
 584:	b745                	j	524 <vprintf+0x42>
 586:	008b8913          	add	s2,s7,8
 58a:	4681                	li	a3,0
 58c:	4629                	li	a2,10
 58e:	000ba583          	lw	a1,0(s7)
 592:	8556                	mv	a0,s5
 594:	00000097          	auipc	ra,0x0
 598:	ea2080e7          	jalr	-350(ra) # 436 <printint>
 59c:	8bca                	mv	s7,s2
 59e:	4981                	li	s3,0
 5a0:	b751                	j	524 <vprintf+0x42>
 5a2:	008b8913          	add	s2,s7,8
 5a6:	4681                	li	a3,0
 5a8:	4641                	li	a2,16
 5aa:	000ba583          	lw	a1,0(s7)
 5ae:	8556                	mv	a0,s5
 5b0:	00000097          	auipc	ra,0x0
 5b4:	e86080e7          	jalr	-378(ra) # 436 <printint>
 5b8:	8bca                	mv	s7,s2
 5ba:	4981                	li	s3,0
 5bc:	b7a5                	j	524 <vprintf+0x42>
 5be:	e062                	sd	s8,0(sp)
 5c0:	008b8c13          	add	s8,s7,8
 5c4:	000bb983          	ld	s3,0(s7)
 5c8:	03000593          	li	a1,48
 5cc:	8556                	mv	a0,s5
 5ce:	00000097          	auipc	ra,0x0
 5d2:	e46080e7          	jalr	-442(ra) # 414 <putc>
 5d6:	07800593          	li	a1,120
 5da:	8556                	mv	a0,s5
 5dc:	00000097          	auipc	ra,0x0
 5e0:	e38080e7          	jalr	-456(ra) # 414 <putc>
 5e4:	4941                	li	s2,16
 5e6:	00000b97          	auipc	s7,0x0
 5ea:	33ab8b93          	add	s7,s7,826 # 920 <digits>
 5ee:	03c9d793          	srl	a5,s3,0x3c
 5f2:	97de                	add	a5,a5,s7
 5f4:	0007c583          	lbu	a1,0(a5)
 5f8:	8556                	mv	a0,s5
 5fa:	00000097          	auipc	ra,0x0
 5fe:	e1a080e7          	jalr	-486(ra) # 414 <putc>
 602:	0992                	sll	s3,s3,0x4
 604:	397d                	addw	s2,s2,-1
 606:	fe0914e3          	bnez	s2,5ee <vprintf+0x10c>
 60a:	8be2                	mv	s7,s8
 60c:	4981                	li	s3,0
 60e:	6c02                	ld	s8,0(sp)
 610:	bf11                	j	524 <vprintf+0x42>
 612:	008b8993          	add	s3,s7,8
 616:	000bb903          	ld	s2,0(s7)
 61a:	02090163          	beqz	s2,63c <vprintf+0x15a>
 61e:	00094583          	lbu	a1,0(s2)
 622:	c9a5                	beqz	a1,692 <vprintf+0x1b0>
 624:	8556                	mv	a0,s5
 626:	00000097          	auipc	ra,0x0
 62a:	dee080e7          	jalr	-530(ra) # 414 <putc>
 62e:	0905                	add	s2,s2,1
 630:	00094583          	lbu	a1,0(s2)
 634:	f9e5                	bnez	a1,624 <vprintf+0x142>
 636:	8bce                	mv	s7,s3
 638:	4981                	li	s3,0
 63a:	b5ed                	j	524 <vprintf+0x42>
 63c:	00000917          	auipc	s2,0x0
 640:	28490913          	add	s2,s2,644 # 8c0 <malloc+0x12c>
 644:	02800593          	li	a1,40
 648:	bff1                	j	624 <vprintf+0x142>
 64a:	008b8913          	add	s2,s7,8
 64e:	000bc583          	lbu	a1,0(s7)
 652:	8556                	mv	a0,s5
 654:	00000097          	auipc	ra,0x0
 658:	dc0080e7          	jalr	-576(ra) # 414 <putc>
 65c:	8bca                	mv	s7,s2
 65e:	4981                	li	s3,0
 660:	b5d1                	j	524 <vprintf+0x42>
 662:	02500593          	li	a1,37
 666:	8556                	mv	a0,s5
 668:	00000097          	auipc	ra,0x0
 66c:	dac080e7          	jalr	-596(ra) # 414 <putc>
 670:	4981                	li	s3,0
 672:	bd4d                	j	524 <vprintf+0x42>
 674:	02500593          	li	a1,37
 678:	8556                	mv	a0,s5
 67a:	00000097          	auipc	ra,0x0
 67e:	d9a080e7          	jalr	-614(ra) # 414 <putc>
 682:	85ca                	mv	a1,s2
 684:	8556                	mv	a0,s5
 686:	00000097          	auipc	ra,0x0
 68a:	d8e080e7          	jalr	-626(ra) # 414 <putc>
 68e:	4981                	li	s3,0
 690:	bd51                	j	524 <vprintf+0x42>
 692:	8bce                	mv	s7,s3
 694:	4981                	li	s3,0
 696:	b579                	j	524 <vprintf+0x42>
 698:	74e2                	ld	s1,56(sp)
 69a:	79a2                	ld	s3,40(sp)
 69c:	7a02                	ld	s4,32(sp)
 69e:	6ae2                	ld	s5,24(sp)
 6a0:	6b42                	ld	s6,16(sp)
 6a2:	6ba2                	ld	s7,8(sp)
 6a4:	60a6                	ld	ra,72(sp)
 6a6:	6406                	ld	s0,64(sp)
 6a8:	7942                	ld	s2,48(sp)
 6aa:	6161                	add	sp,sp,80
 6ac:	8082                	ret

00000000000006ae <fprintf>:
 6ae:	715d                	add	sp,sp,-80
 6b0:	ec06                	sd	ra,24(sp)
 6b2:	e822                	sd	s0,16(sp)
 6b4:	1000                	add	s0,sp,32
 6b6:	e010                	sd	a2,0(s0)
 6b8:	e414                	sd	a3,8(s0)
 6ba:	e818                	sd	a4,16(s0)
 6bc:	ec1c                	sd	a5,24(s0)
 6be:	03043023          	sd	a6,32(s0)
 6c2:	03143423          	sd	a7,40(s0)
 6c6:	fe843423          	sd	s0,-24(s0)
 6ca:	8622                	mv	a2,s0
 6cc:	00000097          	auipc	ra,0x0
 6d0:	e16080e7          	jalr	-490(ra) # 4e2 <vprintf>
 6d4:	60e2                	ld	ra,24(sp)
 6d6:	6442                	ld	s0,16(sp)
 6d8:	6161                	add	sp,sp,80
 6da:	8082                	ret

00000000000006dc <printf>:
 6dc:	711d                	add	sp,sp,-96
 6de:	ec06                	sd	ra,24(sp)
 6e0:	e822                	sd	s0,16(sp)
 6e2:	1000                	add	s0,sp,32
 6e4:	e40c                	sd	a1,8(s0)
 6e6:	e810                	sd	a2,16(s0)
 6e8:	ec14                	sd	a3,24(s0)
 6ea:	f018                	sd	a4,32(s0)
 6ec:	f41c                	sd	a5,40(s0)
 6ee:	03043823          	sd	a6,48(s0)
 6f2:	03143c23          	sd	a7,56(s0)
 6f6:	00840613          	add	a2,s0,8
 6fa:	fec43423          	sd	a2,-24(s0)
 6fe:	85aa                	mv	a1,a0
 700:	4505                	li	a0,1
 702:	00000097          	auipc	ra,0x0
 706:	de0080e7          	jalr	-544(ra) # 4e2 <vprintf>
 70a:	60e2                	ld	ra,24(sp)
 70c:	6442                	ld	s0,16(sp)
 70e:	6125                	add	sp,sp,96
 710:	8082                	ret

0000000000000712 <free>:
 712:	1141                	add	sp,sp,-16
 714:	e422                	sd	s0,8(sp)
 716:	0800                	add	s0,sp,16
 718:	ff050693          	add	a3,a0,-16
 71c:	00001797          	auipc	a5,0x1
 720:	cc47b783          	ld	a5,-828(a5) # 13e0 <freep>
 724:	a02d                	j	74e <free+0x3c>
 726:	4618                	lw	a4,8(a2)
 728:	9f2d                	addw	a4,a4,a1
 72a:	fee52c23          	sw	a4,-8(a0)
 72e:	6398                	ld	a4,0(a5)
 730:	6310                	ld	a2,0(a4)
 732:	a83d                	j	770 <free+0x5e>
 734:	ff852703          	lw	a4,-8(a0)
 738:	9f31                	addw	a4,a4,a2
 73a:	c798                	sw	a4,8(a5)
 73c:	ff053683          	ld	a3,-16(a0)
 740:	a091                	j	784 <free+0x72>
 742:	6398                	ld	a4,0(a5)
 744:	00e7e463          	bltu	a5,a4,74c <free+0x3a>
 748:	00e6ea63          	bltu	a3,a4,75c <free+0x4a>
 74c:	87ba                	mv	a5,a4
 74e:	fed7fae3          	bgeu	a5,a3,742 <free+0x30>
 752:	6398                	ld	a4,0(a5)
 754:	00e6e463          	bltu	a3,a4,75c <free+0x4a>
 758:	fee7eae3          	bltu	a5,a4,74c <free+0x3a>
 75c:	ff852583          	lw	a1,-8(a0)
 760:	6390                	ld	a2,0(a5)
 762:	02059813          	sll	a6,a1,0x20
 766:	01c85713          	srl	a4,a6,0x1c
 76a:	9736                	add	a4,a4,a3
 76c:	fae60de3          	beq	a2,a4,726 <free+0x14>
 770:	fec53823          	sd	a2,-16(a0)
 774:	4790                	lw	a2,8(a5)
 776:	02061593          	sll	a1,a2,0x20
 77a:	01c5d713          	srl	a4,a1,0x1c
 77e:	973e                	add	a4,a4,a5
 780:	fae68ae3          	beq	a3,a4,734 <free+0x22>
 784:	e394                	sd	a3,0(a5)
 786:	00001717          	auipc	a4,0x1
 78a:	c4f73d23          	sd	a5,-934(a4) # 13e0 <freep>
 78e:	6422                	ld	s0,8(sp)
 790:	0141                	add	sp,sp,16
 792:	8082                	ret

0000000000000794 <malloc>:
 794:	7139                	add	sp,sp,-64
 796:	fc06                	sd	ra,56(sp)
 798:	f822                	sd	s0,48(sp)
 79a:	f426                	sd	s1,40(sp)
 79c:	ec4e                	sd	s3,24(sp)
 79e:	0080                	add	s0,sp,64
 7a0:	02051493          	sll	s1,a0,0x20
 7a4:	9081                	srl	s1,s1,0x20
 7a6:	04bd                	add	s1,s1,15
 7a8:	8091                	srl	s1,s1,0x4
 7aa:	0014899b          	addw	s3,s1,1
 7ae:	0485                	add	s1,s1,1
 7b0:	00001517          	auipc	a0,0x1
 7b4:	c3053503          	ld	a0,-976(a0) # 13e0 <freep>
 7b8:	c915                	beqz	a0,7ec <malloc+0x58>
 7ba:	611c                	ld	a5,0(a0)
 7bc:	4798                	lw	a4,8(a5)
 7be:	08977e63          	bgeu	a4,s1,85a <malloc+0xc6>
 7c2:	f04a                	sd	s2,32(sp)
 7c4:	e852                	sd	s4,16(sp)
 7c6:	e456                	sd	s5,8(sp)
 7c8:	e05a                	sd	s6,0(sp)
 7ca:	8a4e                	mv	s4,s3
 7cc:	0009871b          	sext.w	a4,s3
 7d0:	6685                	lui	a3,0x1
 7d2:	00d77363          	bgeu	a4,a3,7d8 <malloc+0x44>
 7d6:	6a05                	lui	s4,0x1
 7d8:	000a0b1b          	sext.w	s6,s4
 7dc:	004a1a1b          	sllw	s4,s4,0x4
 7e0:	00001917          	auipc	s2,0x1
 7e4:	c0090913          	add	s2,s2,-1024 # 13e0 <freep>
 7e8:	5afd                	li	s5,-1
 7ea:	a091                	j	82e <malloc+0x9a>
 7ec:	f04a                	sd	s2,32(sp)
 7ee:	e852                	sd	s4,16(sp)
 7f0:	e456                	sd	s5,8(sp)
 7f2:	e05a                	sd	s6,0(sp)
 7f4:	00001797          	auipc	a5,0x1
 7f8:	bfc78793          	add	a5,a5,-1028 # 13f0 <base>
 7fc:	00001717          	auipc	a4,0x1
 800:	bef73223          	sd	a5,-1052(a4) # 13e0 <freep>
 804:	e39c                	sd	a5,0(a5)
 806:	0007a423          	sw	zero,8(a5)
 80a:	b7c1                	j	7ca <malloc+0x36>
 80c:	6398                	ld	a4,0(a5)
 80e:	e118                	sd	a4,0(a0)
 810:	a08d                	j	872 <malloc+0xde>
 812:	01652423          	sw	s6,8(a0)
 816:	0541                	add	a0,a0,16
 818:	00000097          	auipc	ra,0x0
 81c:	efa080e7          	jalr	-262(ra) # 712 <free>
 820:	00093503          	ld	a0,0(s2)
 824:	c13d                	beqz	a0,88a <malloc+0xf6>
 826:	611c                	ld	a5,0(a0)
 828:	4798                	lw	a4,8(a5)
 82a:	02977463          	bgeu	a4,s1,852 <malloc+0xbe>
 82e:	00093703          	ld	a4,0(s2)
 832:	853e                	mv	a0,a5
 834:	fef719e3          	bne	a4,a5,826 <malloc+0x92>
 838:	8552                	mv	a0,s4
 83a:	00000097          	auipc	ra,0x0
 83e:	ba2080e7          	jalr	-1118(ra) # 3dc <sbrk>
 842:	fd5518e3          	bne	a0,s5,812 <malloc+0x7e>
 846:	4501                	li	a0,0
 848:	7902                	ld	s2,32(sp)
 84a:	6a42                	ld	s4,16(sp)
 84c:	6aa2                	ld	s5,8(sp)
 84e:	6b02                	ld	s6,0(sp)
 850:	a03d                	j	87e <malloc+0xea>
 852:	7902                	ld	s2,32(sp)
 854:	6a42                	ld	s4,16(sp)
 856:	6aa2                	ld	s5,8(sp)
 858:	6b02                	ld	s6,0(sp)
 85a:	fae489e3          	beq	s1,a4,80c <malloc+0x78>
 85e:	4137073b          	subw	a4,a4,s3
 862:	c798                	sw	a4,8(a5)
 864:	02071693          	sll	a3,a4,0x20
 868:	01c6d713          	srl	a4,a3,0x1c
 86c:	97ba                	add	a5,a5,a4
 86e:	0137a423          	sw	s3,8(a5)
 872:	00001717          	auipc	a4,0x1
 876:	b6a73723          	sd	a0,-1170(a4) # 13e0 <freep>
 87a:	01078513          	add	a0,a5,16
 87e:	70e2                	ld	ra,56(sp)
 880:	7442                	ld	s0,48(sp)
 882:	74a2                	ld	s1,40(sp)
 884:	69e2                	ld	s3,24(sp)
 886:	6121                	add	sp,sp,64
 888:	8082                	ret
 88a:	7902                	ld	s2,32(sp)
 88c:	6a42                	ld	s4,16(sp)
 88e:	6aa2                	ld	s5,8(sp)
 890:	6b02                	ld	s6,0(sp)
 892:	b7f5                	j	87e <malloc+0xea>
