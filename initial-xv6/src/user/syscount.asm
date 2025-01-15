
user/_syscount:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7111                	add	sp,sp,-256
   2:	fd86                	sd	ra,248(sp)
   4:	f9a2                	sd	s0,240(sp)
   6:	f5a6                	sd	s1,232(sp)
   8:	f1ca                	sd	s2,224(sp)
   a:	edce                	sd	s3,216(sp)
   c:	0200                	add	s0,sp,256
   e:	4789                	li	a5,2
  10:	02a7c063          	blt	a5,a0,30 <main+0x30>
  14:	00001597          	auipc	a1,0x1
  18:	90c58593          	add	a1,a1,-1780 # 920 <malloc+0x10e>
  1c:	4509                	li	a0,2
  1e:	00000097          	auipc	ra,0x0
  22:	70e080e7          	jalr	1806(ra) # 72c <fprintf>
  26:	4505                	li	a0,1
  28:	00000097          	auipc	ra,0x0
  2c:	3aa080e7          	jalr	938(ra) # 3d2 <exit>
  30:	84ae                	mv	s1,a1
  32:	00001797          	auipc	a5,0x1
  36:	a3678793          	add	a5,a5,-1482 # a68 <malloc+0x256>
  3a:	f0040713          	add	a4,s0,-256
  3e:	00001897          	auipc	a7,0x1
  42:	af288893          	add	a7,a7,-1294 # b30 <malloc+0x31e>
  46:	0007b803          	ld	a6,0(a5)
  4a:	6788                	ld	a0,8(a5)
  4c:	6b8c                	ld	a1,16(a5)
  4e:	6f90                	ld	a2,24(a5)
  50:	7394                	ld	a3,32(a5)
  52:	01073023          	sd	a6,0(a4)
  56:	e708                	sd	a0,8(a4)
  58:	eb0c                	sd	a1,16(a4)
  5a:	ef10                	sd	a2,24(a4)
  5c:	f314                	sd	a3,32(a4)
  5e:	02878793          	add	a5,a5,40
  62:	02870713          	add	a4,a4,40
  66:	ff1790e3          	bne	a5,a7,46 <main+0x46>
  6a:	639c                	ld	a5,0(a5)
  6c:	e31c                	sd	a5,0(a4)
  6e:	6488                	ld	a0,8(s1)
  70:	00000097          	auipc	ra,0x0
  74:	268080e7          	jalr	616(ra) # 2d8 <atoi>
  78:	892a                	mv	s2,a0
  7a:	00000097          	auipc	ra,0x0
  7e:	400080e7          	jalr	1024(ra) # 47a <getSysCount>
  82:	00000097          	auipc	ra,0x0
  86:	348080e7          	jalr	840(ra) # 3ca <fork>
  8a:	89aa                	mv	s3,a0
  8c:	02054963          	bltz	a0,be <main+0xbe>
  90:	e529                	bnez	a0,da <main+0xda>
  92:	01048593          	add	a1,s1,16
  96:	6888                	ld	a0,16(s1)
  98:	00000097          	auipc	ra,0x0
  9c:	372080e7          	jalr	882(ra) # 40a <exec>
  a0:	6890                	ld	a2,16(s1)
  a2:	00001597          	auipc	a1,0x1
  a6:	8b658593          	add	a1,a1,-1866 # 958 <malloc+0x146>
  aa:	4509                	li	a0,2
  ac:	00000097          	auipc	ra,0x0
  b0:	680080e7          	jalr	1664(ra) # 72c <fprintf>
  b4:	4505                	li	a0,1
  b6:	00000097          	auipc	ra,0x0
  ba:	31c080e7          	jalr	796(ra) # 3d2 <exit>
  be:	00001597          	auipc	a1,0x1
  c2:	88a58593          	add	a1,a1,-1910 # 948 <malloc+0x136>
  c6:	4509                	li	a0,2
  c8:	00000097          	auipc	ra,0x0
  cc:	664080e7          	jalr	1636(ra) # 72c <fprintf>
  d0:	4505                	li	a0,1
  d2:	00000097          	auipc	ra,0x0
  d6:	300080e7          	jalr	768(ra) # 3d2 <exit>
  da:	4501                	li	a0,0
  dc:	00000097          	auipc	ra,0x0
  e0:	2fe080e7          	jalr	766(ra) # 3da <wait>
  e4:	854a                	mv	a0,s2
  e6:	00000097          	auipc	ra,0x0
  ea:	394080e7          	jalr	916(ra) # 47a <getSysCount>
  ee:	0005069b          	sext.w	a3,a0
  f2:	00197793          	and	a5,s2,1
  f6:	eba9                	bnez	a5,148 <main+0x148>
  f8:	45fd                	li	a1,31
  fa:	863e                	mv	a2,a5
  fc:	2785                	addw	a5,a5,1
  fe:	00b78b63          	beq	a5,a1,114 <main+0x114>
 102:	40f9573b          	sraw	a4,s2,a5
 106:	8b05                	and	a4,a4,1
 108:	db6d                	beqz	a4,fa <main+0xfa>
 10a:	471d                	li	a4,7
 10c:	00e79563          	bne	a5,a4,116 <main+0x116>
 110:	36f9                	addw	a3,a3,-2
 112:	a029                	j	11c <main+0x11c>
 114:	4679                	li	a2,30
 116:	9a75                	and	a2,a2,-3
 118:	2601                	sext.w	a2,a2
 11a:	c60d                	beqz	a2,144 <main+0x144>
 11c:	078e                	sll	a5,a5,0x3
 11e:	fd078793          	add	a5,a5,-48
 122:	97a2                	add	a5,a5,s0
 124:	f307b603          	ld	a2,-208(a5)
 128:	85ce                	mv	a1,s3
 12a:	00001517          	auipc	a0,0x1
 12e:	83e50513          	add	a0,a0,-1986 # 968 <malloc+0x156>
 132:	00000097          	auipc	ra,0x0
 136:	628080e7          	jalr	1576(ra) # 75a <printf>
 13a:	4501                	li	a0,0
 13c:	00000097          	auipc	ra,0x0
 140:	296080e7          	jalr	662(ra) # 3d2 <exit>
 144:	36fd                	addw	a3,a3,-1
 146:	bfd9                	j	11c <main+0x11c>
 148:	4781                	li	a5,0
 14a:	bfc9                	j	11c <main+0x11c>

000000000000014c <_main>:
 14c:	1141                	add	sp,sp,-16
 14e:	e406                	sd	ra,8(sp)
 150:	e022                	sd	s0,0(sp)
 152:	0800                	add	s0,sp,16
 154:	00000097          	auipc	ra,0x0
 158:	eac080e7          	jalr	-340(ra) # 0 <main>
 15c:	4501                	li	a0,0
 15e:	00000097          	auipc	ra,0x0
 162:	274080e7          	jalr	628(ra) # 3d2 <exit>

0000000000000166 <strcpy>:
 166:	1141                	add	sp,sp,-16
 168:	e422                	sd	s0,8(sp)
 16a:	0800                	add	s0,sp,16
 16c:	87aa                	mv	a5,a0
 16e:	0585                	add	a1,a1,1
 170:	0785                	add	a5,a5,1
 172:	fff5c703          	lbu	a4,-1(a1)
 176:	fee78fa3          	sb	a4,-1(a5)
 17a:	fb75                	bnez	a4,16e <strcpy+0x8>
 17c:	6422                	ld	s0,8(sp)
 17e:	0141                	add	sp,sp,16
 180:	8082                	ret

0000000000000182 <strcmp>:
 182:	1141                	add	sp,sp,-16
 184:	e422                	sd	s0,8(sp)
 186:	0800                	add	s0,sp,16
 188:	00054783          	lbu	a5,0(a0)
 18c:	cb91                	beqz	a5,1a0 <strcmp+0x1e>
 18e:	0005c703          	lbu	a4,0(a1)
 192:	00f71763          	bne	a4,a5,1a0 <strcmp+0x1e>
 196:	0505                	add	a0,a0,1
 198:	0585                	add	a1,a1,1
 19a:	00054783          	lbu	a5,0(a0)
 19e:	fbe5                	bnez	a5,18e <strcmp+0xc>
 1a0:	0005c503          	lbu	a0,0(a1)
 1a4:	40a7853b          	subw	a0,a5,a0
 1a8:	6422                	ld	s0,8(sp)
 1aa:	0141                	add	sp,sp,16
 1ac:	8082                	ret

00000000000001ae <strlen>:
 1ae:	1141                	add	sp,sp,-16
 1b0:	e422                	sd	s0,8(sp)
 1b2:	0800                	add	s0,sp,16
 1b4:	00054783          	lbu	a5,0(a0)
 1b8:	cf91                	beqz	a5,1d4 <strlen+0x26>
 1ba:	0505                	add	a0,a0,1
 1bc:	87aa                	mv	a5,a0
 1be:	86be                	mv	a3,a5
 1c0:	0785                	add	a5,a5,1
 1c2:	fff7c703          	lbu	a4,-1(a5)
 1c6:	ff65                	bnez	a4,1be <strlen+0x10>
 1c8:	40a6853b          	subw	a0,a3,a0
 1cc:	2505                	addw	a0,a0,1
 1ce:	6422                	ld	s0,8(sp)
 1d0:	0141                	add	sp,sp,16
 1d2:	8082                	ret
 1d4:	4501                	li	a0,0
 1d6:	bfe5                	j	1ce <strlen+0x20>

00000000000001d8 <memset>:
 1d8:	1141                	add	sp,sp,-16
 1da:	e422                	sd	s0,8(sp)
 1dc:	0800                	add	s0,sp,16
 1de:	ca19                	beqz	a2,1f4 <memset+0x1c>
 1e0:	87aa                	mv	a5,a0
 1e2:	1602                	sll	a2,a2,0x20
 1e4:	9201                	srl	a2,a2,0x20
 1e6:	00a60733          	add	a4,a2,a0
 1ea:	00b78023          	sb	a1,0(a5)
 1ee:	0785                	add	a5,a5,1
 1f0:	fee79de3          	bne	a5,a4,1ea <memset+0x12>
 1f4:	6422                	ld	s0,8(sp)
 1f6:	0141                	add	sp,sp,16
 1f8:	8082                	ret

00000000000001fa <strchr>:
 1fa:	1141                	add	sp,sp,-16
 1fc:	e422                	sd	s0,8(sp)
 1fe:	0800                	add	s0,sp,16
 200:	00054783          	lbu	a5,0(a0)
 204:	cb99                	beqz	a5,21a <strchr+0x20>
 206:	00f58763          	beq	a1,a5,214 <strchr+0x1a>
 20a:	0505                	add	a0,a0,1
 20c:	00054783          	lbu	a5,0(a0)
 210:	fbfd                	bnez	a5,206 <strchr+0xc>
 212:	4501                	li	a0,0
 214:	6422                	ld	s0,8(sp)
 216:	0141                	add	sp,sp,16
 218:	8082                	ret
 21a:	4501                	li	a0,0
 21c:	bfe5                	j	214 <strchr+0x1a>

000000000000021e <gets>:
 21e:	711d                	add	sp,sp,-96
 220:	ec86                	sd	ra,88(sp)
 222:	e8a2                	sd	s0,80(sp)
 224:	e4a6                	sd	s1,72(sp)
 226:	e0ca                	sd	s2,64(sp)
 228:	fc4e                	sd	s3,56(sp)
 22a:	f852                	sd	s4,48(sp)
 22c:	f456                	sd	s5,40(sp)
 22e:	f05a                	sd	s6,32(sp)
 230:	ec5e                	sd	s7,24(sp)
 232:	1080                	add	s0,sp,96
 234:	8baa                	mv	s7,a0
 236:	8a2e                	mv	s4,a1
 238:	892a                	mv	s2,a0
 23a:	4481                	li	s1,0
 23c:	4aa9                	li	s5,10
 23e:	4b35                	li	s6,13
 240:	89a6                	mv	s3,s1
 242:	2485                	addw	s1,s1,1
 244:	0344d863          	bge	s1,s4,274 <gets+0x56>
 248:	4605                	li	a2,1
 24a:	faf40593          	add	a1,s0,-81
 24e:	4501                	li	a0,0
 250:	00000097          	auipc	ra,0x0
 254:	19a080e7          	jalr	410(ra) # 3ea <read>
 258:	00a05e63          	blez	a0,274 <gets+0x56>
 25c:	faf44783          	lbu	a5,-81(s0)
 260:	00f90023          	sb	a5,0(s2)
 264:	01578763          	beq	a5,s5,272 <gets+0x54>
 268:	0905                	add	s2,s2,1
 26a:	fd679be3          	bne	a5,s6,240 <gets+0x22>
 26e:	89a6                	mv	s3,s1
 270:	a011                	j	274 <gets+0x56>
 272:	89a6                	mv	s3,s1
 274:	99de                	add	s3,s3,s7
 276:	00098023          	sb	zero,0(s3)
 27a:	855e                	mv	a0,s7
 27c:	60e6                	ld	ra,88(sp)
 27e:	6446                	ld	s0,80(sp)
 280:	64a6                	ld	s1,72(sp)
 282:	6906                	ld	s2,64(sp)
 284:	79e2                	ld	s3,56(sp)
 286:	7a42                	ld	s4,48(sp)
 288:	7aa2                	ld	s5,40(sp)
 28a:	7b02                	ld	s6,32(sp)
 28c:	6be2                	ld	s7,24(sp)
 28e:	6125                	add	sp,sp,96
 290:	8082                	ret

0000000000000292 <stat>:
 292:	1101                	add	sp,sp,-32
 294:	ec06                	sd	ra,24(sp)
 296:	e822                	sd	s0,16(sp)
 298:	e04a                	sd	s2,0(sp)
 29a:	1000                	add	s0,sp,32
 29c:	892e                	mv	s2,a1
 29e:	4581                	li	a1,0
 2a0:	00000097          	auipc	ra,0x0
 2a4:	172080e7          	jalr	370(ra) # 412 <open>
 2a8:	02054663          	bltz	a0,2d4 <stat+0x42>
 2ac:	e426                	sd	s1,8(sp)
 2ae:	84aa                	mv	s1,a0
 2b0:	85ca                	mv	a1,s2
 2b2:	00000097          	auipc	ra,0x0
 2b6:	178080e7          	jalr	376(ra) # 42a <fstat>
 2ba:	892a                	mv	s2,a0
 2bc:	8526                	mv	a0,s1
 2be:	00000097          	auipc	ra,0x0
 2c2:	13c080e7          	jalr	316(ra) # 3fa <close>
 2c6:	64a2                	ld	s1,8(sp)
 2c8:	854a                	mv	a0,s2
 2ca:	60e2                	ld	ra,24(sp)
 2cc:	6442                	ld	s0,16(sp)
 2ce:	6902                	ld	s2,0(sp)
 2d0:	6105                	add	sp,sp,32
 2d2:	8082                	ret
 2d4:	597d                	li	s2,-1
 2d6:	bfcd                	j	2c8 <stat+0x36>

00000000000002d8 <atoi>:
 2d8:	1141                	add	sp,sp,-16
 2da:	e422                	sd	s0,8(sp)
 2dc:	0800                	add	s0,sp,16
 2de:	00054683          	lbu	a3,0(a0)
 2e2:	fd06879b          	addw	a5,a3,-48
 2e6:	0ff7f793          	zext.b	a5,a5
 2ea:	4625                	li	a2,9
 2ec:	02f66863          	bltu	a2,a5,31c <atoi+0x44>
 2f0:	872a                	mv	a4,a0
 2f2:	4501                	li	a0,0
 2f4:	0705                	add	a4,a4,1
 2f6:	0025179b          	sllw	a5,a0,0x2
 2fa:	9fa9                	addw	a5,a5,a0
 2fc:	0017979b          	sllw	a5,a5,0x1
 300:	9fb5                	addw	a5,a5,a3
 302:	fd07851b          	addw	a0,a5,-48
 306:	00074683          	lbu	a3,0(a4)
 30a:	fd06879b          	addw	a5,a3,-48
 30e:	0ff7f793          	zext.b	a5,a5
 312:	fef671e3          	bgeu	a2,a5,2f4 <atoi+0x1c>
 316:	6422                	ld	s0,8(sp)
 318:	0141                	add	sp,sp,16
 31a:	8082                	ret
 31c:	4501                	li	a0,0
 31e:	bfe5                	j	316 <atoi+0x3e>

0000000000000320 <memmove>:
 320:	1141                	add	sp,sp,-16
 322:	e422                	sd	s0,8(sp)
 324:	0800                	add	s0,sp,16
 326:	02b57463          	bgeu	a0,a1,34e <memmove+0x2e>
 32a:	00c05f63          	blez	a2,348 <memmove+0x28>
 32e:	1602                	sll	a2,a2,0x20
 330:	9201                	srl	a2,a2,0x20
 332:	00c507b3          	add	a5,a0,a2
 336:	872a                	mv	a4,a0
 338:	0585                	add	a1,a1,1
 33a:	0705                	add	a4,a4,1
 33c:	fff5c683          	lbu	a3,-1(a1)
 340:	fed70fa3          	sb	a3,-1(a4)
 344:	fef71ae3          	bne	a4,a5,338 <memmove+0x18>
 348:	6422                	ld	s0,8(sp)
 34a:	0141                	add	sp,sp,16
 34c:	8082                	ret
 34e:	00c50733          	add	a4,a0,a2
 352:	95b2                	add	a1,a1,a2
 354:	fec05ae3          	blez	a2,348 <memmove+0x28>
 358:	fff6079b          	addw	a5,a2,-1
 35c:	1782                	sll	a5,a5,0x20
 35e:	9381                	srl	a5,a5,0x20
 360:	fff7c793          	not	a5,a5
 364:	97ba                	add	a5,a5,a4
 366:	15fd                	add	a1,a1,-1
 368:	177d                	add	a4,a4,-1
 36a:	0005c683          	lbu	a3,0(a1)
 36e:	00d70023          	sb	a3,0(a4)
 372:	fee79ae3          	bne	a5,a4,366 <memmove+0x46>
 376:	bfc9                	j	348 <memmove+0x28>

0000000000000378 <memcmp>:
 378:	1141                	add	sp,sp,-16
 37a:	e422                	sd	s0,8(sp)
 37c:	0800                	add	s0,sp,16
 37e:	ca05                	beqz	a2,3ae <memcmp+0x36>
 380:	fff6069b          	addw	a3,a2,-1
 384:	1682                	sll	a3,a3,0x20
 386:	9281                	srl	a3,a3,0x20
 388:	0685                	add	a3,a3,1
 38a:	96aa                	add	a3,a3,a0
 38c:	00054783          	lbu	a5,0(a0)
 390:	0005c703          	lbu	a4,0(a1)
 394:	00e79863          	bne	a5,a4,3a4 <memcmp+0x2c>
 398:	0505                	add	a0,a0,1
 39a:	0585                	add	a1,a1,1
 39c:	fed518e3          	bne	a0,a3,38c <memcmp+0x14>
 3a0:	4501                	li	a0,0
 3a2:	a019                	j	3a8 <memcmp+0x30>
 3a4:	40e7853b          	subw	a0,a5,a4
 3a8:	6422                	ld	s0,8(sp)
 3aa:	0141                	add	sp,sp,16
 3ac:	8082                	ret
 3ae:	4501                	li	a0,0
 3b0:	bfe5                	j	3a8 <memcmp+0x30>

00000000000003b2 <memcpy>:
 3b2:	1141                	add	sp,sp,-16
 3b4:	e406                	sd	ra,8(sp)
 3b6:	e022                	sd	s0,0(sp)
 3b8:	0800                	add	s0,sp,16
 3ba:	00000097          	auipc	ra,0x0
 3be:	f66080e7          	jalr	-154(ra) # 320 <memmove>
 3c2:	60a2                	ld	ra,8(sp)
 3c4:	6402                	ld	s0,0(sp)
 3c6:	0141                	add	sp,sp,16
 3c8:	8082                	ret

00000000000003ca <fork>:
 3ca:	4885                	li	a7,1
 3cc:	00000073          	ecall
 3d0:	8082                	ret

00000000000003d2 <exit>:
 3d2:	4889                	li	a7,2
 3d4:	00000073          	ecall
 3d8:	8082                	ret

00000000000003da <wait>:
 3da:	488d                	li	a7,3
 3dc:	00000073          	ecall
 3e0:	8082                	ret

00000000000003e2 <pipe>:
 3e2:	4891                	li	a7,4
 3e4:	00000073          	ecall
 3e8:	8082                	ret

00000000000003ea <read>:
 3ea:	4895                	li	a7,5
 3ec:	00000073          	ecall
 3f0:	8082                	ret

00000000000003f2 <write>:
 3f2:	48c1                	li	a7,16
 3f4:	00000073          	ecall
 3f8:	8082                	ret

00000000000003fa <close>:
 3fa:	48d5                	li	a7,21
 3fc:	00000073          	ecall
 400:	8082                	ret

0000000000000402 <kill>:
 402:	4899                	li	a7,6
 404:	00000073          	ecall
 408:	8082                	ret

000000000000040a <exec>:
 40a:	489d                	li	a7,7
 40c:	00000073          	ecall
 410:	8082                	ret

0000000000000412 <open>:
 412:	48bd                	li	a7,15
 414:	00000073          	ecall
 418:	8082                	ret

000000000000041a <mknod>:
 41a:	48c5                	li	a7,17
 41c:	00000073          	ecall
 420:	8082                	ret

0000000000000422 <unlink>:
 422:	48c9                	li	a7,18
 424:	00000073          	ecall
 428:	8082                	ret

000000000000042a <fstat>:
 42a:	48a1                	li	a7,8
 42c:	00000073          	ecall
 430:	8082                	ret

0000000000000432 <link>:
 432:	48cd                	li	a7,19
 434:	00000073          	ecall
 438:	8082                	ret

000000000000043a <mkdir>:
 43a:	48d1                	li	a7,20
 43c:	00000073          	ecall
 440:	8082                	ret

0000000000000442 <chdir>:
 442:	48a5                	li	a7,9
 444:	00000073          	ecall
 448:	8082                	ret

000000000000044a <dup>:
 44a:	48a9                	li	a7,10
 44c:	00000073          	ecall
 450:	8082                	ret

0000000000000452 <getpid>:
 452:	48ad                	li	a7,11
 454:	00000073          	ecall
 458:	8082                	ret

000000000000045a <sbrk>:
 45a:	48b1                	li	a7,12
 45c:	00000073          	ecall
 460:	8082                	ret

0000000000000462 <sleep>:
 462:	48b5                	li	a7,13
 464:	00000073          	ecall
 468:	8082                	ret

000000000000046a <uptime>:
 46a:	48b9                	li	a7,14
 46c:	00000073          	ecall
 470:	8082                	ret

0000000000000472 <waitx>:
 472:	48d9                	li	a7,22
 474:	00000073          	ecall
 478:	8082                	ret

000000000000047a <getSysCount>:
 47a:	48dd                	li	a7,23
 47c:	00000073          	ecall
 480:	8082                	ret

0000000000000482 <sigalarm>:
 482:	48e1                	li	a7,24
 484:	00000073          	ecall
 488:	8082                	ret

000000000000048a <sigreturn>:
 48a:	48e5                	li	a7,25
 48c:	00000073          	ecall
 490:	8082                	ret

0000000000000492 <putc>:
 492:	1101                	add	sp,sp,-32
 494:	ec06                	sd	ra,24(sp)
 496:	e822                	sd	s0,16(sp)
 498:	1000                	add	s0,sp,32
 49a:	feb407a3          	sb	a1,-17(s0)
 49e:	4605                	li	a2,1
 4a0:	fef40593          	add	a1,s0,-17
 4a4:	00000097          	auipc	ra,0x0
 4a8:	f4e080e7          	jalr	-178(ra) # 3f2 <write>
 4ac:	60e2                	ld	ra,24(sp)
 4ae:	6442                	ld	s0,16(sp)
 4b0:	6105                	add	sp,sp,32
 4b2:	8082                	ret

00000000000004b4 <printint>:
 4b4:	7139                	add	sp,sp,-64
 4b6:	fc06                	sd	ra,56(sp)
 4b8:	f822                	sd	s0,48(sp)
 4ba:	f426                	sd	s1,40(sp)
 4bc:	0080                	add	s0,sp,64
 4be:	84aa                	mv	s1,a0
 4c0:	c299                	beqz	a3,4c6 <printint+0x12>
 4c2:	0805cb63          	bltz	a1,558 <printint+0xa4>
 4c6:	2581                	sext.w	a1,a1
 4c8:	4881                	li	a7,0
 4ca:	fc040693          	add	a3,s0,-64
 4ce:	4701                	li	a4,0
 4d0:	2601                	sext.w	a2,a2
 4d2:	00000517          	auipc	a0,0x0
 4d6:	6c650513          	add	a0,a0,1734 # b98 <digits>
 4da:	883a                	mv	a6,a4
 4dc:	2705                	addw	a4,a4,1
 4de:	02c5f7bb          	remuw	a5,a1,a2
 4e2:	1782                	sll	a5,a5,0x20
 4e4:	9381                	srl	a5,a5,0x20
 4e6:	97aa                	add	a5,a5,a0
 4e8:	0007c783          	lbu	a5,0(a5)
 4ec:	00f68023          	sb	a5,0(a3)
 4f0:	0005879b          	sext.w	a5,a1
 4f4:	02c5d5bb          	divuw	a1,a1,a2
 4f8:	0685                	add	a3,a3,1
 4fa:	fec7f0e3          	bgeu	a5,a2,4da <printint+0x26>
 4fe:	00088c63          	beqz	a7,516 <printint+0x62>
 502:	fd070793          	add	a5,a4,-48
 506:	00878733          	add	a4,a5,s0
 50a:	02d00793          	li	a5,45
 50e:	fef70823          	sb	a5,-16(a4)
 512:	0028071b          	addw	a4,a6,2
 516:	02e05c63          	blez	a4,54e <printint+0x9a>
 51a:	f04a                	sd	s2,32(sp)
 51c:	ec4e                	sd	s3,24(sp)
 51e:	fc040793          	add	a5,s0,-64
 522:	00e78933          	add	s2,a5,a4
 526:	fff78993          	add	s3,a5,-1
 52a:	99ba                	add	s3,s3,a4
 52c:	377d                	addw	a4,a4,-1
 52e:	1702                	sll	a4,a4,0x20
 530:	9301                	srl	a4,a4,0x20
 532:	40e989b3          	sub	s3,s3,a4
 536:	fff94583          	lbu	a1,-1(s2)
 53a:	8526                	mv	a0,s1
 53c:	00000097          	auipc	ra,0x0
 540:	f56080e7          	jalr	-170(ra) # 492 <putc>
 544:	197d                	add	s2,s2,-1
 546:	ff3918e3          	bne	s2,s3,536 <printint+0x82>
 54a:	7902                	ld	s2,32(sp)
 54c:	69e2                	ld	s3,24(sp)
 54e:	70e2                	ld	ra,56(sp)
 550:	7442                	ld	s0,48(sp)
 552:	74a2                	ld	s1,40(sp)
 554:	6121                	add	sp,sp,64
 556:	8082                	ret
 558:	40b005bb          	negw	a1,a1
 55c:	4885                	li	a7,1
 55e:	b7b5                	j	4ca <printint+0x16>

0000000000000560 <vprintf>:
 560:	715d                	add	sp,sp,-80
 562:	e486                	sd	ra,72(sp)
 564:	e0a2                	sd	s0,64(sp)
 566:	f84a                	sd	s2,48(sp)
 568:	0880                	add	s0,sp,80
 56a:	0005c903          	lbu	s2,0(a1)
 56e:	1a090a63          	beqz	s2,722 <vprintf+0x1c2>
 572:	fc26                	sd	s1,56(sp)
 574:	f44e                	sd	s3,40(sp)
 576:	f052                	sd	s4,32(sp)
 578:	ec56                	sd	s5,24(sp)
 57a:	e85a                	sd	s6,16(sp)
 57c:	e45e                	sd	s7,8(sp)
 57e:	8aaa                	mv	s5,a0
 580:	8bb2                	mv	s7,a2
 582:	00158493          	add	s1,a1,1
 586:	4981                	li	s3,0
 588:	02500a13          	li	s4,37
 58c:	4b55                	li	s6,21
 58e:	a839                	j	5ac <vprintf+0x4c>
 590:	85ca                	mv	a1,s2
 592:	8556                	mv	a0,s5
 594:	00000097          	auipc	ra,0x0
 598:	efe080e7          	jalr	-258(ra) # 492 <putc>
 59c:	a019                	j	5a2 <vprintf+0x42>
 59e:	01498d63          	beq	s3,s4,5b8 <vprintf+0x58>
 5a2:	0485                	add	s1,s1,1
 5a4:	fff4c903          	lbu	s2,-1(s1)
 5a8:	16090763          	beqz	s2,716 <vprintf+0x1b6>
 5ac:	fe0999e3          	bnez	s3,59e <vprintf+0x3e>
 5b0:	ff4910e3          	bne	s2,s4,590 <vprintf+0x30>
 5b4:	89d2                	mv	s3,s4
 5b6:	b7f5                	j	5a2 <vprintf+0x42>
 5b8:	13490463          	beq	s2,s4,6e0 <vprintf+0x180>
 5bc:	f9d9079b          	addw	a5,s2,-99
 5c0:	0ff7f793          	zext.b	a5,a5
 5c4:	12fb6763          	bltu	s6,a5,6f2 <vprintf+0x192>
 5c8:	f9d9079b          	addw	a5,s2,-99
 5cc:	0ff7f713          	zext.b	a4,a5
 5d0:	12eb6163          	bltu	s6,a4,6f2 <vprintf+0x192>
 5d4:	00271793          	sll	a5,a4,0x2
 5d8:	00000717          	auipc	a4,0x0
 5dc:	56870713          	add	a4,a4,1384 # b40 <malloc+0x32e>
 5e0:	97ba                	add	a5,a5,a4
 5e2:	439c                	lw	a5,0(a5)
 5e4:	97ba                	add	a5,a5,a4
 5e6:	8782                	jr	a5
 5e8:	008b8913          	add	s2,s7,8
 5ec:	4685                	li	a3,1
 5ee:	4629                	li	a2,10
 5f0:	000ba583          	lw	a1,0(s7)
 5f4:	8556                	mv	a0,s5
 5f6:	00000097          	auipc	ra,0x0
 5fa:	ebe080e7          	jalr	-322(ra) # 4b4 <printint>
 5fe:	8bca                	mv	s7,s2
 600:	4981                	li	s3,0
 602:	b745                	j	5a2 <vprintf+0x42>
 604:	008b8913          	add	s2,s7,8
 608:	4681                	li	a3,0
 60a:	4629                	li	a2,10
 60c:	000ba583          	lw	a1,0(s7)
 610:	8556                	mv	a0,s5
 612:	00000097          	auipc	ra,0x0
 616:	ea2080e7          	jalr	-350(ra) # 4b4 <printint>
 61a:	8bca                	mv	s7,s2
 61c:	4981                	li	s3,0
 61e:	b751                	j	5a2 <vprintf+0x42>
 620:	008b8913          	add	s2,s7,8
 624:	4681                	li	a3,0
 626:	4641                	li	a2,16
 628:	000ba583          	lw	a1,0(s7)
 62c:	8556                	mv	a0,s5
 62e:	00000097          	auipc	ra,0x0
 632:	e86080e7          	jalr	-378(ra) # 4b4 <printint>
 636:	8bca                	mv	s7,s2
 638:	4981                	li	s3,0
 63a:	b7a5                	j	5a2 <vprintf+0x42>
 63c:	e062                	sd	s8,0(sp)
 63e:	008b8c13          	add	s8,s7,8
 642:	000bb983          	ld	s3,0(s7)
 646:	03000593          	li	a1,48
 64a:	8556                	mv	a0,s5
 64c:	00000097          	auipc	ra,0x0
 650:	e46080e7          	jalr	-442(ra) # 492 <putc>
 654:	07800593          	li	a1,120
 658:	8556                	mv	a0,s5
 65a:	00000097          	auipc	ra,0x0
 65e:	e38080e7          	jalr	-456(ra) # 492 <putc>
 662:	4941                	li	s2,16
 664:	00000b97          	auipc	s7,0x0
 668:	534b8b93          	add	s7,s7,1332 # b98 <digits>
 66c:	03c9d793          	srl	a5,s3,0x3c
 670:	97de                	add	a5,a5,s7
 672:	0007c583          	lbu	a1,0(a5)
 676:	8556                	mv	a0,s5
 678:	00000097          	auipc	ra,0x0
 67c:	e1a080e7          	jalr	-486(ra) # 492 <putc>
 680:	0992                	sll	s3,s3,0x4
 682:	397d                	addw	s2,s2,-1
 684:	fe0914e3          	bnez	s2,66c <vprintf+0x10c>
 688:	8be2                	mv	s7,s8
 68a:	4981                	li	s3,0
 68c:	6c02                	ld	s8,0(sp)
 68e:	bf11                	j	5a2 <vprintf+0x42>
 690:	008b8993          	add	s3,s7,8
 694:	000bb903          	ld	s2,0(s7)
 698:	02090163          	beqz	s2,6ba <vprintf+0x15a>
 69c:	00094583          	lbu	a1,0(s2)
 6a0:	c9a5                	beqz	a1,710 <vprintf+0x1b0>
 6a2:	8556                	mv	a0,s5
 6a4:	00000097          	auipc	ra,0x0
 6a8:	dee080e7          	jalr	-530(ra) # 492 <putc>
 6ac:	0905                	add	s2,s2,1
 6ae:	00094583          	lbu	a1,0(s2)
 6b2:	f9e5                	bnez	a1,6a2 <vprintf+0x142>
 6b4:	8bce                	mv	s7,s3
 6b6:	4981                	li	s3,0
 6b8:	b5ed                	j	5a2 <vprintf+0x42>
 6ba:	00000917          	auipc	s2,0x0
 6be:	47e90913          	add	s2,s2,1150 # b38 <malloc+0x326>
 6c2:	02800593          	li	a1,40
 6c6:	bff1                	j	6a2 <vprintf+0x142>
 6c8:	008b8913          	add	s2,s7,8
 6cc:	000bc583          	lbu	a1,0(s7)
 6d0:	8556                	mv	a0,s5
 6d2:	00000097          	auipc	ra,0x0
 6d6:	dc0080e7          	jalr	-576(ra) # 492 <putc>
 6da:	8bca                	mv	s7,s2
 6dc:	4981                	li	s3,0
 6de:	b5d1                	j	5a2 <vprintf+0x42>
 6e0:	02500593          	li	a1,37
 6e4:	8556                	mv	a0,s5
 6e6:	00000097          	auipc	ra,0x0
 6ea:	dac080e7          	jalr	-596(ra) # 492 <putc>
 6ee:	4981                	li	s3,0
 6f0:	bd4d                	j	5a2 <vprintf+0x42>
 6f2:	02500593          	li	a1,37
 6f6:	8556                	mv	a0,s5
 6f8:	00000097          	auipc	ra,0x0
 6fc:	d9a080e7          	jalr	-614(ra) # 492 <putc>
 700:	85ca                	mv	a1,s2
 702:	8556                	mv	a0,s5
 704:	00000097          	auipc	ra,0x0
 708:	d8e080e7          	jalr	-626(ra) # 492 <putc>
 70c:	4981                	li	s3,0
 70e:	bd51                	j	5a2 <vprintf+0x42>
 710:	8bce                	mv	s7,s3
 712:	4981                	li	s3,0
 714:	b579                	j	5a2 <vprintf+0x42>
 716:	74e2                	ld	s1,56(sp)
 718:	79a2                	ld	s3,40(sp)
 71a:	7a02                	ld	s4,32(sp)
 71c:	6ae2                	ld	s5,24(sp)
 71e:	6b42                	ld	s6,16(sp)
 720:	6ba2                	ld	s7,8(sp)
 722:	60a6                	ld	ra,72(sp)
 724:	6406                	ld	s0,64(sp)
 726:	7942                	ld	s2,48(sp)
 728:	6161                	add	sp,sp,80
 72a:	8082                	ret

000000000000072c <fprintf>:
 72c:	715d                	add	sp,sp,-80
 72e:	ec06                	sd	ra,24(sp)
 730:	e822                	sd	s0,16(sp)
 732:	1000                	add	s0,sp,32
 734:	e010                	sd	a2,0(s0)
 736:	e414                	sd	a3,8(s0)
 738:	e818                	sd	a4,16(s0)
 73a:	ec1c                	sd	a5,24(s0)
 73c:	03043023          	sd	a6,32(s0)
 740:	03143423          	sd	a7,40(s0)
 744:	fe843423          	sd	s0,-24(s0)
 748:	8622                	mv	a2,s0
 74a:	00000097          	auipc	ra,0x0
 74e:	e16080e7          	jalr	-490(ra) # 560 <vprintf>
 752:	60e2                	ld	ra,24(sp)
 754:	6442                	ld	s0,16(sp)
 756:	6161                	add	sp,sp,80
 758:	8082                	ret

000000000000075a <printf>:
 75a:	711d                	add	sp,sp,-96
 75c:	ec06                	sd	ra,24(sp)
 75e:	e822                	sd	s0,16(sp)
 760:	1000                	add	s0,sp,32
 762:	e40c                	sd	a1,8(s0)
 764:	e810                	sd	a2,16(s0)
 766:	ec14                	sd	a3,24(s0)
 768:	f018                	sd	a4,32(s0)
 76a:	f41c                	sd	a5,40(s0)
 76c:	03043823          	sd	a6,48(s0)
 770:	03143c23          	sd	a7,56(s0)
 774:	00840613          	add	a2,s0,8
 778:	fec43423          	sd	a2,-24(s0)
 77c:	85aa                	mv	a1,a0
 77e:	4505                	li	a0,1
 780:	00000097          	auipc	ra,0x0
 784:	de0080e7          	jalr	-544(ra) # 560 <vprintf>
 788:	60e2                	ld	ra,24(sp)
 78a:	6442                	ld	s0,16(sp)
 78c:	6125                	add	sp,sp,96
 78e:	8082                	ret

0000000000000790 <free>:
 790:	1141                	add	sp,sp,-16
 792:	e422                	sd	s0,8(sp)
 794:	0800                	add	s0,sp,16
 796:	ff050693          	add	a3,a0,-16
 79a:	00001797          	auipc	a5,0x1
 79e:	c467b783          	ld	a5,-954(a5) # 13e0 <freep>
 7a2:	a02d                	j	7cc <free+0x3c>
 7a4:	4618                	lw	a4,8(a2)
 7a6:	9f2d                	addw	a4,a4,a1
 7a8:	fee52c23          	sw	a4,-8(a0)
 7ac:	6398                	ld	a4,0(a5)
 7ae:	6310                	ld	a2,0(a4)
 7b0:	a83d                	j	7ee <free+0x5e>
 7b2:	ff852703          	lw	a4,-8(a0)
 7b6:	9f31                	addw	a4,a4,a2
 7b8:	c798                	sw	a4,8(a5)
 7ba:	ff053683          	ld	a3,-16(a0)
 7be:	a091                	j	802 <free+0x72>
 7c0:	6398                	ld	a4,0(a5)
 7c2:	00e7e463          	bltu	a5,a4,7ca <free+0x3a>
 7c6:	00e6ea63          	bltu	a3,a4,7da <free+0x4a>
 7ca:	87ba                	mv	a5,a4
 7cc:	fed7fae3          	bgeu	a5,a3,7c0 <free+0x30>
 7d0:	6398                	ld	a4,0(a5)
 7d2:	00e6e463          	bltu	a3,a4,7da <free+0x4a>
 7d6:	fee7eae3          	bltu	a5,a4,7ca <free+0x3a>
 7da:	ff852583          	lw	a1,-8(a0)
 7de:	6390                	ld	a2,0(a5)
 7e0:	02059813          	sll	a6,a1,0x20
 7e4:	01c85713          	srl	a4,a6,0x1c
 7e8:	9736                	add	a4,a4,a3
 7ea:	fae60de3          	beq	a2,a4,7a4 <free+0x14>
 7ee:	fec53823          	sd	a2,-16(a0)
 7f2:	4790                	lw	a2,8(a5)
 7f4:	02061593          	sll	a1,a2,0x20
 7f8:	01c5d713          	srl	a4,a1,0x1c
 7fc:	973e                	add	a4,a4,a5
 7fe:	fae68ae3          	beq	a3,a4,7b2 <free+0x22>
 802:	e394                	sd	a3,0(a5)
 804:	00001717          	auipc	a4,0x1
 808:	bcf73e23          	sd	a5,-1060(a4) # 13e0 <freep>
 80c:	6422                	ld	s0,8(sp)
 80e:	0141                	add	sp,sp,16
 810:	8082                	ret

0000000000000812 <malloc>:
 812:	7139                	add	sp,sp,-64
 814:	fc06                	sd	ra,56(sp)
 816:	f822                	sd	s0,48(sp)
 818:	f426                	sd	s1,40(sp)
 81a:	ec4e                	sd	s3,24(sp)
 81c:	0080                	add	s0,sp,64
 81e:	02051493          	sll	s1,a0,0x20
 822:	9081                	srl	s1,s1,0x20
 824:	04bd                	add	s1,s1,15
 826:	8091                	srl	s1,s1,0x4
 828:	0014899b          	addw	s3,s1,1
 82c:	0485                	add	s1,s1,1
 82e:	00001517          	auipc	a0,0x1
 832:	bb253503          	ld	a0,-1102(a0) # 13e0 <freep>
 836:	c915                	beqz	a0,86a <malloc+0x58>
 838:	611c                	ld	a5,0(a0)
 83a:	4798                	lw	a4,8(a5)
 83c:	08977e63          	bgeu	a4,s1,8d8 <malloc+0xc6>
 840:	f04a                	sd	s2,32(sp)
 842:	e852                	sd	s4,16(sp)
 844:	e456                	sd	s5,8(sp)
 846:	e05a                	sd	s6,0(sp)
 848:	8a4e                	mv	s4,s3
 84a:	0009871b          	sext.w	a4,s3
 84e:	6685                	lui	a3,0x1
 850:	00d77363          	bgeu	a4,a3,856 <malloc+0x44>
 854:	6a05                	lui	s4,0x1
 856:	000a0b1b          	sext.w	s6,s4
 85a:	004a1a1b          	sllw	s4,s4,0x4
 85e:	00001917          	auipc	s2,0x1
 862:	b8290913          	add	s2,s2,-1150 # 13e0 <freep>
 866:	5afd                	li	s5,-1
 868:	a091                	j	8ac <malloc+0x9a>
 86a:	f04a                	sd	s2,32(sp)
 86c:	e852                	sd	s4,16(sp)
 86e:	e456                	sd	s5,8(sp)
 870:	e05a                	sd	s6,0(sp)
 872:	00001797          	auipc	a5,0x1
 876:	b7e78793          	add	a5,a5,-1154 # 13f0 <base>
 87a:	00001717          	auipc	a4,0x1
 87e:	b6f73323          	sd	a5,-1178(a4) # 13e0 <freep>
 882:	e39c                	sd	a5,0(a5)
 884:	0007a423          	sw	zero,8(a5)
 888:	b7c1                	j	848 <malloc+0x36>
 88a:	6398                	ld	a4,0(a5)
 88c:	e118                	sd	a4,0(a0)
 88e:	a08d                	j	8f0 <malloc+0xde>
 890:	01652423          	sw	s6,8(a0)
 894:	0541                	add	a0,a0,16
 896:	00000097          	auipc	ra,0x0
 89a:	efa080e7          	jalr	-262(ra) # 790 <free>
 89e:	00093503          	ld	a0,0(s2)
 8a2:	c13d                	beqz	a0,908 <malloc+0xf6>
 8a4:	611c                	ld	a5,0(a0)
 8a6:	4798                	lw	a4,8(a5)
 8a8:	02977463          	bgeu	a4,s1,8d0 <malloc+0xbe>
 8ac:	00093703          	ld	a4,0(s2)
 8b0:	853e                	mv	a0,a5
 8b2:	fef719e3          	bne	a4,a5,8a4 <malloc+0x92>
 8b6:	8552                	mv	a0,s4
 8b8:	00000097          	auipc	ra,0x0
 8bc:	ba2080e7          	jalr	-1118(ra) # 45a <sbrk>
 8c0:	fd5518e3          	bne	a0,s5,890 <malloc+0x7e>
 8c4:	4501                	li	a0,0
 8c6:	7902                	ld	s2,32(sp)
 8c8:	6a42                	ld	s4,16(sp)
 8ca:	6aa2                	ld	s5,8(sp)
 8cc:	6b02                	ld	s6,0(sp)
 8ce:	a03d                	j	8fc <malloc+0xea>
 8d0:	7902                	ld	s2,32(sp)
 8d2:	6a42                	ld	s4,16(sp)
 8d4:	6aa2                	ld	s5,8(sp)
 8d6:	6b02                	ld	s6,0(sp)
 8d8:	fae489e3          	beq	s1,a4,88a <malloc+0x78>
 8dc:	4137073b          	subw	a4,a4,s3
 8e0:	c798                	sw	a4,8(a5)
 8e2:	02071693          	sll	a3,a4,0x20
 8e6:	01c6d713          	srl	a4,a3,0x1c
 8ea:	97ba                	add	a5,a5,a4
 8ec:	0137a423          	sw	s3,8(a5)
 8f0:	00001717          	auipc	a4,0x1
 8f4:	aea73823          	sd	a0,-1296(a4) # 13e0 <freep>
 8f8:	01078513          	add	a0,a5,16
 8fc:	70e2                	ld	ra,56(sp)
 8fe:	7442                	ld	s0,48(sp)
 900:	74a2                	ld	s1,40(sp)
 902:	69e2                	ld	s3,24(sp)
 904:	6121                	add	sp,sp,64
 906:	8082                	ret
 908:	7902                	ld	s2,32(sp)
 90a:	6a42                	ld	s4,16(sp)
 90c:	6aa2                	ld	s5,8(sp)
 90e:	6b02                	ld	s6,0(sp)
 910:	b7f5                	j	8fc <malloc+0xea>
