
user/_mlfqtest:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <cpu_bound_job>:
   0:	1101                	add	sp,sp,-32
   2:	ec22                	sd	s0,24(sp)
   4:	1000                	add	s0,sp,32
   6:	fe042223          	sw	zero,-28(s0)
   a:	fe042623          	sw	zero,-20(s0)
   e:	a0b9                	j	5c <cpu_bound_job+0x5c>
  10:	fe042423          	sw	zero,-24(s0)
  14:	a035                	j	40 <cpu_bound_job+0x40>
  16:	fec42783          	lw	a5,-20(s0)
  1a:	873e                	mv	a4,a5
  1c:	fe842783          	lw	a5,-24(s0)
  20:	02f707bb          	mulw	a5,a4,a5
  24:	0007871b          	sext.w	a4,a5
  28:	fe442783          	lw	a5,-28(s0)
  2c:	2781                	sext.w	a5,a5
  2e:	9fb9                	addw	a5,a5,a4
  30:	2781                	sext.w	a5,a5
  32:	fef42223          	sw	a5,-28(s0)
  36:	fe842783          	lw	a5,-24(s0)
  3a:	2785                	addw	a5,a5,1
  3c:	fef42423          	sw	a5,-24(s0)
  40:	fe842783          	lw	a5,-24(s0)
  44:	0007871b          	sext.w	a4,a5
  48:	67b1                	lui	a5,0xc
  4a:	34f78793          	add	a5,a5,847 # c34f <base+0xaf1f>
  4e:	fce7d4e3          	bge	a5,a4,16 <cpu_bound_job+0x16>
  52:	fec42783          	lw	a5,-20(s0)
  56:	2785                	addw	a5,a5,1
  58:	fef42623          	sw	a5,-20(s0)
  5c:	fec42783          	lw	a5,-20(s0)
  60:	0007871b          	sext.w	a4,a5
  64:	67b1                	lui	a5,0xc
  66:	34f78793          	add	a5,a5,847 # c34f <base+0xaf1f>
  6a:	fae7d3e3          	bge	a5,a4,10 <cpu_bound_job+0x10>
  6e:	0001                	nop
  70:	0001                	nop
  72:	6462                	ld	s0,24(sp)
  74:	6105                	add	sp,sp,32
  76:	8082                	ret

0000000000000078 <io_bound_job>:
  78:	1101                	add	sp,sp,-32
  7a:	ec06                	sd	ra,24(sp)
  7c:	e822                	sd	s0,16(sp)
  7e:	1000                	add	s0,sp,32
  80:	fe042623          	sw	zero,-20(s0)
  84:	a821                	j	9c <io_bound_job+0x24>
  86:	06400513          	li	a0,100
  8a:	00000097          	auipc	ra,0x0
  8e:	406080e7          	jalr	1030(ra) # 490 <sleep>
  92:	fec42783          	lw	a5,-20(s0)
  96:	2785                	addw	a5,a5,1
  98:	fef42623          	sw	a5,-20(s0)
  9c:	fec42783          	lw	a5,-20(s0)
  a0:	0007871b          	sext.w	a4,a5
  a4:	4791                	li	a5,4
  a6:	fee7d0e3          	bge	a5,a4,86 <io_bound_job+0xe>
  aa:	0001                	nop
  ac:	0001                	nop
  ae:	60e2                	ld	ra,24(sp)
  b0:	6442                	ld	s0,16(sp)
  b2:	6105                	add	sp,sp,32
  b4:	8082                	ret

00000000000000b6 <main>:
  b6:	1101                	add	sp,sp,-32
  b8:	ec06                	sd	ra,24(sp)
  ba:	e822                	sd	s0,16(sp)
  bc:	1000                	add	s0,sp,32
  be:	fe042623          	sw	zero,-20(s0)
  c2:	a815                	j	f6 <main+0x40>
  c4:	00000097          	auipc	ra,0x0
  c8:	334080e7          	jalr	820(ra) # 3f8 <fork>
  cc:	87aa                	mv	a5,a0
  ce:	fef42223          	sw	a5,-28(s0)
  d2:	fe442783          	lw	a5,-28(s0)
  d6:	2781                	sext.w	a5,a5
  d8:	eb91                	bnez	a5,ec <main+0x36>
  da:	00000097          	auipc	ra,0x0
  de:	f26080e7          	jalr	-218(ra) # 0 <cpu_bound_job>
  e2:	4501                	li	a0,0
  e4:	00000097          	auipc	ra,0x0
  e8:	31c080e7          	jalr	796(ra) # 400 <exit>
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	2785                	addw	a5,a5,1
  f2:	fef42623          	sw	a5,-20(s0)
  f6:	fec42783          	lw	a5,-20(s0)
  fa:	0007871b          	sext.w	a4,a5
  fe:	4789                	li	a5,2
 100:	fce7d2e3          	bge	a5,a4,c4 <main+0xe>
 104:	fe042423          	sw	zero,-24(s0)
 108:	a815                	j	13c <main+0x86>
 10a:	00000097          	auipc	ra,0x0
 10e:	2ee080e7          	jalr	750(ra) # 3f8 <fork>
 112:	87aa                	mv	a5,a0
 114:	fef42223          	sw	a5,-28(s0)
 118:	fe442783          	lw	a5,-28(s0)
 11c:	2781                	sext.w	a5,a5
 11e:	eb91                	bnez	a5,132 <main+0x7c>
 120:	00000097          	auipc	ra,0x0
 124:	f58080e7          	jalr	-168(ra) # 78 <io_bound_job>
 128:	4501                	li	a0,0
 12a:	00000097          	auipc	ra,0x0
 12e:	2d6080e7          	jalr	726(ra) # 400 <exit>
 132:	fe842783          	lw	a5,-24(s0)
 136:	2785                	addw	a5,a5,1
 138:	fef42423          	sw	a5,-24(s0)
 13c:	fe842783          	lw	a5,-24(s0)
 140:	0007871b          	sext.w	a4,a5
 144:	4785                	li	a5,1
 146:	fce7d2e3          	bge	a5,a4,10a <main+0x54>
 14a:	0001                	nop
 14c:	4501                	li	a0,0
 14e:	00000097          	auipc	ra,0x0
 152:	2ba080e7          	jalr	698(ra) # 408 <wait>
 156:	87aa                	mv	a5,a0
 158:	873e                	mv	a4,a5
 15a:	57fd                	li	a5,-1
 15c:	fef718e3          	bne	a4,a5,14c <main+0x96>
 160:	00000517          	auipc	a0,0x0
 164:	7e050513          	add	a0,a0,2016 # 940 <malloc+0x100>
 168:	00000097          	auipc	ra,0x0
 16c:	620080e7          	jalr	1568(ra) # 788 <printf>
 170:	4501                	li	a0,0
 172:	00000097          	auipc	ra,0x0
 176:	28e080e7          	jalr	654(ra) # 400 <exit>

000000000000017a <_main>:
 17a:	1141                	add	sp,sp,-16
 17c:	e406                	sd	ra,8(sp)
 17e:	e022                	sd	s0,0(sp)
 180:	0800                	add	s0,sp,16
 182:	00000097          	auipc	ra,0x0
 186:	f34080e7          	jalr	-204(ra) # b6 <main>
 18a:	4501                	li	a0,0
 18c:	00000097          	auipc	ra,0x0
 190:	274080e7          	jalr	628(ra) # 400 <exit>

0000000000000194 <strcpy>:
 194:	1141                	add	sp,sp,-16
 196:	e422                	sd	s0,8(sp)
 198:	0800                	add	s0,sp,16
 19a:	87aa                	mv	a5,a0
 19c:	0585                	add	a1,a1,1
 19e:	0785                	add	a5,a5,1
 1a0:	fff5c703          	lbu	a4,-1(a1)
 1a4:	fee78fa3          	sb	a4,-1(a5)
 1a8:	fb75                	bnez	a4,19c <strcpy+0x8>
 1aa:	6422                	ld	s0,8(sp)
 1ac:	0141                	add	sp,sp,16
 1ae:	8082                	ret

00000000000001b0 <strcmp>:
 1b0:	1141                	add	sp,sp,-16
 1b2:	e422                	sd	s0,8(sp)
 1b4:	0800                	add	s0,sp,16
 1b6:	00054783          	lbu	a5,0(a0)
 1ba:	cb91                	beqz	a5,1ce <strcmp+0x1e>
 1bc:	0005c703          	lbu	a4,0(a1)
 1c0:	00f71763          	bne	a4,a5,1ce <strcmp+0x1e>
 1c4:	0505                	add	a0,a0,1
 1c6:	0585                	add	a1,a1,1
 1c8:	00054783          	lbu	a5,0(a0)
 1cc:	fbe5                	bnez	a5,1bc <strcmp+0xc>
 1ce:	0005c503          	lbu	a0,0(a1)
 1d2:	40a7853b          	subw	a0,a5,a0
 1d6:	6422                	ld	s0,8(sp)
 1d8:	0141                	add	sp,sp,16
 1da:	8082                	ret

00000000000001dc <strlen>:
 1dc:	1141                	add	sp,sp,-16
 1de:	e422                	sd	s0,8(sp)
 1e0:	0800                	add	s0,sp,16
 1e2:	00054783          	lbu	a5,0(a0)
 1e6:	cf91                	beqz	a5,202 <strlen+0x26>
 1e8:	0505                	add	a0,a0,1
 1ea:	87aa                	mv	a5,a0
 1ec:	86be                	mv	a3,a5
 1ee:	0785                	add	a5,a5,1
 1f0:	fff7c703          	lbu	a4,-1(a5)
 1f4:	ff65                	bnez	a4,1ec <strlen+0x10>
 1f6:	40a6853b          	subw	a0,a3,a0
 1fa:	2505                	addw	a0,a0,1
 1fc:	6422                	ld	s0,8(sp)
 1fe:	0141                	add	sp,sp,16
 200:	8082                	ret
 202:	4501                	li	a0,0
 204:	bfe5                	j	1fc <strlen+0x20>

0000000000000206 <memset>:
 206:	1141                	add	sp,sp,-16
 208:	e422                	sd	s0,8(sp)
 20a:	0800                	add	s0,sp,16
 20c:	ca19                	beqz	a2,222 <memset+0x1c>
 20e:	87aa                	mv	a5,a0
 210:	1602                	sll	a2,a2,0x20
 212:	9201                	srl	a2,a2,0x20
 214:	00a60733          	add	a4,a2,a0
 218:	00b78023          	sb	a1,0(a5)
 21c:	0785                	add	a5,a5,1
 21e:	fee79de3          	bne	a5,a4,218 <memset+0x12>
 222:	6422                	ld	s0,8(sp)
 224:	0141                	add	sp,sp,16
 226:	8082                	ret

0000000000000228 <strchr>:
 228:	1141                	add	sp,sp,-16
 22a:	e422                	sd	s0,8(sp)
 22c:	0800                	add	s0,sp,16
 22e:	00054783          	lbu	a5,0(a0)
 232:	cb99                	beqz	a5,248 <strchr+0x20>
 234:	00f58763          	beq	a1,a5,242 <strchr+0x1a>
 238:	0505                	add	a0,a0,1
 23a:	00054783          	lbu	a5,0(a0)
 23e:	fbfd                	bnez	a5,234 <strchr+0xc>
 240:	4501                	li	a0,0
 242:	6422                	ld	s0,8(sp)
 244:	0141                	add	sp,sp,16
 246:	8082                	ret
 248:	4501                	li	a0,0
 24a:	bfe5                	j	242 <strchr+0x1a>

000000000000024c <gets>:
 24c:	711d                	add	sp,sp,-96
 24e:	ec86                	sd	ra,88(sp)
 250:	e8a2                	sd	s0,80(sp)
 252:	e4a6                	sd	s1,72(sp)
 254:	e0ca                	sd	s2,64(sp)
 256:	fc4e                	sd	s3,56(sp)
 258:	f852                	sd	s4,48(sp)
 25a:	f456                	sd	s5,40(sp)
 25c:	f05a                	sd	s6,32(sp)
 25e:	ec5e                	sd	s7,24(sp)
 260:	1080                	add	s0,sp,96
 262:	8baa                	mv	s7,a0
 264:	8a2e                	mv	s4,a1
 266:	892a                	mv	s2,a0
 268:	4481                	li	s1,0
 26a:	4aa9                	li	s5,10
 26c:	4b35                	li	s6,13
 26e:	89a6                	mv	s3,s1
 270:	2485                	addw	s1,s1,1
 272:	0344d863          	bge	s1,s4,2a2 <gets+0x56>
 276:	4605                	li	a2,1
 278:	faf40593          	add	a1,s0,-81
 27c:	4501                	li	a0,0
 27e:	00000097          	auipc	ra,0x0
 282:	19a080e7          	jalr	410(ra) # 418 <read>
 286:	00a05e63          	blez	a0,2a2 <gets+0x56>
 28a:	faf44783          	lbu	a5,-81(s0)
 28e:	00f90023          	sb	a5,0(s2)
 292:	01578763          	beq	a5,s5,2a0 <gets+0x54>
 296:	0905                	add	s2,s2,1
 298:	fd679be3          	bne	a5,s6,26e <gets+0x22>
 29c:	89a6                	mv	s3,s1
 29e:	a011                	j	2a2 <gets+0x56>
 2a0:	89a6                	mv	s3,s1
 2a2:	99de                	add	s3,s3,s7
 2a4:	00098023          	sb	zero,0(s3)
 2a8:	855e                	mv	a0,s7
 2aa:	60e6                	ld	ra,88(sp)
 2ac:	6446                	ld	s0,80(sp)
 2ae:	64a6                	ld	s1,72(sp)
 2b0:	6906                	ld	s2,64(sp)
 2b2:	79e2                	ld	s3,56(sp)
 2b4:	7a42                	ld	s4,48(sp)
 2b6:	7aa2                	ld	s5,40(sp)
 2b8:	7b02                	ld	s6,32(sp)
 2ba:	6be2                	ld	s7,24(sp)
 2bc:	6125                	add	sp,sp,96
 2be:	8082                	ret

00000000000002c0 <stat>:
 2c0:	1101                	add	sp,sp,-32
 2c2:	ec06                	sd	ra,24(sp)
 2c4:	e822                	sd	s0,16(sp)
 2c6:	e04a                	sd	s2,0(sp)
 2c8:	1000                	add	s0,sp,32
 2ca:	892e                	mv	s2,a1
 2cc:	4581                	li	a1,0
 2ce:	00000097          	auipc	ra,0x0
 2d2:	172080e7          	jalr	370(ra) # 440 <open>
 2d6:	02054663          	bltz	a0,302 <stat+0x42>
 2da:	e426                	sd	s1,8(sp)
 2dc:	84aa                	mv	s1,a0
 2de:	85ca                	mv	a1,s2
 2e0:	00000097          	auipc	ra,0x0
 2e4:	178080e7          	jalr	376(ra) # 458 <fstat>
 2e8:	892a                	mv	s2,a0
 2ea:	8526                	mv	a0,s1
 2ec:	00000097          	auipc	ra,0x0
 2f0:	13c080e7          	jalr	316(ra) # 428 <close>
 2f4:	64a2                	ld	s1,8(sp)
 2f6:	854a                	mv	a0,s2
 2f8:	60e2                	ld	ra,24(sp)
 2fa:	6442                	ld	s0,16(sp)
 2fc:	6902                	ld	s2,0(sp)
 2fe:	6105                	add	sp,sp,32
 300:	8082                	ret
 302:	597d                	li	s2,-1
 304:	bfcd                	j	2f6 <stat+0x36>

0000000000000306 <atoi>:
 306:	1141                	add	sp,sp,-16
 308:	e422                	sd	s0,8(sp)
 30a:	0800                	add	s0,sp,16
 30c:	00054683          	lbu	a3,0(a0)
 310:	fd06879b          	addw	a5,a3,-48
 314:	0ff7f793          	zext.b	a5,a5
 318:	4625                	li	a2,9
 31a:	02f66863          	bltu	a2,a5,34a <atoi+0x44>
 31e:	872a                	mv	a4,a0
 320:	4501                	li	a0,0
 322:	0705                	add	a4,a4,1
 324:	0025179b          	sllw	a5,a0,0x2
 328:	9fa9                	addw	a5,a5,a0
 32a:	0017979b          	sllw	a5,a5,0x1
 32e:	9fb5                	addw	a5,a5,a3
 330:	fd07851b          	addw	a0,a5,-48
 334:	00074683          	lbu	a3,0(a4)
 338:	fd06879b          	addw	a5,a3,-48
 33c:	0ff7f793          	zext.b	a5,a5
 340:	fef671e3          	bgeu	a2,a5,322 <atoi+0x1c>
 344:	6422                	ld	s0,8(sp)
 346:	0141                	add	sp,sp,16
 348:	8082                	ret
 34a:	4501                	li	a0,0
 34c:	bfe5                	j	344 <atoi+0x3e>

000000000000034e <memmove>:
 34e:	1141                	add	sp,sp,-16
 350:	e422                	sd	s0,8(sp)
 352:	0800                	add	s0,sp,16
 354:	02b57463          	bgeu	a0,a1,37c <memmove+0x2e>
 358:	00c05f63          	blez	a2,376 <memmove+0x28>
 35c:	1602                	sll	a2,a2,0x20
 35e:	9201                	srl	a2,a2,0x20
 360:	00c507b3          	add	a5,a0,a2
 364:	872a                	mv	a4,a0
 366:	0585                	add	a1,a1,1
 368:	0705                	add	a4,a4,1
 36a:	fff5c683          	lbu	a3,-1(a1)
 36e:	fed70fa3          	sb	a3,-1(a4)
 372:	fef71ae3          	bne	a4,a5,366 <memmove+0x18>
 376:	6422                	ld	s0,8(sp)
 378:	0141                	add	sp,sp,16
 37a:	8082                	ret
 37c:	00c50733          	add	a4,a0,a2
 380:	95b2                	add	a1,a1,a2
 382:	fec05ae3          	blez	a2,376 <memmove+0x28>
 386:	fff6079b          	addw	a5,a2,-1
 38a:	1782                	sll	a5,a5,0x20
 38c:	9381                	srl	a5,a5,0x20
 38e:	fff7c793          	not	a5,a5
 392:	97ba                	add	a5,a5,a4
 394:	15fd                	add	a1,a1,-1
 396:	177d                	add	a4,a4,-1
 398:	0005c683          	lbu	a3,0(a1)
 39c:	00d70023          	sb	a3,0(a4)
 3a0:	fee79ae3          	bne	a5,a4,394 <memmove+0x46>
 3a4:	bfc9                	j	376 <memmove+0x28>

00000000000003a6 <memcmp>:
 3a6:	1141                	add	sp,sp,-16
 3a8:	e422                	sd	s0,8(sp)
 3aa:	0800                	add	s0,sp,16
 3ac:	ca05                	beqz	a2,3dc <memcmp+0x36>
 3ae:	fff6069b          	addw	a3,a2,-1
 3b2:	1682                	sll	a3,a3,0x20
 3b4:	9281                	srl	a3,a3,0x20
 3b6:	0685                	add	a3,a3,1
 3b8:	96aa                	add	a3,a3,a0
 3ba:	00054783          	lbu	a5,0(a0)
 3be:	0005c703          	lbu	a4,0(a1)
 3c2:	00e79863          	bne	a5,a4,3d2 <memcmp+0x2c>
 3c6:	0505                	add	a0,a0,1
 3c8:	0585                	add	a1,a1,1
 3ca:	fed518e3          	bne	a0,a3,3ba <memcmp+0x14>
 3ce:	4501                	li	a0,0
 3d0:	a019                	j	3d6 <memcmp+0x30>
 3d2:	40e7853b          	subw	a0,a5,a4
 3d6:	6422                	ld	s0,8(sp)
 3d8:	0141                	add	sp,sp,16
 3da:	8082                	ret
 3dc:	4501                	li	a0,0
 3de:	bfe5                	j	3d6 <memcmp+0x30>

00000000000003e0 <memcpy>:
 3e0:	1141                	add	sp,sp,-16
 3e2:	e406                	sd	ra,8(sp)
 3e4:	e022                	sd	s0,0(sp)
 3e6:	0800                	add	s0,sp,16
 3e8:	00000097          	auipc	ra,0x0
 3ec:	f66080e7          	jalr	-154(ra) # 34e <memmove>
 3f0:	60a2                	ld	ra,8(sp)
 3f2:	6402                	ld	s0,0(sp)
 3f4:	0141                	add	sp,sp,16
 3f6:	8082                	ret

00000000000003f8 <fork>:
 3f8:	4885                	li	a7,1
 3fa:	00000073          	ecall
 3fe:	8082                	ret

0000000000000400 <exit>:
 400:	4889                	li	a7,2
 402:	00000073          	ecall
 406:	8082                	ret

0000000000000408 <wait>:
 408:	488d                	li	a7,3
 40a:	00000073          	ecall
 40e:	8082                	ret

0000000000000410 <pipe>:
 410:	4891                	li	a7,4
 412:	00000073          	ecall
 416:	8082                	ret

0000000000000418 <read>:
 418:	4895                	li	a7,5
 41a:	00000073          	ecall
 41e:	8082                	ret

0000000000000420 <write>:
 420:	48c1                	li	a7,16
 422:	00000073          	ecall
 426:	8082                	ret

0000000000000428 <close>:
 428:	48d5                	li	a7,21
 42a:	00000073          	ecall
 42e:	8082                	ret

0000000000000430 <kill>:
 430:	4899                	li	a7,6
 432:	00000073          	ecall
 436:	8082                	ret

0000000000000438 <exec>:
 438:	489d                	li	a7,7
 43a:	00000073          	ecall
 43e:	8082                	ret

0000000000000440 <open>:
 440:	48bd                	li	a7,15
 442:	00000073          	ecall
 446:	8082                	ret

0000000000000448 <mknod>:
 448:	48c5                	li	a7,17
 44a:	00000073          	ecall
 44e:	8082                	ret

0000000000000450 <unlink>:
 450:	48c9                	li	a7,18
 452:	00000073          	ecall
 456:	8082                	ret

0000000000000458 <fstat>:
 458:	48a1                	li	a7,8
 45a:	00000073          	ecall
 45e:	8082                	ret

0000000000000460 <link>:
 460:	48cd                	li	a7,19
 462:	00000073          	ecall
 466:	8082                	ret

0000000000000468 <mkdir>:
 468:	48d1                	li	a7,20
 46a:	00000073          	ecall
 46e:	8082                	ret

0000000000000470 <chdir>:
 470:	48a5                	li	a7,9
 472:	00000073          	ecall
 476:	8082                	ret

0000000000000478 <dup>:
 478:	48a9                	li	a7,10
 47a:	00000073          	ecall
 47e:	8082                	ret

0000000000000480 <getpid>:
 480:	48ad                	li	a7,11
 482:	00000073          	ecall
 486:	8082                	ret

0000000000000488 <sbrk>:
 488:	48b1                	li	a7,12
 48a:	00000073          	ecall
 48e:	8082                	ret

0000000000000490 <sleep>:
 490:	48b5                	li	a7,13
 492:	00000073          	ecall
 496:	8082                	ret

0000000000000498 <uptime>:
 498:	48b9                	li	a7,14
 49a:	00000073          	ecall
 49e:	8082                	ret

00000000000004a0 <waitx>:
 4a0:	48d9                	li	a7,22
 4a2:	00000073          	ecall
 4a6:	8082                	ret

00000000000004a8 <getSysCount>:
 4a8:	48dd                	li	a7,23
 4aa:	00000073          	ecall
 4ae:	8082                	ret

00000000000004b0 <sigalarm>:
 4b0:	48e1                	li	a7,24
 4b2:	00000073          	ecall
 4b6:	8082                	ret

00000000000004b8 <sigreturn>:
 4b8:	48e5                	li	a7,25
 4ba:	00000073          	ecall
 4be:	8082                	ret

00000000000004c0 <putc>:
 4c0:	1101                	add	sp,sp,-32
 4c2:	ec06                	sd	ra,24(sp)
 4c4:	e822                	sd	s0,16(sp)
 4c6:	1000                	add	s0,sp,32
 4c8:	feb407a3          	sb	a1,-17(s0)
 4cc:	4605                	li	a2,1
 4ce:	fef40593          	add	a1,s0,-17
 4d2:	00000097          	auipc	ra,0x0
 4d6:	f4e080e7          	jalr	-178(ra) # 420 <write>
 4da:	60e2                	ld	ra,24(sp)
 4dc:	6442                	ld	s0,16(sp)
 4de:	6105                	add	sp,sp,32
 4e0:	8082                	ret

00000000000004e2 <printint>:
 4e2:	7139                	add	sp,sp,-64
 4e4:	fc06                	sd	ra,56(sp)
 4e6:	f822                	sd	s0,48(sp)
 4e8:	f426                	sd	s1,40(sp)
 4ea:	0080                	add	s0,sp,64
 4ec:	84aa                	mv	s1,a0
 4ee:	c299                	beqz	a3,4f4 <printint+0x12>
 4f0:	0805cb63          	bltz	a1,586 <printint+0xa4>
 4f4:	2581                	sext.w	a1,a1
 4f6:	4881                	li	a7,0
 4f8:	fc040693          	add	a3,s0,-64
 4fc:	4701                	li	a4,0
 4fe:	2601                	sext.w	a2,a2
 500:	00000517          	auipc	a0,0x0
 504:	4b850513          	add	a0,a0,1208 # 9b8 <digits>
 508:	883a                	mv	a6,a4
 50a:	2705                	addw	a4,a4,1
 50c:	02c5f7bb          	remuw	a5,a1,a2
 510:	1782                	sll	a5,a5,0x20
 512:	9381                	srl	a5,a5,0x20
 514:	97aa                	add	a5,a5,a0
 516:	0007c783          	lbu	a5,0(a5)
 51a:	00f68023          	sb	a5,0(a3)
 51e:	0005879b          	sext.w	a5,a1
 522:	02c5d5bb          	divuw	a1,a1,a2
 526:	0685                	add	a3,a3,1
 528:	fec7f0e3          	bgeu	a5,a2,508 <printint+0x26>
 52c:	00088c63          	beqz	a7,544 <printint+0x62>
 530:	fd070793          	add	a5,a4,-48
 534:	00878733          	add	a4,a5,s0
 538:	02d00793          	li	a5,45
 53c:	fef70823          	sb	a5,-16(a4)
 540:	0028071b          	addw	a4,a6,2
 544:	02e05c63          	blez	a4,57c <printint+0x9a>
 548:	f04a                	sd	s2,32(sp)
 54a:	ec4e                	sd	s3,24(sp)
 54c:	fc040793          	add	a5,s0,-64
 550:	00e78933          	add	s2,a5,a4
 554:	fff78993          	add	s3,a5,-1
 558:	99ba                	add	s3,s3,a4
 55a:	377d                	addw	a4,a4,-1
 55c:	1702                	sll	a4,a4,0x20
 55e:	9301                	srl	a4,a4,0x20
 560:	40e989b3          	sub	s3,s3,a4
 564:	fff94583          	lbu	a1,-1(s2)
 568:	8526                	mv	a0,s1
 56a:	00000097          	auipc	ra,0x0
 56e:	f56080e7          	jalr	-170(ra) # 4c0 <putc>
 572:	197d                	add	s2,s2,-1
 574:	ff3918e3          	bne	s2,s3,564 <printint+0x82>
 578:	7902                	ld	s2,32(sp)
 57a:	69e2                	ld	s3,24(sp)
 57c:	70e2                	ld	ra,56(sp)
 57e:	7442                	ld	s0,48(sp)
 580:	74a2                	ld	s1,40(sp)
 582:	6121                	add	sp,sp,64
 584:	8082                	ret
 586:	40b005bb          	negw	a1,a1
 58a:	4885                	li	a7,1
 58c:	b7b5                	j	4f8 <printint+0x16>

000000000000058e <vprintf>:
 58e:	715d                	add	sp,sp,-80
 590:	e486                	sd	ra,72(sp)
 592:	e0a2                	sd	s0,64(sp)
 594:	f84a                	sd	s2,48(sp)
 596:	0880                	add	s0,sp,80
 598:	0005c903          	lbu	s2,0(a1)
 59c:	1a090a63          	beqz	s2,750 <vprintf+0x1c2>
 5a0:	fc26                	sd	s1,56(sp)
 5a2:	f44e                	sd	s3,40(sp)
 5a4:	f052                	sd	s4,32(sp)
 5a6:	ec56                	sd	s5,24(sp)
 5a8:	e85a                	sd	s6,16(sp)
 5aa:	e45e                	sd	s7,8(sp)
 5ac:	8aaa                	mv	s5,a0
 5ae:	8bb2                	mv	s7,a2
 5b0:	00158493          	add	s1,a1,1
 5b4:	4981                	li	s3,0
 5b6:	02500a13          	li	s4,37
 5ba:	4b55                	li	s6,21
 5bc:	a839                	j	5da <vprintf+0x4c>
 5be:	85ca                	mv	a1,s2
 5c0:	8556                	mv	a0,s5
 5c2:	00000097          	auipc	ra,0x0
 5c6:	efe080e7          	jalr	-258(ra) # 4c0 <putc>
 5ca:	a019                	j	5d0 <vprintf+0x42>
 5cc:	01498d63          	beq	s3,s4,5e6 <vprintf+0x58>
 5d0:	0485                	add	s1,s1,1
 5d2:	fff4c903          	lbu	s2,-1(s1)
 5d6:	16090763          	beqz	s2,744 <vprintf+0x1b6>
 5da:	fe0999e3          	bnez	s3,5cc <vprintf+0x3e>
 5de:	ff4910e3          	bne	s2,s4,5be <vprintf+0x30>
 5e2:	89d2                	mv	s3,s4
 5e4:	b7f5                	j	5d0 <vprintf+0x42>
 5e6:	13490463          	beq	s2,s4,70e <vprintf+0x180>
 5ea:	f9d9079b          	addw	a5,s2,-99
 5ee:	0ff7f793          	zext.b	a5,a5
 5f2:	12fb6763          	bltu	s6,a5,720 <vprintf+0x192>
 5f6:	f9d9079b          	addw	a5,s2,-99
 5fa:	0ff7f713          	zext.b	a4,a5
 5fe:	12eb6163          	bltu	s6,a4,720 <vprintf+0x192>
 602:	00271793          	sll	a5,a4,0x2
 606:	00000717          	auipc	a4,0x0
 60a:	35a70713          	add	a4,a4,858 # 960 <malloc+0x120>
 60e:	97ba                	add	a5,a5,a4
 610:	439c                	lw	a5,0(a5)
 612:	97ba                	add	a5,a5,a4
 614:	8782                	jr	a5
 616:	008b8913          	add	s2,s7,8
 61a:	4685                	li	a3,1
 61c:	4629                	li	a2,10
 61e:	000ba583          	lw	a1,0(s7)
 622:	8556                	mv	a0,s5
 624:	00000097          	auipc	ra,0x0
 628:	ebe080e7          	jalr	-322(ra) # 4e2 <printint>
 62c:	8bca                	mv	s7,s2
 62e:	4981                	li	s3,0
 630:	b745                	j	5d0 <vprintf+0x42>
 632:	008b8913          	add	s2,s7,8
 636:	4681                	li	a3,0
 638:	4629                	li	a2,10
 63a:	000ba583          	lw	a1,0(s7)
 63e:	8556                	mv	a0,s5
 640:	00000097          	auipc	ra,0x0
 644:	ea2080e7          	jalr	-350(ra) # 4e2 <printint>
 648:	8bca                	mv	s7,s2
 64a:	4981                	li	s3,0
 64c:	b751                	j	5d0 <vprintf+0x42>
 64e:	008b8913          	add	s2,s7,8
 652:	4681                	li	a3,0
 654:	4641                	li	a2,16
 656:	000ba583          	lw	a1,0(s7)
 65a:	8556                	mv	a0,s5
 65c:	00000097          	auipc	ra,0x0
 660:	e86080e7          	jalr	-378(ra) # 4e2 <printint>
 664:	8bca                	mv	s7,s2
 666:	4981                	li	s3,0
 668:	b7a5                	j	5d0 <vprintf+0x42>
 66a:	e062                	sd	s8,0(sp)
 66c:	008b8c13          	add	s8,s7,8
 670:	000bb983          	ld	s3,0(s7)
 674:	03000593          	li	a1,48
 678:	8556                	mv	a0,s5
 67a:	00000097          	auipc	ra,0x0
 67e:	e46080e7          	jalr	-442(ra) # 4c0 <putc>
 682:	07800593          	li	a1,120
 686:	8556                	mv	a0,s5
 688:	00000097          	auipc	ra,0x0
 68c:	e38080e7          	jalr	-456(ra) # 4c0 <putc>
 690:	4941                	li	s2,16
 692:	00000b97          	auipc	s7,0x0
 696:	326b8b93          	add	s7,s7,806 # 9b8 <digits>
 69a:	03c9d793          	srl	a5,s3,0x3c
 69e:	97de                	add	a5,a5,s7
 6a0:	0007c583          	lbu	a1,0(a5)
 6a4:	8556                	mv	a0,s5
 6a6:	00000097          	auipc	ra,0x0
 6aa:	e1a080e7          	jalr	-486(ra) # 4c0 <putc>
 6ae:	0992                	sll	s3,s3,0x4
 6b0:	397d                	addw	s2,s2,-1
 6b2:	fe0914e3          	bnez	s2,69a <vprintf+0x10c>
 6b6:	8be2                	mv	s7,s8
 6b8:	4981                	li	s3,0
 6ba:	6c02                	ld	s8,0(sp)
 6bc:	bf11                	j	5d0 <vprintf+0x42>
 6be:	008b8993          	add	s3,s7,8
 6c2:	000bb903          	ld	s2,0(s7)
 6c6:	02090163          	beqz	s2,6e8 <vprintf+0x15a>
 6ca:	00094583          	lbu	a1,0(s2)
 6ce:	c9a5                	beqz	a1,73e <vprintf+0x1b0>
 6d0:	8556                	mv	a0,s5
 6d2:	00000097          	auipc	ra,0x0
 6d6:	dee080e7          	jalr	-530(ra) # 4c0 <putc>
 6da:	0905                	add	s2,s2,1
 6dc:	00094583          	lbu	a1,0(s2)
 6e0:	f9e5                	bnez	a1,6d0 <vprintf+0x142>
 6e2:	8bce                	mv	s7,s3
 6e4:	4981                	li	s3,0
 6e6:	b5ed                	j	5d0 <vprintf+0x42>
 6e8:	00000917          	auipc	s2,0x0
 6ec:	27090913          	add	s2,s2,624 # 958 <malloc+0x118>
 6f0:	02800593          	li	a1,40
 6f4:	bff1                	j	6d0 <vprintf+0x142>
 6f6:	008b8913          	add	s2,s7,8
 6fa:	000bc583          	lbu	a1,0(s7)
 6fe:	8556                	mv	a0,s5
 700:	00000097          	auipc	ra,0x0
 704:	dc0080e7          	jalr	-576(ra) # 4c0 <putc>
 708:	8bca                	mv	s7,s2
 70a:	4981                	li	s3,0
 70c:	b5d1                	j	5d0 <vprintf+0x42>
 70e:	02500593          	li	a1,37
 712:	8556                	mv	a0,s5
 714:	00000097          	auipc	ra,0x0
 718:	dac080e7          	jalr	-596(ra) # 4c0 <putc>
 71c:	4981                	li	s3,0
 71e:	bd4d                	j	5d0 <vprintf+0x42>
 720:	02500593          	li	a1,37
 724:	8556                	mv	a0,s5
 726:	00000097          	auipc	ra,0x0
 72a:	d9a080e7          	jalr	-614(ra) # 4c0 <putc>
 72e:	85ca                	mv	a1,s2
 730:	8556                	mv	a0,s5
 732:	00000097          	auipc	ra,0x0
 736:	d8e080e7          	jalr	-626(ra) # 4c0 <putc>
 73a:	4981                	li	s3,0
 73c:	bd51                	j	5d0 <vprintf+0x42>
 73e:	8bce                	mv	s7,s3
 740:	4981                	li	s3,0
 742:	b579                	j	5d0 <vprintf+0x42>
 744:	74e2                	ld	s1,56(sp)
 746:	79a2                	ld	s3,40(sp)
 748:	7a02                	ld	s4,32(sp)
 74a:	6ae2                	ld	s5,24(sp)
 74c:	6b42                	ld	s6,16(sp)
 74e:	6ba2                	ld	s7,8(sp)
 750:	60a6                	ld	ra,72(sp)
 752:	6406                	ld	s0,64(sp)
 754:	7942                	ld	s2,48(sp)
 756:	6161                	add	sp,sp,80
 758:	8082                	ret

000000000000075a <fprintf>:
 75a:	715d                	add	sp,sp,-80
 75c:	ec06                	sd	ra,24(sp)
 75e:	e822                	sd	s0,16(sp)
 760:	1000                	add	s0,sp,32
 762:	e010                	sd	a2,0(s0)
 764:	e414                	sd	a3,8(s0)
 766:	e818                	sd	a4,16(s0)
 768:	ec1c                	sd	a5,24(s0)
 76a:	03043023          	sd	a6,32(s0)
 76e:	03143423          	sd	a7,40(s0)
 772:	fe843423          	sd	s0,-24(s0)
 776:	8622                	mv	a2,s0
 778:	00000097          	auipc	ra,0x0
 77c:	e16080e7          	jalr	-490(ra) # 58e <vprintf>
 780:	60e2                	ld	ra,24(sp)
 782:	6442                	ld	s0,16(sp)
 784:	6161                	add	sp,sp,80
 786:	8082                	ret

0000000000000788 <printf>:
 788:	711d                	add	sp,sp,-96
 78a:	ec06                	sd	ra,24(sp)
 78c:	e822                	sd	s0,16(sp)
 78e:	1000                	add	s0,sp,32
 790:	e40c                	sd	a1,8(s0)
 792:	e810                	sd	a2,16(s0)
 794:	ec14                	sd	a3,24(s0)
 796:	f018                	sd	a4,32(s0)
 798:	f41c                	sd	a5,40(s0)
 79a:	03043823          	sd	a6,48(s0)
 79e:	03143c23          	sd	a7,56(s0)
 7a2:	00840613          	add	a2,s0,8
 7a6:	fec43423          	sd	a2,-24(s0)
 7aa:	85aa                	mv	a1,a0
 7ac:	4505                	li	a0,1
 7ae:	00000097          	auipc	ra,0x0
 7b2:	de0080e7          	jalr	-544(ra) # 58e <vprintf>
 7b6:	60e2                	ld	ra,24(sp)
 7b8:	6442                	ld	s0,16(sp)
 7ba:	6125                	add	sp,sp,96
 7bc:	8082                	ret

00000000000007be <free>:
 7be:	1141                	add	sp,sp,-16
 7c0:	e422                	sd	s0,8(sp)
 7c2:	0800                	add	s0,sp,16
 7c4:	ff050693          	add	a3,a0,-16
 7c8:	00001797          	auipc	a5,0x1
 7cc:	c587b783          	ld	a5,-936(a5) # 1420 <freep>
 7d0:	a02d                	j	7fa <free+0x3c>
 7d2:	4618                	lw	a4,8(a2)
 7d4:	9f2d                	addw	a4,a4,a1
 7d6:	fee52c23          	sw	a4,-8(a0)
 7da:	6398                	ld	a4,0(a5)
 7dc:	6310                	ld	a2,0(a4)
 7de:	a83d                	j	81c <free+0x5e>
 7e0:	ff852703          	lw	a4,-8(a0)
 7e4:	9f31                	addw	a4,a4,a2
 7e6:	c798                	sw	a4,8(a5)
 7e8:	ff053683          	ld	a3,-16(a0)
 7ec:	a091                	j	830 <free+0x72>
 7ee:	6398                	ld	a4,0(a5)
 7f0:	00e7e463          	bltu	a5,a4,7f8 <free+0x3a>
 7f4:	00e6ea63          	bltu	a3,a4,808 <free+0x4a>
 7f8:	87ba                	mv	a5,a4
 7fa:	fed7fae3          	bgeu	a5,a3,7ee <free+0x30>
 7fe:	6398                	ld	a4,0(a5)
 800:	00e6e463          	bltu	a3,a4,808 <free+0x4a>
 804:	fee7eae3          	bltu	a5,a4,7f8 <free+0x3a>
 808:	ff852583          	lw	a1,-8(a0)
 80c:	6390                	ld	a2,0(a5)
 80e:	02059813          	sll	a6,a1,0x20
 812:	01c85713          	srl	a4,a6,0x1c
 816:	9736                	add	a4,a4,a3
 818:	fae60de3          	beq	a2,a4,7d2 <free+0x14>
 81c:	fec53823          	sd	a2,-16(a0)
 820:	4790                	lw	a2,8(a5)
 822:	02061593          	sll	a1,a2,0x20
 826:	01c5d713          	srl	a4,a1,0x1c
 82a:	973e                	add	a4,a4,a5
 82c:	fae68ae3          	beq	a3,a4,7e0 <free+0x22>
 830:	e394                	sd	a3,0(a5)
 832:	00001717          	auipc	a4,0x1
 836:	bef73723          	sd	a5,-1042(a4) # 1420 <freep>
 83a:	6422                	ld	s0,8(sp)
 83c:	0141                	add	sp,sp,16
 83e:	8082                	ret

0000000000000840 <malloc>:
 840:	7139                	add	sp,sp,-64
 842:	fc06                	sd	ra,56(sp)
 844:	f822                	sd	s0,48(sp)
 846:	f426                	sd	s1,40(sp)
 848:	ec4e                	sd	s3,24(sp)
 84a:	0080                	add	s0,sp,64
 84c:	02051493          	sll	s1,a0,0x20
 850:	9081                	srl	s1,s1,0x20
 852:	04bd                	add	s1,s1,15
 854:	8091                	srl	s1,s1,0x4
 856:	0014899b          	addw	s3,s1,1
 85a:	0485                	add	s1,s1,1
 85c:	00001517          	auipc	a0,0x1
 860:	bc453503          	ld	a0,-1084(a0) # 1420 <freep>
 864:	c915                	beqz	a0,898 <malloc+0x58>
 866:	611c                	ld	a5,0(a0)
 868:	4798                	lw	a4,8(a5)
 86a:	08977e63          	bgeu	a4,s1,906 <malloc+0xc6>
 86e:	f04a                	sd	s2,32(sp)
 870:	e852                	sd	s4,16(sp)
 872:	e456                	sd	s5,8(sp)
 874:	e05a                	sd	s6,0(sp)
 876:	8a4e                	mv	s4,s3
 878:	0009871b          	sext.w	a4,s3
 87c:	6685                	lui	a3,0x1
 87e:	00d77363          	bgeu	a4,a3,884 <malloc+0x44>
 882:	6a05                	lui	s4,0x1
 884:	000a0b1b          	sext.w	s6,s4
 888:	004a1a1b          	sllw	s4,s4,0x4
 88c:	00001917          	auipc	s2,0x1
 890:	b9490913          	add	s2,s2,-1132 # 1420 <freep>
 894:	5afd                	li	s5,-1
 896:	a091                	j	8da <malloc+0x9a>
 898:	f04a                	sd	s2,32(sp)
 89a:	e852                	sd	s4,16(sp)
 89c:	e456                	sd	s5,8(sp)
 89e:	e05a                	sd	s6,0(sp)
 8a0:	00001797          	auipc	a5,0x1
 8a4:	b9078793          	add	a5,a5,-1136 # 1430 <base>
 8a8:	00001717          	auipc	a4,0x1
 8ac:	b6f73c23          	sd	a5,-1160(a4) # 1420 <freep>
 8b0:	e39c                	sd	a5,0(a5)
 8b2:	0007a423          	sw	zero,8(a5)
 8b6:	b7c1                	j	876 <malloc+0x36>
 8b8:	6398                	ld	a4,0(a5)
 8ba:	e118                	sd	a4,0(a0)
 8bc:	a08d                	j	91e <malloc+0xde>
 8be:	01652423          	sw	s6,8(a0)
 8c2:	0541                	add	a0,a0,16
 8c4:	00000097          	auipc	ra,0x0
 8c8:	efa080e7          	jalr	-262(ra) # 7be <free>
 8cc:	00093503          	ld	a0,0(s2)
 8d0:	c13d                	beqz	a0,936 <malloc+0xf6>
 8d2:	611c                	ld	a5,0(a0)
 8d4:	4798                	lw	a4,8(a5)
 8d6:	02977463          	bgeu	a4,s1,8fe <malloc+0xbe>
 8da:	00093703          	ld	a4,0(s2)
 8de:	853e                	mv	a0,a5
 8e0:	fef719e3          	bne	a4,a5,8d2 <malloc+0x92>
 8e4:	8552                	mv	a0,s4
 8e6:	00000097          	auipc	ra,0x0
 8ea:	ba2080e7          	jalr	-1118(ra) # 488 <sbrk>
 8ee:	fd5518e3          	bne	a0,s5,8be <malloc+0x7e>
 8f2:	4501                	li	a0,0
 8f4:	7902                	ld	s2,32(sp)
 8f6:	6a42                	ld	s4,16(sp)
 8f8:	6aa2                	ld	s5,8(sp)
 8fa:	6b02                	ld	s6,0(sp)
 8fc:	a03d                	j	92a <malloc+0xea>
 8fe:	7902                	ld	s2,32(sp)
 900:	6a42                	ld	s4,16(sp)
 902:	6aa2                	ld	s5,8(sp)
 904:	6b02                	ld	s6,0(sp)
 906:	fae489e3          	beq	s1,a4,8b8 <malloc+0x78>
 90a:	4137073b          	subw	a4,a4,s3
 90e:	c798                	sw	a4,8(a5)
 910:	02071693          	sll	a3,a4,0x20
 914:	01c6d713          	srl	a4,a3,0x1c
 918:	97ba                	add	a5,a5,a4
 91a:	0137a423          	sw	s3,8(a5)
 91e:	00001717          	auipc	a4,0x1
 922:	b0a73123          	sd	a0,-1278(a4) # 1420 <freep>
 926:	01078513          	add	a0,a5,16
 92a:	70e2                	ld	ra,56(sp)
 92c:	7442                	ld	s0,48(sp)
 92e:	74a2                	ld	s1,40(sp)
 930:	69e2                	ld	s3,24(sp)
 932:	6121                	add	sp,sp,64
 934:	8082                	ret
 936:	7902                	ld	s2,32(sp)
 938:	6a42                	ld	s4,16(sp)
 93a:	6aa2                	ld	s5,8(sp)
 93c:	6b02                	ld	s6,0(sp)
 93e:	b7f5                	j	92a <malloc+0xea>
