
user/_forktest:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <print>:
   0:	1101                	add	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	e426                	sd	s1,8(sp)
   8:	1000                	add	s0,sp,32
   a:	84aa                	mv	s1,a0
   c:	00000097          	auipc	ra,0x0
  10:	16c080e7          	jalr	364(ra) # 178 <strlen>
  14:	0005061b          	sext.w	a2,a0
  18:	85a6                	mv	a1,s1
  1a:	4505                	li	a0,1
  1c:	00000097          	auipc	ra,0x0
  20:	3a0080e7          	jalr	928(ra) # 3bc <write>
  24:	60e2                	ld	ra,24(sp)
  26:	6442                	ld	s0,16(sp)
  28:	64a2                	ld	s1,8(sp)
  2a:	6105                	add	sp,sp,32
  2c:	8082                	ret

000000000000002e <forktest>:
  2e:	1101                	add	sp,sp,-32
  30:	ec06                	sd	ra,24(sp)
  32:	e822                	sd	s0,16(sp)
  34:	e426                	sd	s1,8(sp)
  36:	e04a                	sd	s2,0(sp)
  38:	1000                	add	s0,sp,32
  3a:	00000517          	auipc	a0,0x0
  3e:	42650513          	add	a0,a0,1062 # 460 <sigreturn+0xc>
  42:	00000097          	auipc	ra,0x0
  46:	fbe080e7          	jalr	-66(ra) # 0 <print>
  4a:	4481                	li	s1,0
  4c:	3e800913          	li	s2,1000
  50:	00000097          	auipc	ra,0x0
  54:	344080e7          	jalr	836(ra) # 394 <fork>
  58:	06054163          	bltz	a0,ba <forktest+0x8c>
  5c:	c10d                	beqz	a0,7e <forktest+0x50>
  5e:	2485                	addw	s1,s1,1
  60:	ff2498e3          	bne	s1,s2,50 <forktest+0x22>
  64:	00000517          	auipc	a0,0x0
  68:	44c50513          	add	a0,a0,1100 # 4b0 <sigreturn+0x5c>
  6c:	00000097          	auipc	ra,0x0
  70:	f94080e7          	jalr	-108(ra) # 0 <print>
  74:	4505                	li	a0,1
  76:	00000097          	auipc	ra,0x0
  7a:	326080e7          	jalr	806(ra) # 39c <exit>
  7e:	00000097          	auipc	ra,0x0
  82:	31e080e7          	jalr	798(ra) # 39c <exit>
  86:	00000517          	auipc	a0,0x0
  8a:	3ea50513          	add	a0,a0,1002 # 470 <sigreturn+0x1c>
  8e:	00000097          	auipc	ra,0x0
  92:	f72080e7          	jalr	-142(ra) # 0 <print>
  96:	4505                	li	a0,1
  98:	00000097          	auipc	ra,0x0
  9c:	304080e7          	jalr	772(ra) # 39c <exit>
  a0:	00000517          	auipc	a0,0x0
  a4:	3e850513          	add	a0,a0,1000 # 488 <sigreturn+0x34>
  a8:	00000097          	auipc	ra,0x0
  ac:	f58080e7          	jalr	-168(ra) # 0 <print>
  b0:	4505                	li	a0,1
  b2:	00000097          	auipc	ra,0x0
  b6:	2ea080e7          	jalr	746(ra) # 39c <exit>
  ba:	00905b63          	blez	s1,d0 <forktest+0xa2>
  be:	4501                	li	a0,0
  c0:	00000097          	auipc	ra,0x0
  c4:	2e4080e7          	jalr	740(ra) # 3a4 <wait>
  c8:	fa054fe3          	bltz	a0,86 <forktest+0x58>
  cc:	34fd                	addw	s1,s1,-1
  ce:	f8e5                	bnez	s1,be <forktest+0x90>
  d0:	4501                	li	a0,0
  d2:	00000097          	auipc	ra,0x0
  d6:	2d2080e7          	jalr	722(ra) # 3a4 <wait>
  da:	57fd                	li	a5,-1
  dc:	fcf512e3          	bne	a0,a5,a0 <forktest+0x72>
  e0:	00000517          	auipc	a0,0x0
  e4:	3c050513          	add	a0,a0,960 # 4a0 <sigreturn+0x4c>
  e8:	00000097          	auipc	ra,0x0
  ec:	f18080e7          	jalr	-232(ra) # 0 <print>
  f0:	60e2                	ld	ra,24(sp)
  f2:	6442                	ld	s0,16(sp)
  f4:	64a2                	ld	s1,8(sp)
  f6:	6902                	ld	s2,0(sp)
  f8:	6105                	add	sp,sp,32
  fa:	8082                	ret

00000000000000fc <main>:
  fc:	1141                	add	sp,sp,-16
  fe:	e406                	sd	ra,8(sp)
 100:	e022                	sd	s0,0(sp)
 102:	0800                	add	s0,sp,16
 104:	00000097          	auipc	ra,0x0
 108:	f2a080e7          	jalr	-214(ra) # 2e <forktest>
 10c:	4501                	li	a0,0
 10e:	00000097          	auipc	ra,0x0
 112:	28e080e7          	jalr	654(ra) # 39c <exit>

0000000000000116 <_main>:
 116:	1141                	add	sp,sp,-16
 118:	e406                	sd	ra,8(sp)
 11a:	e022                	sd	s0,0(sp)
 11c:	0800                	add	s0,sp,16
 11e:	00000097          	auipc	ra,0x0
 122:	fde080e7          	jalr	-34(ra) # fc <main>
 126:	4501                	li	a0,0
 128:	00000097          	auipc	ra,0x0
 12c:	274080e7          	jalr	628(ra) # 39c <exit>

0000000000000130 <strcpy>:
 130:	1141                	add	sp,sp,-16
 132:	e422                	sd	s0,8(sp)
 134:	0800                	add	s0,sp,16
 136:	87aa                	mv	a5,a0
 138:	0585                	add	a1,a1,1
 13a:	0785                	add	a5,a5,1
 13c:	fff5c703          	lbu	a4,-1(a1)
 140:	fee78fa3          	sb	a4,-1(a5)
 144:	fb75                	bnez	a4,138 <strcpy+0x8>
 146:	6422                	ld	s0,8(sp)
 148:	0141                	add	sp,sp,16
 14a:	8082                	ret

000000000000014c <strcmp>:
 14c:	1141                	add	sp,sp,-16
 14e:	e422                	sd	s0,8(sp)
 150:	0800                	add	s0,sp,16
 152:	00054783          	lbu	a5,0(a0)
 156:	cb91                	beqz	a5,16a <strcmp+0x1e>
 158:	0005c703          	lbu	a4,0(a1)
 15c:	00f71763          	bne	a4,a5,16a <strcmp+0x1e>
 160:	0505                	add	a0,a0,1
 162:	0585                	add	a1,a1,1
 164:	00054783          	lbu	a5,0(a0)
 168:	fbe5                	bnez	a5,158 <strcmp+0xc>
 16a:	0005c503          	lbu	a0,0(a1)
 16e:	40a7853b          	subw	a0,a5,a0
 172:	6422                	ld	s0,8(sp)
 174:	0141                	add	sp,sp,16
 176:	8082                	ret

0000000000000178 <strlen>:
 178:	1141                	add	sp,sp,-16
 17a:	e422                	sd	s0,8(sp)
 17c:	0800                	add	s0,sp,16
 17e:	00054783          	lbu	a5,0(a0)
 182:	cf91                	beqz	a5,19e <strlen+0x26>
 184:	0505                	add	a0,a0,1
 186:	87aa                	mv	a5,a0
 188:	86be                	mv	a3,a5
 18a:	0785                	add	a5,a5,1
 18c:	fff7c703          	lbu	a4,-1(a5)
 190:	ff65                	bnez	a4,188 <strlen+0x10>
 192:	40a6853b          	subw	a0,a3,a0
 196:	2505                	addw	a0,a0,1
 198:	6422                	ld	s0,8(sp)
 19a:	0141                	add	sp,sp,16
 19c:	8082                	ret
 19e:	4501                	li	a0,0
 1a0:	bfe5                	j	198 <strlen+0x20>

00000000000001a2 <memset>:
 1a2:	1141                	add	sp,sp,-16
 1a4:	e422                	sd	s0,8(sp)
 1a6:	0800                	add	s0,sp,16
 1a8:	ca19                	beqz	a2,1be <memset+0x1c>
 1aa:	87aa                	mv	a5,a0
 1ac:	1602                	sll	a2,a2,0x20
 1ae:	9201                	srl	a2,a2,0x20
 1b0:	00a60733          	add	a4,a2,a0
 1b4:	00b78023          	sb	a1,0(a5)
 1b8:	0785                	add	a5,a5,1
 1ba:	fee79de3          	bne	a5,a4,1b4 <memset+0x12>
 1be:	6422                	ld	s0,8(sp)
 1c0:	0141                	add	sp,sp,16
 1c2:	8082                	ret

00000000000001c4 <strchr>:
 1c4:	1141                	add	sp,sp,-16
 1c6:	e422                	sd	s0,8(sp)
 1c8:	0800                	add	s0,sp,16
 1ca:	00054783          	lbu	a5,0(a0)
 1ce:	cb99                	beqz	a5,1e4 <strchr+0x20>
 1d0:	00f58763          	beq	a1,a5,1de <strchr+0x1a>
 1d4:	0505                	add	a0,a0,1
 1d6:	00054783          	lbu	a5,0(a0)
 1da:	fbfd                	bnez	a5,1d0 <strchr+0xc>
 1dc:	4501                	li	a0,0
 1de:	6422                	ld	s0,8(sp)
 1e0:	0141                	add	sp,sp,16
 1e2:	8082                	ret
 1e4:	4501                	li	a0,0
 1e6:	bfe5                	j	1de <strchr+0x1a>

00000000000001e8 <gets>:
 1e8:	711d                	add	sp,sp,-96
 1ea:	ec86                	sd	ra,88(sp)
 1ec:	e8a2                	sd	s0,80(sp)
 1ee:	e4a6                	sd	s1,72(sp)
 1f0:	e0ca                	sd	s2,64(sp)
 1f2:	fc4e                	sd	s3,56(sp)
 1f4:	f852                	sd	s4,48(sp)
 1f6:	f456                	sd	s5,40(sp)
 1f8:	f05a                	sd	s6,32(sp)
 1fa:	ec5e                	sd	s7,24(sp)
 1fc:	1080                	add	s0,sp,96
 1fe:	8baa                	mv	s7,a0
 200:	8a2e                	mv	s4,a1
 202:	892a                	mv	s2,a0
 204:	4481                	li	s1,0
 206:	4aa9                	li	s5,10
 208:	4b35                	li	s6,13
 20a:	89a6                	mv	s3,s1
 20c:	2485                	addw	s1,s1,1
 20e:	0344d863          	bge	s1,s4,23e <gets+0x56>
 212:	4605                	li	a2,1
 214:	faf40593          	add	a1,s0,-81
 218:	4501                	li	a0,0
 21a:	00000097          	auipc	ra,0x0
 21e:	19a080e7          	jalr	410(ra) # 3b4 <read>
 222:	00a05e63          	blez	a0,23e <gets+0x56>
 226:	faf44783          	lbu	a5,-81(s0)
 22a:	00f90023          	sb	a5,0(s2)
 22e:	01578763          	beq	a5,s5,23c <gets+0x54>
 232:	0905                	add	s2,s2,1
 234:	fd679be3          	bne	a5,s6,20a <gets+0x22>
 238:	89a6                	mv	s3,s1
 23a:	a011                	j	23e <gets+0x56>
 23c:	89a6                	mv	s3,s1
 23e:	99de                	add	s3,s3,s7
 240:	00098023          	sb	zero,0(s3)
 244:	855e                	mv	a0,s7
 246:	60e6                	ld	ra,88(sp)
 248:	6446                	ld	s0,80(sp)
 24a:	64a6                	ld	s1,72(sp)
 24c:	6906                	ld	s2,64(sp)
 24e:	79e2                	ld	s3,56(sp)
 250:	7a42                	ld	s4,48(sp)
 252:	7aa2                	ld	s5,40(sp)
 254:	7b02                	ld	s6,32(sp)
 256:	6be2                	ld	s7,24(sp)
 258:	6125                	add	sp,sp,96
 25a:	8082                	ret

000000000000025c <stat>:
 25c:	1101                	add	sp,sp,-32
 25e:	ec06                	sd	ra,24(sp)
 260:	e822                	sd	s0,16(sp)
 262:	e04a                	sd	s2,0(sp)
 264:	1000                	add	s0,sp,32
 266:	892e                	mv	s2,a1
 268:	4581                	li	a1,0
 26a:	00000097          	auipc	ra,0x0
 26e:	172080e7          	jalr	370(ra) # 3dc <open>
 272:	02054663          	bltz	a0,29e <stat+0x42>
 276:	e426                	sd	s1,8(sp)
 278:	84aa                	mv	s1,a0
 27a:	85ca                	mv	a1,s2
 27c:	00000097          	auipc	ra,0x0
 280:	178080e7          	jalr	376(ra) # 3f4 <fstat>
 284:	892a                	mv	s2,a0
 286:	8526                	mv	a0,s1
 288:	00000097          	auipc	ra,0x0
 28c:	13c080e7          	jalr	316(ra) # 3c4 <close>
 290:	64a2                	ld	s1,8(sp)
 292:	854a                	mv	a0,s2
 294:	60e2                	ld	ra,24(sp)
 296:	6442                	ld	s0,16(sp)
 298:	6902                	ld	s2,0(sp)
 29a:	6105                	add	sp,sp,32
 29c:	8082                	ret
 29e:	597d                	li	s2,-1
 2a0:	bfcd                	j	292 <stat+0x36>

00000000000002a2 <atoi>:
 2a2:	1141                	add	sp,sp,-16
 2a4:	e422                	sd	s0,8(sp)
 2a6:	0800                	add	s0,sp,16
 2a8:	00054683          	lbu	a3,0(a0)
 2ac:	fd06879b          	addw	a5,a3,-48
 2b0:	0ff7f793          	zext.b	a5,a5
 2b4:	4625                	li	a2,9
 2b6:	02f66863          	bltu	a2,a5,2e6 <atoi+0x44>
 2ba:	872a                	mv	a4,a0
 2bc:	4501                	li	a0,0
 2be:	0705                	add	a4,a4,1
 2c0:	0025179b          	sllw	a5,a0,0x2
 2c4:	9fa9                	addw	a5,a5,a0
 2c6:	0017979b          	sllw	a5,a5,0x1
 2ca:	9fb5                	addw	a5,a5,a3
 2cc:	fd07851b          	addw	a0,a5,-48
 2d0:	00074683          	lbu	a3,0(a4)
 2d4:	fd06879b          	addw	a5,a3,-48
 2d8:	0ff7f793          	zext.b	a5,a5
 2dc:	fef671e3          	bgeu	a2,a5,2be <atoi+0x1c>
 2e0:	6422                	ld	s0,8(sp)
 2e2:	0141                	add	sp,sp,16
 2e4:	8082                	ret
 2e6:	4501                	li	a0,0
 2e8:	bfe5                	j	2e0 <atoi+0x3e>

00000000000002ea <memmove>:
 2ea:	1141                	add	sp,sp,-16
 2ec:	e422                	sd	s0,8(sp)
 2ee:	0800                	add	s0,sp,16
 2f0:	02b57463          	bgeu	a0,a1,318 <memmove+0x2e>
 2f4:	00c05f63          	blez	a2,312 <memmove+0x28>
 2f8:	1602                	sll	a2,a2,0x20
 2fa:	9201                	srl	a2,a2,0x20
 2fc:	00c507b3          	add	a5,a0,a2
 300:	872a                	mv	a4,a0
 302:	0585                	add	a1,a1,1
 304:	0705                	add	a4,a4,1
 306:	fff5c683          	lbu	a3,-1(a1)
 30a:	fed70fa3          	sb	a3,-1(a4)
 30e:	fef71ae3          	bne	a4,a5,302 <memmove+0x18>
 312:	6422                	ld	s0,8(sp)
 314:	0141                	add	sp,sp,16
 316:	8082                	ret
 318:	00c50733          	add	a4,a0,a2
 31c:	95b2                	add	a1,a1,a2
 31e:	fec05ae3          	blez	a2,312 <memmove+0x28>
 322:	fff6079b          	addw	a5,a2,-1
 326:	1782                	sll	a5,a5,0x20
 328:	9381                	srl	a5,a5,0x20
 32a:	fff7c793          	not	a5,a5
 32e:	97ba                	add	a5,a5,a4
 330:	15fd                	add	a1,a1,-1
 332:	177d                	add	a4,a4,-1
 334:	0005c683          	lbu	a3,0(a1)
 338:	00d70023          	sb	a3,0(a4)
 33c:	fee79ae3          	bne	a5,a4,330 <memmove+0x46>
 340:	bfc9                	j	312 <memmove+0x28>

0000000000000342 <memcmp>:
 342:	1141                	add	sp,sp,-16
 344:	e422                	sd	s0,8(sp)
 346:	0800                	add	s0,sp,16
 348:	ca05                	beqz	a2,378 <memcmp+0x36>
 34a:	fff6069b          	addw	a3,a2,-1
 34e:	1682                	sll	a3,a3,0x20
 350:	9281                	srl	a3,a3,0x20
 352:	0685                	add	a3,a3,1
 354:	96aa                	add	a3,a3,a0
 356:	00054783          	lbu	a5,0(a0)
 35a:	0005c703          	lbu	a4,0(a1)
 35e:	00e79863          	bne	a5,a4,36e <memcmp+0x2c>
 362:	0505                	add	a0,a0,1
 364:	0585                	add	a1,a1,1
 366:	fed518e3          	bne	a0,a3,356 <memcmp+0x14>
 36a:	4501                	li	a0,0
 36c:	a019                	j	372 <memcmp+0x30>
 36e:	40e7853b          	subw	a0,a5,a4
 372:	6422                	ld	s0,8(sp)
 374:	0141                	add	sp,sp,16
 376:	8082                	ret
 378:	4501                	li	a0,0
 37a:	bfe5                	j	372 <memcmp+0x30>

000000000000037c <memcpy>:
 37c:	1141                	add	sp,sp,-16
 37e:	e406                	sd	ra,8(sp)
 380:	e022                	sd	s0,0(sp)
 382:	0800                	add	s0,sp,16
 384:	00000097          	auipc	ra,0x0
 388:	f66080e7          	jalr	-154(ra) # 2ea <memmove>
 38c:	60a2                	ld	ra,8(sp)
 38e:	6402                	ld	s0,0(sp)
 390:	0141                	add	sp,sp,16
 392:	8082                	ret

0000000000000394 <fork>:
 394:	4885                	li	a7,1
 396:	00000073          	ecall
 39a:	8082                	ret

000000000000039c <exit>:
 39c:	4889                	li	a7,2
 39e:	00000073          	ecall
 3a2:	8082                	ret

00000000000003a4 <wait>:
 3a4:	488d                	li	a7,3
 3a6:	00000073          	ecall
 3aa:	8082                	ret

00000000000003ac <pipe>:
 3ac:	4891                	li	a7,4
 3ae:	00000073          	ecall
 3b2:	8082                	ret

00000000000003b4 <read>:
 3b4:	4895                	li	a7,5
 3b6:	00000073          	ecall
 3ba:	8082                	ret

00000000000003bc <write>:
 3bc:	48c1                	li	a7,16
 3be:	00000073          	ecall
 3c2:	8082                	ret

00000000000003c4 <close>:
 3c4:	48d5                	li	a7,21
 3c6:	00000073          	ecall
 3ca:	8082                	ret

00000000000003cc <kill>:
 3cc:	4899                	li	a7,6
 3ce:	00000073          	ecall
 3d2:	8082                	ret

00000000000003d4 <exec>:
 3d4:	489d                	li	a7,7
 3d6:	00000073          	ecall
 3da:	8082                	ret

00000000000003dc <open>:
 3dc:	48bd                	li	a7,15
 3de:	00000073          	ecall
 3e2:	8082                	ret

00000000000003e4 <mknod>:
 3e4:	48c5                	li	a7,17
 3e6:	00000073          	ecall
 3ea:	8082                	ret

00000000000003ec <unlink>:
 3ec:	48c9                	li	a7,18
 3ee:	00000073          	ecall
 3f2:	8082                	ret

00000000000003f4 <fstat>:
 3f4:	48a1                	li	a7,8
 3f6:	00000073          	ecall
 3fa:	8082                	ret

00000000000003fc <link>:
 3fc:	48cd                	li	a7,19
 3fe:	00000073          	ecall
 402:	8082                	ret

0000000000000404 <mkdir>:
 404:	48d1                	li	a7,20
 406:	00000073          	ecall
 40a:	8082                	ret

000000000000040c <chdir>:
 40c:	48a5                	li	a7,9
 40e:	00000073          	ecall
 412:	8082                	ret

0000000000000414 <dup>:
 414:	48a9                	li	a7,10
 416:	00000073          	ecall
 41a:	8082                	ret

000000000000041c <getpid>:
 41c:	48ad                	li	a7,11
 41e:	00000073          	ecall
 422:	8082                	ret

0000000000000424 <sbrk>:
 424:	48b1                	li	a7,12
 426:	00000073          	ecall
 42a:	8082                	ret

000000000000042c <sleep>:
 42c:	48b5                	li	a7,13
 42e:	00000073          	ecall
 432:	8082                	ret

0000000000000434 <uptime>:
 434:	48b9                	li	a7,14
 436:	00000073          	ecall
 43a:	8082                	ret

000000000000043c <waitx>:
 43c:	48d9                	li	a7,22
 43e:	00000073          	ecall
 442:	8082                	ret

0000000000000444 <getSysCount>:
 444:	48dd                	li	a7,23
 446:	00000073          	ecall
 44a:	8082                	ret

000000000000044c <sigalarm>:
 44c:	48e1                	li	a7,24
 44e:	00000073          	ecall
 452:	8082                	ret

0000000000000454 <sigreturn>:
 454:	48e5                	li	a7,25
 456:	00000073          	ecall
 45a:	8082                	ret
