
user/_ls:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <fmtname>:
   0:	7179                	add	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	ec26                	sd	s1,24(sp)
   8:	1800                	add	s0,sp,48
   a:	84aa                	mv	s1,a0
   c:	00000097          	auipc	ra,0x0
  10:	332080e7          	jalr	818(ra) # 33e <strlen>
  14:	02051793          	sll	a5,a0,0x20
  18:	9381                	srl	a5,a5,0x20
  1a:	97a6                	add	a5,a5,s1
  1c:	02f00693          	li	a3,47
  20:	0097e963          	bltu	a5,s1,32 <fmtname+0x32>
  24:	0007c703          	lbu	a4,0(a5)
  28:	00d70563          	beq	a4,a3,32 <fmtname+0x32>
  2c:	17fd                	add	a5,a5,-1
  2e:	fe97fbe3          	bgeu	a5,s1,24 <fmtname+0x24>
  32:	00178493          	add	s1,a5,1
  36:	8526                	mv	a0,s1
  38:	00000097          	auipc	ra,0x0
  3c:	306080e7          	jalr	774(ra) # 33e <strlen>
  40:	2501                	sext.w	a0,a0
  42:	47b5                	li	a5,13
  44:	00a7f863          	bgeu	a5,a0,54 <fmtname+0x54>
  48:	8526                	mv	a0,s1
  4a:	70a2                	ld	ra,40(sp)
  4c:	7402                	ld	s0,32(sp)
  4e:	64e2                	ld	s1,24(sp)
  50:	6145                	add	sp,sp,48
  52:	8082                	ret
  54:	e84a                	sd	s2,16(sp)
  56:	e44e                	sd	s3,8(sp)
  58:	8526                	mv	a0,s1
  5a:	00000097          	auipc	ra,0x0
  5e:	2e4080e7          	jalr	740(ra) # 33e <strlen>
  62:	00001997          	auipc	s3,0x1
  66:	41e98993          	add	s3,s3,1054 # 1480 <buf.0>
  6a:	0005061b          	sext.w	a2,a0
  6e:	85a6                	mv	a1,s1
  70:	854e                	mv	a0,s3
  72:	00000097          	auipc	ra,0x0
  76:	43e080e7          	jalr	1086(ra) # 4b0 <memmove>
  7a:	8526                	mv	a0,s1
  7c:	00000097          	auipc	ra,0x0
  80:	2c2080e7          	jalr	706(ra) # 33e <strlen>
  84:	0005091b          	sext.w	s2,a0
  88:	8526                	mv	a0,s1
  8a:	00000097          	auipc	ra,0x0
  8e:	2b4080e7          	jalr	692(ra) # 33e <strlen>
  92:	1902                	sll	s2,s2,0x20
  94:	02095913          	srl	s2,s2,0x20
  98:	4639                	li	a2,14
  9a:	9e09                	subw	a2,a2,a0
  9c:	02000593          	li	a1,32
  a0:	01298533          	add	a0,s3,s2
  a4:	00000097          	auipc	ra,0x0
  a8:	2c4080e7          	jalr	708(ra) # 368 <memset>
  ac:	84ce                	mv	s1,s3
  ae:	6942                	ld	s2,16(sp)
  b0:	69a2                	ld	s3,8(sp)
  b2:	bf59                	j	48 <fmtname+0x48>

00000000000000b4 <ls>:
  b4:	d9010113          	add	sp,sp,-624
  b8:	26113423          	sd	ra,616(sp)
  bc:	26813023          	sd	s0,608(sp)
  c0:	25213823          	sd	s2,592(sp)
  c4:	1c80                	add	s0,sp,624
  c6:	892a                	mv	s2,a0
  c8:	4581                	li	a1,0
  ca:	00000097          	auipc	ra,0x0
  ce:	4d8080e7          	jalr	1240(ra) # 5a2 <open>
  d2:	06054b63          	bltz	a0,148 <ls+0x94>
  d6:	24913c23          	sd	s1,600(sp)
  da:	84aa                	mv	s1,a0
  dc:	d9840593          	add	a1,s0,-616
  e0:	00000097          	auipc	ra,0x0
  e4:	4da080e7          	jalr	1242(ra) # 5ba <fstat>
  e8:	06054b63          	bltz	a0,15e <ls+0xaa>
  ec:	da041783          	lh	a5,-608(s0)
  f0:	4705                	li	a4,1
  f2:	08e78863          	beq	a5,a4,182 <ls+0xce>
  f6:	37f9                	addw	a5,a5,-2
  f8:	17c2                	sll	a5,a5,0x30
  fa:	93c1                	srl	a5,a5,0x30
  fc:	02f76663          	bltu	a4,a5,128 <ls+0x74>
 100:	854a                	mv	a0,s2
 102:	00000097          	auipc	ra,0x0
 106:	efe080e7          	jalr	-258(ra) # 0 <fmtname>
 10a:	85aa                	mv	a1,a0
 10c:	da843703          	ld	a4,-600(s0)
 110:	d9c42683          	lw	a3,-612(s0)
 114:	da041603          	lh	a2,-608(s0)
 118:	00001517          	auipc	a0,0x1
 11c:	9c850513          	add	a0,a0,-1592 # ae0 <malloc+0x13e>
 120:	00000097          	auipc	ra,0x0
 124:	7ca080e7          	jalr	1994(ra) # 8ea <printf>
 128:	8526                	mv	a0,s1
 12a:	00000097          	auipc	ra,0x0
 12e:	460080e7          	jalr	1120(ra) # 58a <close>
 132:	25813483          	ld	s1,600(sp)
 136:	26813083          	ld	ra,616(sp)
 13a:	26013403          	ld	s0,608(sp)
 13e:	25013903          	ld	s2,592(sp)
 142:	27010113          	add	sp,sp,624
 146:	8082                	ret
 148:	864a                	mv	a2,s2
 14a:	00001597          	auipc	a1,0x1
 14e:	96658593          	add	a1,a1,-1690 # ab0 <malloc+0x10e>
 152:	4509                	li	a0,2
 154:	00000097          	auipc	ra,0x0
 158:	768080e7          	jalr	1896(ra) # 8bc <fprintf>
 15c:	bfe9                	j	136 <ls+0x82>
 15e:	864a                	mv	a2,s2
 160:	00001597          	auipc	a1,0x1
 164:	96858593          	add	a1,a1,-1688 # ac8 <malloc+0x126>
 168:	4509                	li	a0,2
 16a:	00000097          	auipc	ra,0x0
 16e:	752080e7          	jalr	1874(ra) # 8bc <fprintf>
 172:	8526                	mv	a0,s1
 174:	00000097          	auipc	ra,0x0
 178:	416080e7          	jalr	1046(ra) # 58a <close>
 17c:	25813483          	ld	s1,600(sp)
 180:	bf5d                	j	136 <ls+0x82>
 182:	854a                	mv	a0,s2
 184:	00000097          	auipc	ra,0x0
 188:	1ba080e7          	jalr	442(ra) # 33e <strlen>
 18c:	2541                	addw	a0,a0,16
 18e:	20000793          	li	a5,512
 192:	00a7fb63          	bgeu	a5,a0,1a8 <ls+0xf4>
 196:	00001517          	auipc	a0,0x1
 19a:	95a50513          	add	a0,a0,-1702 # af0 <malloc+0x14e>
 19e:	00000097          	auipc	ra,0x0
 1a2:	74c080e7          	jalr	1868(ra) # 8ea <printf>
 1a6:	b749                	j	128 <ls+0x74>
 1a8:	25313423          	sd	s3,584(sp)
 1ac:	25413023          	sd	s4,576(sp)
 1b0:	23513c23          	sd	s5,568(sp)
 1b4:	85ca                	mv	a1,s2
 1b6:	dc040513          	add	a0,s0,-576
 1ba:	00000097          	auipc	ra,0x0
 1be:	13c080e7          	jalr	316(ra) # 2f6 <strcpy>
 1c2:	dc040513          	add	a0,s0,-576
 1c6:	00000097          	auipc	ra,0x0
 1ca:	178080e7          	jalr	376(ra) # 33e <strlen>
 1ce:	1502                	sll	a0,a0,0x20
 1d0:	9101                	srl	a0,a0,0x20
 1d2:	dc040793          	add	a5,s0,-576
 1d6:	00a78933          	add	s2,a5,a0
 1da:	00190993          	add	s3,s2,1
 1de:	02f00793          	li	a5,47
 1e2:	00f90023          	sb	a5,0(s2)
 1e6:	00001a17          	auipc	s4,0x1
 1ea:	922a0a13          	add	s4,s4,-1758 # b08 <malloc+0x166>
 1ee:	00001a97          	auipc	s5,0x1
 1f2:	8daa8a93          	add	s5,s5,-1830 # ac8 <malloc+0x126>
 1f6:	a801                	j	206 <ls+0x152>
 1f8:	dc040593          	add	a1,s0,-576
 1fc:	8556                	mv	a0,s5
 1fe:	00000097          	auipc	ra,0x0
 202:	6ec080e7          	jalr	1772(ra) # 8ea <printf>
 206:	4641                	li	a2,16
 208:	db040593          	add	a1,s0,-592
 20c:	8526                	mv	a0,s1
 20e:	00000097          	auipc	ra,0x0
 212:	36c080e7          	jalr	876(ra) # 57a <read>
 216:	47c1                	li	a5,16
 218:	04f51c63          	bne	a0,a5,270 <ls+0x1bc>
 21c:	db045783          	lhu	a5,-592(s0)
 220:	d3fd                	beqz	a5,206 <ls+0x152>
 222:	4639                	li	a2,14
 224:	db240593          	add	a1,s0,-590
 228:	854e                	mv	a0,s3
 22a:	00000097          	auipc	ra,0x0
 22e:	286080e7          	jalr	646(ra) # 4b0 <memmove>
 232:	000907a3          	sb	zero,15(s2)
 236:	d9840593          	add	a1,s0,-616
 23a:	dc040513          	add	a0,s0,-576
 23e:	00000097          	auipc	ra,0x0
 242:	1e4080e7          	jalr	484(ra) # 422 <stat>
 246:	fa0549e3          	bltz	a0,1f8 <ls+0x144>
 24a:	dc040513          	add	a0,s0,-576
 24e:	00000097          	auipc	ra,0x0
 252:	db2080e7          	jalr	-590(ra) # 0 <fmtname>
 256:	85aa                	mv	a1,a0
 258:	da843703          	ld	a4,-600(s0)
 25c:	d9c42683          	lw	a3,-612(s0)
 260:	da041603          	lh	a2,-608(s0)
 264:	8552                	mv	a0,s4
 266:	00000097          	auipc	ra,0x0
 26a:	684080e7          	jalr	1668(ra) # 8ea <printf>
 26e:	bf61                	j	206 <ls+0x152>
 270:	24813983          	ld	s3,584(sp)
 274:	24013a03          	ld	s4,576(sp)
 278:	23813a83          	ld	s5,568(sp)
 27c:	b575                	j	128 <ls+0x74>

000000000000027e <main>:
 27e:	1101                	add	sp,sp,-32
 280:	ec06                	sd	ra,24(sp)
 282:	e822                	sd	s0,16(sp)
 284:	1000                	add	s0,sp,32
 286:	4785                	li	a5,1
 288:	02a7db63          	bge	a5,a0,2be <main+0x40>
 28c:	e426                	sd	s1,8(sp)
 28e:	e04a                	sd	s2,0(sp)
 290:	00858493          	add	s1,a1,8
 294:	ffe5091b          	addw	s2,a0,-2
 298:	02091793          	sll	a5,s2,0x20
 29c:	01d7d913          	srl	s2,a5,0x1d
 2a0:	05c1                	add	a1,a1,16
 2a2:	992e                	add	s2,s2,a1
 2a4:	6088                	ld	a0,0(s1)
 2a6:	00000097          	auipc	ra,0x0
 2aa:	e0e080e7          	jalr	-498(ra) # b4 <ls>
 2ae:	04a1                	add	s1,s1,8
 2b0:	ff249ae3          	bne	s1,s2,2a4 <main+0x26>
 2b4:	4501                	li	a0,0
 2b6:	00000097          	auipc	ra,0x0
 2ba:	2ac080e7          	jalr	684(ra) # 562 <exit>
 2be:	e426                	sd	s1,8(sp)
 2c0:	e04a                	sd	s2,0(sp)
 2c2:	00001517          	auipc	a0,0x1
 2c6:	85650513          	add	a0,a0,-1962 # b18 <malloc+0x176>
 2ca:	00000097          	auipc	ra,0x0
 2ce:	dea080e7          	jalr	-534(ra) # b4 <ls>
 2d2:	4501                	li	a0,0
 2d4:	00000097          	auipc	ra,0x0
 2d8:	28e080e7          	jalr	654(ra) # 562 <exit>

00000000000002dc <_main>:
 2dc:	1141                	add	sp,sp,-16
 2de:	e406                	sd	ra,8(sp)
 2e0:	e022                	sd	s0,0(sp)
 2e2:	0800                	add	s0,sp,16
 2e4:	00000097          	auipc	ra,0x0
 2e8:	f9a080e7          	jalr	-102(ra) # 27e <main>
 2ec:	4501                	li	a0,0
 2ee:	00000097          	auipc	ra,0x0
 2f2:	274080e7          	jalr	628(ra) # 562 <exit>

00000000000002f6 <strcpy>:
 2f6:	1141                	add	sp,sp,-16
 2f8:	e422                	sd	s0,8(sp)
 2fa:	0800                	add	s0,sp,16
 2fc:	87aa                	mv	a5,a0
 2fe:	0585                	add	a1,a1,1
 300:	0785                	add	a5,a5,1
 302:	fff5c703          	lbu	a4,-1(a1)
 306:	fee78fa3          	sb	a4,-1(a5)
 30a:	fb75                	bnez	a4,2fe <strcpy+0x8>
 30c:	6422                	ld	s0,8(sp)
 30e:	0141                	add	sp,sp,16
 310:	8082                	ret

0000000000000312 <strcmp>:
 312:	1141                	add	sp,sp,-16
 314:	e422                	sd	s0,8(sp)
 316:	0800                	add	s0,sp,16
 318:	00054783          	lbu	a5,0(a0)
 31c:	cb91                	beqz	a5,330 <strcmp+0x1e>
 31e:	0005c703          	lbu	a4,0(a1)
 322:	00f71763          	bne	a4,a5,330 <strcmp+0x1e>
 326:	0505                	add	a0,a0,1
 328:	0585                	add	a1,a1,1
 32a:	00054783          	lbu	a5,0(a0)
 32e:	fbe5                	bnez	a5,31e <strcmp+0xc>
 330:	0005c503          	lbu	a0,0(a1)
 334:	40a7853b          	subw	a0,a5,a0
 338:	6422                	ld	s0,8(sp)
 33a:	0141                	add	sp,sp,16
 33c:	8082                	ret

000000000000033e <strlen>:
 33e:	1141                	add	sp,sp,-16
 340:	e422                	sd	s0,8(sp)
 342:	0800                	add	s0,sp,16
 344:	00054783          	lbu	a5,0(a0)
 348:	cf91                	beqz	a5,364 <strlen+0x26>
 34a:	0505                	add	a0,a0,1
 34c:	87aa                	mv	a5,a0
 34e:	86be                	mv	a3,a5
 350:	0785                	add	a5,a5,1
 352:	fff7c703          	lbu	a4,-1(a5)
 356:	ff65                	bnez	a4,34e <strlen+0x10>
 358:	40a6853b          	subw	a0,a3,a0
 35c:	2505                	addw	a0,a0,1
 35e:	6422                	ld	s0,8(sp)
 360:	0141                	add	sp,sp,16
 362:	8082                	ret
 364:	4501                	li	a0,0
 366:	bfe5                	j	35e <strlen+0x20>

0000000000000368 <memset>:
 368:	1141                	add	sp,sp,-16
 36a:	e422                	sd	s0,8(sp)
 36c:	0800                	add	s0,sp,16
 36e:	ca19                	beqz	a2,384 <memset+0x1c>
 370:	87aa                	mv	a5,a0
 372:	1602                	sll	a2,a2,0x20
 374:	9201                	srl	a2,a2,0x20
 376:	00a60733          	add	a4,a2,a0
 37a:	00b78023          	sb	a1,0(a5)
 37e:	0785                	add	a5,a5,1
 380:	fee79de3          	bne	a5,a4,37a <memset+0x12>
 384:	6422                	ld	s0,8(sp)
 386:	0141                	add	sp,sp,16
 388:	8082                	ret

000000000000038a <strchr>:
 38a:	1141                	add	sp,sp,-16
 38c:	e422                	sd	s0,8(sp)
 38e:	0800                	add	s0,sp,16
 390:	00054783          	lbu	a5,0(a0)
 394:	cb99                	beqz	a5,3aa <strchr+0x20>
 396:	00f58763          	beq	a1,a5,3a4 <strchr+0x1a>
 39a:	0505                	add	a0,a0,1
 39c:	00054783          	lbu	a5,0(a0)
 3a0:	fbfd                	bnez	a5,396 <strchr+0xc>
 3a2:	4501                	li	a0,0
 3a4:	6422                	ld	s0,8(sp)
 3a6:	0141                	add	sp,sp,16
 3a8:	8082                	ret
 3aa:	4501                	li	a0,0
 3ac:	bfe5                	j	3a4 <strchr+0x1a>

00000000000003ae <gets>:
 3ae:	711d                	add	sp,sp,-96
 3b0:	ec86                	sd	ra,88(sp)
 3b2:	e8a2                	sd	s0,80(sp)
 3b4:	e4a6                	sd	s1,72(sp)
 3b6:	e0ca                	sd	s2,64(sp)
 3b8:	fc4e                	sd	s3,56(sp)
 3ba:	f852                	sd	s4,48(sp)
 3bc:	f456                	sd	s5,40(sp)
 3be:	f05a                	sd	s6,32(sp)
 3c0:	ec5e                	sd	s7,24(sp)
 3c2:	1080                	add	s0,sp,96
 3c4:	8baa                	mv	s7,a0
 3c6:	8a2e                	mv	s4,a1
 3c8:	892a                	mv	s2,a0
 3ca:	4481                	li	s1,0
 3cc:	4aa9                	li	s5,10
 3ce:	4b35                	li	s6,13
 3d0:	89a6                	mv	s3,s1
 3d2:	2485                	addw	s1,s1,1
 3d4:	0344d863          	bge	s1,s4,404 <gets+0x56>
 3d8:	4605                	li	a2,1
 3da:	faf40593          	add	a1,s0,-81
 3de:	4501                	li	a0,0
 3e0:	00000097          	auipc	ra,0x0
 3e4:	19a080e7          	jalr	410(ra) # 57a <read>
 3e8:	00a05e63          	blez	a0,404 <gets+0x56>
 3ec:	faf44783          	lbu	a5,-81(s0)
 3f0:	00f90023          	sb	a5,0(s2)
 3f4:	01578763          	beq	a5,s5,402 <gets+0x54>
 3f8:	0905                	add	s2,s2,1
 3fa:	fd679be3          	bne	a5,s6,3d0 <gets+0x22>
 3fe:	89a6                	mv	s3,s1
 400:	a011                	j	404 <gets+0x56>
 402:	89a6                	mv	s3,s1
 404:	99de                	add	s3,s3,s7
 406:	00098023          	sb	zero,0(s3)
 40a:	855e                	mv	a0,s7
 40c:	60e6                	ld	ra,88(sp)
 40e:	6446                	ld	s0,80(sp)
 410:	64a6                	ld	s1,72(sp)
 412:	6906                	ld	s2,64(sp)
 414:	79e2                	ld	s3,56(sp)
 416:	7a42                	ld	s4,48(sp)
 418:	7aa2                	ld	s5,40(sp)
 41a:	7b02                	ld	s6,32(sp)
 41c:	6be2                	ld	s7,24(sp)
 41e:	6125                	add	sp,sp,96
 420:	8082                	ret

0000000000000422 <stat>:
 422:	1101                	add	sp,sp,-32
 424:	ec06                	sd	ra,24(sp)
 426:	e822                	sd	s0,16(sp)
 428:	e04a                	sd	s2,0(sp)
 42a:	1000                	add	s0,sp,32
 42c:	892e                	mv	s2,a1
 42e:	4581                	li	a1,0
 430:	00000097          	auipc	ra,0x0
 434:	172080e7          	jalr	370(ra) # 5a2 <open>
 438:	02054663          	bltz	a0,464 <stat+0x42>
 43c:	e426                	sd	s1,8(sp)
 43e:	84aa                	mv	s1,a0
 440:	85ca                	mv	a1,s2
 442:	00000097          	auipc	ra,0x0
 446:	178080e7          	jalr	376(ra) # 5ba <fstat>
 44a:	892a                	mv	s2,a0
 44c:	8526                	mv	a0,s1
 44e:	00000097          	auipc	ra,0x0
 452:	13c080e7          	jalr	316(ra) # 58a <close>
 456:	64a2                	ld	s1,8(sp)
 458:	854a                	mv	a0,s2
 45a:	60e2                	ld	ra,24(sp)
 45c:	6442                	ld	s0,16(sp)
 45e:	6902                	ld	s2,0(sp)
 460:	6105                	add	sp,sp,32
 462:	8082                	ret
 464:	597d                	li	s2,-1
 466:	bfcd                	j	458 <stat+0x36>

0000000000000468 <atoi>:
 468:	1141                	add	sp,sp,-16
 46a:	e422                	sd	s0,8(sp)
 46c:	0800                	add	s0,sp,16
 46e:	00054683          	lbu	a3,0(a0)
 472:	fd06879b          	addw	a5,a3,-48
 476:	0ff7f793          	zext.b	a5,a5
 47a:	4625                	li	a2,9
 47c:	02f66863          	bltu	a2,a5,4ac <atoi+0x44>
 480:	872a                	mv	a4,a0
 482:	4501                	li	a0,0
 484:	0705                	add	a4,a4,1
 486:	0025179b          	sllw	a5,a0,0x2
 48a:	9fa9                	addw	a5,a5,a0
 48c:	0017979b          	sllw	a5,a5,0x1
 490:	9fb5                	addw	a5,a5,a3
 492:	fd07851b          	addw	a0,a5,-48
 496:	00074683          	lbu	a3,0(a4)
 49a:	fd06879b          	addw	a5,a3,-48
 49e:	0ff7f793          	zext.b	a5,a5
 4a2:	fef671e3          	bgeu	a2,a5,484 <atoi+0x1c>
 4a6:	6422                	ld	s0,8(sp)
 4a8:	0141                	add	sp,sp,16
 4aa:	8082                	ret
 4ac:	4501                	li	a0,0
 4ae:	bfe5                	j	4a6 <atoi+0x3e>

00000000000004b0 <memmove>:
 4b0:	1141                	add	sp,sp,-16
 4b2:	e422                	sd	s0,8(sp)
 4b4:	0800                	add	s0,sp,16
 4b6:	02b57463          	bgeu	a0,a1,4de <memmove+0x2e>
 4ba:	00c05f63          	blez	a2,4d8 <memmove+0x28>
 4be:	1602                	sll	a2,a2,0x20
 4c0:	9201                	srl	a2,a2,0x20
 4c2:	00c507b3          	add	a5,a0,a2
 4c6:	872a                	mv	a4,a0
 4c8:	0585                	add	a1,a1,1
 4ca:	0705                	add	a4,a4,1
 4cc:	fff5c683          	lbu	a3,-1(a1)
 4d0:	fed70fa3          	sb	a3,-1(a4)
 4d4:	fef71ae3          	bne	a4,a5,4c8 <memmove+0x18>
 4d8:	6422                	ld	s0,8(sp)
 4da:	0141                	add	sp,sp,16
 4dc:	8082                	ret
 4de:	00c50733          	add	a4,a0,a2
 4e2:	95b2                	add	a1,a1,a2
 4e4:	fec05ae3          	blez	a2,4d8 <memmove+0x28>
 4e8:	fff6079b          	addw	a5,a2,-1
 4ec:	1782                	sll	a5,a5,0x20
 4ee:	9381                	srl	a5,a5,0x20
 4f0:	fff7c793          	not	a5,a5
 4f4:	97ba                	add	a5,a5,a4
 4f6:	15fd                	add	a1,a1,-1
 4f8:	177d                	add	a4,a4,-1
 4fa:	0005c683          	lbu	a3,0(a1)
 4fe:	00d70023          	sb	a3,0(a4)
 502:	fee79ae3          	bne	a5,a4,4f6 <memmove+0x46>
 506:	bfc9                	j	4d8 <memmove+0x28>

0000000000000508 <memcmp>:
 508:	1141                	add	sp,sp,-16
 50a:	e422                	sd	s0,8(sp)
 50c:	0800                	add	s0,sp,16
 50e:	ca05                	beqz	a2,53e <memcmp+0x36>
 510:	fff6069b          	addw	a3,a2,-1
 514:	1682                	sll	a3,a3,0x20
 516:	9281                	srl	a3,a3,0x20
 518:	0685                	add	a3,a3,1
 51a:	96aa                	add	a3,a3,a0
 51c:	00054783          	lbu	a5,0(a0)
 520:	0005c703          	lbu	a4,0(a1)
 524:	00e79863          	bne	a5,a4,534 <memcmp+0x2c>
 528:	0505                	add	a0,a0,1
 52a:	0585                	add	a1,a1,1
 52c:	fed518e3          	bne	a0,a3,51c <memcmp+0x14>
 530:	4501                	li	a0,0
 532:	a019                	j	538 <memcmp+0x30>
 534:	40e7853b          	subw	a0,a5,a4
 538:	6422                	ld	s0,8(sp)
 53a:	0141                	add	sp,sp,16
 53c:	8082                	ret
 53e:	4501                	li	a0,0
 540:	bfe5                	j	538 <memcmp+0x30>

0000000000000542 <memcpy>:
 542:	1141                	add	sp,sp,-16
 544:	e406                	sd	ra,8(sp)
 546:	e022                	sd	s0,0(sp)
 548:	0800                	add	s0,sp,16
 54a:	00000097          	auipc	ra,0x0
 54e:	f66080e7          	jalr	-154(ra) # 4b0 <memmove>
 552:	60a2                	ld	ra,8(sp)
 554:	6402                	ld	s0,0(sp)
 556:	0141                	add	sp,sp,16
 558:	8082                	ret

000000000000055a <fork>:
 55a:	4885                	li	a7,1
 55c:	00000073          	ecall
 560:	8082                	ret

0000000000000562 <exit>:
 562:	4889                	li	a7,2
 564:	00000073          	ecall
 568:	8082                	ret

000000000000056a <wait>:
 56a:	488d                	li	a7,3
 56c:	00000073          	ecall
 570:	8082                	ret

0000000000000572 <pipe>:
 572:	4891                	li	a7,4
 574:	00000073          	ecall
 578:	8082                	ret

000000000000057a <read>:
 57a:	4895                	li	a7,5
 57c:	00000073          	ecall
 580:	8082                	ret

0000000000000582 <write>:
 582:	48c1                	li	a7,16
 584:	00000073          	ecall
 588:	8082                	ret

000000000000058a <close>:
 58a:	48d5                	li	a7,21
 58c:	00000073          	ecall
 590:	8082                	ret

0000000000000592 <kill>:
 592:	4899                	li	a7,6
 594:	00000073          	ecall
 598:	8082                	ret

000000000000059a <exec>:
 59a:	489d                	li	a7,7
 59c:	00000073          	ecall
 5a0:	8082                	ret

00000000000005a2 <open>:
 5a2:	48bd                	li	a7,15
 5a4:	00000073          	ecall
 5a8:	8082                	ret

00000000000005aa <mknod>:
 5aa:	48c5                	li	a7,17
 5ac:	00000073          	ecall
 5b0:	8082                	ret

00000000000005b2 <unlink>:
 5b2:	48c9                	li	a7,18
 5b4:	00000073          	ecall
 5b8:	8082                	ret

00000000000005ba <fstat>:
 5ba:	48a1                	li	a7,8
 5bc:	00000073          	ecall
 5c0:	8082                	ret

00000000000005c2 <link>:
 5c2:	48cd                	li	a7,19
 5c4:	00000073          	ecall
 5c8:	8082                	ret

00000000000005ca <mkdir>:
 5ca:	48d1                	li	a7,20
 5cc:	00000073          	ecall
 5d0:	8082                	ret

00000000000005d2 <chdir>:
 5d2:	48a5                	li	a7,9
 5d4:	00000073          	ecall
 5d8:	8082                	ret

00000000000005da <dup>:
 5da:	48a9                	li	a7,10
 5dc:	00000073          	ecall
 5e0:	8082                	ret

00000000000005e2 <getpid>:
 5e2:	48ad                	li	a7,11
 5e4:	00000073          	ecall
 5e8:	8082                	ret

00000000000005ea <sbrk>:
 5ea:	48b1                	li	a7,12
 5ec:	00000073          	ecall
 5f0:	8082                	ret

00000000000005f2 <sleep>:
 5f2:	48b5                	li	a7,13
 5f4:	00000073          	ecall
 5f8:	8082                	ret

00000000000005fa <uptime>:
 5fa:	48b9                	li	a7,14
 5fc:	00000073          	ecall
 600:	8082                	ret

0000000000000602 <waitx>:
 602:	48d9                	li	a7,22
 604:	00000073          	ecall
 608:	8082                	ret

000000000000060a <getSysCount>:
 60a:	48dd                	li	a7,23
 60c:	00000073          	ecall
 610:	8082                	ret

0000000000000612 <sigalarm>:
 612:	48e1                	li	a7,24
 614:	00000073          	ecall
 618:	8082                	ret

000000000000061a <sigreturn>:
 61a:	48e5                	li	a7,25
 61c:	00000073          	ecall
 620:	8082                	ret

0000000000000622 <putc>:
 622:	1101                	add	sp,sp,-32
 624:	ec06                	sd	ra,24(sp)
 626:	e822                	sd	s0,16(sp)
 628:	1000                	add	s0,sp,32
 62a:	feb407a3          	sb	a1,-17(s0)
 62e:	4605                	li	a2,1
 630:	fef40593          	add	a1,s0,-17
 634:	00000097          	auipc	ra,0x0
 638:	f4e080e7          	jalr	-178(ra) # 582 <write>
 63c:	60e2                	ld	ra,24(sp)
 63e:	6442                	ld	s0,16(sp)
 640:	6105                	add	sp,sp,32
 642:	8082                	ret

0000000000000644 <printint>:
 644:	7139                	add	sp,sp,-64
 646:	fc06                	sd	ra,56(sp)
 648:	f822                	sd	s0,48(sp)
 64a:	f426                	sd	s1,40(sp)
 64c:	0080                	add	s0,sp,64
 64e:	84aa                	mv	s1,a0
 650:	c299                	beqz	a3,656 <printint+0x12>
 652:	0805cb63          	bltz	a1,6e8 <printint+0xa4>
 656:	2581                	sext.w	a1,a1
 658:	4881                	li	a7,0
 65a:	fc040693          	add	a3,s0,-64
 65e:	4701                	li	a4,0
 660:	2601                	sext.w	a2,a2
 662:	00000517          	auipc	a0,0x0
 666:	51e50513          	add	a0,a0,1310 # b80 <digits>
 66a:	883a                	mv	a6,a4
 66c:	2705                	addw	a4,a4,1
 66e:	02c5f7bb          	remuw	a5,a1,a2
 672:	1782                	sll	a5,a5,0x20
 674:	9381                	srl	a5,a5,0x20
 676:	97aa                	add	a5,a5,a0
 678:	0007c783          	lbu	a5,0(a5)
 67c:	00f68023          	sb	a5,0(a3)
 680:	0005879b          	sext.w	a5,a1
 684:	02c5d5bb          	divuw	a1,a1,a2
 688:	0685                	add	a3,a3,1
 68a:	fec7f0e3          	bgeu	a5,a2,66a <printint+0x26>
 68e:	00088c63          	beqz	a7,6a6 <printint+0x62>
 692:	fd070793          	add	a5,a4,-48
 696:	00878733          	add	a4,a5,s0
 69a:	02d00793          	li	a5,45
 69e:	fef70823          	sb	a5,-16(a4)
 6a2:	0028071b          	addw	a4,a6,2
 6a6:	02e05c63          	blez	a4,6de <printint+0x9a>
 6aa:	f04a                	sd	s2,32(sp)
 6ac:	ec4e                	sd	s3,24(sp)
 6ae:	fc040793          	add	a5,s0,-64
 6b2:	00e78933          	add	s2,a5,a4
 6b6:	fff78993          	add	s3,a5,-1
 6ba:	99ba                	add	s3,s3,a4
 6bc:	377d                	addw	a4,a4,-1
 6be:	1702                	sll	a4,a4,0x20
 6c0:	9301                	srl	a4,a4,0x20
 6c2:	40e989b3          	sub	s3,s3,a4
 6c6:	fff94583          	lbu	a1,-1(s2)
 6ca:	8526                	mv	a0,s1
 6cc:	00000097          	auipc	ra,0x0
 6d0:	f56080e7          	jalr	-170(ra) # 622 <putc>
 6d4:	197d                	add	s2,s2,-1
 6d6:	ff3918e3          	bne	s2,s3,6c6 <printint+0x82>
 6da:	7902                	ld	s2,32(sp)
 6dc:	69e2                	ld	s3,24(sp)
 6de:	70e2                	ld	ra,56(sp)
 6e0:	7442                	ld	s0,48(sp)
 6e2:	74a2                	ld	s1,40(sp)
 6e4:	6121                	add	sp,sp,64
 6e6:	8082                	ret
 6e8:	40b005bb          	negw	a1,a1
 6ec:	4885                	li	a7,1
 6ee:	b7b5                	j	65a <printint+0x16>

00000000000006f0 <vprintf>:
 6f0:	715d                	add	sp,sp,-80
 6f2:	e486                	sd	ra,72(sp)
 6f4:	e0a2                	sd	s0,64(sp)
 6f6:	f84a                	sd	s2,48(sp)
 6f8:	0880                	add	s0,sp,80
 6fa:	0005c903          	lbu	s2,0(a1)
 6fe:	1a090a63          	beqz	s2,8b2 <vprintf+0x1c2>
 702:	fc26                	sd	s1,56(sp)
 704:	f44e                	sd	s3,40(sp)
 706:	f052                	sd	s4,32(sp)
 708:	ec56                	sd	s5,24(sp)
 70a:	e85a                	sd	s6,16(sp)
 70c:	e45e                	sd	s7,8(sp)
 70e:	8aaa                	mv	s5,a0
 710:	8bb2                	mv	s7,a2
 712:	00158493          	add	s1,a1,1
 716:	4981                	li	s3,0
 718:	02500a13          	li	s4,37
 71c:	4b55                	li	s6,21
 71e:	a839                	j	73c <vprintf+0x4c>
 720:	85ca                	mv	a1,s2
 722:	8556                	mv	a0,s5
 724:	00000097          	auipc	ra,0x0
 728:	efe080e7          	jalr	-258(ra) # 622 <putc>
 72c:	a019                	j	732 <vprintf+0x42>
 72e:	01498d63          	beq	s3,s4,748 <vprintf+0x58>
 732:	0485                	add	s1,s1,1
 734:	fff4c903          	lbu	s2,-1(s1)
 738:	16090763          	beqz	s2,8a6 <vprintf+0x1b6>
 73c:	fe0999e3          	bnez	s3,72e <vprintf+0x3e>
 740:	ff4910e3          	bne	s2,s4,720 <vprintf+0x30>
 744:	89d2                	mv	s3,s4
 746:	b7f5                	j	732 <vprintf+0x42>
 748:	13490463          	beq	s2,s4,870 <vprintf+0x180>
 74c:	f9d9079b          	addw	a5,s2,-99
 750:	0ff7f793          	zext.b	a5,a5
 754:	12fb6763          	bltu	s6,a5,882 <vprintf+0x192>
 758:	f9d9079b          	addw	a5,s2,-99
 75c:	0ff7f713          	zext.b	a4,a5
 760:	12eb6163          	bltu	s6,a4,882 <vprintf+0x192>
 764:	00271793          	sll	a5,a4,0x2
 768:	00000717          	auipc	a4,0x0
 76c:	3c070713          	add	a4,a4,960 # b28 <malloc+0x186>
 770:	97ba                	add	a5,a5,a4
 772:	439c                	lw	a5,0(a5)
 774:	97ba                	add	a5,a5,a4
 776:	8782                	jr	a5
 778:	008b8913          	add	s2,s7,8
 77c:	4685                	li	a3,1
 77e:	4629                	li	a2,10
 780:	000ba583          	lw	a1,0(s7)
 784:	8556                	mv	a0,s5
 786:	00000097          	auipc	ra,0x0
 78a:	ebe080e7          	jalr	-322(ra) # 644 <printint>
 78e:	8bca                	mv	s7,s2
 790:	4981                	li	s3,0
 792:	b745                	j	732 <vprintf+0x42>
 794:	008b8913          	add	s2,s7,8
 798:	4681                	li	a3,0
 79a:	4629                	li	a2,10
 79c:	000ba583          	lw	a1,0(s7)
 7a0:	8556                	mv	a0,s5
 7a2:	00000097          	auipc	ra,0x0
 7a6:	ea2080e7          	jalr	-350(ra) # 644 <printint>
 7aa:	8bca                	mv	s7,s2
 7ac:	4981                	li	s3,0
 7ae:	b751                	j	732 <vprintf+0x42>
 7b0:	008b8913          	add	s2,s7,8
 7b4:	4681                	li	a3,0
 7b6:	4641                	li	a2,16
 7b8:	000ba583          	lw	a1,0(s7)
 7bc:	8556                	mv	a0,s5
 7be:	00000097          	auipc	ra,0x0
 7c2:	e86080e7          	jalr	-378(ra) # 644 <printint>
 7c6:	8bca                	mv	s7,s2
 7c8:	4981                	li	s3,0
 7ca:	b7a5                	j	732 <vprintf+0x42>
 7cc:	e062                	sd	s8,0(sp)
 7ce:	008b8c13          	add	s8,s7,8
 7d2:	000bb983          	ld	s3,0(s7)
 7d6:	03000593          	li	a1,48
 7da:	8556                	mv	a0,s5
 7dc:	00000097          	auipc	ra,0x0
 7e0:	e46080e7          	jalr	-442(ra) # 622 <putc>
 7e4:	07800593          	li	a1,120
 7e8:	8556                	mv	a0,s5
 7ea:	00000097          	auipc	ra,0x0
 7ee:	e38080e7          	jalr	-456(ra) # 622 <putc>
 7f2:	4941                	li	s2,16
 7f4:	00000b97          	auipc	s7,0x0
 7f8:	38cb8b93          	add	s7,s7,908 # b80 <digits>
 7fc:	03c9d793          	srl	a5,s3,0x3c
 800:	97de                	add	a5,a5,s7
 802:	0007c583          	lbu	a1,0(a5)
 806:	8556                	mv	a0,s5
 808:	00000097          	auipc	ra,0x0
 80c:	e1a080e7          	jalr	-486(ra) # 622 <putc>
 810:	0992                	sll	s3,s3,0x4
 812:	397d                	addw	s2,s2,-1
 814:	fe0914e3          	bnez	s2,7fc <vprintf+0x10c>
 818:	8be2                	mv	s7,s8
 81a:	4981                	li	s3,0
 81c:	6c02                	ld	s8,0(sp)
 81e:	bf11                	j	732 <vprintf+0x42>
 820:	008b8993          	add	s3,s7,8
 824:	000bb903          	ld	s2,0(s7)
 828:	02090163          	beqz	s2,84a <vprintf+0x15a>
 82c:	00094583          	lbu	a1,0(s2)
 830:	c9a5                	beqz	a1,8a0 <vprintf+0x1b0>
 832:	8556                	mv	a0,s5
 834:	00000097          	auipc	ra,0x0
 838:	dee080e7          	jalr	-530(ra) # 622 <putc>
 83c:	0905                	add	s2,s2,1
 83e:	00094583          	lbu	a1,0(s2)
 842:	f9e5                	bnez	a1,832 <vprintf+0x142>
 844:	8bce                	mv	s7,s3
 846:	4981                	li	s3,0
 848:	b5ed                	j	732 <vprintf+0x42>
 84a:	00000917          	auipc	s2,0x0
 84e:	2d690913          	add	s2,s2,726 # b20 <malloc+0x17e>
 852:	02800593          	li	a1,40
 856:	bff1                	j	832 <vprintf+0x142>
 858:	008b8913          	add	s2,s7,8
 85c:	000bc583          	lbu	a1,0(s7)
 860:	8556                	mv	a0,s5
 862:	00000097          	auipc	ra,0x0
 866:	dc0080e7          	jalr	-576(ra) # 622 <putc>
 86a:	8bca                	mv	s7,s2
 86c:	4981                	li	s3,0
 86e:	b5d1                	j	732 <vprintf+0x42>
 870:	02500593          	li	a1,37
 874:	8556                	mv	a0,s5
 876:	00000097          	auipc	ra,0x0
 87a:	dac080e7          	jalr	-596(ra) # 622 <putc>
 87e:	4981                	li	s3,0
 880:	bd4d                	j	732 <vprintf+0x42>
 882:	02500593          	li	a1,37
 886:	8556                	mv	a0,s5
 888:	00000097          	auipc	ra,0x0
 88c:	d9a080e7          	jalr	-614(ra) # 622 <putc>
 890:	85ca                	mv	a1,s2
 892:	8556                	mv	a0,s5
 894:	00000097          	auipc	ra,0x0
 898:	d8e080e7          	jalr	-626(ra) # 622 <putc>
 89c:	4981                	li	s3,0
 89e:	bd51                	j	732 <vprintf+0x42>
 8a0:	8bce                	mv	s7,s3
 8a2:	4981                	li	s3,0
 8a4:	b579                	j	732 <vprintf+0x42>
 8a6:	74e2                	ld	s1,56(sp)
 8a8:	79a2                	ld	s3,40(sp)
 8aa:	7a02                	ld	s4,32(sp)
 8ac:	6ae2                	ld	s5,24(sp)
 8ae:	6b42                	ld	s6,16(sp)
 8b0:	6ba2                	ld	s7,8(sp)
 8b2:	60a6                	ld	ra,72(sp)
 8b4:	6406                	ld	s0,64(sp)
 8b6:	7942                	ld	s2,48(sp)
 8b8:	6161                	add	sp,sp,80
 8ba:	8082                	ret

00000000000008bc <fprintf>:
 8bc:	715d                	add	sp,sp,-80
 8be:	ec06                	sd	ra,24(sp)
 8c0:	e822                	sd	s0,16(sp)
 8c2:	1000                	add	s0,sp,32
 8c4:	e010                	sd	a2,0(s0)
 8c6:	e414                	sd	a3,8(s0)
 8c8:	e818                	sd	a4,16(s0)
 8ca:	ec1c                	sd	a5,24(s0)
 8cc:	03043023          	sd	a6,32(s0)
 8d0:	03143423          	sd	a7,40(s0)
 8d4:	fe843423          	sd	s0,-24(s0)
 8d8:	8622                	mv	a2,s0
 8da:	00000097          	auipc	ra,0x0
 8de:	e16080e7          	jalr	-490(ra) # 6f0 <vprintf>
 8e2:	60e2                	ld	ra,24(sp)
 8e4:	6442                	ld	s0,16(sp)
 8e6:	6161                	add	sp,sp,80
 8e8:	8082                	ret

00000000000008ea <printf>:
 8ea:	711d                	add	sp,sp,-96
 8ec:	ec06                	sd	ra,24(sp)
 8ee:	e822                	sd	s0,16(sp)
 8f0:	1000                	add	s0,sp,32
 8f2:	e40c                	sd	a1,8(s0)
 8f4:	e810                	sd	a2,16(s0)
 8f6:	ec14                	sd	a3,24(s0)
 8f8:	f018                	sd	a4,32(s0)
 8fa:	f41c                	sd	a5,40(s0)
 8fc:	03043823          	sd	a6,48(s0)
 900:	03143c23          	sd	a7,56(s0)
 904:	00840613          	add	a2,s0,8
 908:	fec43423          	sd	a2,-24(s0)
 90c:	85aa                	mv	a1,a0
 90e:	4505                	li	a0,1
 910:	00000097          	auipc	ra,0x0
 914:	de0080e7          	jalr	-544(ra) # 6f0 <vprintf>
 918:	60e2                	ld	ra,24(sp)
 91a:	6442                	ld	s0,16(sp)
 91c:	6125                	add	sp,sp,96
 91e:	8082                	ret

0000000000000920 <free>:
 920:	1141                	add	sp,sp,-16
 922:	e422                	sd	s0,8(sp)
 924:	0800                	add	s0,sp,16
 926:	ff050693          	add	a3,a0,-16
 92a:	00001797          	auipc	a5,0x1
 92e:	b467b783          	ld	a5,-1210(a5) # 1470 <freep>
 932:	a02d                	j	95c <free+0x3c>
 934:	4618                	lw	a4,8(a2)
 936:	9f2d                	addw	a4,a4,a1
 938:	fee52c23          	sw	a4,-8(a0)
 93c:	6398                	ld	a4,0(a5)
 93e:	6310                	ld	a2,0(a4)
 940:	a83d                	j	97e <free+0x5e>
 942:	ff852703          	lw	a4,-8(a0)
 946:	9f31                	addw	a4,a4,a2
 948:	c798                	sw	a4,8(a5)
 94a:	ff053683          	ld	a3,-16(a0)
 94e:	a091                	j	992 <free+0x72>
 950:	6398                	ld	a4,0(a5)
 952:	00e7e463          	bltu	a5,a4,95a <free+0x3a>
 956:	00e6ea63          	bltu	a3,a4,96a <free+0x4a>
 95a:	87ba                	mv	a5,a4
 95c:	fed7fae3          	bgeu	a5,a3,950 <free+0x30>
 960:	6398                	ld	a4,0(a5)
 962:	00e6e463          	bltu	a3,a4,96a <free+0x4a>
 966:	fee7eae3          	bltu	a5,a4,95a <free+0x3a>
 96a:	ff852583          	lw	a1,-8(a0)
 96e:	6390                	ld	a2,0(a5)
 970:	02059813          	sll	a6,a1,0x20
 974:	01c85713          	srl	a4,a6,0x1c
 978:	9736                	add	a4,a4,a3
 97a:	fae60de3          	beq	a2,a4,934 <free+0x14>
 97e:	fec53823          	sd	a2,-16(a0)
 982:	4790                	lw	a2,8(a5)
 984:	02061593          	sll	a1,a2,0x20
 988:	01c5d713          	srl	a4,a1,0x1c
 98c:	973e                	add	a4,a4,a5
 98e:	fae68ae3          	beq	a3,a4,942 <free+0x22>
 992:	e394                	sd	a3,0(a5)
 994:	00001717          	auipc	a4,0x1
 998:	acf73e23          	sd	a5,-1316(a4) # 1470 <freep>
 99c:	6422                	ld	s0,8(sp)
 99e:	0141                	add	sp,sp,16
 9a0:	8082                	ret

00000000000009a2 <malloc>:
 9a2:	7139                	add	sp,sp,-64
 9a4:	fc06                	sd	ra,56(sp)
 9a6:	f822                	sd	s0,48(sp)
 9a8:	f426                	sd	s1,40(sp)
 9aa:	ec4e                	sd	s3,24(sp)
 9ac:	0080                	add	s0,sp,64
 9ae:	02051493          	sll	s1,a0,0x20
 9b2:	9081                	srl	s1,s1,0x20
 9b4:	04bd                	add	s1,s1,15
 9b6:	8091                	srl	s1,s1,0x4
 9b8:	0014899b          	addw	s3,s1,1
 9bc:	0485                	add	s1,s1,1
 9be:	00001517          	auipc	a0,0x1
 9c2:	ab253503          	ld	a0,-1358(a0) # 1470 <freep>
 9c6:	c915                	beqz	a0,9fa <malloc+0x58>
 9c8:	611c                	ld	a5,0(a0)
 9ca:	4798                	lw	a4,8(a5)
 9cc:	08977e63          	bgeu	a4,s1,a68 <malloc+0xc6>
 9d0:	f04a                	sd	s2,32(sp)
 9d2:	e852                	sd	s4,16(sp)
 9d4:	e456                	sd	s5,8(sp)
 9d6:	e05a                	sd	s6,0(sp)
 9d8:	8a4e                	mv	s4,s3
 9da:	0009871b          	sext.w	a4,s3
 9de:	6685                	lui	a3,0x1
 9e0:	00d77363          	bgeu	a4,a3,9e6 <malloc+0x44>
 9e4:	6a05                	lui	s4,0x1
 9e6:	000a0b1b          	sext.w	s6,s4
 9ea:	004a1a1b          	sllw	s4,s4,0x4
 9ee:	00001917          	auipc	s2,0x1
 9f2:	a8290913          	add	s2,s2,-1406 # 1470 <freep>
 9f6:	5afd                	li	s5,-1
 9f8:	a091                	j	a3c <malloc+0x9a>
 9fa:	f04a                	sd	s2,32(sp)
 9fc:	e852                	sd	s4,16(sp)
 9fe:	e456                	sd	s5,8(sp)
 a00:	e05a                	sd	s6,0(sp)
 a02:	00001797          	auipc	a5,0x1
 a06:	a8e78793          	add	a5,a5,-1394 # 1490 <base>
 a0a:	00001717          	auipc	a4,0x1
 a0e:	a6f73323          	sd	a5,-1434(a4) # 1470 <freep>
 a12:	e39c                	sd	a5,0(a5)
 a14:	0007a423          	sw	zero,8(a5)
 a18:	b7c1                	j	9d8 <malloc+0x36>
 a1a:	6398                	ld	a4,0(a5)
 a1c:	e118                	sd	a4,0(a0)
 a1e:	a08d                	j	a80 <malloc+0xde>
 a20:	01652423          	sw	s6,8(a0)
 a24:	0541                	add	a0,a0,16
 a26:	00000097          	auipc	ra,0x0
 a2a:	efa080e7          	jalr	-262(ra) # 920 <free>
 a2e:	00093503          	ld	a0,0(s2)
 a32:	c13d                	beqz	a0,a98 <malloc+0xf6>
 a34:	611c                	ld	a5,0(a0)
 a36:	4798                	lw	a4,8(a5)
 a38:	02977463          	bgeu	a4,s1,a60 <malloc+0xbe>
 a3c:	00093703          	ld	a4,0(s2)
 a40:	853e                	mv	a0,a5
 a42:	fef719e3          	bne	a4,a5,a34 <malloc+0x92>
 a46:	8552                	mv	a0,s4
 a48:	00000097          	auipc	ra,0x0
 a4c:	ba2080e7          	jalr	-1118(ra) # 5ea <sbrk>
 a50:	fd5518e3          	bne	a0,s5,a20 <malloc+0x7e>
 a54:	4501                	li	a0,0
 a56:	7902                	ld	s2,32(sp)
 a58:	6a42                	ld	s4,16(sp)
 a5a:	6aa2                	ld	s5,8(sp)
 a5c:	6b02                	ld	s6,0(sp)
 a5e:	a03d                	j	a8c <malloc+0xea>
 a60:	7902                	ld	s2,32(sp)
 a62:	6a42                	ld	s4,16(sp)
 a64:	6aa2                	ld	s5,8(sp)
 a66:	6b02                	ld	s6,0(sp)
 a68:	fae489e3          	beq	s1,a4,a1a <malloc+0x78>
 a6c:	4137073b          	subw	a4,a4,s3
 a70:	c798                	sw	a4,8(a5)
 a72:	02071693          	sll	a3,a4,0x20
 a76:	01c6d713          	srl	a4,a3,0x1c
 a7a:	97ba                	add	a5,a5,a4
 a7c:	0137a423          	sw	s3,8(a5)
 a80:	00001717          	auipc	a4,0x1
 a84:	9ea73823          	sd	a0,-1552(a4) # 1470 <freep>
 a88:	01078513          	add	a0,a5,16
 a8c:	70e2                	ld	ra,56(sp)
 a8e:	7442                	ld	s0,48(sp)
 a90:	74a2                	ld	s1,40(sp)
 a92:	69e2                	ld	s3,24(sp)
 a94:	6121                	add	sp,sp,64
 a96:	8082                	ret
 a98:	7902                	ld	s2,32(sp)
 a9a:	6a42                	ld	s4,16(sp)
 a9c:	6aa2                	ld	s5,8(sp)
 a9e:	6b02                	ld	s6,0(sp)
 aa0:	b7f5                	j	a8c <malloc+0xea>
