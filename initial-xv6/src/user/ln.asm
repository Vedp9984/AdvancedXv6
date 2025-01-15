
user/_ln:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	add	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	1000                	add	s0,sp,32
   8:	478d                	li	a5,3
   a:	02f50163          	beq	a0,a5,2c <main+0x2c>
   e:	e426                	sd	s1,8(sp)
  10:	00001597          	auipc	a1,0x1
  14:	82058593          	add	a1,a1,-2016 # 830 <malloc+0x108>
  18:	4509                	li	a0,2
  1a:	00000097          	auipc	ra,0x0
  1e:	628080e7          	jalr	1576(ra) # 642 <fprintf>
  22:	4505                	li	a0,1
  24:	00000097          	auipc	ra,0x0
  28:	2c4080e7          	jalr	708(ra) # 2e8 <exit>
  2c:	e426                	sd	s1,8(sp)
  2e:	84ae                	mv	s1,a1
  30:	698c                	ld	a1,16(a1)
  32:	6488                	ld	a0,8(s1)
  34:	00000097          	auipc	ra,0x0
  38:	314080e7          	jalr	788(ra) # 348 <link>
  3c:	00054763          	bltz	a0,4a <main+0x4a>
  40:	4501                	li	a0,0
  42:	00000097          	auipc	ra,0x0
  46:	2a6080e7          	jalr	678(ra) # 2e8 <exit>
  4a:	6894                	ld	a3,16(s1)
  4c:	6490                	ld	a2,8(s1)
  4e:	00000597          	auipc	a1,0x0
  52:	7fa58593          	add	a1,a1,2042 # 848 <malloc+0x120>
  56:	4509                	li	a0,2
  58:	00000097          	auipc	ra,0x0
  5c:	5ea080e7          	jalr	1514(ra) # 642 <fprintf>
  60:	b7c5                	j	40 <main+0x40>

0000000000000062 <_main>:
  62:	1141                	add	sp,sp,-16
  64:	e406                	sd	ra,8(sp)
  66:	e022                	sd	s0,0(sp)
  68:	0800                	add	s0,sp,16
  6a:	00000097          	auipc	ra,0x0
  6e:	f96080e7          	jalr	-106(ra) # 0 <main>
  72:	4501                	li	a0,0
  74:	00000097          	auipc	ra,0x0
  78:	274080e7          	jalr	628(ra) # 2e8 <exit>

000000000000007c <strcpy>:
  7c:	1141                	add	sp,sp,-16
  7e:	e422                	sd	s0,8(sp)
  80:	0800                	add	s0,sp,16
  82:	87aa                	mv	a5,a0
  84:	0585                	add	a1,a1,1
  86:	0785                	add	a5,a5,1
  88:	fff5c703          	lbu	a4,-1(a1)
  8c:	fee78fa3          	sb	a4,-1(a5)
  90:	fb75                	bnez	a4,84 <strcpy+0x8>
  92:	6422                	ld	s0,8(sp)
  94:	0141                	add	sp,sp,16
  96:	8082                	ret

0000000000000098 <strcmp>:
  98:	1141                	add	sp,sp,-16
  9a:	e422                	sd	s0,8(sp)
  9c:	0800                	add	s0,sp,16
  9e:	00054783          	lbu	a5,0(a0)
  a2:	cb91                	beqz	a5,b6 <strcmp+0x1e>
  a4:	0005c703          	lbu	a4,0(a1)
  a8:	00f71763          	bne	a4,a5,b6 <strcmp+0x1e>
  ac:	0505                	add	a0,a0,1
  ae:	0585                	add	a1,a1,1
  b0:	00054783          	lbu	a5,0(a0)
  b4:	fbe5                	bnez	a5,a4 <strcmp+0xc>
  b6:	0005c503          	lbu	a0,0(a1)
  ba:	40a7853b          	subw	a0,a5,a0
  be:	6422                	ld	s0,8(sp)
  c0:	0141                	add	sp,sp,16
  c2:	8082                	ret

00000000000000c4 <strlen>:
  c4:	1141                	add	sp,sp,-16
  c6:	e422                	sd	s0,8(sp)
  c8:	0800                	add	s0,sp,16
  ca:	00054783          	lbu	a5,0(a0)
  ce:	cf91                	beqz	a5,ea <strlen+0x26>
  d0:	0505                	add	a0,a0,1
  d2:	87aa                	mv	a5,a0
  d4:	86be                	mv	a3,a5
  d6:	0785                	add	a5,a5,1
  d8:	fff7c703          	lbu	a4,-1(a5)
  dc:	ff65                	bnez	a4,d4 <strlen+0x10>
  de:	40a6853b          	subw	a0,a3,a0
  e2:	2505                	addw	a0,a0,1
  e4:	6422                	ld	s0,8(sp)
  e6:	0141                	add	sp,sp,16
  e8:	8082                	ret
  ea:	4501                	li	a0,0
  ec:	bfe5                	j	e4 <strlen+0x20>

00000000000000ee <memset>:
  ee:	1141                	add	sp,sp,-16
  f0:	e422                	sd	s0,8(sp)
  f2:	0800                	add	s0,sp,16
  f4:	ca19                	beqz	a2,10a <memset+0x1c>
  f6:	87aa                	mv	a5,a0
  f8:	1602                	sll	a2,a2,0x20
  fa:	9201                	srl	a2,a2,0x20
  fc:	00a60733          	add	a4,a2,a0
 100:	00b78023          	sb	a1,0(a5)
 104:	0785                	add	a5,a5,1
 106:	fee79de3          	bne	a5,a4,100 <memset+0x12>
 10a:	6422                	ld	s0,8(sp)
 10c:	0141                	add	sp,sp,16
 10e:	8082                	ret

0000000000000110 <strchr>:
 110:	1141                	add	sp,sp,-16
 112:	e422                	sd	s0,8(sp)
 114:	0800                	add	s0,sp,16
 116:	00054783          	lbu	a5,0(a0)
 11a:	cb99                	beqz	a5,130 <strchr+0x20>
 11c:	00f58763          	beq	a1,a5,12a <strchr+0x1a>
 120:	0505                	add	a0,a0,1
 122:	00054783          	lbu	a5,0(a0)
 126:	fbfd                	bnez	a5,11c <strchr+0xc>
 128:	4501                	li	a0,0
 12a:	6422                	ld	s0,8(sp)
 12c:	0141                	add	sp,sp,16
 12e:	8082                	ret
 130:	4501                	li	a0,0
 132:	bfe5                	j	12a <strchr+0x1a>

0000000000000134 <gets>:
 134:	711d                	add	sp,sp,-96
 136:	ec86                	sd	ra,88(sp)
 138:	e8a2                	sd	s0,80(sp)
 13a:	e4a6                	sd	s1,72(sp)
 13c:	e0ca                	sd	s2,64(sp)
 13e:	fc4e                	sd	s3,56(sp)
 140:	f852                	sd	s4,48(sp)
 142:	f456                	sd	s5,40(sp)
 144:	f05a                	sd	s6,32(sp)
 146:	ec5e                	sd	s7,24(sp)
 148:	1080                	add	s0,sp,96
 14a:	8baa                	mv	s7,a0
 14c:	8a2e                	mv	s4,a1
 14e:	892a                	mv	s2,a0
 150:	4481                	li	s1,0
 152:	4aa9                	li	s5,10
 154:	4b35                	li	s6,13
 156:	89a6                	mv	s3,s1
 158:	2485                	addw	s1,s1,1
 15a:	0344d863          	bge	s1,s4,18a <gets+0x56>
 15e:	4605                	li	a2,1
 160:	faf40593          	add	a1,s0,-81
 164:	4501                	li	a0,0
 166:	00000097          	auipc	ra,0x0
 16a:	19a080e7          	jalr	410(ra) # 300 <read>
 16e:	00a05e63          	blez	a0,18a <gets+0x56>
 172:	faf44783          	lbu	a5,-81(s0)
 176:	00f90023          	sb	a5,0(s2)
 17a:	01578763          	beq	a5,s5,188 <gets+0x54>
 17e:	0905                	add	s2,s2,1
 180:	fd679be3          	bne	a5,s6,156 <gets+0x22>
 184:	89a6                	mv	s3,s1
 186:	a011                	j	18a <gets+0x56>
 188:	89a6                	mv	s3,s1
 18a:	99de                	add	s3,s3,s7
 18c:	00098023          	sb	zero,0(s3)
 190:	855e                	mv	a0,s7
 192:	60e6                	ld	ra,88(sp)
 194:	6446                	ld	s0,80(sp)
 196:	64a6                	ld	s1,72(sp)
 198:	6906                	ld	s2,64(sp)
 19a:	79e2                	ld	s3,56(sp)
 19c:	7a42                	ld	s4,48(sp)
 19e:	7aa2                	ld	s5,40(sp)
 1a0:	7b02                	ld	s6,32(sp)
 1a2:	6be2                	ld	s7,24(sp)
 1a4:	6125                	add	sp,sp,96
 1a6:	8082                	ret

00000000000001a8 <stat>:
 1a8:	1101                	add	sp,sp,-32
 1aa:	ec06                	sd	ra,24(sp)
 1ac:	e822                	sd	s0,16(sp)
 1ae:	e04a                	sd	s2,0(sp)
 1b0:	1000                	add	s0,sp,32
 1b2:	892e                	mv	s2,a1
 1b4:	4581                	li	a1,0
 1b6:	00000097          	auipc	ra,0x0
 1ba:	172080e7          	jalr	370(ra) # 328 <open>
 1be:	02054663          	bltz	a0,1ea <stat+0x42>
 1c2:	e426                	sd	s1,8(sp)
 1c4:	84aa                	mv	s1,a0
 1c6:	85ca                	mv	a1,s2
 1c8:	00000097          	auipc	ra,0x0
 1cc:	178080e7          	jalr	376(ra) # 340 <fstat>
 1d0:	892a                	mv	s2,a0
 1d2:	8526                	mv	a0,s1
 1d4:	00000097          	auipc	ra,0x0
 1d8:	13c080e7          	jalr	316(ra) # 310 <close>
 1dc:	64a2                	ld	s1,8(sp)
 1de:	854a                	mv	a0,s2
 1e0:	60e2                	ld	ra,24(sp)
 1e2:	6442                	ld	s0,16(sp)
 1e4:	6902                	ld	s2,0(sp)
 1e6:	6105                	add	sp,sp,32
 1e8:	8082                	ret
 1ea:	597d                	li	s2,-1
 1ec:	bfcd                	j	1de <stat+0x36>

00000000000001ee <atoi>:
 1ee:	1141                	add	sp,sp,-16
 1f0:	e422                	sd	s0,8(sp)
 1f2:	0800                	add	s0,sp,16
 1f4:	00054683          	lbu	a3,0(a0)
 1f8:	fd06879b          	addw	a5,a3,-48
 1fc:	0ff7f793          	zext.b	a5,a5
 200:	4625                	li	a2,9
 202:	02f66863          	bltu	a2,a5,232 <atoi+0x44>
 206:	872a                	mv	a4,a0
 208:	4501                	li	a0,0
 20a:	0705                	add	a4,a4,1
 20c:	0025179b          	sllw	a5,a0,0x2
 210:	9fa9                	addw	a5,a5,a0
 212:	0017979b          	sllw	a5,a5,0x1
 216:	9fb5                	addw	a5,a5,a3
 218:	fd07851b          	addw	a0,a5,-48
 21c:	00074683          	lbu	a3,0(a4)
 220:	fd06879b          	addw	a5,a3,-48
 224:	0ff7f793          	zext.b	a5,a5
 228:	fef671e3          	bgeu	a2,a5,20a <atoi+0x1c>
 22c:	6422                	ld	s0,8(sp)
 22e:	0141                	add	sp,sp,16
 230:	8082                	ret
 232:	4501                	li	a0,0
 234:	bfe5                	j	22c <atoi+0x3e>

0000000000000236 <memmove>:
 236:	1141                	add	sp,sp,-16
 238:	e422                	sd	s0,8(sp)
 23a:	0800                	add	s0,sp,16
 23c:	02b57463          	bgeu	a0,a1,264 <memmove+0x2e>
 240:	00c05f63          	blez	a2,25e <memmove+0x28>
 244:	1602                	sll	a2,a2,0x20
 246:	9201                	srl	a2,a2,0x20
 248:	00c507b3          	add	a5,a0,a2
 24c:	872a                	mv	a4,a0
 24e:	0585                	add	a1,a1,1
 250:	0705                	add	a4,a4,1
 252:	fff5c683          	lbu	a3,-1(a1)
 256:	fed70fa3          	sb	a3,-1(a4)
 25a:	fef71ae3          	bne	a4,a5,24e <memmove+0x18>
 25e:	6422                	ld	s0,8(sp)
 260:	0141                	add	sp,sp,16
 262:	8082                	ret
 264:	00c50733          	add	a4,a0,a2
 268:	95b2                	add	a1,a1,a2
 26a:	fec05ae3          	blez	a2,25e <memmove+0x28>
 26e:	fff6079b          	addw	a5,a2,-1
 272:	1782                	sll	a5,a5,0x20
 274:	9381                	srl	a5,a5,0x20
 276:	fff7c793          	not	a5,a5
 27a:	97ba                	add	a5,a5,a4
 27c:	15fd                	add	a1,a1,-1
 27e:	177d                	add	a4,a4,-1
 280:	0005c683          	lbu	a3,0(a1)
 284:	00d70023          	sb	a3,0(a4)
 288:	fee79ae3          	bne	a5,a4,27c <memmove+0x46>
 28c:	bfc9                	j	25e <memmove+0x28>

000000000000028e <memcmp>:
 28e:	1141                	add	sp,sp,-16
 290:	e422                	sd	s0,8(sp)
 292:	0800                	add	s0,sp,16
 294:	ca05                	beqz	a2,2c4 <memcmp+0x36>
 296:	fff6069b          	addw	a3,a2,-1
 29a:	1682                	sll	a3,a3,0x20
 29c:	9281                	srl	a3,a3,0x20
 29e:	0685                	add	a3,a3,1
 2a0:	96aa                	add	a3,a3,a0
 2a2:	00054783          	lbu	a5,0(a0)
 2a6:	0005c703          	lbu	a4,0(a1)
 2aa:	00e79863          	bne	a5,a4,2ba <memcmp+0x2c>
 2ae:	0505                	add	a0,a0,1
 2b0:	0585                	add	a1,a1,1
 2b2:	fed518e3          	bne	a0,a3,2a2 <memcmp+0x14>
 2b6:	4501                	li	a0,0
 2b8:	a019                	j	2be <memcmp+0x30>
 2ba:	40e7853b          	subw	a0,a5,a4
 2be:	6422                	ld	s0,8(sp)
 2c0:	0141                	add	sp,sp,16
 2c2:	8082                	ret
 2c4:	4501                	li	a0,0
 2c6:	bfe5                	j	2be <memcmp+0x30>

00000000000002c8 <memcpy>:
 2c8:	1141                	add	sp,sp,-16
 2ca:	e406                	sd	ra,8(sp)
 2cc:	e022                	sd	s0,0(sp)
 2ce:	0800                	add	s0,sp,16
 2d0:	00000097          	auipc	ra,0x0
 2d4:	f66080e7          	jalr	-154(ra) # 236 <memmove>
 2d8:	60a2                	ld	ra,8(sp)
 2da:	6402                	ld	s0,0(sp)
 2dc:	0141                	add	sp,sp,16
 2de:	8082                	ret

00000000000002e0 <fork>:
 2e0:	4885                	li	a7,1
 2e2:	00000073          	ecall
 2e6:	8082                	ret

00000000000002e8 <exit>:
 2e8:	4889                	li	a7,2
 2ea:	00000073          	ecall
 2ee:	8082                	ret

00000000000002f0 <wait>:
 2f0:	488d                	li	a7,3
 2f2:	00000073          	ecall
 2f6:	8082                	ret

00000000000002f8 <pipe>:
 2f8:	4891                	li	a7,4
 2fa:	00000073          	ecall
 2fe:	8082                	ret

0000000000000300 <read>:
 300:	4895                	li	a7,5
 302:	00000073          	ecall
 306:	8082                	ret

0000000000000308 <write>:
 308:	48c1                	li	a7,16
 30a:	00000073          	ecall
 30e:	8082                	ret

0000000000000310 <close>:
 310:	48d5                	li	a7,21
 312:	00000073          	ecall
 316:	8082                	ret

0000000000000318 <kill>:
 318:	4899                	li	a7,6
 31a:	00000073          	ecall
 31e:	8082                	ret

0000000000000320 <exec>:
 320:	489d                	li	a7,7
 322:	00000073          	ecall
 326:	8082                	ret

0000000000000328 <open>:
 328:	48bd                	li	a7,15
 32a:	00000073          	ecall
 32e:	8082                	ret

0000000000000330 <mknod>:
 330:	48c5                	li	a7,17
 332:	00000073          	ecall
 336:	8082                	ret

0000000000000338 <unlink>:
 338:	48c9                	li	a7,18
 33a:	00000073          	ecall
 33e:	8082                	ret

0000000000000340 <fstat>:
 340:	48a1                	li	a7,8
 342:	00000073          	ecall
 346:	8082                	ret

0000000000000348 <link>:
 348:	48cd                	li	a7,19
 34a:	00000073          	ecall
 34e:	8082                	ret

0000000000000350 <mkdir>:
 350:	48d1                	li	a7,20
 352:	00000073          	ecall
 356:	8082                	ret

0000000000000358 <chdir>:
 358:	48a5                	li	a7,9
 35a:	00000073          	ecall
 35e:	8082                	ret

0000000000000360 <dup>:
 360:	48a9                	li	a7,10
 362:	00000073          	ecall
 366:	8082                	ret

0000000000000368 <getpid>:
 368:	48ad                	li	a7,11
 36a:	00000073          	ecall
 36e:	8082                	ret

0000000000000370 <sbrk>:
 370:	48b1                	li	a7,12
 372:	00000073          	ecall
 376:	8082                	ret

0000000000000378 <sleep>:
 378:	48b5                	li	a7,13
 37a:	00000073          	ecall
 37e:	8082                	ret

0000000000000380 <uptime>:
 380:	48b9                	li	a7,14
 382:	00000073          	ecall
 386:	8082                	ret

0000000000000388 <waitx>:
 388:	48d9                	li	a7,22
 38a:	00000073          	ecall
 38e:	8082                	ret

0000000000000390 <getSysCount>:
 390:	48dd                	li	a7,23
 392:	00000073          	ecall
 396:	8082                	ret

0000000000000398 <sigalarm>:
 398:	48e1                	li	a7,24
 39a:	00000073          	ecall
 39e:	8082                	ret

00000000000003a0 <sigreturn>:
 3a0:	48e5                	li	a7,25
 3a2:	00000073          	ecall
 3a6:	8082                	ret

00000000000003a8 <putc>:
 3a8:	1101                	add	sp,sp,-32
 3aa:	ec06                	sd	ra,24(sp)
 3ac:	e822                	sd	s0,16(sp)
 3ae:	1000                	add	s0,sp,32
 3b0:	feb407a3          	sb	a1,-17(s0)
 3b4:	4605                	li	a2,1
 3b6:	fef40593          	add	a1,s0,-17
 3ba:	00000097          	auipc	ra,0x0
 3be:	f4e080e7          	jalr	-178(ra) # 308 <write>
 3c2:	60e2                	ld	ra,24(sp)
 3c4:	6442                	ld	s0,16(sp)
 3c6:	6105                	add	sp,sp,32
 3c8:	8082                	ret

00000000000003ca <printint>:
 3ca:	7139                	add	sp,sp,-64
 3cc:	fc06                	sd	ra,56(sp)
 3ce:	f822                	sd	s0,48(sp)
 3d0:	f426                	sd	s1,40(sp)
 3d2:	0080                	add	s0,sp,64
 3d4:	84aa                	mv	s1,a0
 3d6:	c299                	beqz	a3,3dc <printint+0x12>
 3d8:	0805cb63          	bltz	a1,46e <printint+0xa4>
 3dc:	2581                	sext.w	a1,a1
 3de:	4881                	li	a7,0
 3e0:	fc040693          	add	a3,s0,-64
 3e4:	4701                	li	a4,0
 3e6:	2601                	sext.w	a2,a2
 3e8:	00000517          	auipc	a0,0x0
 3ec:	4d850513          	add	a0,a0,1240 # 8c0 <digits>
 3f0:	883a                	mv	a6,a4
 3f2:	2705                	addw	a4,a4,1
 3f4:	02c5f7bb          	remuw	a5,a1,a2
 3f8:	1782                	sll	a5,a5,0x20
 3fa:	9381                	srl	a5,a5,0x20
 3fc:	97aa                	add	a5,a5,a0
 3fe:	0007c783          	lbu	a5,0(a5)
 402:	00f68023          	sb	a5,0(a3)
 406:	0005879b          	sext.w	a5,a1
 40a:	02c5d5bb          	divuw	a1,a1,a2
 40e:	0685                	add	a3,a3,1
 410:	fec7f0e3          	bgeu	a5,a2,3f0 <printint+0x26>
 414:	00088c63          	beqz	a7,42c <printint+0x62>
 418:	fd070793          	add	a5,a4,-48
 41c:	00878733          	add	a4,a5,s0
 420:	02d00793          	li	a5,45
 424:	fef70823          	sb	a5,-16(a4)
 428:	0028071b          	addw	a4,a6,2
 42c:	02e05c63          	blez	a4,464 <printint+0x9a>
 430:	f04a                	sd	s2,32(sp)
 432:	ec4e                	sd	s3,24(sp)
 434:	fc040793          	add	a5,s0,-64
 438:	00e78933          	add	s2,a5,a4
 43c:	fff78993          	add	s3,a5,-1
 440:	99ba                	add	s3,s3,a4
 442:	377d                	addw	a4,a4,-1
 444:	1702                	sll	a4,a4,0x20
 446:	9301                	srl	a4,a4,0x20
 448:	40e989b3          	sub	s3,s3,a4
 44c:	fff94583          	lbu	a1,-1(s2)
 450:	8526                	mv	a0,s1
 452:	00000097          	auipc	ra,0x0
 456:	f56080e7          	jalr	-170(ra) # 3a8 <putc>
 45a:	197d                	add	s2,s2,-1
 45c:	ff3918e3          	bne	s2,s3,44c <printint+0x82>
 460:	7902                	ld	s2,32(sp)
 462:	69e2                	ld	s3,24(sp)
 464:	70e2                	ld	ra,56(sp)
 466:	7442                	ld	s0,48(sp)
 468:	74a2                	ld	s1,40(sp)
 46a:	6121                	add	sp,sp,64
 46c:	8082                	ret
 46e:	40b005bb          	negw	a1,a1
 472:	4885                	li	a7,1
 474:	b7b5                	j	3e0 <printint+0x16>

0000000000000476 <vprintf>:
 476:	715d                	add	sp,sp,-80
 478:	e486                	sd	ra,72(sp)
 47a:	e0a2                	sd	s0,64(sp)
 47c:	f84a                	sd	s2,48(sp)
 47e:	0880                	add	s0,sp,80
 480:	0005c903          	lbu	s2,0(a1)
 484:	1a090a63          	beqz	s2,638 <vprintf+0x1c2>
 488:	fc26                	sd	s1,56(sp)
 48a:	f44e                	sd	s3,40(sp)
 48c:	f052                	sd	s4,32(sp)
 48e:	ec56                	sd	s5,24(sp)
 490:	e85a                	sd	s6,16(sp)
 492:	e45e                	sd	s7,8(sp)
 494:	8aaa                	mv	s5,a0
 496:	8bb2                	mv	s7,a2
 498:	00158493          	add	s1,a1,1
 49c:	4981                	li	s3,0
 49e:	02500a13          	li	s4,37
 4a2:	4b55                	li	s6,21
 4a4:	a839                	j	4c2 <vprintf+0x4c>
 4a6:	85ca                	mv	a1,s2
 4a8:	8556                	mv	a0,s5
 4aa:	00000097          	auipc	ra,0x0
 4ae:	efe080e7          	jalr	-258(ra) # 3a8 <putc>
 4b2:	a019                	j	4b8 <vprintf+0x42>
 4b4:	01498d63          	beq	s3,s4,4ce <vprintf+0x58>
 4b8:	0485                	add	s1,s1,1
 4ba:	fff4c903          	lbu	s2,-1(s1)
 4be:	16090763          	beqz	s2,62c <vprintf+0x1b6>
 4c2:	fe0999e3          	bnez	s3,4b4 <vprintf+0x3e>
 4c6:	ff4910e3          	bne	s2,s4,4a6 <vprintf+0x30>
 4ca:	89d2                	mv	s3,s4
 4cc:	b7f5                	j	4b8 <vprintf+0x42>
 4ce:	13490463          	beq	s2,s4,5f6 <vprintf+0x180>
 4d2:	f9d9079b          	addw	a5,s2,-99
 4d6:	0ff7f793          	zext.b	a5,a5
 4da:	12fb6763          	bltu	s6,a5,608 <vprintf+0x192>
 4de:	f9d9079b          	addw	a5,s2,-99
 4e2:	0ff7f713          	zext.b	a4,a5
 4e6:	12eb6163          	bltu	s6,a4,608 <vprintf+0x192>
 4ea:	00271793          	sll	a5,a4,0x2
 4ee:	00000717          	auipc	a4,0x0
 4f2:	37a70713          	add	a4,a4,890 # 868 <malloc+0x140>
 4f6:	97ba                	add	a5,a5,a4
 4f8:	439c                	lw	a5,0(a5)
 4fa:	97ba                	add	a5,a5,a4
 4fc:	8782                	jr	a5
 4fe:	008b8913          	add	s2,s7,8
 502:	4685                	li	a3,1
 504:	4629                	li	a2,10
 506:	000ba583          	lw	a1,0(s7)
 50a:	8556                	mv	a0,s5
 50c:	00000097          	auipc	ra,0x0
 510:	ebe080e7          	jalr	-322(ra) # 3ca <printint>
 514:	8bca                	mv	s7,s2
 516:	4981                	li	s3,0
 518:	b745                	j	4b8 <vprintf+0x42>
 51a:	008b8913          	add	s2,s7,8
 51e:	4681                	li	a3,0
 520:	4629                	li	a2,10
 522:	000ba583          	lw	a1,0(s7)
 526:	8556                	mv	a0,s5
 528:	00000097          	auipc	ra,0x0
 52c:	ea2080e7          	jalr	-350(ra) # 3ca <printint>
 530:	8bca                	mv	s7,s2
 532:	4981                	li	s3,0
 534:	b751                	j	4b8 <vprintf+0x42>
 536:	008b8913          	add	s2,s7,8
 53a:	4681                	li	a3,0
 53c:	4641                	li	a2,16
 53e:	000ba583          	lw	a1,0(s7)
 542:	8556                	mv	a0,s5
 544:	00000097          	auipc	ra,0x0
 548:	e86080e7          	jalr	-378(ra) # 3ca <printint>
 54c:	8bca                	mv	s7,s2
 54e:	4981                	li	s3,0
 550:	b7a5                	j	4b8 <vprintf+0x42>
 552:	e062                	sd	s8,0(sp)
 554:	008b8c13          	add	s8,s7,8
 558:	000bb983          	ld	s3,0(s7)
 55c:	03000593          	li	a1,48
 560:	8556                	mv	a0,s5
 562:	00000097          	auipc	ra,0x0
 566:	e46080e7          	jalr	-442(ra) # 3a8 <putc>
 56a:	07800593          	li	a1,120
 56e:	8556                	mv	a0,s5
 570:	00000097          	auipc	ra,0x0
 574:	e38080e7          	jalr	-456(ra) # 3a8 <putc>
 578:	4941                	li	s2,16
 57a:	00000b97          	auipc	s7,0x0
 57e:	346b8b93          	add	s7,s7,838 # 8c0 <digits>
 582:	03c9d793          	srl	a5,s3,0x3c
 586:	97de                	add	a5,a5,s7
 588:	0007c583          	lbu	a1,0(a5)
 58c:	8556                	mv	a0,s5
 58e:	00000097          	auipc	ra,0x0
 592:	e1a080e7          	jalr	-486(ra) # 3a8 <putc>
 596:	0992                	sll	s3,s3,0x4
 598:	397d                	addw	s2,s2,-1
 59a:	fe0914e3          	bnez	s2,582 <vprintf+0x10c>
 59e:	8be2                	mv	s7,s8
 5a0:	4981                	li	s3,0
 5a2:	6c02                	ld	s8,0(sp)
 5a4:	bf11                	j	4b8 <vprintf+0x42>
 5a6:	008b8993          	add	s3,s7,8
 5aa:	000bb903          	ld	s2,0(s7)
 5ae:	02090163          	beqz	s2,5d0 <vprintf+0x15a>
 5b2:	00094583          	lbu	a1,0(s2)
 5b6:	c9a5                	beqz	a1,626 <vprintf+0x1b0>
 5b8:	8556                	mv	a0,s5
 5ba:	00000097          	auipc	ra,0x0
 5be:	dee080e7          	jalr	-530(ra) # 3a8 <putc>
 5c2:	0905                	add	s2,s2,1
 5c4:	00094583          	lbu	a1,0(s2)
 5c8:	f9e5                	bnez	a1,5b8 <vprintf+0x142>
 5ca:	8bce                	mv	s7,s3
 5cc:	4981                	li	s3,0
 5ce:	b5ed                	j	4b8 <vprintf+0x42>
 5d0:	00000917          	auipc	s2,0x0
 5d4:	29090913          	add	s2,s2,656 # 860 <malloc+0x138>
 5d8:	02800593          	li	a1,40
 5dc:	bff1                	j	5b8 <vprintf+0x142>
 5de:	008b8913          	add	s2,s7,8
 5e2:	000bc583          	lbu	a1,0(s7)
 5e6:	8556                	mv	a0,s5
 5e8:	00000097          	auipc	ra,0x0
 5ec:	dc0080e7          	jalr	-576(ra) # 3a8 <putc>
 5f0:	8bca                	mv	s7,s2
 5f2:	4981                	li	s3,0
 5f4:	b5d1                	j	4b8 <vprintf+0x42>
 5f6:	02500593          	li	a1,37
 5fa:	8556                	mv	a0,s5
 5fc:	00000097          	auipc	ra,0x0
 600:	dac080e7          	jalr	-596(ra) # 3a8 <putc>
 604:	4981                	li	s3,0
 606:	bd4d                	j	4b8 <vprintf+0x42>
 608:	02500593          	li	a1,37
 60c:	8556                	mv	a0,s5
 60e:	00000097          	auipc	ra,0x0
 612:	d9a080e7          	jalr	-614(ra) # 3a8 <putc>
 616:	85ca                	mv	a1,s2
 618:	8556                	mv	a0,s5
 61a:	00000097          	auipc	ra,0x0
 61e:	d8e080e7          	jalr	-626(ra) # 3a8 <putc>
 622:	4981                	li	s3,0
 624:	bd51                	j	4b8 <vprintf+0x42>
 626:	8bce                	mv	s7,s3
 628:	4981                	li	s3,0
 62a:	b579                	j	4b8 <vprintf+0x42>
 62c:	74e2                	ld	s1,56(sp)
 62e:	79a2                	ld	s3,40(sp)
 630:	7a02                	ld	s4,32(sp)
 632:	6ae2                	ld	s5,24(sp)
 634:	6b42                	ld	s6,16(sp)
 636:	6ba2                	ld	s7,8(sp)
 638:	60a6                	ld	ra,72(sp)
 63a:	6406                	ld	s0,64(sp)
 63c:	7942                	ld	s2,48(sp)
 63e:	6161                	add	sp,sp,80
 640:	8082                	ret

0000000000000642 <fprintf>:
 642:	715d                	add	sp,sp,-80
 644:	ec06                	sd	ra,24(sp)
 646:	e822                	sd	s0,16(sp)
 648:	1000                	add	s0,sp,32
 64a:	e010                	sd	a2,0(s0)
 64c:	e414                	sd	a3,8(s0)
 64e:	e818                	sd	a4,16(s0)
 650:	ec1c                	sd	a5,24(s0)
 652:	03043023          	sd	a6,32(s0)
 656:	03143423          	sd	a7,40(s0)
 65a:	fe843423          	sd	s0,-24(s0)
 65e:	8622                	mv	a2,s0
 660:	00000097          	auipc	ra,0x0
 664:	e16080e7          	jalr	-490(ra) # 476 <vprintf>
 668:	60e2                	ld	ra,24(sp)
 66a:	6442                	ld	s0,16(sp)
 66c:	6161                	add	sp,sp,80
 66e:	8082                	ret

0000000000000670 <printf>:
 670:	711d                	add	sp,sp,-96
 672:	ec06                	sd	ra,24(sp)
 674:	e822                	sd	s0,16(sp)
 676:	1000                	add	s0,sp,32
 678:	e40c                	sd	a1,8(s0)
 67a:	e810                	sd	a2,16(s0)
 67c:	ec14                	sd	a3,24(s0)
 67e:	f018                	sd	a4,32(s0)
 680:	f41c                	sd	a5,40(s0)
 682:	03043823          	sd	a6,48(s0)
 686:	03143c23          	sd	a7,56(s0)
 68a:	00840613          	add	a2,s0,8
 68e:	fec43423          	sd	a2,-24(s0)
 692:	85aa                	mv	a1,a0
 694:	4505                	li	a0,1
 696:	00000097          	auipc	ra,0x0
 69a:	de0080e7          	jalr	-544(ra) # 476 <vprintf>
 69e:	60e2                	ld	ra,24(sp)
 6a0:	6442                	ld	s0,16(sp)
 6a2:	6125                	add	sp,sp,96
 6a4:	8082                	ret

00000000000006a6 <free>:
 6a6:	1141                	add	sp,sp,-16
 6a8:	e422                	sd	s0,8(sp)
 6aa:	0800                	add	s0,sp,16
 6ac:	ff050693          	add	a3,a0,-16
 6b0:	00001797          	auipc	a5,0x1
 6b4:	d307b783          	ld	a5,-720(a5) # 13e0 <freep>
 6b8:	a02d                	j	6e2 <free+0x3c>
 6ba:	4618                	lw	a4,8(a2)
 6bc:	9f2d                	addw	a4,a4,a1
 6be:	fee52c23          	sw	a4,-8(a0)
 6c2:	6398                	ld	a4,0(a5)
 6c4:	6310                	ld	a2,0(a4)
 6c6:	a83d                	j	704 <free+0x5e>
 6c8:	ff852703          	lw	a4,-8(a0)
 6cc:	9f31                	addw	a4,a4,a2
 6ce:	c798                	sw	a4,8(a5)
 6d0:	ff053683          	ld	a3,-16(a0)
 6d4:	a091                	j	718 <free+0x72>
 6d6:	6398                	ld	a4,0(a5)
 6d8:	00e7e463          	bltu	a5,a4,6e0 <free+0x3a>
 6dc:	00e6ea63          	bltu	a3,a4,6f0 <free+0x4a>
 6e0:	87ba                	mv	a5,a4
 6e2:	fed7fae3          	bgeu	a5,a3,6d6 <free+0x30>
 6e6:	6398                	ld	a4,0(a5)
 6e8:	00e6e463          	bltu	a3,a4,6f0 <free+0x4a>
 6ec:	fee7eae3          	bltu	a5,a4,6e0 <free+0x3a>
 6f0:	ff852583          	lw	a1,-8(a0)
 6f4:	6390                	ld	a2,0(a5)
 6f6:	02059813          	sll	a6,a1,0x20
 6fa:	01c85713          	srl	a4,a6,0x1c
 6fe:	9736                	add	a4,a4,a3
 700:	fae60de3          	beq	a2,a4,6ba <free+0x14>
 704:	fec53823          	sd	a2,-16(a0)
 708:	4790                	lw	a2,8(a5)
 70a:	02061593          	sll	a1,a2,0x20
 70e:	01c5d713          	srl	a4,a1,0x1c
 712:	973e                	add	a4,a4,a5
 714:	fae68ae3          	beq	a3,a4,6c8 <free+0x22>
 718:	e394                	sd	a3,0(a5)
 71a:	00001717          	auipc	a4,0x1
 71e:	ccf73323          	sd	a5,-826(a4) # 13e0 <freep>
 722:	6422                	ld	s0,8(sp)
 724:	0141                	add	sp,sp,16
 726:	8082                	ret

0000000000000728 <malloc>:
 728:	7139                	add	sp,sp,-64
 72a:	fc06                	sd	ra,56(sp)
 72c:	f822                	sd	s0,48(sp)
 72e:	f426                	sd	s1,40(sp)
 730:	ec4e                	sd	s3,24(sp)
 732:	0080                	add	s0,sp,64
 734:	02051493          	sll	s1,a0,0x20
 738:	9081                	srl	s1,s1,0x20
 73a:	04bd                	add	s1,s1,15
 73c:	8091                	srl	s1,s1,0x4
 73e:	0014899b          	addw	s3,s1,1
 742:	0485                	add	s1,s1,1
 744:	00001517          	auipc	a0,0x1
 748:	c9c53503          	ld	a0,-868(a0) # 13e0 <freep>
 74c:	c915                	beqz	a0,780 <malloc+0x58>
 74e:	611c                	ld	a5,0(a0)
 750:	4798                	lw	a4,8(a5)
 752:	08977e63          	bgeu	a4,s1,7ee <malloc+0xc6>
 756:	f04a                	sd	s2,32(sp)
 758:	e852                	sd	s4,16(sp)
 75a:	e456                	sd	s5,8(sp)
 75c:	e05a                	sd	s6,0(sp)
 75e:	8a4e                	mv	s4,s3
 760:	0009871b          	sext.w	a4,s3
 764:	6685                	lui	a3,0x1
 766:	00d77363          	bgeu	a4,a3,76c <malloc+0x44>
 76a:	6a05                	lui	s4,0x1
 76c:	000a0b1b          	sext.w	s6,s4
 770:	004a1a1b          	sllw	s4,s4,0x4
 774:	00001917          	auipc	s2,0x1
 778:	c6c90913          	add	s2,s2,-916 # 13e0 <freep>
 77c:	5afd                	li	s5,-1
 77e:	a091                	j	7c2 <malloc+0x9a>
 780:	f04a                	sd	s2,32(sp)
 782:	e852                	sd	s4,16(sp)
 784:	e456                	sd	s5,8(sp)
 786:	e05a                	sd	s6,0(sp)
 788:	00001797          	auipc	a5,0x1
 78c:	c6878793          	add	a5,a5,-920 # 13f0 <base>
 790:	00001717          	auipc	a4,0x1
 794:	c4f73823          	sd	a5,-944(a4) # 13e0 <freep>
 798:	e39c                	sd	a5,0(a5)
 79a:	0007a423          	sw	zero,8(a5)
 79e:	b7c1                	j	75e <malloc+0x36>
 7a0:	6398                	ld	a4,0(a5)
 7a2:	e118                	sd	a4,0(a0)
 7a4:	a08d                	j	806 <malloc+0xde>
 7a6:	01652423          	sw	s6,8(a0)
 7aa:	0541                	add	a0,a0,16
 7ac:	00000097          	auipc	ra,0x0
 7b0:	efa080e7          	jalr	-262(ra) # 6a6 <free>
 7b4:	00093503          	ld	a0,0(s2)
 7b8:	c13d                	beqz	a0,81e <malloc+0xf6>
 7ba:	611c                	ld	a5,0(a0)
 7bc:	4798                	lw	a4,8(a5)
 7be:	02977463          	bgeu	a4,s1,7e6 <malloc+0xbe>
 7c2:	00093703          	ld	a4,0(s2)
 7c6:	853e                	mv	a0,a5
 7c8:	fef719e3          	bne	a4,a5,7ba <malloc+0x92>
 7cc:	8552                	mv	a0,s4
 7ce:	00000097          	auipc	ra,0x0
 7d2:	ba2080e7          	jalr	-1118(ra) # 370 <sbrk>
 7d6:	fd5518e3          	bne	a0,s5,7a6 <malloc+0x7e>
 7da:	4501                	li	a0,0
 7dc:	7902                	ld	s2,32(sp)
 7de:	6a42                	ld	s4,16(sp)
 7e0:	6aa2                	ld	s5,8(sp)
 7e2:	6b02                	ld	s6,0(sp)
 7e4:	a03d                	j	812 <malloc+0xea>
 7e6:	7902                	ld	s2,32(sp)
 7e8:	6a42                	ld	s4,16(sp)
 7ea:	6aa2                	ld	s5,8(sp)
 7ec:	6b02                	ld	s6,0(sp)
 7ee:	fae489e3          	beq	s1,a4,7a0 <malloc+0x78>
 7f2:	4137073b          	subw	a4,a4,s3
 7f6:	c798                	sw	a4,8(a5)
 7f8:	02071693          	sll	a3,a4,0x20
 7fc:	01c6d713          	srl	a4,a3,0x1c
 800:	97ba                	add	a5,a5,a4
 802:	0137a423          	sw	s3,8(a5)
 806:	00001717          	auipc	a4,0x1
 80a:	bca73d23          	sd	a0,-1062(a4) # 13e0 <freep>
 80e:	01078513          	add	a0,a5,16
 812:	70e2                	ld	ra,56(sp)
 814:	7442                	ld	s0,48(sp)
 816:	74a2                	ld	s1,40(sp)
 818:	69e2                	ld	s3,24(sp)
 81a:	6121                	add	sp,sp,64
 81c:	8082                	ret
 81e:	7902                	ld	s2,32(sp)
 820:	6a42                	ld	s4,16(sp)
 822:	6aa2                	ld	s5,8(sp)
 824:	6b02                	ld	s6,0(sp)
 826:	b7f5                	j	812 <malloc+0xea>
