
user/_stressfs:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	dd010113          	add	sp,sp,-560
   4:	22113423          	sd	ra,552(sp)
   8:	22813023          	sd	s0,544(sp)
   c:	20913c23          	sd	s1,536(sp)
  10:	21213823          	sd	s2,528(sp)
  14:	1c00                	add	s0,sp,560
  16:	00001797          	auipc	a5,0x1
  1a:	8fa78793          	add	a5,a5,-1798 # 910 <malloc+0x13e>
  1e:	6398                	ld	a4,0(a5)
  20:	fce43823          	sd	a4,-48(s0)
  24:	0087d783          	lhu	a5,8(a5)
  28:	fcf41c23          	sh	a5,-40(s0)
  2c:	00001517          	auipc	a0,0x1
  30:	8b450513          	add	a0,a0,-1868 # 8e0 <malloc+0x10e>
  34:	00000097          	auipc	ra,0x0
  38:	6e6080e7          	jalr	1766(ra) # 71a <printf>
  3c:	20000613          	li	a2,512
  40:	06100593          	li	a1,97
  44:	dd040513          	add	a0,s0,-560
  48:	00000097          	auipc	ra,0x0
  4c:	150080e7          	jalr	336(ra) # 198 <memset>
  50:	4481                	li	s1,0
  52:	4911                	li	s2,4
  54:	00000097          	auipc	ra,0x0
  58:	336080e7          	jalr	822(ra) # 38a <fork>
  5c:	00a04563          	bgtz	a0,66 <main+0x66>
  60:	2485                	addw	s1,s1,1
  62:	ff2499e3          	bne	s1,s2,54 <main+0x54>
  66:	85a6                	mv	a1,s1
  68:	00001517          	auipc	a0,0x1
  6c:	89050513          	add	a0,a0,-1904 # 8f8 <malloc+0x126>
  70:	00000097          	auipc	ra,0x0
  74:	6aa080e7          	jalr	1706(ra) # 71a <printf>
  78:	fd844783          	lbu	a5,-40(s0)
  7c:	9fa5                	addw	a5,a5,s1
  7e:	fcf40c23          	sb	a5,-40(s0)
  82:	20200593          	li	a1,514
  86:	fd040513          	add	a0,s0,-48
  8a:	00000097          	auipc	ra,0x0
  8e:	348080e7          	jalr	840(ra) # 3d2 <open>
  92:	892a                	mv	s2,a0
  94:	44d1                	li	s1,20
  96:	20000613          	li	a2,512
  9a:	dd040593          	add	a1,s0,-560
  9e:	854a                	mv	a0,s2
  a0:	00000097          	auipc	ra,0x0
  a4:	312080e7          	jalr	786(ra) # 3b2 <write>
  a8:	34fd                	addw	s1,s1,-1
  aa:	f4f5                	bnez	s1,96 <main+0x96>
  ac:	854a                	mv	a0,s2
  ae:	00000097          	auipc	ra,0x0
  b2:	30c080e7          	jalr	780(ra) # 3ba <close>
  b6:	00001517          	auipc	a0,0x1
  ba:	85250513          	add	a0,a0,-1966 # 908 <malloc+0x136>
  be:	00000097          	auipc	ra,0x0
  c2:	65c080e7          	jalr	1628(ra) # 71a <printf>
  c6:	4581                	li	a1,0
  c8:	fd040513          	add	a0,s0,-48
  cc:	00000097          	auipc	ra,0x0
  d0:	306080e7          	jalr	774(ra) # 3d2 <open>
  d4:	892a                	mv	s2,a0
  d6:	44d1                	li	s1,20
  d8:	20000613          	li	a2,512
  dc:	dd040593          	add	a1,s0,-560
  e0:	854a                	mv	a0,s2
  e2:	00000097          	auipc	ra,0x0
  e6:	2c8080e7          	jalr	712(ra) # 3aa <read>
  ea:	34fd                	addw	s1,s1,-1
  ec:	f4f5                	bnez	s1,d8 <main+0xd8>
  ee:	854a                	mv	a0,s2
  f0:	00000097          	auipc	ra,0x0
  f4:	2ca080e7          	jalr	714(ra) # 3ba <close>
  f8:	4501                	li	a0,0
  fa:	00000097          	auipc	ra,0x0
  fe:	2a0080e7          	jalr	672(ra) # 39a <wait>
 102:	4501                	li	a0,0
 104:	00000097          	auipc	ra,0x0
 108:	28e080e7          	jalr	654(ra) # 392 <exit>

000000000000010c <_main>:
 10c:	1141                	add	sp,sp,-16
 10e:	e406                	sd	ra,8(sp)
 110:	e022                	sd	s0,0(sp)
 112:	0800                	add	s0,sp,16
 114:	00000097          	auipc	ra,0x0
 118:	eec080e7          	jalr	-276(ra) # 0 <main>
 11c:	4501                	li	a0,0
 11e:	00000097          	auipc	ra,0x0
 122:	274080e7          	jalr	628(ra) # 392 <exit>

0000000000000126 <strcpy>:
 126:	1141                	add	sp,sp,-16
 128:	e422                	sd	s0,8(sp)
 12a:	0800                	add	s0,sp,16
 12c:	87aa                	mv	a5,a0
 12e:	0585                	add	a1,a1,1
 130:	0785                	add	a5,a5,1
 132:	fff5c703          	lbu	a4,-1(a1)
 136:	fee78fa3          	sb	a4,-1(a5)
 13a:	fb75                	bnez	a4,12e <strcpy+0x8>
 13c:	6422                	ld	s0,8(sp)
 13e:	0141                	add	sp,sp,16
 140:	8082                	ret

0000000000000142 <strcmp>:
 142:	1141                	add	sp,sp,-16
 144:	e422                	sd	s0,8(sp)
 146:	0800                	add	s0,sp,16
 148:	00054783          	lbu	a5,0(a0)
 14c:	cb91                	beqz	a5,160 <strcmp+0x1e>
 14e:	0005c703          	lbu	a4,0(a1)
 152:	00f71763          	bne	a4,a5,160 <strcmp+0x1e>
 156:	0505                	add	a0,a0,1
 158:	0585                	add	a1,a1,1
 15a:	00054783          	lbu	a5,0(a0)
 15e:	fbe5                	bnez	a5,14e <strcmp+0xc>
 160:	0005c503          	lbu	a0,0(a1)
 164:	40a7853b          	subw	a0,a5,a0
 168:	6422                	ld	s0,8(sp)
 16a:	0141                	add	sp,sp,16
 16c:	8082                	ret

000000000000016e <strlen>:
 16e:	1141                	add	sp,sp,-16
 170:	e422                	sd	s0,8(sp)
 172:	0800                	add	s0,sp,16
 174:	00054783          	lbu	a5,0(a0)
 178:	cf91                	beqz	a5,194 <strlen+0x26>
 17a:	0505                	add	a0,a0,1
 17c:	87aa                	mv	a5,a0
 17e:	86be                	mv	a3,a5
 180:	0785                	add	a5,a5,1
 182:	fff7c703          	lbu	a4,-1(a5)
 186:	ff65                	bnez	a4,17e <strlen+0x10>
 188:	40a6853b          	subw	a0,a3,a0
 18c:	2505                	addw	a0,a0,1
 18e:	6422                	ld	s0,8(sp)
 190:	0141                	add	sp,sp,16
 192:	8082                	ret
 194:	4501                	li	a0,0
 196:	bfe5                	j	18e <strlen+0x20>

0000000000000198 <memset>:
 198:	1141                	add	sp,sp,-16
 19a:	e422                	sd	s0,8(sp)
 19c:	0800                	add	s0,sp,16
 19e:	ca19                	beqz	a2,1b4 <memset+0x1c>
 1a0:	87aa                	mv	a5,a0
 1a2:	1602                	sll	a2,a2,0x20
 1a4:	9201                	srl	a2,a2,0x20
 1a6:	00a60733          	add	a4,a2,a0
 1aa:	00b78023          	sb	a1,0(a5)
 1ae:	0785                	add	a5,a5,1
 1b0:	fee79de3          	bne	a5,a4,1aa <memset+0x12>
 1b4:	6422                	ld	s0,8(sp)
 1b6:	0141                	add	sp,sp,16
 1b8:	8082                	ret

00000000000001ba <strchr>:
 1ba:	1141                	add	sp,sp,-16
 1bc:	e422                	sd	s0,8(sp)
 1be:	0800                	add	s0,sp,16
 1c0:	00054783          	lbu	a5,0(a0)
 1c4:	cb99                	beqz	a5,1da <strchr+0x20>
 1c6:	00f58763          	beq	a1,a5,1d4 <strchr+0x1a>
 1ca:	0505                	add	a0,a0,1
 1cc:	00054783          	lbu	a5,0(a0)
 1d0:	fbfd                	bnez	a5,1c6 <strchr+0xc>
 1d2:	4501                	li	a0,0
 1d4:	6422                	ld	s0,8(sp)
 1d6:	0141                	add	sp,sp,16
 1d8:	8082                	ret
 1da:	4501                	li	a0,0
 1dc:	bfe5                	j	1d4 <strchr+0x1a>

00000000000001de <gets>:
 1de:	711d                	add	sp,sp,-96
 1e0:	ec86                	sd	ra,88(sp)
 1e2:	e8a2                	sd	s0,80(sp)
 1e4:	e4a6                	sd	s1,72(sp)
 1e6:	e0ca                	sd	s2,64(sp)
 1e8:	fc4e                	sd	s3,56(sp)
 1ea:	f852                	sd	s4,48(sp)
 1ec:	f456                	sd	s5,40(sp)
 1ee:	f05a                	sd	s6,32(sp)
 1f0:	ec5e                	sd	s7,24(sp)
 1f2:	1080                	add	s0,sp,96
 1f4:	8baa                	mv	s7,a0
 1f6:	8a2e                	mv	s4,a1
 1f8:	892a                	mv	s2,a0
 1fa:	4481                	li	s1,0
 1fc:	4aa9                	li	s5,10
 1fe:	4b35                	li	s6,13
 200:	89a6                	mv	s3,s1
 202:	2485                	addw	s1,s1,1
 204:	0344d863          	bge	s1,s4,234 <gets+0x56>
 208:	4605                	li	a2,1
 20a:	faf40593          	add	a1,s0,-81
 20e:	4501                	li	a0,0
 210:	00000097          	auipc	ra,0x0
 214:	19a080e7          	jalr	410(ra) # 3aa <read>
 218:	00a05e63          	blez	a0,234 <gets+0x56>
 21c:	faf44783          	lbu	a5,-81(s0)
 220:	00f90023          	sb	a5,0(s2)
 224:	01578763          	beq	a5,s5,232 <gets+0x54>
 228:	0905                	add	s2,s2,1
 22a:	fd679be3          	bne	a5,s6,200 <gets+0x22>
 22e:	89a6                	mv	s3,s1
 230:	a011                	j	234 <gets+0x56>
 232:	89a6                	mv	s3,s1
 234:	99de                	add	s3,s3,s7
 236:	00098023          	sb	zero,0(s3)
 23a:	855e                	mv	a0,s7
 23c:	60e6                	ld	ra,88(sp)
 23e:	6446                	ld	s0,80(sp)
 240:	64a6                	ld	s1,72(sp)
 242:	6906                	ld	s2,64(sp)
 244:	79e2                	ld	s3,56(sp)
 246:	7a42                	ld	s4,48(sp)
 248:	7aa2                	ld	s5,40(sp)
 24a:	7b02                	ld	s6,32(sp)
 24c:	6be2                	ld	s7,24(sp)
 24e:	6125                	add	sp,sp,96
 250:	8082                	ret

0000000000000252 <stat>:
 252:	1101                	add	sp,sp,-32
 254:	ec06                	sd	ra,24(sp)
 256:	e822                	sd	s0,16(sp)
 258:	e04a                	sd	s2,0(sp)
 25a:	1000                	add	s0,sp,32
 25c:	892e                	mv	s2,a1
 25e:	4581                	li	a1,0
 260:	00000097          	auipc	ra,0x0
 264:	172080e7          	jalr	370(ra) # 3d2 <open>
 268:	02054663          	bltz	a0,294 <stat+0x42>
 26c:	e426                	sd	s1,8(sp)
 26e:	84aa                	mv	s1,a0
 270:	85ca                	mv	a1,s2
 272:	00000097          	auipc	ra,0x0
 276:	178080e7          	jalr	376(ra) # 3ea <fstat>
 27a:	892a                	mv	s2,a0
 27c:	8526                	mv	a0,s1
 27e:	00000097          	auipc	ra,0x0
 282:	13c080e7          	jalr	316(ra) # 3ba <close>
 286:	64a2                	ld	s1,8(sp)
 288:	854a                	mv	a0,s2
 28a:	60e2                	ld	ra,24(sp)
 28c:	6442                	ld	s0,16(sp)
 28e:	6902                	ld	s2,0(sp)
 290:	6105                	add	sp,sp,32
 292:	8082                	ret
 294:	597d                	li	s2,-1
 296:	bfcd                	j	288 <stat+0x36>

0000000000000298 <atoi>:
 298:	1141                	add	sp,sp,-16
 29a:	e422                	sd	s0,8(sp)
 29c:	0800                	add	s0,sp,16
 29e:	00054683          	lbu	a3,0(a0)
 2a2:	fd06879b          	addw	a5,a3,-48
 2a6:	0ff7f793          	zext.b	a5,a5
 2aa:	4625                	li	a2,9
 2ac:	02f66863          	bltu	a2,a5,2dc <atoi+0x44>
 2b0:	872a                	mv	a4,a0
 2b2:	4501                	li	a0,0
 2b4:	0705                	add	a4,a4,1
 2b6:	0025179b          	sllw	a5,a0,0x2
 2ba:	9fa9                	addw	a5,a5,a0
 2bc:	0017979b          	sllw	a5,a5,0x1
 2c0:	9fb5                	addw	a5,a5,a3
 2c2:	fd07851b          	addw	a0,a5,-48
 2c6:	00074683          	lbu	a3,0(a4)
 2ca:	fd06879b          	addw	a5,a3,-48
 2ce:	0ff7f793          	zext.b	a5,a5
 2d2:	fef671e3          	bgeu	a2,a5,2b4 <atoi+0x1c>
 2d6:	6422                	ld	s0,8(sp)
 2d8:	0141                	add	sp,sp,16
 2da:	8082                	ret
 2dc:	4501                	li	a0,0
 2de:	bfe5                	j	2d6 <atoi+0x3e>

00000000000002e0 <memmove>:
 2e0:	1141                	add	sp,sp,-16
 2e2:	e422                	sd	s0,8(sp)
 2e4:	0800                	add	s0,sp,16
 2e6:	02b57463          	bgeu	a0,a1,30e <memmove+0x2e>
 2ea:	00c05f63          	blez	a2,308 <memmove+0x28>
 2ee:	1602                	sll	a2,a2,0x20
 2f0:	9201                	srl	a2,a2,0x20
 2f2:	00c507b3          	add	a5,a0,a2
 2f6:	872a                	mv	a4,a0
 2f8:	0585                	add	a1,a1,1
 2fa:	0705                	add	a4,a4,1
 2fc:	fff5c683          	lbu	a3,-1(a1)
 300:	fed70fa3          	sb	a3,-1(a4)
 304:	fef71ae3          	bne	a4,a5,2f8 <memmove+0x18>
 308:	6422                	ld	s0,8(sp)
 30a:	0141                	add	sp,sp,16
 30c:	8082                	ret
 30e:	00c50733          	add	a4,a0,a2
 312:	95b2                	add	a1,a1,a2
 314:	fec05ae3          	blez	a2,308 <memmove+0x28>
 318:	fff6079b          	addw	a5,a2,-1
 31c:	1782                	sll	a5,a5,0x20
 31e:	9381                	srl	a5,a5,0x20
 320:	fff7c793          	not	a5,a5
 324:	97ba                	add	a5,a5,a4
 326:	15fd                	add	a1,a1,-1
 328:	177d                	add	a4,a4,-1
 32a:	0005c683          	lbu	a3,0(a1)
 32e:	00d70023          	sb	a3,0(a4)
 332:	fee79ae3          	bne	a5,a4,326 <memmove+0x46>
 336:	bfc9                	j	308 <memmove+0x28>

0000000000000338 <memcmp>:
 338:	1141                	add	sp,sp,-16
 33a:	e422                	sd	s0,8(sp)
 33c:	0800                	add	s0,sp,16
 33e:	ca05                	beqz	a2,36e <memcmp+0x36>
 340:	fff6069b          	addw	a3,a2,-1
 344:	1682                	sll	a3,a3,0x20
 346:	9281                	srl	a3,a3,0x20
 348:	0685                	add	a3,a3,1
 34a:	96aa                	add	a3,a3,a0
 34c:	00054783          	lbu	a5,0(a0)
 350:	0005c703          	lbu	a4,0(a1)
 354:	00e79863          	bne	a5,a4,364 <memcmp+0x2c>
 358:	0505                	add	a0,a0,1
 35a:	0585                	add	a1,a1,1
 35c:	fed518e3          	bne	a0,a3,34c <memcmp+0x14>
 360:	4501                	li	a0,0
 362:	a019                	j	368 <memcmp+0x30>
 364:	40e7853b          	subw	a0,a5,a4
 368:	6422                	ld	s0,8(sp)
 36a:	0141                	add	sp,sp,16
 36c:	8082                	ret
 36e:	4501                	li	a0,0
 370:	bfe5                	j	368 <memcmp+0x30>

0000000000000372 <memcpy>:
 372:	1141                	add	sp,sp,-16
 374:	e406                	sd	ra,8(sp)
 376:	e022                	sd	s0,0(sp)
 378:	0800                	add	s0,sp,16
 37a:	00000097          	auipc	ra,0x0
 37e:	f66080e7          	jalr	-154(ra) # 2e0 <memmove>
 382:	60a2                	ld	ra,8(sp)
 384:	6402                	ld	s0,0(sp)
 386:	0141                	add	sp,sp,16
 388:	8082                	ret

000000000000038a <fork>:
 38a:	4885                	li	a7,1
 38c:	00000073          	ecall
 390:	8082                	ret

0000000000000392 <exit>:
 392:	4889                	li	a7,2
 394:	00000073          	ecall
 398:	8082                	ret

000000000000039a <wait>:
 39a:	488d                	li	a7,3
 39c:	00000073          	ecall
 3a0:	8082                	ret

00000000000003a2 <pipe>:
 3a2:	4891                	li	a7,4
 3a4:	00000073          	ecall
 3a8:	8082                	ret

00000000000003aa <read>:
 3aa:	4895                	li	a7,5
 3ac:	00000073          	ecall
 3b0:	8082                	ret

00000000000003b2 <write>:
 3b2:	48c1                	li	a7,16
 3b4:	00000073          	ecall
 3b8:	8082                	ret

00000000000003ba <close>:
 3ba:	48d5                	li	a7,21
 3bc:	00000073          	ecall
 3c0:	8082                	ret

00000000000003c2 <kill>:
 3c2:	4899                	li	a7,6
 3c4:	00000073          	ecall
 3c8:	8082                	ret

00000000000003ca <exec>:
 3ca:	489d                	li	a7,7
 3cc:	00000073          	ecall
 3d0:	8082                	ret

00000000000003d2 <open>:
 3d2:	48bd                	li	a7,15
 3d4:	00000073          	ecall
 3d8:	8082                	ret

00000000000003da <mknod>:
 3da:	48c5                	li	a7,17
 3dc:	00000073          	ecall
 3e0:	8082                	ret

00000000000003e2 <unlink>:
 3e2:	48c9                	li	a7,18
 3e4:	00000073          	ecall
 3e8:	8082                	ret

00000000000003ea <fstat>:
 3ea:	48a1                	li	a7,8
 3ec:	00000073          	ecall
 3f0:	8082                	ret

00000000000003f2 <link>:
 3f2:	48cd                	li	a7,19
 3f4:	00000073          	ecall
 3f8:	8082                	ret

00000000000003fa <mkdir>:
 3fa:	48d1                	li	a7,20
 3fc:	00000073          	ecall
 400:	8082                	ret

0000000000000402 <chdir>:
 402:	48a5                	li	a7,9
 404:	00000073          	ecall
 408:	8082                	ret

000000000000040a <dup>:
 40a:	48a9                	li	a7,10
 40c:	00000073          	ecall
 410:	8082                	ret

0000000000000412 <getpid>:
 412:	48ad                	li	a7,11
 414:	00000073          	ecall
 418:	8082                	ret

000000000000041a <sbrk>:
 41a:	48b1                	li	a7,12
 41c:	00000073          	ecall
 420:	8082                	ret

0000000000000422 <sleep>:
 422:	48b5                	li	a7,13
 424:	00000073          	ecall
 428:	8082                	ret

000000000000042a <uptime>:
 42a:	48b9                	li	a7,14
 42c:	00000073          	ecall
 430:	8082                	ret

0000000000000432 <waitx>:
 432:	48d9                	li	a7,22
 434:	00000073          	ecall
 438:	8082                	ret

000000000000043a <getSysCount>:
 43a:	48dd                	li	a7,23
 43c:	00000073          	ecall
 440:	8082                	ret

0000000000000442 <sigalarm>:
 442:	48e1                	li	a7,24
 444:	00000073          	ecall
 448:	8082                	ret

000000000000044a <sigreturn>:
 44a:	48e5                	li	a7,25
 44c:	00000073          	ecall
 450:	8082                	ret

0000000000000452 <putc>:
 452:	1101                	add	sp,sp,-32
 454:	ec06                	sd	ra,24(sp)
 456:	e822                	sd	s0,16(sp)
 458:	1000                	add	s0,sp,32
 45a:	feb407a3          	sb	a1,-17(s0)
 45e:	4605                	li	a2,1
 460:	fef40593          	add	a1,s0,-17
 464:	00000097          	auipc	ra,0x0
 468:	f4e080e7          	jalr	-178(ra) # 3b2 <write>
 46c:	60e2                	ld	ra,24(sp)
 46e:	6442                	ld	s0,16(sp)
 470:	6105                	add	sp,sp,32
 472:	8082                	ret

0000000000000474 <printint>:
 474:	7139                	add	sp,sp,-64
 476:	fc06                	sd	ra,56(sp)
 478:	f822                	sd	s0,48(sp)
 47a:	f426                	sd	s1,40(sp)
 47c:	0080                	add	s0,sp,64
 47e:	84aa                	mv	s1,a0
 480:	c299                	beqz	a3,486 <printint+0x12>
 482:	0805cb63          	bltz	a1,518 <printint+0xa4>
 486:	2581                	sext.w	a1,a1
 488:	4881                	li	a7,0
 48a:	fc040693          	add	a3,s0,-64
 48e:	4701                	li	a4,0
 490:	2601                	sext.w	a2,a2
 492:	00000517          	auipc	a0,0x0
 496:	4ee50513          	add	a0,a0,1262 # 980 <digits>
 49a:	883a                	mv	a6,a4
 49c:	2705                	addw	a4,a4,1
 49e:	02c5f7bb          	remuw	a5,a1,a2
 4a2:	1782                	sll	a5,a5,0x20
 4a4:	9381                	srl	a5,a5,0x20
 4a6:	97aa                	add	a5,a5,a0
 4a8:	0007c783          	lbu	a5,0(a5)
 4ac:	00f68023          	sb	a5,0(a3)
 4b0:	0005879b          	sext.w	a5,a1
 4b4:	02c5d5bb          	divuw	a1,a1,a2
 4b8:	0685                	add	a3,a3,1
 4ba:	fec7f0e3          	bgeu	a5,a2,49a <printint+0x26>
 4be:	00088c63          	beqz	a7,4d6 <printint+0x62>
 4c2:	fd070793          	add	a5,a4,-48
 4c6:	00878733          	add	a4,a5,s0
 4ca:	02d00793          	li	a5,45
 4ce:	fef70823          	sb	a5,-16(a4)
 4d2:	0028071b          	addw	a4,a6,2
 4d6:	02e05c63          	blez	a4,50e <printint+0x9a>
 4da:	f04a                	sd	s2,32(sp)
 4dc:	ec4e                	sd	s3,24(sp)
 4de:	fc040793          	add	a5,s0,-64
 4e2:	00e78933          	add	s2,a5,a4
 4e6:	fff78993          	add	s3,a5,-1
 4ea:	99ba                	add	s3,s3,a4
 4ec:	377d                	addw	a4,a4,-1
 4ee:	1702                	sll	a4,a4,0x20
 4f0:	9301                	srl	a4,a4,0x20
 4f2:	40e989b3          	sub	s3,s3,a4
 4f6:	fff94583          	lbu	a1,-1(s2)
 4fa:	8526                	mv	a0,s1
 4fc:	00000097          	auipc	ra,0x0
 500:	f56080e7          	jalr	-170(ra) # 452 <putc>
 504:	197d                	add	s2,s2,-1
 506:	ff3918e3          	bne	s2,s3,4f6 <printint+0x82>
 50a:	7902                	ld	s2,32(sp)
 50c:	69e2                	ld	s3,24(sp)
 50e:	70e2                	ld	ra,56(sp)
 510:	7442                	ld	s0,48(sp)
 512:	74a2                	ld	s1,40(sp)
 514:	6121                	add	sp,sp,64
 516:	8082                	ret
 518:	40b005bb          	negw	a1,a1
 51c:	4885                	li	a7,1
 51e:	b7b5                	j	48a <printint+0x16>

0000000000000520 <vprintf>:
 520:	715d                	add	sp,sp,-80
 522:	e486                	sd	ra,72(sp)
 524:	e0a2                	sd	s0,64(sp)
 526:	f84a                	sd	s2,48(sp)
 528:	0880                	add	s0,sp,80
 52a:	0005c903          	lbu	s2,0(a1)
 52e:	1a090a63          	beqz	s2,6e2 <vprintf+0x1c2>
 532:	fc26                	sd	s1,56(sp)
 534:	f44e                	sd	s3,40(sp)
 536:	f052                	sd	s4,32(sp)
 538:	ec56                	sd	s5,24(sp)
 53a:	e85a                	sd	s6,16(sp)
 53c:	e45e                	sd	s7,8(sp)
 53e:	8aaa                	mv	s5,a0
 540:	8bb2                	mv	s7,a2
 542:	00158493          	add	s1,a1,1
 546:	4981                	li	s3,0
 548:	02500a13          	li	s4,37
 54c:	4b55                	li	s6,21
 54e:	a839                	j	56c <vprintf+0x4c>
 550:	85ca                	mv	a1,s2
 552:	8556                	mv	a0,s5
 554:	00000097          	auipc	ra,0x0
 558:	efe080e7          	jalr	-258(ra) # 452 <putc>
 55c:	a019                	j	562 <vprintf+0x42>
 55e:	01498d63          	beq	s3,s4,578 <vprintf+0x58>
 562:	0485                	add	s1,s1,1
 564:	fff4c903          	lbu	s2,-1(s1)
 568:	16090763          	beqz	s2,6d6 <vprintf+0x1b6>
 56c:	fe0999e3          	bnez	s3,55e <vprintf+0x3e>
 570:	ff4910e3          	bne	s2,s4,550 <vprintf+0x30>
 574:	89d2                	mv	s3,s4
 576:	b7f5                	j	562 <vprintf+0x42>
 578:	13490463          	beq	s2,s4,6a0 <vprintf+0x180>
 57c:	f9d9079b          	addw	a5,s2,-99
 580:	0ff7f793          	zext.b	a5,a5
 584:	12fb6763          	bltu	s6,a5,6b2 <vprintf+0x192>
 588:	f9d9079b          	addw	a5,s2,-99
 58c:	0ff7f713          	zext.b	a4,a5
 590:	12eb6163          	bltu	s6,a4,6b2 <vprintf+0x192>
 594:	00271793          	sll	a5,a4,0x2
 598:	00000717          	auipc	a4,0x0
 59c:	39070713          	add	a4,a4,912 # 928 <malloc+0x156>
 5a0:	97ba                	add	a5,a5,a4
 5a2:	439c                	lw	a5,0(a5)
 5a4:	97ba                	add	a5,a5,a4
 5a6:	8782                	jr	a5
 5a8:	008b8913          	add	s2,s7,8
 5ac:	4685                	li	a3,1
 5ae:	4629                	li	a2,10
 5b0:	000ba583          	lw	a1,0(s7)
 5b4:	8556                	mv	a0,s5
 5b6:	00000097          	auipc	ra,0x0
 5ba:	ebe080e7          	jalr	-322(ra) # 474 <printint>
 5be:	8bca                	mv	s7,s2
 5c0:	4981                	li	s3,0
 5c2:	b745                	j	562 <vprintf+0x42>
 5c4:	008b8913          	add	s2,s7,8
 5c8:	4681                	li	a3,0
 5ca:	4629                	li	a2,10
 5cc:	000ba583          	lw	a1,0(s7)
 5d0:	8556                	mv	a0,s5
 5d2:	00000097          	auipc	ra,0x0
 5d6:	ea2080e7          	jalr	-350(ra) # 474 <printint>
 5da:	8bca                	mv	s7,s2
 5dc:	4981                	li	s3,0
 5de:	b751                	j	562 <vprintf+0x42>
 5e0:	008b8913          	add	s2,s7,8
 5e4:	4681                	li	a3,0
 5e6:	4641                	li	a2,16
 5e8:	000ba583          	lw	a1,0(s7)
 5ec:	8556                	mv	a0,s5
 5ee:	00000097          	auipc	ra,0x0
 5f2:	e86080e7          	jalr	-378(ra) # 474 <printint>
 5f6:	8bca                	mv	s7,s2
 5f8:	4981                	li	s3,0
 5fa:	b7a5                	j	562 <vprintf+0x42>
 5fc:	e062                	sd	s8,0(sp)
 5fe:	008b8c13          	add	s8,s7,8
 602:	000bb983          	ld	s3,0(s7)
 606:	03000593          	li	a1,48
 60a:	8556                	mv	a0,s5
 60c:	00000097          	auipc	ra,0x0
 610:	e46080e7          	jalr	-442(ra) # 452 <putc>
 614:	07800593          	li	a1,120
 618:	8556                	mv	a0,s5
 61a:	00000097          	auipc	ra,0x0
 61e:	e38080e7          	jalr	-456(ra) # 452 <putc>
 622:	4941                	li	s2,16
 624:	00000b97          	auipc	s7,0x0
 628:	35cb8b93          	add	s7,s7,860 # 980 <digits>
 62c:	03c9d793          	srl	a5,s3,0x3c
 630:	97de                	add	a5,a5,s7
 632:	0007c583          	lbu	a1,0(a5)
 636:	8556                	mv	a0,s5
 638:	00000097          	auipc	ra,0x0
 63c:	e1a080e7          	jalr	-486(ra) # 452 <putc>
 640:	0992                	sll	s3,s3,0x4
 642:	397d                	addw	s2,s2,-1
 644:	fe0914e3          	bnez	s2,62c <vprintf+0x10c>
 648:	8be2                	mv	s7,s8
 64a:	4981                	li	s3,0
 64c:	6c02                	ld	s8,0(sp)
 64e:	bf11                	j	562 <vprintf+0x42>
 650:	008b8993          	add	s3,s7,8
 654:	000bb903          	ld	s2,0(s7)
 658:	02090163          	beqz	s2,67a <vprintf+0x15a>
 65c:	00094583          	lbu	a1,0(s2)
 660:	c9a5                	beqz	a1,6d0 <vprintf+0x1b0>
 662:	8556                	mv	a0,s5
 664:	00000097          	auipc	ra,0x0
 668:	dee080e7          	jalr	-530(ra) # 452 <putc>
 66c:	0905                	add	s2,s2,1
 66e:	00094583          	lbu	a1,0(s2)
 672:	f9e5                	bnez	a1,662 <vprintf+0x142>
 674:	8bce                	mv	s7,s3
 676:	4981                	li	s3,0
 678:	b5ed                	j	562 <vprintf+0x42>
 67a:	00000917          	auipc	s2,0x0
 67e:	2a690913          	add	s2,s2,678 # 920 <malloc+0x14e>
 682:	02800593          	li	a1,40
 686:	bff1                	j	662 <vprintf+0x142>
 688:	008b8913          	add	s2,s7,8
 68c:	000bc583          	lbu	a1,0(s7)
 690:	8556                	mv	a0,s5
 692:	00000097          	auipc	ra,0x0
 696:	dc0080e7          	jalr	-576(ra) # 452 <putc>
 69a:	8bca                	mv	s7,s2
 69c:	4981                	li	s3,0
 69e:	b5d1                	j	562 <vprintf+0x42>
 6a0:	02500593          	li	a1,37
 6a4:	8556                	mv	a0,s5
 6a6:	00000097          	auipc	ra,0x0
 6aa:	dac080e7          	jalr	-596(ra) # 452 <putc>
 6ae:	4981                	li	s3,0
 6b0:	bd4d                	j	562 <vprintf+0x42>
 6b2:	02500593          	li	a1,37
 6b6:	8556                	mv	a0,s5
 6b8:	00000097          	auipc	ra,0x0
 6bc:	d9a080e7          	jalr	-614(ra) # 452 <putc>
 6c0:	85ca                	mv	a1,s2
 6c2:	8556                	mv	a0,s5
 6c4:	00000097          	auipc	ra,0x0
 6c8:	d8e080e7          	jalr	-626(ra) # 452 <putc>
 6cc:	4981                	li	s3,0
 6ce:	bd51                	j	562 <vprintf+0x42>
 6d0:	8bce                	mv	s7,s3
 6d2:	4981                	li	s3,0
 6d4:	b579                	j	562 <vprintf+0x42>
 6d6:	74e2                	ld	s1,56(sp)
 6d8:	79a2                	ld	s3,40(sp)
 6da:	7a02                	ld	s4,32(sp)
 6dc:	6ae2                	ld	s5,24(sp)
 6de:	6b42                	ld	s6,16(sp)
 6e0:	6ba2                	ld	s7,8(sp)
 6e2:	60a6                	ld	ra,72(sp)
 6e4:	6406                	ld	s0,64(sp)
 6e6:	7942                	ld	s2,48(sp)
 6e8:	6161                	add	sp,sp,80
 6ea:	8082                	ret

00000000000006ec <fprintf>:
 6ec:	715d                	add	sp,sp,-80
 6ee:	ec06                	sd	ra,24(sp)
 6f0:	e822                	sd	s0,16(sp)
 6f2:	1000                	add	s0,sp,32
 6f4:	e010                	sd	a2,0(s0)
 6f6:	e414                	sd	a3,8(s0)
 6f8:	e818                	sd	a4,16(s0)
 6fa:	ec1c                	sd	a5,24(s0)
 6fc:	03043023          	sd	a6,32(s0)
 700:	03143423          	sd	a7,40(s0)
 704:	fe843423          	sd	s0,-24(s0)
 708:	8622                	mv	a2,s0
 70a:	00000097          	auipc	ra,0x0
 70e:	e16080e7          	jalr	-490(ra) # 520 <vprintf>
 712:	60e2                	ld	ra,24(sp)
 714:	6442                	ld	s0,16(sp)
 716:	6161                	add	sp,sp,80
 718:	8082                	ret

000000000000071a <printf>:
 71a:	711d                	add	sp,sp,-96
 71c:	ec06                	sd	ra,24(sp)
 71e:	e822                	sd	s0,16(sp)
 720:	1000                	add	s0,sp,32
 722:	e40c                	sd	a1,8(s0)
 724:	e810                	sd	a2,16(s0)
 726:	ec14                	sd	a3,24(s0)
 728:	f018                	sd	a4,32(s0)
 72a:	f41c                	sd	a5,40(s0)
 72c:	03043823          	sd	a6,48(s0)
 730:	03143c23          	sd	a7,56(s0)
 734:	00840613          	add	a2,s0,8
 738:	fec43423          	sd	a2,-24(s0)
 73c:	85aa                	mv	a1,a0
 73e:	4505                	li	a0,1
 740:	00000097          	auipc	ra,0x0
 744:	de0080e7          	jalr	-544(ra) # 520 <vprintf>
 748:	60e2                	ld	ra,24(sp)
 74a:	6442                	ld	s0,16(sp)
 74c:	6125                	add	sp,sp,96
 74e:	8082                	ret

0000000000000750 <free>:
 750:	1141                	add	sp,sp,-16
 752:	e422                	sd	s0,8(sp)
 754:	0800                	add	s0,sp,16
 756:	ff050693          	add	a3,a0,-16
 75a:	00001797          	auipc	a5,0x1
 75e:	c867b783          	ld	a5,-890(a5) # 13e0 <freep>
 762:	a02d                	j	78c <free+0x3c>
 764:	4618                	lw	a4,8(a2)
 766:	9f2d                	addw	a4,a4,a1
 768:	fee52c23          	sw	a4,-8(a0)
 76c:	6398                	ld	a4,0(a5)
 76e:	6310                	ld	a2,0(a4)
 770:	a83d                	j	7ae <free+0x5e>
 772:	ff852703          	lw	a4,-8(a0)
 776:	9f31                	addw	a4,a4,a2
 778:	c798                	sw	a4,8(a5)
 77a:	ff053683          	ld	a3,-16(a0)
 77e:	a091                	j	7c2 <free+0x72>
 780:	6398                	ld	a4,0(a5)
 782:	00e7e463          	bltu	a5,a4,78a <free+0x3a>
 786:	00e6ea63          	bltu	a3,a4,79a <free+0x4a>
 78a:	87ba                	mv	a5,a4
 78c:	fed7fae3          	bgeu	a5,a3,780 <free+0x30>
 790:	6398                	ld	a4,0(a5)
 792:	00e6e463          	bltu	a3,a4,79a <free+0x4a>
 796:	fee7eae3          	bltu	a5,a4,78a <free+0x3a>
 79a:	ff852583          	lw	a1,-8(a0)
 79e:	6390                	ld	a2,0(a5)
 7a0:	02059813          	sll	a6,a1,0x20
 7a4:	01c85713          	srl	a4,a6,0x1c
 7a8:	9736                	add	a4,a4,a3
 7aa:	fae60de3          	beq	a2,a4,764 <free+0x14>
 7ae:	fec53823          	sd	a2,-16(a0)
 7b2:	4790                	lw	a2,8(a5)
 7b4:	02061593          	sll	a1,a2,0x20
 7b8:	01c5d713          	srl	a4,a1,0x1c
 7bc:	973e                	add	a4,a4,a5
 7be:	fae68ae3          	beq	a3,a4,772 <free+0x22>
 7c2:	e394                	sd	a3,0(a5)
 7c4:	00001717          	auipc	a4,0x1
 7c8:	c0f73e23          	sd	a5,-996(a4) # 13e0 <freep>
 7cc:	6422                	ld	s0,8(sp)
 7ce:	0141                	add	sp,sp,16
 7d0:	8082                	ret

00000000000007d2 <malloc>:
 7d2:	7139                	add	sp,sp,-64
 7d4:	fc06                	sd	ra,56(sp)
 7d6:	f822                	sd	s0,48(sp)
 7d8:	f426                	sd	s1,40(sp)
 7da:	ec4e                	sd	s3,24(sp)
 7dc:	0080                	add	s0,sp,64
 7de:	02051493          	sll	s1,a0,0x20
 7e2:	9081                	srl	s1,s1,0x20
 7e4:	04bd                	add	s1,s1,15
 7e6:	8091                	srl	s1,s1,0x4
 7e8:	0014899b          	addw	s3,s1,1
 7ec:	0485                	add	s1,s1,1
 7ee:	00001517          	auipc	a0,0x1
 7f2:	bf253503          	ld	a0,-1038(a0) # 13e0 <freep>
 7f6:	c915                	beqz	a0,82a <malloc+0x58>
 7f8:	611c                	ld	a5,0(a0)
 7fa:	4798                	lw	a4,8(a5)
 7fc:	08977e63          	bgeu	a4,s1,898 <malloc+0xc6>
 800:	f04a                	sd	s2,32(sp)
 802:	e852                	sd	s4,16(sp)
 804:	e456                	sd	s5,8(sp)
 806:	e05a                	sd	s6,0(sp)
 808:	8a4e                	mv	s4,s3
 80a:	0009871b          	sext.w	a4,s3
 80e:	6685                	lui	a3,0x1
 810:	00d77363          	bgeu	a4,a3,816 <malloc+0x44>
 814:	6a05                	lui	s4,0x1
 816:	000a0b1b          	sext.w	s6,s4
 81a:	004a1a1b          	sllw	s4,s4,0x4
 81e:	00001917          	auipc	s2,0x1
 822:	bc290913          	add	s2,s2,-1086 # 13e0 <freep>
 826:	5afd                	li	s5,-1
 828:	a091                	j	86c <malloc+0x9a>
 82a:	f04a                	sd	s2,32(sp)
 82c:	e852                	sd	s4,16(sp)
 82e:	e456                	sd	s5,8(sp)
 830:	e05a                	sd	s6,0(sp)
 832:	00001797          	auipc	a5,0x1
 836:	bbe78793          	add	a5,a5,-1090 # 13f0 <base>
 83a:	00001717          	auipc	a4,0x1
 83e:	baf73323          	sd	a5,-1114(a4) # 13e0 <freep>
 842:	e39c                	sd	a5,0(a5)
 844:	0007a423          	sw	zero,8(a5)
 848:	b7c1                	j	808 <malloc+0x36>
 84a:	6398                	ld	a4,0(a5)
 84c:	e118                	sd	a4,0(a0)
 84e:	a08d                	j	8b0 <malloc+0xde>
 850:	01652423          	sw	s6,8(a0)
 854:	0541                	add	a0,a0,16
 856:	00000097          	auipc	ra,0x0
 85a:	efa080e7          	jalr	-262(ra) # 750 <free>
 85e:	00093503          	ld	a0,0(s2)
 862:	c13d                	beqz	a0,8c8 <malloc+0xf6>
 864:	611c                	ld	a5,0(a0)
 866:	4798                	lw	a4,8(a5)
 868:	02977463          	bgeu	a4,s1,890 <malloc+0xbe>
 86c:	00093703          	ld	a4,0(s2)
 870:	853e                	mv	a0,a5
 872:	fef719e3          	bne	a4,a5,864 <malloc+0x92>
 876:	8552                	mv	a0,s4
 878:	00000097          	auipc	ra,0x0
 87c:	ba2080e7          	jalr	-1118(ra) # 41a <sbrk>
 880:	fd5518e3          	bne	a0,s5,850 <malloc+0x7e>
 884:	4501                	li	a0,0
 886:	7902                	ld	s2,32(sp)
 888:	6a42                	ld	s4,16(sp)
 88a:	6aa2                	ld	s5,8(sp)
 88c:	6b02                	ld	s6,0(sp)
 88e:	a03d                	j	8bc <malloc+0xea>
 890:	7902                	ld	s2,32(sp)
 892:	6a42                	ld	s4,16(sp)
 894:	6aa2                	ld	s5,8(sp)
 896:	6b02                	ld	s6,0(sp)
 898:	fae489e3          	beq	s1,a4,84a <malloc+0x78>
 89c:	4137073b          	subw	a4,a4,s3
 8a0:	c798                	sw	a4,8(a5)
 8a2:	02071693          	sll	a3,a4,0x20
 8a6:	01c6d713          	srl	a4,a3,0x1c
 8aa:	97ba                	add	a5,a5,a4
 8ac:	0137a423          	sw	s3,8(a5)
 8b0:	00001717          	auipc	a4,0x1
 8b4:	b2a73823          	sd	a0,-1232(a4) # 13e0 <freep>
 8b8:	01078513          	add	a0,a5,16
 8bc:	70e2                	ld	ra,56(sp)
 8be:	7442                	ld	s0,48(sp)
 8c0:	74a2                	ld	s1,40(sp)
 8c2:	69e2                	ld	s3,24(sp)
 8c4:	6121                	add	sp,sp,64
 8c6:	8082                	ret
 8c8:	7902                	ld	s2,32(sp)
 8ca:	6a42                	ld	s4,16(sp)
 8cc:	6aa2                	ld	s5,8(sp)
 8ce:	6b02                	ld	s6,0(sp)
 8d0:	b7f5                	j	8bc <malloc+0xea>
