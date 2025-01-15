
user/_grep:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <matchstar>:
   0:	7179                	add	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	ec26                	sd	s1,24(sp)
   8:	e84a                	sd	s2,16(sp)
   a:	e44e                	sd	s3,8(sp)
   c:	e052                	sd	s4,0(sp)
   e:	1800                	add	s0,sp,48
  10:	892a                	mv	s2,a0
  12:	89ae                	mv	s3,a1
  14:	84b2                	mv	s1,a2
  16:	02e00a13          	li	s4,46
  1a:	85a6                	mv	a1,s1
  1c:	854e                	mv	a0,s3
  1e:	00000097          	auipc	ra,0x0
  22:	030080e7          	jalr	48(ra) # 4e <matchhere>
  26:	e919                	bnez	a0,3c <matchstar+0x3c>
  28:	0004c783          	lbu	a5,0(s1)
  2c:	cb89                	beqz	a5,3e <matchstar+0x3e>
  2e:	0485                	add	s1,s1,1
  30:	2781                	sext.w	a5,a5
  32:	ff2784e3          	beq	a5,s2,1a <matchstar+0x1a>
  36:	ff4902e3          	beq	s2,s4,1a <matchstar+0x1a>
  3a:	a011                	j	3e <matchstar+0x3e>
  3c:	4505                	li	a0,1
  3e:	70a2                	ld	ra,40(sp)
  40:	7402                	ld	s0,32(sp)
  42:	64e2                	ld	s1,24(sp)
  44:	6942                	ld	s2,16(sp)
  46:	69a2                	ld	s3,8(sp)
  48:	6a02                	ld	s4,0(sp)
  4a:	6145                	add	sp,sp,48
  4c:	8082                	ret

000000000000004e <matchhere>:
  4e:	00054703          	lbu	a4,0(a0)
  52:	cb3d                	beqz	a4,c8 <matchhere+0x7a>
  54:	1141                	add	sp,sp,-16
  56:	e406                	sd	ra,8(sp)
  58:	e022                	sd	s0,0(sp)
  5a:	0800                	add	s0,sp,16
  5c:	87aa                	mv	a5,a0
  5e:	00154683          	lbu	a3,1(a0)
  62:	02a00613          	li	a2,42
  66:	02c68563          	beq	a3,a2,90 <matchhere+0x42>
  6a:	02400613          	li	a2,36
  6e:	02c70a63          	beq	a4,a2,a2 <matchhere+0x54>
  72:	0005c683          	lbu	a3,0(a1)
  76:	4501                	li	a0,0
  78:	ca81                	beqz	a3,88 <matchhere+0x3a>
  7a:	02e00613          	li	a2,46
  7e:	02c70d63          	beq	a4,a2,b8 <matchhere+0x6a>
  82:	4501                	li	a0,0
  84:	02d70a63          	beq	a4,a3,b8 <matchhere+0x6a>
  88:	60a2                	ld	ra,8(sp)
  8a:	6402                	ld	s0,0(sp)
  8c:	0141                	add	sp,sp,16
  8e:	8082                	ret
  90:	862e                	mv	a2,a1
  92:	00250593          	add	a1,a0,2
  96:	853a                	mv	a0,a4
  98:	00000097          	auipc	ra,0x0
  9c:	f68080e7          	jalr	-152(ra) # 0 <matchstar>
  a0:	b7e5                	j	88 <matchhere+0x3a>
  a2:	c691                	beqz	a3,ae <matchhere+0x60>
  a4:	0005c683          	lbu	a3,0(a1)
  a8:	fee9                	bnez	a3,82 <matchhere+0x34>
  aa:	4501                	li	a0,0
  ac:	bff1                	j	88 <matchhere+0x3a>
  ae:	0005c503          	lbu	a0,0(a1)
  b2:	00153513          	seqz	a0,a0
  b6:	bfc9                	j	88 <matchhere+0x3a>
  b8:	0585                	add	a1,a1,1
  ba:	00178513          	add	a0,a5,1
  be:	00000097          	auipc	ra,0x0
  c2:	f90080e7          	jalr	-112(ra) # 4e <matchhere>
  c6:	b7c9                	j	88 <matchhere+0x3a>
  c8:	4505                	li	a0,1
  ca:	8082                	ret

00000000000000cc <match>:
  cc:	1101                	add	sp,sp,-32
  ce:	ec06                	sd	ra,24(sp)
  d0:	e822                	sd	s0,16(sp)
  d2:	e426                	sd	s1,8(sp)
  d4:	e04a                	sd	s2,0(sp)
  d6:	1000                	add	s0,sp,32
  d8:	892a                	mv	s2,a0
  da:	84ae                	mv	s1,a1
  dc:	00054703          	lbu	a4,0(a0)
  e0:	05e00793          	li	a5,94
  e4:	00f70e63          	beq	a4,a5,100 <match+0x34>
  e8:	85a6                	mv	a1,s1
  ea:	854a                	mv	a0,s2
  ec:	00000097          	auipc	ra,0x0
  f0:	f62080e7          	jalr	-158(ra) # 4e <matchhere>
  f4:	ed01                	bnez	a0,10c <match+0x40>
  f6:	0485                	add	s1,s1,1
  f8:	fff4c783          	lbu	a5,-1(s1)
  fc:	f7f5                	bnez	a5,e8 <match+0x1c>
  fe:	a801                	j	10e <match+0x42>
 100:	0505                	add	a0,a0,1
 102:	00000097          	auipc	ra,0x0
 106:	f4c080e7          	jalr	-180(ra) # 4e <matchhere>
 10a:	a011                	j	10e <match+0x42>
 10c:	4505                	li	a0,1
 10e:	60e2                	ld	ra,24(sp)
 110:	6442                	ld	s0,16(sp)
 112:	64a2                	ld	s1,8(sp)
 114:	6902                	ld	s2,0(sp)
 116:	6105                	add	sp,sp,32
 118:	8082                	ret

000000000000011a <grep>:
 11a:	715d                	add	sp,sp,-80
 11c:	e486                	sd	ra,72(sp)
 11e:	e0a2                	sd	s0,64(sp)
 120:	fc26                	sd	s1,56(sp)
 122:	f84a                	sd	s2,48(sp)
 124:	f44e                	sd	s3,40(sp)
 126:	f052                	sd	s4,32(sp)
 128:	ec56                	sd	s5,24(sp)
 12a:	e85a                	sd	s6,16(sp)
 12c:	e45e                	sd	s7,8(sp)
 12e:	e062                	sd	s8,0(sp)
 130:	0880                	add	s0,sp,80
 132:	89aa                	mv	s3,a0
 134:	8b2e                	mv	s6,a1
 136:	4a01                	li	s4,0
 138:	3ff00b93          	li	s7,1023
 13c:	00001a97          	auipc	s5,0x1
 140:	394a8a93          	add	s5,s5,916 # 14d0 <buf>
 144:	a0a1                	j	18c <grep+0x72>
 146:	00148913          	add	s2,s1,1
 14a:	45a9                	li	a1,10
 14c:	854a                	mv	a0,s2
 14e:	00000097          	auipc	ra,0x0
 152:	20a080e7          	jalr	522(ra) # 358 <strchr>
 156:	84aa                	mv	s1,a0
 158:	c905                	beqz	a0,188 <grep+0x6e>
 15a:	00048023          	sb	zero,0(s1)
 15e:	85ca                	mv	a1,s2
 160:	854e                	mv	a0,s3
 162:	00000097          	auipc	ra,0x0
 166:	f6a080e7          	jalr	-150(ra) # cc <match>
 16a:	dd71                	beqz	a0,146 <grep+0x2c>
 16c:	47a9                	li	a5,10
 16e:	00f48023          	sb	a5,0(s1)
 172:	00148613          	add	a2,s1,1
 176:	4126063b          	subw	a2,a2,s2
 17a:	85ca                	mv	a1,s2
 17c:	4505                	li	a0,1
 17e:	00000097          	auipc	ra,0x0
 182:	3d2080e7          	jalr	978(ra) # 550 <write>
 186:	b7c1                	j	146 <grep+0x2c>
 188:	03404763          	bgtz	s4,1b6 <grep+0x9c>
 18c:	414b863b          	subw	a2,s7,s4
 190:	014a85b3          	add	a1,s5,s4
 194:	855a                	mv	a0,s6
 196:	00000097          	auipc	ra,0x0
 19a:	3b2080e7          	jalr	946(ra) # 548 <read>
 19e:	02a05b63          	blez	a0,1d4 <grep+0xba>
 1a2:	00aa0c3b          	addw	s8,s4,a0
 1a6:	000c0a1b          	sext.w	s4,s8
 1aa:	014a87b3          	add	a5,s5,s4
 1ae:	00078023          	sb	zero,0(a5)
 1b2:	8956                	mv	s2,s5
 1b4:	bf59                	j	14a <grep+0x30>
 1b6:	00001517          	auipc	a0,0x1
 1ba:	31a50513          	add	a0,a0,794 # 14d0 <buf>
 1be:	40a90a33          	sub	s4,s2,a0
 1c2:	414c0a3b          	subw	s4,s8,s4
 1c6:	8652                	mv	a2,s4
 1c8:	85ca                	mv	a1,s2
 1ca:	00000097          	auipc	ra,0x0
 1ce:	2b4080e7          	jalr	692(ra) # 47e <memmove>
 1d2:	bf6d                	j	18c <grep+0x72>
 1d4:	60a6                	ld	ra,72(sp)
 1d6:	6406                	ld	s0,64(sp)
 1d8:	74e2                	ld	s1,56(sp)
 1da:	7942                	ld	s2,48(sp)
 1dc:	79a2                	ld	s3,40(sp)
 1de:	7a02                	ld	s4,32(sp)
 1e0:	6ae2                	ld	s5,24(sp)
 1e2:	6b42                	ld	s6,16(sp)
 1e4:	6ba2                	ld	s7,8(sp)
 1e6:	6c02                	ld	s8,0(sp)
 1e8:	6161                	add	sp,sp,80
 1ea:	8082                	ret

00000000000001ec <main>:
 1ec:	7179                	add	sp,sp,-48
 1ee:	f406                	sd	ra,40(sp)
 1f0:	f022                	sd	s0,32(sp)
 1f2:	ec26                	sd	s1,24(sp)
 1f4:	e84a                	sd	s2,16(sp)
 1f6:	e44e                	sd	s3,8(sp)
 1f8:	e052                	sd	s4,0(sp)
 1fa:	1800                	add	s0,sp,48
 1fc:	4785                	li	a5,1
 1fe:	04a7de63          	bge	a5,a0,25a <main+0x6e>
 202:	0085ba03          	ld	s4,8(a1)
 206:	4789                	li	a5,2
 208:	06a7d763          	bge	a5,a0,276 <main+0x8a>
 20c:	01058913          	add	s2,a1,16
 210:	ffd5099b          	addw	s3,a0,-3
 214:	02099793          	sll	a5,s3,0x20
 218:	01d7d993          	srl	s3,a5,0x1d
 21c:	05e1                	add	a1,a1,24
 21e:	99ae                	add	s3,s3,a1
 220:	4581                	li	a1,0
 222:	00093503          	ld	a0,0(s2)
 226:	00000097          	auipc	ra,0x0
 22a:	34a080e7          	jalr	842(ra) # 570 <open>
 22e:	84aa                	mv	s1,a0
 230:	04054e63          	bltz	a0,28c <main+0xa0>
 234:	85aa                	mv	a1,a0
 236:	8552                	mv	a0,s4
 238:	00000097          	auipc	ra,0x0
 23c:	ee2080e7          	jalr	-286(ra) # 11a <grep>
 240:	8526                	mv	a0,s1
 242:	00000097          	auipc	ra,0x0
 246:	316080e7          	jalr	790(ra) # 558 <close>
 24a:	0921                	add	s2,s2,8
 24c:	fd391ae3          	bne	s2,s3,220 <main+0x34>
 250:	4501                	li	a0,0
 252:	00000097          	auipc	ra,0x0
 256:	2de080e7          	jalr	734(ra) # 530 <exit>
 25a:	00001597          	auipc	a1,0x1
 25e:	81658593          	add	a1,a1,-2026 # a70 <malloc+0x100>
 262:	4509                	li	a0,2
 264:	00000097          	auipc	ra,0x0
 268:	626080e7          	jalr	1574(ra) # 88a <fprintf>
 26c:	4505                	li	a0,1
 26e:	00000097          	auipc	ra,0x0
 272:	2c2080e7          	jalr	706(ra) # 530 <exit>
 276:	4581                	li	a1,0
 278:	8552                	mv	a0,s4
 27a:	00000097          	auipc	ra,0x0
 27e:	ea0080e7          	jalr	-352(ra) # 11a <grep>
 282:	4501                	li	a0,0
 284:	00000097          	auipc	ra,0x0
 288:	2ac080e7          	jalr	684(ra) # 530 <exit>
 28c:	00093583          	ld	a1,0(s2)
 290:	00001517          	auipc	a0,0x1
 294:	80050513          	add	a0,a0,-2048 # a90 <malloc+0x120>
 298:	00000097          	auipc	ra,0x0
 29c:	620080e7          	jalr	1568(ra) # 8b8 <printf>
 2a0:	4505                	li	a0,1
 2a2:	00000097          	auipc	ra,0x0
 2a6:	28e080e7          	jalr	654(ra) # 530 <exit>

00000000000002aa <_main>:
 2aa:	1141                	add	sp,sp,-16
 2ac:	e406                	sd	ra,8(sp)
 2ae:	e022                	sd	s0,0(sp)
 2b0:	0800                	add	s0,sp,16
 2b2:	00000097          	auipc	ra,0x0
 2b6:	f3a080e7          	jalr	-198(ra) # 1ec <main>
 2ba:	4501                	li	a0,0
 2bc:	00000097          	auipc	ra,0x0
 2c0:	274080e7          	jalr	628(ra) # 530 <exit>

00000000000002c4 <strcpy>:
 2c4:	1141                	add	sp,sp,-16
 2c6:	e422                	sd	s0,8(sp)
 2c8:	0800                	add	s0,sp,16
 2ca:	87aa                	mv	a5,a0
 2cc:	0585                	add	a1,a1,1
 2ce:	0785                	add	a5,a5,1
 2d0:	fff5c703          	lbu	a4,-1(a1)
 2d4:	fee78fa3          	sb	a4,-1(a5)
 2d8:	fb75                	bnez	a4,2cc <strcpy+0x8>
 2da:	6422                	ld	s0,8(sp)
 2dc:	0141                	add	sp,sp,16
 2de:	8082                	ret

00000000000002e0 <strcmp>:
 2e0:	1141                	add	sp,sp,-16
 2e2:	e422                	sd	s0,8(sp)
 2e4:	0800                	add	s0,sp,16
 2e6:	00054783          	lbu	a5,0(a0)
 2ea:	cb91                	beqz	a5,2fe <strcmp+0x1e>
 2ec:	0005c703          	lbu	a4,0(a1)
 2f0:	00f71763          	bne	a4,a5,2fe <strcmp+0x1e>
 2f4:	0505                	add	a0,a0,1
 2f6:	0585                	add	a1,a1,1
 2f8:	00054783          	lbu	a5,0(a0)
 2fc:	fbe5                	bnez	a5,2ec <strcmp+0xc>
 2fe:	0005c503          	lbu	a0,0(a1)
 302:	40a7853b          	subw	a0,a5,a0
 306:	6422                	ld	s0,8(sp)
 308:	0141                	add	sp,sp,16
 30a:	8082                	ret

000000000000030c <strlen>:
 30c:	1141                	add	sp,sp,-16
 30e:	e422                	sd	s0,8(sp)
 310:	0800                	add	s0,sp,16
 312:	00054783          	lbu	a5,0(a0)
 316:	cf91                	beqz	a5,332 <strlen+0x26>
 318:	0505                	add	a0,a0,1
 31a:	87aa                	mv	a5,a0
 31c:	86be                	mv	a3,a5
 31e:	0785                	add	a5,a5,1
 320:	fff7c703          	lbu	a4,-1(a5)
 324:	ff65                	bnez	a4,31c <strlen+0x10>
 326:	40a6853b          	subw	a0,a3,a0
 32a:	2505                	addw	a0,a0,1
 32c:	6422                	ld	s0,8(sp)
 32e:	0141                	add	sp,sp,16
 330:	8082                	ret
 332:	4501                	li	a0,0
 334:	bfe5                	j	32c <strlen+0x20>

0000000000000336 <memset>:
 336:	1141                	add	sp,sp,-16
 338:	e422                	sd	s0,8(sp)
 33a:	0800                	add	s0,sp,16
 33c:	ca19                	beqz	a2,352 <memset+0x1c>
 33e:	87aa                	mv	a5,a0
 340:	1602                	sll	a2,a2,0x20
 342:	9201                	srl	a2,a2,0x20
 344:	00a60733          	add	a4,a2,a0
 348:	00b78023          	sb	a1,0(a5)
 34c:	0785                	add	a5,a5,1
 34e:	fee79de3          	bne	a5,a4,348 <memset+0x12>
 352:	6422                	ld	s0,8(sp)
 354:	0141                	add	sp,sp,16
 356:	8082                	ret

0000000000000358 <strchr>:
 358:	1141                	add	sp,sp,-16
 35a:	e422                	sd	s0,8(sp)
 35c:	0800                	add	s0,sp,16
 35e:	00054783          	lbu	a5,0(a0)
 362:	cb99                	beqz	a5,378 <strchr+0x20>
 364:	00f58763          	beq	a1,a5,372 <strchr+0x1a>
 368:	0505                	add	a0,a0,1
 36a:	00054783          	lbu	a5,0(a0)
 36e:	fbfd                	bnez	a5,364 <strchr+0xc>
 370:	4501                	li	a0,0
 372:	6422                	ld	s0,8(sp)
 374:	0141                	add	sp,sp,16
 376:	8082                	ret
 378:	4501                	li	a0,0
 37a:	bfe5                	j	372 <strchr+0x1a>

000000000000037c <gets>:
 37c:	711d                	add	sp,sp,-96
 37e:	ec86                	sd	ra,88(sp)
 380:	e8a2                	sd	s0,80(sp)
 382:	e4a6                	sd	s1,72(sp)
 384:	e0ca                	sd	s2,64(sp)
 386:	fc4e                	sd	s3,56(sp)
 388:	f852                	sd	s4,48(sp)
 38a:	f456                	sd	s5,40(sp)
 38c:	f05a                	sd	s6,32(sp)
 38e:	ec5e                	sd	s7,24(sp)
 390:	1080                	add	s0,sp,96
 392:	8baa                	mv	s7,a0
 394:	8a2e                	mv	s4,a1
 396:	892a                	mv	s2,a0
 398:	4481                	li	s1,0
 39a:	4aa9                	li	s5,10
 39c:	4b35                	li	s6,13
 39e:	89a6                	mv	s3,s1
 3a0:	2485                	addw	s1,s1,1
 3a2:	0344d863          	bge	s1,s4,3d2 <gets+0x56>
 3a6:	4605                	li	a2,1
 3a8:	faf40593          	add	a1,s0,-81
 3ac:	4501                	li	a0,0
 3ae:	00000097          	auipc	ra,0x0
 3b2:	19a080e7          	jalr	410(ra) # 548 <read>
 3b6:	00a05e63          	blez	a0,3d2 <gets+0x56>
 3ba:	faf44783          	lbu	a5,-81(s0)
 3be:	00f90023          	sb	a5,0(s2)
 3c2:	01578763          	beq	a5,s5,3d0 <gets+0x54>
 3c6:	0905                	add	s2,s2,1
 3c8:	fd679be3          	bne	a5,s6,39e <gets+0x22>
 3cc:	89a6                	mv	s3,s1
 3ce:	a011                	j	3d2 <gets+0x56>
 3d0:	89a6                	mv	s3,s1
 3d2:	99de                	add	s3,s3,s7
 3d4:	00098023          	sb	zero,0(s3)
 3d8:	855e                	mv	a0,s7
 3da:	60e6                	ld	ra,88(sp)
 3dc:	6446                	ld	s0,80(sp)
 3de:	64a6                	ld	s1,72(sp)
 3e0:	6906                	ld	s2,64(sp)
 3e2:	79e2                	ld	s3,56(sp)
 3e4:	7a42                	ld	s4,48(sp)
 3e6:	7aa2                	ld	s5,40(sp)
 3e8:	7b02                	ld	s6,32(sp)
 3ea:	6be2                	ld	s7,24(sp)
 3ec:	6125                	add	sp,sp,96
 3ee:	8082                	ret

00000000000003f0 <stat>:
 3f0:	1101                	add	sp,sp,-32
 3f2:	ec06                	sd	ra,24(sp)
 3f4:	e822                	sd	s0,16(sp)
 3f6:	e04a                	sd	s2,0(sp)
 3f8:	1000                	add	s0,sp,32
 3fa:	892e                	mv	s2,a1
 3fc:	4581                	li	a1,0
 3fe:	00000097          	auipc	ra,0x0
 402:	172080e7          	jalr	370(ra) # 570 <open>
 406:	02054663          	bltz	a0,432 <stat+0x42>
 40a:	e426                	sd	s1,8(sp)
 40c:	84aa                	mv	s1,a0
 40e:	85ca                	mv	a1,s2
 410:	00000097          	auipc	ra,0x0
 414:	178080e7          	jalr	376(ra) # 588 <fstat>
 418:	892a                	mv	s2,a0
 41a:	8526                	mv	a0,s1
 41c:	00000097          	auipc	ra,0x0
 420:	13c080e7          	jalr	316(ra) # 558 <close>
 424:	64a2                	ld	s1,8(sp)
 426:	854a                	mv	a0,s2
 428:	60e2                	ld	ra,24(sp)
 42a:	6442                	ld	s0,16(sp)
 42c:	6902                	ld	s2,0(sp)
 42e:	6105                	add	sp,sp,32
 430:	8082                	ret
 432:	597d                	li	s2,-1
 434:	bfcd                	j	426 <stat+0x36>

0000000000000436 <atoi>:
 436:	1141                	add	sp,sp,-16
 438:	e422                	sd	s0,8(sp)
 43a:	0800                	add	s0,sp,16
 43c:	00054683          	lbu	a3,0(a0)
 440:	fd06879b          	addw	a5,a3,-48
 444:	0ff7f793          	zext.b	a5,a5
 448:	4625                	li	a2,9
 44a:	02f66863          	bltu	a2,a5,47a <atoi+0x44>
 44e:	872a                	mv	a4,a0
 450:	4501                	li	a0,0
 452:	0705                	add	a4,a4,1
 454:	0025179b          	sllw	a5,a0,0x2
 458:	9fa9                	addw	a5,a5,a0
 45a:	0017979b          	sllw	a5,a5,0x1
 45e:	9fb5                	addw	a5,a5,a3
 460:	fd07851b          	addw	a0,a5,-48
 464:	00074683          	lbu	a3,0(a4)
 468:	fd06879b          	addw	a5,a3,-48
 46c:	0ff7f793          	zext.b	a5,a5
 470:	fef671e3          	bgeu	a2,a5,452 <atoi+0x1c>
 474:	6422                	ld	s0,8(sp)
 476:	0141                	add	sp,sp,16
 478:	8082                	ret
 47a:	4501                	li	a0,0
 47c:	bfe5                	j	474 <atoi+0x3e>

000000000000047e <memmove>:
 47e:	1141                	add	sp,sp,-16
 480:	e422                	sd	s0,8(sp)
 482:	0800                	add	s0,sp,16
 484:	02b57463          	bgeu	a0,a1,4ac <memmove+0x2e>
 488:	00c05f63          	blez	a2,4a6 <memmove+0x28>
 48c:	1602                	sll	a2,a2,0x20
 48e:	9201                	srl	a2,a2,0x20
 490:	00c507b3          	add	a5,a0,a2
 494:	872a                	mv	a4,a0
 496:	0585                	add	a1,a1,1
 498:	0705                	add	a4,a4,1
 49a:	fff5c683          	lbu	a3,-1(a1)
 49e:	fed70fa3          	sb	a3,-1(a4)
 4a2:	fef71ae3          	bne	a4,a5,496 <memmove+0x18>
 4a6:	6422                	ld	s0,8(sp)
 4a8:	0141                	add	sp,sp,16
 4aa:	8082                	ret
 4ac:	00c50733          	add	a4,a0,a2
 4b0:	95b2                	add	a1,a1,a2
 4b2:	fec05ae3          	blez	a2,4a6 <memmove+0x28>
 4b6:	fff6079b          	addw	a5,a2,-1
 4ba:	1782                	sll	a5,a5,0x20
 4bc:	9381                	srl	a5,a5,0x20
 4be:	fff7c793          	not	a5,a5
 4c2:	97ba                	add	a5,a5,a4
 4c4:	15fd                	add	a1,a1,-1
 4c6:	177d                	add	a4,a4,-1
 4c8:	0005c683          	lbu	a3,0(a1)
 4cc:	00d70023          	sb	a3,0(a4)
 4d0:	fee79ae3          	bne	a5,a4,4c4 <memmove+0x46>
 4d4:	bfc9                	j	4a6 <memmove+0x28>

00000000000004d6 <memcmp>:
 4d6:	1141                	add	sp,sp,-16
 4d8:	e422                	sd	s0,8(sp)
 4da:	0800                	add	s0,sp,16
 4dc:	ca05                	beqz	a2,50c <memcmp+0x36>
 4de:	fff6069b          	addw	a3,a2,-1
 4e2:	1682                	sll	a3,a3,0x20
 4e4:	9281                	srl	a3,a3,0x20
 4e6:	0685                	add	a3,a3,1
 4e8:	96aa                	add	a3,a3,a0
 4ea:	00054783          	lbu	a5,0(a0)
 4ee:	0005c703          	lbu	a4,0(a1)
 4f2:	00e79863          	bne	a5,a4,502 <memcmp+0x2c>
 4f6:	0505                	add	a0,a0,1
 4f8:	0585                	add	a1,a1,1
 4fa:	fed518e3          	bne	a0,a3,4ea <memcmp+0x14>
 4fe:	4501                	li	a0,0
 500:	a019                	j	506 <memcmp+0x30>
 502:	40e7853b          	subw	a0,a5,a4
 506:	6422                	ld	s0,8(sp)
 508:	0141                	add	sp,sp,16
 50a:	8082                	ret
 50c:	4501                	li	a0,0
 50e:	bfe5                	j	506 <memcmp+0x30>

0000000000000510 <memcpy>:
 510:	1141                	add	sp,sp,-16
 512:	e406                	sd	ra,8(sp)
 514:	e022                	sd	s0,0(sp)
 516:	0800                	add	s0,sp,16
 518:	00000097          	auipc	ra,0x0
 51c:	f66080e7          	jalr	-154(ra) # 47e <memmove>
 520:	60a2                	ld	ra,8(sp)
 522:	6402                	ld	s0,0(sp)
 524:	0141                	add	sp,sp,16
 526:	8082                	ret

0000000000000528 <fork>:
 528:	4885                	li	a7,1
 52a:	00000073          	ecall
 52e:	8082                	ret

0000000000000530 <exit>:
 530:	4889                	li	a7,2
 532:	00000073          	ecall
 536:	8082                	ret

0000000000000538 <wait>:
 538:	488d                	li	a7,3
 53a:	00000073          	ecall
 53e:	8082                	ret

0000000000000540 <pipe>:
 540:	4891                	li	a7,4
 542:	00000073          	ecall
 546:	8082                	ret

0000000000000548 <read>:
 548:	4895                	li	a7,5
 54a:	00000073          	ecall
 54e:	8082                	ret

0000000000000550 <write>:
 550:	48c1                	li	a7,16
 552:	00000073          	ecall
 556:	8082                	ret

0000000000000558 <close>:
 558:	48d5                	li	a7,21
 55a:	00000073          	ecall
 55e:	8082                	ret

0000000000000560 <kill>:
 560:	4899                	li	a7,6
 562:	00000073          	ecall
 566:	8082                	ret

0000000000000568 <exec>:
 568:	489d                	li	a7,7
 56a:	00000073          	ecall
 56e:	8082                	ret

0000000000000570 <open>:
 570:	48bd                	li	a7,15
 572:	00000073          	ecall
 576:	8082                	ret

0000000000000578 <mknod>:
 578:	48c5                	li	a7,17
 57a:	00000073          	ecall
 57e:	8082                	ret

0000000000000580 <unlink>:
 580:	48c9                	li	a7,18
 582:	00000073          	ecall
 586:	8082                	ret

0000000000000588 <fstat>:
 588:	48a1                	li	a7,8
 58a:	00000073          	ecall
 58e:	8082                	ret

0000000000000590 <link>:
 590:	48cd                	li	a7,19
 592:	00000073          	ecall
 596:	8082                	ret

0000000000000598 <mkdir>:
 598:	48d1                	li	a7,20
 59a:	00000073          	ecall
 59e:	8082                	ret

00000000000005a0 <chdir>:
 5a0:	48a5                	li	a7,9
 5a2:	00000073          	ecall
 5a6:	8082                	ret

00000000000005a8 <dup>:
 5a8:	48a9                	li	a7,10
 5aa:	00000073          	ecall
 5ae:	8082                	ret

00000000000005b0 <getpid>:
 5b0:	48ad                	li	a7,11
 5b2:	00000073          	ecall
 5b6:	8082                	ret

00000000000005b8 <sbrk>:
 5b8:	48b1                	li	a7,12
 5ba:	00000073          	ecall
 5be:	8082                	ret

00000000000005c0 <sleep>:
 5c0:	48b5                	li	a7,13
 5c2:	00000073          	ecall
 5c6:	8082                	ret

00000000000005c8 <uptime>:
 5c8:	48b9                	li	a7,14
 5ca:	00000073          	ecall
 5ce:	8082                	ret

00000000000005d0 <waitx>:
 5d0:	48d9                	li	a7,22
 5d2:	00000073          	ecall
 5d6:	8082                	ret

00000000000005d8 <getSysCount>:
 5d8:	48dd                	li	a7,23
 5da:	00000073          	ecall
 5de:	8082                	ret

00000000000005e0 <sigalarm>:
 5e0:	48e1                	li	a7,24
 5e2:	00000073          	ecall
 5e6:	8082                	ret

00000000000005e8 <sigreturn>:
 5e8:	48e5                	li	a7,25
 5ea:	00000073          	ecall
 5ee:	8082                	ret

00000000000005f0 <putc>:
 5f0:	1101                	add	sp,sp,-32
 5f2:	ec06                	sd	ra,24(sp)
 5f4:	e822                	sd	s0,16(sp)
 5f6:	1000                	add	s0,sp,32
 5f8:	feb407a3          	sb	a1,-17(s0)
 5fc:	4605                	li	a2,1
 5fe:	fef40593          	add	a1,s0,-17
 602:	00000097          	auipc	ra,0x0
 606:	f4e080e7          	jalr	-178(ra) # 550 <write>
 60a:	60e2                	ld	ra,24(sp)
 60c:	6442                	ld	s0,16(sp)
 60e:	6105                	add	sp,sp,32
 610:	8082                	ret

0000000000000612 <printint>:
 612:	7139                	add	sp,sp,-64
 614:	fc06                	sd	ra,56(sp)
 616:	f822                	sd	s0,48(sp)
 618:	f426                	sd	s1,40(sp)
 61a:	0080                	add	s0,sp,64
 61c:	84aa                	mv	s1,a0
 61e:	c299                	beqz	a3,624 <printint+0x12>
 620:	0805cb63          	bltz	a1,6b6 <printint+0xa4>
 624:	2581                	sext.w	a1,a1
 626:	4881                	li	a7,0
 628:	fc040693          	add	a3,s0,-64
 62c:	4701                	li	a4,0
 62e:	2601                	sext.w	a2,a2
 630:	00000517          	auipc	a0,0x0
 634:	4d850513          	add	a0,a0,1240 # b08 <digits>
 638:	883a                	mv	a6,a4
 63a:	2705                	addw	a4,a4,1
 63c:	02c5f7bb          	remuw	a5,a1,a2
 640:	1782                	sll	a5,a5,0x20
 642:	9381                	srl	a5,a5,0x20
 644:	97aa                	add	a5,a5,a0
 646:	0007c783          	lbu	a5,0(a5)
 64a:	00f68023          	sb	a5,0(a3)
 64e:	0005879b          	sext.w	a5,a1
 652:	02c5d5bb          	divuw	a1,a1,a2
 656:	0685                	add	a3,a3,1
 658:	fec7f0e3          	bgeu	a5,a2,638 <printint+0x26>
 65c:	00088c63          	beqz	a7,674 <printint+0x62>
 660:	fd070793          	add	a5,a4,-48
 664:	00878733          	add	a4,a5,s0
 668:	02d00793          	li	a5,45
 66c:	fef70823          	sb	a5,-16(a4)
 670:	0028071b          	addw	a4,a6,2
 674:	02e05c63          	blez	a4,6ac <printint+0x9a>
 678:	f04a                	sd	s2,32(sp)
 67a:	ec4e                	sd	s3,24(sp)
 67c:	fc040793          	add	a5,s0,-64
 680:	00e78933          	add	s2,a5,a4
 684:	fff78993          	add	s3,a5,-1
 688:	99ba                	add	s3,s3,a4
 68a:	377d                	addw	a4,a4,-1
 68c:	1702                	sll	a4,a4,0x20
 68e:	9301                	srl	a4,a4,0x20
 690:	40e989b3          	sub	s3,s3,a4
 694:	fff94583          	lbu	a1,-1(s2)
 698:	8526                	mv	a0,s1
 69a:	00000097          	auipc	ra,0x0
 69e:	f56080e7          	jalr	-170(ra) # 5f0 <putc>
 6a2:	197d                	add	s2,s2,-1
 6a4:	ff3918e3          	bne	s2,s3,694 <printint+0x82>
 6a8:	7902                	ld	s2,32(sp)
 6aa:	69e2                	ld	s3,24(sp)
 6ac:	70e2                	ld	ra,56(sp)
 6ae:	7442                	ld	s0,48(sp)
 6b0:	74a2                	ld	s1,40(sp)
 6b2:	6121                	add	sp,sp,64
 6b4:	8082                	ret
 6b6:	40b005bb          	negw	a1,a1
 6ba:	4885                	li	a7,1
 6bc:	b7b5                	j	628 <printint+0x16>

00000000000006be <vprintf>:
 6be:	715d                	add	sp,sp,-80
 6c0:	e486                	sd	ra,72(sp)
 6c2:	e0a2                	sd	s0,64(sp)
 6c4:	f84a                	sd	s2,48(sp)
 6c6:	0880                	add	s0,sp,80
 6c8:	0005c903          	lbu	s2,0(a1)
 6cc:	1a090a63          	beqz	s2,880 <vprintf+0x1c2>
 6d0:	fc26                	sd	s1,56(sp)
 6d2:	f44e                	sd	s3,40(sp)
 6d4:	f052                	sd	s4,32(sp)
 6d6:	ec56                	sd	s5,24(sp)
 6d8:	e85a                	sd	s6,16(sp)
 6da:	e45e                	sd	s7,8(sp)
 6dc:	8aaa                	mv	s5,a0
 6de:	8bb2                	mv	s7,a2
 6e0:	00158493          	add	s1,a1,1
 6e4:	4981                	li	s3,0
 6e6:	02500a13          	li	s4,37
 6ea:	4b55                	li	s6,21
 6ec:	a839                	j	70a <vprintf+0x4c>
 6ee:	85ca                	mv	a1,s2
 6f0:	8556                	mv	a0,s5
 6f2:	00000097          	auipc	ra,0x0
 6f6:	efe080e7          	jalr	-258(ra) # 5f0 <putc>
 6fa:	a019                	j	700 <vprintf+0x42>
 6fc:	01498d63          	beq	s3,s4,716 <vprintf+0x58>
 700:	0485                	add	s1,s1,1
 702:	fff4c903          	lbu	s2,-1(s1)
 706:	16090763          	beqz	s2,874 <vprintf+0x1b6>
 70a:	fe0999e3          	bnez	s3,6fc <vprintf+0x3e>
 70e:	ff4910e3          	bne	s2,s4,6ee <vprintf+0x30>
 712:	89d2                	mv	s3,s4
 714:	b7f5                	j	700 <vprintf+0x42>
 716:	13490463          	beq	s2,s4,83e <vprintf+0x180>
 71a:	f9d9079b          	addw	a5,s2,-99
 71e:	0ff7f793          	zext.b	a5,a5
 722:	12fb6763          	bltu	s6,a5,850 <vprintf+0x192>
 726:	f9d9079b          	addw	a5,s2,-99
 72a:	0ff7f713          	zext.b	a4,a5
 72e:	12eb6163          	bltu	s6,a4,850 <vprintf+0x192>
 732:	00271793          	sll	a5,a4,0x2
 736:	00000717          	auipc	a4,0x0
 73a:	37a70713          	add	a4,a4,890 # ab0 <malloc+0x140>
 73e:	97ba                	add	a5,a5,a4
 740:	439c                	lw	a5,0(a5)
 742:	97ba                	add	a5,a5,a4
 744:	8782                	jr	a5
 746:	008b8913          	add	s2,s7,8
 74a:	4685                	li	a3,1
 74c:	4629                	li	a2,10
 74e:	000ba583          	lw	a1,0(s7)
 752:	8556                	mv	a0,s5
 754:	00000097          	auipc	ra,0x0
 758:	ebe080e7          	jalr	-322(ra) # 612 <printint>
 75c:	8bca                	mv	s7,s2
 75e:	4981                	li	s3,0
 760:	b745                	j	700 <vprintf+0x42>
 762:	008b8913          	add	s2,s7,8
 766:	4681                	li	a3,0
 768:	4629                	li	a2,10
 76a:	000ba583          	lw	a1,0(s7)
 76e:	8556                	mv	a0,s5
 770:	00000097          	auipc	ra,0x0
 774:	ea2080e7          	jalr	-350(ra) # 612 <printint>
 778:	8bca                	mv	s7,s2
 77a:	4981                	li	s3,0
 77c:	b751                	j	700 <vprintf+0x42>
 77e:	008b8913          	add	s2,s7,8
 782:	4681                	li	a3,0
 784:	4641                	li	a2,16
 786:	000ba583          	lw	a1,0(s7)
 78a:	8556                	mv	a0,s5
 78c:	00000097          	auipc	ra,0x0
 790:	e86080e7          	jalr	-378(ra) # 612 <printint>
 794:	8bca                	mv	s7,s2
 796:	4981                	li	s3,0
 798:	b7a5                	j	700 <vprintf+0x42>
 79a:	e062                	sd	s8,0(sp)
 79c:	008b8c13          	add	s8,s7,8
 7a0:	000bb983          	ld	s3,0(s7)
 7a4:	03000593          	li	a1,48
 7a8:	8556                	mv	a0,s5
 7aa:	00000097          	auipc	ra,0x0
 7ae:	e46080e7          	jalr	-442(ra) # 5f0 <putc>
 7b2:	07800593          	li	a1,120
 7b6:	8556                	mv	a0,s5
 7b8:	00000097          	auipc	ra,0x0
 7bc:	e38080e7          	jalr	-456(ra) # 5f0 <putc>
 7c0:	4941                	li	s2,16
 7c2:	00000b97          	auipc	s7,0x0
 7c6:	346b8b93          	add	s7,s7,838 # b08 <digits>
 7ca:	03c9d793          	srl	a5,s3,0x3c
 7ce:	97de                	add	a5,a5,s7
 7d0:	0007c583          	lbu	a1,0(a5)
 7d4:	8556                	mv	a0,s5
 7d6:	00000097          	auipc	ra,0x0
 7da:	e1a080e7          	jalr	-486(ra) # 5f0 <putc>
 7de:	0992                	sll	s3,s3,0x4
 7e0:	397d                	addw	s2,s2,-1
 7e2:	fe0914e3          	bnez	s2,7ca <vprintf+0x10c>
 7e6:	8be2                	mv	s7,s8
 7e8:	4981                	li	s3,0
 7ea:	6c02                	ld	s8,0(sp)
 7ec:	bf11                	j	700 <vprintf+0x42>
 7ee:	008b8993          	add	s3,s7,8
 7f2:	000bb903          	ld	s2,0(s7)
 7f6:	02090163          	beqz	s2,818 <vprintf+0x15a>
 7fa:	00094583          	lbu	a1,0(s2)
 7fe:	c9a5                	beqz	a1,86e <vprintf+0x1b0>
 800:	8556                	mv	a0,s5
 802:	00000097          	auipc	ra,0x0
 806:	dee080e7          	jalr	-530(ra) # 5f0 <putc>
 80a:	0905                	add	s2,s2,1
 80c:	00094583          	lbu	a1,0(s2)
 810:	f9e5                	bnez	a1,800 <vprintf+0x142>
 812:	8bce                	mv	s7,s3
 814:	4981                	li	s3,0
 816:	b5ed                	j	700 <vprintf+0x42>
 818:	00000917          	auipc	s2,0x0
 81c:	29090913          	add	s2,s2,656 # aa8 <malloc+0x138>
 820:	02800593          	li	a1,40
 824:	bff1                	j	800 <vprintf+0x142>
 826:	008b8913          	add	s2,s7,8
 82a:	000bc583          	lbu	a1,0(s7)
 82e:	8556                	mv	a0,s5
 830:	00000097          	auipc	ra,0x0
 834:	dc0080e7          	jalr	-576(ra) # 5f0 <putc>
 838:	8bca                	mv	s7,s2
 83a:	4981                	li	s3,0
 83c:	b5d1                	j	700 <vprintf+0x42>
 83e:	02500593          	li	a1,37
 842:	8556                	mv	a0,s5
 844:	00000097          	auipc	ra,0x0
 848:	dac080e7          	jalr	-596(ra) # 5f0 <putc>
 84c:	4981                	li	s3,0
 84e:	bd4d                	j	700 <vprintf+0x42>
 850:	02500593          	li	a1,37
 854:	8556                	mv	a0,s5
 856:	00000097          	auipc	ra,0x0
 85a:	d9a080e7          	jalr	-614(ra) # 5f0 <putc>
 85e:	85ca                	mv	a1,s2
 860:	8556                	mv	a0,s5
 862:	00000097          	auipc	ra,0x0
 866:	d8e080e7          	jalr	-626(ra) # 5f0 <putc>
 86a:	4981                	li	s3,0
 86c:	bd51                	j	700 <vprintf+0x42>
 86e:	8bce                	mv	s7,s3
 870:	4981                	li	s3,0
 872:	b579                	j	700 <vprintf+0x42>
 874:	74e2                	ld	s1,56(sp)
 876:	79a2                	ld	s3,40(sp)
 878:	7a02                	ld	s4,32(sp)
 87a:	6ae2                	ld	s5,24(sp)
 87c:	6b42                	ld	s6,16(sp)
 87e:	6ba2                	ld	s7,8(sp)
 880:	60a6                	ld	ra,72(sp)
 882:	6406                	ld	s0,64(sp)
 884:	7942                	ld	s2,48(sp)
 886:	6161                	add	sp,sp,80
 888:	8082                	ret

000000000000088a <fprintf>:
 88a:	715d                	add	sp,sp,-80
 88c:	ec06                	sd	ra,24(sp)
 88e:	e822                	sd	s0,16(sp)
 890:	1000                	add	s0,sp,32
 892:	e010                	sd	a2,0(s0)
 894:	e414                	sd	a3,8(s0)
 896:	e818                	sd	a4,16(s0)
 898:	ec1c                	sd	a5,24(s0)
 89a:	03043023          	sd	a6,32(s0)
 89e:	03143423          	sd	a7,40(s0)
 8a2:	fe843423          	sd	s0,-24(s0)
 8a6:	8622                	mv	a2,s0
 8a8:	00000097          	auipc	ra,0x0
 8ac:	e16080e7          	jalr	-490(ra) # 6be <vprintf>
 8b0:	60e2                	ld	ra,24(sp)
 8b2:	6442                	ld	s0,16(sp)
 8b4:	6161                	add	sp,sp,80
 8b6:	8082                	ret

00000000000008b8 <printf>:
 8b8:	711d                	add	sp,sp,-96
 8ba:	ec06                	sd	ra,24(sp)
 8bc:	e822                	sd	s0,16(sp)
 8be:	1000                	add	s0,sp,32
 8c0:	e40c                	sd	a1,8(s0)
 8c2:	e810                	sd	a2,16(s0)
 8c4:	ec14                	sd	a3,24(s0)
 8c6:	f018                	sd	a4,32(s0)
 8c8:	f41c                	sd	a5,40(s0)
 8ca:	03043823          	sd	a6,48(s0)
 8ce:	03143c23          	sd	a7,56(s0)
 8d2:	00840613          	add	a2,s0,8
 8d6:	fec43423          	sd	a2,-24(s0)
 8da:	85aa                	mv	a1,a0
 8dc:	4505                	li	a0,1
 8de:	00000097          	auipc	ra,0x0
 8e2:	de0080e7          	jalr	-544(ra) # 6be <vprintf>
 8e6:	60e2                	ld	ra,24(sp)
 8e8:	6442                	ld	s0,16(sp)
 8ea:	6125                	add	sp,sp,96
 8ec:	8082                	ret

00000000000008ee <free>:
 8ee:	1141                	add	sp,sp,-16
 8f0:	e422                	sd	s0,8(sp)
 8f2:	0800                	add	s0,sp,16
 8f4:	ff050693          	add	a3,a0,-16
 8f8:	00001797          	auipc	a5,0x1
 8fc:	bc87b783          	ld	a5,-1080(a5) # 14c0 <freep>
 900:	a02d                	j	92a <free+0x3c>
 902:	4618                	lw	a4,8(a2)
 904:	9f2d                	addw	a4,a4,a1
 906:	fee52c23          	sw	a4,-8(a0)
 90a:	6398                	ld	a4,0(a5)
 90c:	6310                	ld	a2,0(a4)
 90e:	a83d                	j	94c <free+0x5e>
 910:	ff852703          	lw	a4,-8(a0)
 914:	9f31                	addw	a4,a4,a2
 916:	c798                	sw	a4,8(a5)
 918:	ff053683          	ld	a3,-16(a0)
 91c:	a091                	j	960 <free+0x72>
 91e:	6398                	ld	a4,0(a5)
 920:	00e7e463          	bltu	a5,a4,928 <free+0x3a>
 924:	00e6ea63          	bltu	a3,a4,938 <free+0x4a>
 928:	87ba                	mv	a5,a4
 92a:	fed7fae3          	bgeu	a5,a3,91e <free+0x30>
 92e:	6398                	ld	a4,0(a5)
 930:	00e6e463          	bltu	a3,a4,938 <free+0x4a>
 934:	fee7eae3          	bltu	a5,a4,928 <free+0x3a>
 938:	ff852583          	lw	a1,-8(a0)
 93c:	6390                	ld	a2,0(a5)
 93e:	02059813          	sll	a6,a1,0x20
 942:	01c85713          	srl	a4,a6,0x1c
 946:	9736                	add	a4,a4,a3
 948:	fae60de3          	beq	a2,a4,902 <free+0x14>
 94c:	fec53823          	sd	a2,-16(a0)
 950:	4790                	lw	a2,8(a5)
 952:	02061593          	sll	a1,a2,0x20
 956:	01c5d713          	srl	a4,a1,0x1c
 95a:	973e                	add	a4,a4,a5
 95c:	fae68ae3          	beq	a3,a4,910 <free+0x22>
 960:	e394                	sd	a3,0(a5)
 962:	00001717          	auipc	a4,0x1
 966:	b4f73f23          	sd	a5,-1186(a4) # 14c0 <freep>
 96a:	6422                	ld	s0,8(sp)
 96c:	0141                	add	sp,sp,16
 96e:	8082                	ret

0000000000000970 <malloc>:
 970:	7139                	add	sp,sp,-64
 972:	fc06                	sd	ra,56(sp)
 974:	f822                	sd	s0,48(sp)
 976:	f426                	sd	s1,40(sp)
 978:	ec4e                	sd	s3,24(sp)
 97a:	0080                	add	s0,sp,64
 97c:	02051493          	sll	s1,a0,0x20
 980:	9081                	srl	s1,s1,0x20
 982:	04bd                	add	s1,s1,15
 984:	8091                	srl	s1,s1,0x4
 986:	0014899b          	addw	s3,s1,1
 98a:	0485                	add	s1,s1,1
 98c:	00001517          	auipc	a0,0x1
 990:	b3453503          	ld	a0,-1228(a0) # 14c0 <freep>
 994:	c915                	beqz	a0,9c8 <malloc+0x58>
 996:	611c                	ld	a5,0(a0)
 998:	4798                	lw	a4,8(a5)
 99a:	08977e63          	bgeu	a4,s1,a36 <malloc+0xc6>
 99e:	f04a                	sd	s2,32(sp)
 9a0:	e852                	sd	s4,16(sp)
 9a2:	e456                	sd	s5,8(sp)
 9a4:	e05a                	sd	s6,0(sp)
 9a6:	8a4e                	mv	s4,s3
 9a8:	0009871b          	sext.w	a4,s3
 9ac:	6685                	lui	a3,0x1
 9ae:	00d77363          	bgeu	a4,a3,9b4 <malloc+0x44>
 9b2:	6a05                	lui	s4,0x1
 9b4:	000a0b1b          	sext.w	s6,s4
 9b8:	004a1a1b          	sllw	s4,s4,0x4
 9bc:	00001917          	auipc	s2,0x1
 9c0:	b0490913          	add	s2,s2,-1276 # 14c0 <freep>
 9c4:	5afd                	li	s5,-1
 9c6:	a091                	j	a0a <malloc+0x9a>
 9c8:	f04a                	sd	s2,32(sp)
 9ca:	e852                	sd	s4,16(sp)
 9cc:	e456                	sd	s5,8(sp)
 9ce:	e05a                	sd	s6,0(sp)
 9d0:	00001797          	auipc	a5,0x1
 9d4:	f0078793          	add	a5,a5,-256 # 18d0 <base>
 9d8:	00001717          	auipc	a4,0x1
 9dc:	aef73423          	sd	a5,-1304(a4) # 14c0 <freep>
 9e0:	e39c                	sd	a5,0(a5)
 9e2:	0007a423          	sw	zero,8(a5)
 9e6:	b7c1                	j	9a6 <malloc+0x36>
 9e8:	6398                	ld	a4,0(a5)
 9ea:	e118                	sd	a4,0(a0)
 9ec:	a08d                	j	a4e <malloc+0xde>
 9ee:	01652423          	sw	s6,8(a0)
 9f2:	0541                	add	a0,a0,16
 9f4:	00000097          	auipc	ra,0x0
 9f8:	efa080e7          	jalr	-262(ra) # 8ee <free>
 9fc:	00093503          	ld	a0,0(s2)
 a00:	c13d                	beqz	a0,a66 <malloc+0xf6>
 a02:	611c                	ld	a5,0(a0)
 a04:	4798                	lw	a4,8(a5)
 a06:	02977463          	bgeu	a4,s1,a2e <malloc+0xbe>
 a0a:	00093703          	ld	a4,0(s2)
 a0e:	853e                	mv	a0,a5
 a10:	fef719e3          	bne	a4,a5,a02 <malloc+0x92>
 a14:	8552                	mv	a0,s4
 a16:	00000097          	auipc	ra,0x0
 a1a:	ba2080e7          	jalr	-1118(ra) # 5b8 <sbrk>
 a1e:	fd5518e3          	bne	a0,s5,9ee <malloc+0x7e>
 a22:	4501                	li	a0,0
 a24:	7902                	ld	s2,32(sp)
 a26:	6a42                	ld	s4,16(sp)
 a28:	6aa2                	ld	s5,8(sp)
 a2a:	6b02                	ld	s6,0(sp)
 a2c:	a03d                	j	a5a <malloc+0xea>
 a2e:	7902                	ld	s2,32(sp)
 a30:	6a42                	ld	s4,16(sp)
 a32:	6aa2                	ld	s5,8(sp)
 a34:	6b02                	ld	s6,0(sp)
 a36:	fae489e3          	beq	s1,a4,9e8 <malloc+0x78>
 a3a:	4137073b          	subw	a4,a4,s3
 a3e:	c798                	sw	a4,8(a5)
 a40:	02071693          	sll	a3,a4,0x20
 a44:	01c6d713          	srl	a4,a3,0x1c
 a48:	97ba                	add	a5,a5,a4
 a4a:	0137a423          	sw	s3,8(a5)
 a4e:	00001717          	auipc	a4,0x1
 a52:	a6a73923          	sd	a0,-1422(a4) # 14c0 <freep>
 a56:	01078513          	add	a0,a5,16
 a5a:	70e2                	ld	ra,56(sp)
 a5c:	7442                	ld	s0,48(sp)
 a5e:	74a2                	ld	s1,40(sp)
 a60:	69e2                	ld	s3,24(sp)
 a62:	6121                	add	sp,sp,64
 a64:	8082                	ret
 a66:	7902                	ld	s2,32(sp)
 a68:	6a42                	ld	s4,16(sp)
 a6a:	6aa2                	ld	s5,8(sp)
 a6c:	6b02                	ld	s6,0(sp)
 a6e:	b7f5                	j	a5a <malloc+0xea>
