
user/_wc:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <wc>:
   0:	7119                	add	sp,sp,-128
   2:	fc86                	sd	ra,120(sp)
   4:	f8a2                	sd	s0,112(sp)
   6:	f4a6                	sd	s1,104(sp)
   8:	f0ca                	sd	s2,96(sp)
   a:	ecce                	sd	s3,88(sp)
   c:	e8d2                	sd	s4,80(sp)
   e:	e4d6                	sd	s5,72(sp)
  10:	e0da                	sd	s6,64(sp)
  12:	fc5e                	sd	s7,56(sp)
  14:	f862                	sd	s8,48(sp)
  16:	f466                	sd	s9,40(sp)
  18:	f06a                	sd	s10,32(sp)
  1a:	ec6e                	sd	s11,24(sp)
  1c:	0100                	add	s0,sp,128
  1e:	f8a43423          	sd	a0,-120(s0)
  22:	f8b43023          	sd	a1,-128(s0)
  26:	4901                	li	s2,0
  28:	4d01                	li	s10,0
  2a:	4c81                	li	s9,0
  2c:	4c01                	li	s8,0
  2e:	00001d97          	auipc	s11,0x1
  32:	422d8d93          	add	s11,s11,1058 # 1450 <buf>
  36:	4aa9                	li	s5,10
  38:	00001a17          	auipc	s4,0x1
  3c:	928a0a13          	add	s4,s4,-1752 # 960 <malloc+0x10a>
  40:	4b81                	li	s7,0
  42:	a805                	j	72 <wc+0x72>
  44:	8552                	mv	a0,s4
  46:	00000097          	auipc	ra,0x0
  4a:	1f8080e7          	jalr	504(ra) # 23e <strchr>
  4e:	c919                	beqz	a0,64 <wc+0x64>
  50:	895e                	mv	s2,s7
  52:	0485                	add	s1,s1,1
  54:	01348d63          	beq	s1,s3,6e <wc+0x6e>
  58:	0004c583          	lbu	a1,0(s1)
  5c:	ff5594e3          	bne	a1,s5,44 <wc+0x44>
  60:	2c05                	addw	s8,s8,1
  62:	b7cd                	j	44 <wc+0x44>
  64:	fe0917e3          	bnez	s2,52 <wc+0x52>
  68:	2c85                	addw	s9,s9,1
  6a:	4905                	li	s2,1
  6c:	b7dd                	j	52 <wc+0x52>
  6e:	01ab0d3b          	addw	s10,s6,s10
  72:	20000613          	li	a2,512
  76:	85ee                	mv	a1,s11
  78:	f8843503          	ld	a0,-120(s0)
  7c:	00000097          	auipc	ra,0x0
  80:	3b2080e7          	jalr	946(ra) # 42e <read>
  84:	8b2a                	mv	s6,a0
  86:	00a05963          	blez	a0,98 <wc+0x98>
  8a:	00001497          	auipc	s1,0x1
  8e:	3c648493          	add	s1,s1,966 # 1450 <buf>
  92:	009509b3          	add	s3,a0,s1
  96:	b7c9                	j	58 <wc+0x58>
  98:	02054e63          	bltz	a0,d4 <wc+0xd4>
  9c:	f8043703          	ld	a4,-128(s0)
  a0:	86ea                	mv	a3,s10
  a2:	8666                	mv	a2,s9
  a4:	85e2                	mv	a1,s8
  a6:	00001517          	auipc	a0,0x1
  aa:	8d250513          	add	a0,a0,-1838 # 978 <malloc+0x122>
  ae:	00000097          	auipc	ra,0x0
  b2:	6f0080e7          	jalr	1776(ra) # 79e <printf>
  b6:	70e6                	ld	ra,120(sp)
  b8:	7446                	ld	s0,112(sp)
  ba:	74a6                	ld	s1,104(sp)
  bc:	7906                	ld	s2,96(sp)
  be:	69e6                	ld	s3,88(sp)
  c0:	6a46                	ld	s4,80(sp)
  c2:	6aa6                	ld	s5,72(sp)
  c4:	6b06                	ld	s6,64(sp)
  c6:	7be2                	ld	s7,56(sp)
  c8:	7c42                	ld	s8,48(sp)
  ca:	7ca2                	ld	s9,40(sp)
  cc:	7d02                	ld	s10,32(sp)
  ce:	6de2                	ld	s11,24(sp)
  d0:	6109                	add	sp,sp,128
  d2:	8082                	ret
  d4:	00001517          	auipc	a0,0x1
  d8:	89450513          	add	a0,a0,-1900 # 968 <malloc+0x112>
  dc:	00000097          	auipc	ra,0x0
  e0:	6c2080e7          	jalr	1730(ra) # 79e <printf>
  e4:	4505                	li	a0,1
  e6:	00000097          	auipc	ra,0x0
  ea:	330080e7          	jalr	816(ra) # 416 <exit>

00000000000000ee <main>:
  ee:	7179                	add	sp,sp,-48
  f0:	f406                	sd	ra,40(sp)
  f2:	f022                	sd	s0,32(sp)
  f4:	1800                	add	s0,sp,48
  f6:	4785                	li	a5,1
  f8:	04a7dc63          	bge	a5,a0,150 <main+0x62>
  fc:	ec26                	sd	s1,24(sp)
  fe:	e84a                	sd	s2,16(sp)
 100:	e44e                	sd	s3,8(sp)
 102:	00858913          	add	s2,a1,8
 106:	ffe5099b          	addw	s3,a0,-2
 10a:	02099793          	sll	a5,s3,0x20
 10e:	01d7d993          	srl	s3,a5,0x1d
 112:	05c1                	add	a1,a1,16
 114:	99ae                	add	s3,s3,a1
 116:	4581                	li	a1,0
 118:	00093503          	ld	a0,0(s2)
 11c:	00000097          	auipc	ra,0x0
 120:	33a080e7          	jalr	826(ra) # 456 <open>
 124:	84aa                	mv	s1,a0
 126:	04054663          	bltz	a0,172 <main+0x84>
 12a:	00093583          	ld	a1,0(s2)
 12e:	00000097          	auipc	ra,0x0
 132:	ed2080e7          	jalr	-302(ra) # 0 <wc>
 136:	8526                	mv	a0,s1
 138:	00000097          	auipc	ra,0x0
 13c:	306080e7          	jalr	774(ra) # 43e <close>
 140:	0921                	add	s2,s2,8
 142:	fd391ae3          	bne	s2,s3,116 <main+0x28>
 146:	4501                	li	a0,0
 148:	00000097          	auipc	ra,0x0
 14c:	2ce080e7          	jalr	718(ra) # 416 <exit>
 150:	ec26                	sd	s1,24(sp)
 152:	e84a                	sd	s2,16(sp)
 154:	e44e                	sd	s3,8(sp)
 156:	00001597          	auipc	a1,0x1
 15a:	83258593          	add	a1,a1,-1998 # 988 <malloc+0x132>
 15e:	4501                	li	a0,0
 160:	00000097          	auipc	ra,0x0
 164:	ea0080e7          	jalr	-352(ra) # 0 <wc>
 168:	4501                	li	a0,0
 16a:	00000097          	auipc	ra,0x0
 16e:	2ac080e7          	jalr	684(ra) # 416 <exit>
 172:	00093583          	ld	a1,0(s2)
 176:	00001517          	auipc	a0,0x1
 17a:	81a50513          	add	a0,a0,-2022 # 990 <malloc+0x13a>
 17e:	00000097          	auipc	ra,0x0
 182:	620080e7          	jalr	1568(ra) # 79e <printf>
 186:	4505                	li	a0,1
 188:	00000097          	auipc	ra,0x0
 18c:	28e080e7          	jalr	654(ra) # 416 <exit>

0000000000000190 <_main>:
 190:	1141                	add	sp,sp,-16
 192:	e406                	sd	ra,8(sp)
 194:	e022                	sd	s0,0(sp)
 196:	0800                	add	s0,sp,16
 198:	00000097          	auipc	ra,0x0
 19c:	f56080e7          	jalr	-170(ra) # ee <main>
 1a0:	4501                	li	a0,0
 1a2:	00000097          	auipc	ra,0x0
 1a6:	274080e7          	jalr	628(ra) # 416 <exit>

00000000000001aa <strcpy>:
 1aa:	1141                	add	sp,sp,-16
 1ac:	e422                	sd	s0,8(sp)
 1ae:	0800                	add	s0,sp,16
 1b0:	87aa                	mv	a5,a0
 1b2:	0585                	add	a1,a1,1
 1b4:	0785                	add	a5,a5,1
 1b6:	fff5c703          	lbu	a4,-1(a1)
 1ba:	fee78fa3          	sb	a4,-1(a5)
 1be:	fb75                	bnez	a4,1b2 <strcpy+0x8>
 1c0:	6422                	ld	s0,8(sp)
 1c2:	0141                	add	sp,sp,16
 1c4:	8082                	ret

00000000000001c6 <strcmp>:
 1c6:	1141                	add	sp,sp,-16
 1c8:	e422                	sd	s0,8(sp)
 1ca:	0800                	add	s0,sp,16
 1cc:	00054783          	lbu	a5,0(a0)
 1d0:	cb91                	beqz	a5,1e4 <strcmp+0x1e>
 1d2:	0005c703          	lbu	a4,0(a1)
 1d6:	00f71763          	bne	a4,a5,1e4 <strcmp+0x1e>
 1da:	0505                	add	a0,a0,1
 1dc:	0585                	add	a1,a1,1
 1de:	00054783          	lbu	a5,0(a0)
 1e2:	fbe5                	bnez	a5,1d2 <strcmp+0xc>
 1e4:	0005c503          	lbu	a0,0(a1)
 1e8:	40a7853b          	subw	a0,a5,a0
 1ec:	6422                	ld	s0,8(sp)
 1ee:	0141                	add	sp,sp,16
 1f0:	8082                	ret

00000000000001f2 <strlen>:
 1f2:	1141                	add	sp,sp,-16
 1f4:	e422                	sd	s0,8(sp)
 1f6:	0800                	add	s0,sp,16
 1f8:	00054783          	lbu	a5,0(a0)
 1fc:	cf91                	beqz	a5,218 <strlen+0x26>
 1fe:	0505                	add	a0,a0,1
 200:	87aa                	mv	a5,a0
 202:	86be                	mv	a3,a5
 204:	0785                	add	a5,a5,1
 206:	fff7c703          	lbu	a4,-1(a5)
 20a:	ff65                	bnez	a4,202 <strlen+0x10>
 20c:	40a6853b          	subw	a0,a3,a0
 210:	2505                	addw	a0,a0,1
 212:	6422                	ld	s0,8(sp)
 214:	0141                	add	sp,sp,16
 216:	8082                	ret
 218:	4501                	li	a0,0
 21a:	bfe5                	j	212 <strlen+0x20>

000000000000021c <memset>:
 21c:	1141                	add	sp,sp,-16
 21e:	e422                	sd	s0,8(sp)
 220:	0800                	add	s0,sp,16
 222:	ca19                	beqz	a2,238 <memset+0x1c>
 224:	87aa                	mv	a5,a0
 226:	1602                	sll	a2,a2,0x20
 228:	9201                	srl	a2,a2,0x20
 22a:	00a60733          	add	a4,a2,a0
 22e:	00b78023          	sb	a1,0(a5)
 232:	0785                	add	a5,a5,1
 234:	fee79de3          	bne	a5,a4,22e <memset+0x12>
 238:	6422                	ld	s0,8(sp)
 23a:	0141                	add	sp,sp,16
 23c:	8082                	ret

000000000000023e <strchr>:
 23e:	1141                	add	sp,sp,-16
 240:	e422                	sd	s0,8(sp)
 242:	0800                	add	s0,sp,16
 244:	00054783          	lbu	a5,0(a0)
 248:	cb99                	beqz	a5,25e <strchr+0x20>
 24a:	00f58763          	beq	a1,a5,258 <strchr+0x1a>
 24e:	0505                	add	a0,a0,1
 250:	00054783          	lbu	a5,0(a0)
 254:	fbfd                	bnez	a5,24a <strchr+0xc>
 256:	4501                	li	a0,0
 258:	6422                	ld	s0,8(sp)
 25a:	0141                	add	sp,sp,16
 25c:	8082                	ret
 25e:	4501                	li	a0,0
 260:	bfe5                	j	258 <strchr+0x1a>

0000000000000262 <gets>:
 262:	711d                	add	sp,sp,-96
 264:	ec86                	sd	ra,88(sp)
 266:	e8a2                	sd	s0,80(sp)
 268:	e4a6                	sd	s1,72(sp)
 26a:	e0ca                	sd	s2,64(sp)
 26c:	fc4e                	sd	s3,56(sp)
 26e:	f852                	sd	s4,48(sp)
 270:	f456                	sd	s5,40(sp)
 272:	f05a                	sd	s6,32(sp)
 274:	ec5e                	sd	s7,24(sp)
 276:	1080                	add	s0,sp,96
 278:	8baa                	mv	s7,a0
 27a:	8a2e                	mv	s4,a1
 27c:	892a                	mv	s2,a0
 27e:	4481                	li	s1,0
 280:	4aa9                	li	s5,10
 282:	4b35                	li	s6,13
 284:	89a6                	mv	s3,s1
 286:	2485                	addw	s1,s1,1
 288:	0344d863          	bge	s1,s4,2b8 <gets+0x56>
 28c:	4605                	li	a2,1
 28e:	faf40593          	add	a1,s0,-81
 292:	4501                	li	a0,0
 294:	00000097          	auipc	ra,0x0
 298:	19a080e7          	jalr	410(ra) # 42e <read>
 29c:	00a05e63          	blez	a0,2b8 <gets+0x56>
 2a0:	faf44783          	lbu	a5,-81(s0)
 2a4:	00f90023          	sb	a5,0(s2)
 2a8:	01578763          	beq	a5,s5,2b6 <gets+0x54>
 2ac:	0905                	add	s2,s2,1
 2ae:	fd679be3          	bne	a5,s6,284 <gets+0x22>
 2b2:	89a6                	mv	s3,s1
 2b4:	a011                	j	2b8 <gets+0x56>
 2b6:	89a6                	mv	s3,s1
 2b8:	99de                	add	s3,s3,s7
 2ba:	00098023          	sb	zero,0(s3)
 2be:	855e                	mv	a0,s7
 2c0:	60e6                	ld	ra,88(sp)
 2c2:	6446                	ld	s0,80(sp)
 2c4:	64a6                	ld	s1,72(sp)
 2c6:	6906                	ld	s2,64(sp)
 2c8:	79e2                	ld	s3,56(sp)
 2ca:	7a42                	ld	s4,48(sp)
 2cc:	7aa2                	ld	s5,40(sp)
 2ce:	7b02                	ld	s6,32(sp)
 2d0:	6be2                	ld	s7,24(sp)
 2d2:	6125                	add	sp,sp,96
 2d4:	8082                	ret

00000000000002d6 <stat>:
 2d6:	1101                	add	sp,sp,-32
 2d8:	ec06                	sd	ra,24(sp)
 2da:	e822                	sd	s0,16(sp)
 2dc:	e04a                	sd	s2,0(sp)
 2de:	1000                	add	s0,sp,32
 2e0:	892e                	mv	s2,a1
 2e2:	4581                	li	a1,0
 2e4:	00000097          	auipc	ra,0x0
 2e8:	172080e7          	jalr	370(ra) # 456 <open>
 2ec:	02054663          	bltz	a0,318 <stat+0x42>
 2f0:	e426                	sd	s1,8(sp)
 2f2:	84aa                	mv	s1,a0
 2f4:	85ca                	mv	a1,s2
 2f6:	00000097          	auipc	ra,0x0
 2fa:	178080e7          	jalr	376(ra) # 46e <fstat>
 2fe:	892a                	mv	s2,a0
 300:	8526                	mv	a0,s1
 302:	00000097          	auipc	ra,0x0
 306:	13c080e7          	jalr	316(ra) # 43e <close>
 30a:	64a2                	ld	s1,8(sp)
 30c:	854a                	mv	a0,s2
 30e:	60e2                	ld	ra,24(sp)
 310:	6442                	ld	s0,16(sp)
 312:	6902                	ld	s2,0(sp)
 314:	6105                	add	sp,sp,32
 316:	8082                	ret
 318:	597d                	li	s2,-1
 31a:	bfcd                	j	30c <stat+0x36>

000000000000031c <atoi>:
 31c:	1141                	add	sp,sp,-16
 31e:	e422                	sd	s0,8(sp)
 320:	0800                	add	s0,sp,16
 322:	00054683          	lbu	a3,0(a0)
 326:	fd06879b          	addw	a5,a3,-48
 32a:	0ff7f793          	zext.b	a5,a5
 32e:	4625                	li	a2,9
 330:	02f66863          	bltu	a2,a5,360 <atoi+0x44>
 334:	872a                	mv	a4,a0
 336:	4501                	li	a0,0
 338:	0705                	add	a4,a4,1
 33a:	0025179b          	sllw	a5,a0,0x2
 33e:	9fa9                	addw	a5,a5,a0
 340:	0017979b          	sllw	a5,a5,0x1
 344:	9fb5                	addw	a5,a5,a3
 346:	fd07851b          	addw	a0,a5,-48
 34a:	00074683          	lbu	a3,0(a4)
 34e:	fd06879b          	addw	a5,a3,-48
 352:	0ff7f793          	zext.b	a5,a5
 356:	fef671e3          	bgeu	a2,a5,338 <atoi+0x1c>
 35a:	6422                	ld	s0,8(sp)
 35c:	0141                	add	sp,sp,16
 35e:	8082                	ret
 360:	4501                	li	a0,0
 362:	bfe5                	j	35a <atoi+0x3e>

0000000000000364 <memmove>:
 364:	1141                	add	sp,sp,-16
 366:	e422                	sd	s0,8(sp)
 368:	0800                	add	s0,sp,16
 36a:	02b57463          	bgeu	a0,a1,392 <memmove+0x2e>
 36e:	00c05f63          	blez	a2,38c <memmove+0x28>
 372:	1602                	sll	a2,a2,0x20
 374:	9201                	srl	a2,a2,0x20
 376:	00c507b3          	add	a5,a0,a2
 37a:	872a                	mv	a4,a0
 37c:	0585                	add	a1,a1,1
 37e:	0705                	add	a4,a4,1
 380:	fff5c683          	lbu	a3,-1(a1)
 384:	fed70fa3          	sb	a3,-1(a4)
 388:	fef71ae3          	bne	a4,a5,37c <memmove+0x18>
 38c:	6422                	ld	s0,8(sp)
 38e:	0141                	add	sp,sp,16
 390:	8082                	ret
 392:	00c50733          	add	a4,a0,a2
 396:	95b2                	add	a1,a1,a2
 398:	fec05ae3          	blez	a2,38c <memmove+0x28>
 39c:	fff6079b          	addw	a5,a2,-1
 3a0:	1782                	sll	a5,a5,0x20
 3a2:	9381                	srl	a5,a5,0x20
 3a4:	fff7c793          	not	a5,a5
 3a8:	97ba                	add	a5,a5,a4
 3aa:	15fd                	add	a1,a1,-1
 3ac:	177d                	add	a4,a4,-1
 3ae:	0005c683          	lbu	a3,0(a1)
 3b2:	00d70023          	sb	a3,0(a4)
 3b6:	fee79ae3          	bne	a5,a4,3aa <memmove+0x46>
 3ba:	bfc9                	j	38c <memmove+0x28>

00000000000003bc <memcmp>:
 3bc:	1141                	add	sp,sp,-16
 3be:	e422                	sd	s0,8(sp)
 3c0:	0800                	add	s0,sp,16
 3c2:	ca05                	beqz	a2,3f2 <memcmp+0x36>
 3c4:	fff6069b          	addw	a3,a2,-1
 3c8:	1682                	sll	a3,a3,0x20
 3ca:	9281                	srl	a3,a3,0x20
 3cc:	0685                	add	a3,a3,1
 3ce:	96aa                	add	a3,a3,a0
 3d0:	00054783          	lbu	a5,0(a0)
 3d4:	0005c703          	lbu	a4,0(a1)
 3d8:	00e79863          	bne	a5,a4,3e8 <memcmp+0x2c>
 3dc:	0505                	add	a0,a0,1
 3de:	0585                	add	a1,a1,1
 3e0:	fed518e3          	bne	a0,a3,3d0 <memcmp+0x14>
 3e4:	4501                	li	a0,0
 3e6:	a019                	j	3ec <memcmp+0x30>
 3e8:	40e7853b          	subw	a0,a5,a4
 3ec:	6422                	ld	s0,8(sp)
 3ee:	0141                	add	sp,sp,16
 3f0:	8082                	ret
 3f2:	4501                	li	a0,0
 3f4:	bfe5                	j	3ec <memcmp+0x30>

00000000000003f6 <memcpy>:
 3f6:	1141                	add	sp,sp,-16
 3f8:	e406                	sd	ra,8(sp)
 3fa:	e022                	sd	s0,0(sp)
 3fc:	0800                	add	s0,sp,16
 3fe:	00000097          	auipc	ra,0x0
 402:	f66080e7          	jalr	-154(ra) # 364 <memmove>
 406:	60a2                	ld	ra,8(sp)
 408:	6402                	ld	s0,0(sp)
 40a:	0141                	add	sp,sp,16
 40c:	8082                	ret

000000000000040e <fork>:
 40e:	4885                	li	a7,1
 410:	00000073          	ecall
 414:	8082                	ret

0000000000000416 <exit>:
 416:	4889                	li	a7,2
 418:	00000073          	ecall
 41c:	8082                	ret

000000000000041e <wait>:
 41e:	488d                	li	a7,3
 420:	00000073          	ecall
 424:	8082                	ret

0000000000000426 <pipe>:
 426:	4891                	li	a7,4
 428:	00000073          	ecall
 42c:	8082                	ret

000000000000042e <read>:
 42e:	4895                	li	a7,5
 430:	00000073          	ecall
 434:	8082                	ret

0000000000000436 <write>:
 436:	48c1                	li	a7,16
 438:	00000073          	ecall
 43c:	8082                	ret

000000000000043e <close>:
 43e:	48d5                	li	a7,21
 440:	00000073          	ecall
 444:	8082                	ret

0000000000000446 <kill>:
 446:	4899                	li	a7,6
 448:	00000073          	ecall
 44c:	8082                	ret

000000000000044e <exec>:
 44e:	489d                	li	a7,7
 450:	00000073          	ecall
 454:	8082                	ret

0000000000000456 <open>:
 456:	48bd                	li	a7,15
 458:	00000073          	ecall
 45c:	8082                	ret

000000000000045e <mknod>:
 45e:	48c5                	li	a7,17
 460:	00000073          	ecall
 464:	8082                	ret

0000000000000466 <unlink>:
 466:	48c9                	li	a7,18
 468:	00000073          	ecall
 46c:	8082                	ret

000000000000046e <fstat>:
 46e:	48a1                	li	a7,8
 470:	00000073          	ecall
 474:	8082                	ret

0000000000000476 <link>:
 476:	48cd                	li	a7,19
 478:	00000073          	ecall
 47c:	8082                	ret

000000000000047e <mkdir>:
 47e:	48d1                	li	a7,20
 480:	00000073          	ecall
 484:	8082                	ret

0000000000000486 <chdir>:
 486:	48a5                	li	a7,9
 488:	00000073          	ecall
 48c:	8082                	ret

000000000000048e <dup>:
 48e:	48a9                	li	a7,10
 490:	00000073          	ecall
 494:	8082                	ret

0000000000000496 <getpid>:
 496:	48ad                	li	a7,11
 498:	00000073          	ecall
 49c:	8082                	ret

000000000000049e <sbrk>:
 49e:	48b1                	li	a7,12
 4a0:	00000073          	ecall
 4a4:	8082                	ret

00000000000004a6 <sleep>:
 4a6:	48b5                	li	a7,13
 4a8:	00000073          	ecall
 4ac:	8082                	ret

00000000000004ae <uptime>:
 4ae:	48b9                	li	a7,14
 4b0:	00000073          	ecall
 4b4:	8082                	ret

00000000000004b6 <waitx>:
 4b6:	48d9                	li	a7,22
 4b8:	00000073          	ecall
 4bc:	8082                	ret

00000000000004be <getSysCount>:
 4be:	48dd                	li	a7,23
 4c0:	00000073          	ecall
 4c4:	8082                	ret

00000000000004c6 <sigalarm>:
 4c6:	48e1                	li	a7,24
 4c8:	00000073          	ecall
 4cc:	8082                	ret

00000000000004ce <sigreturn>:
 4ce:	48e5                	li	a7,25
 4d0:	00000073          	ecall
 4d4:	8082                	ret

00000000000004d6 <putc>:
 4d6:	1101                	add	sp,sp,-32
 4d8:	ec06                	sd	ra,24(sp)
 4da:	e822                	sd	s0,16(sp)
 4dc:	1000                	add	s0,sp,32
 4de:	feb407a3          	sb	a1,-17(s0)
 4e2:	4605                	li	a2,1
 4e4:	fef40593          	add	a1,s0,-17
 4e8:	00000097          	auipc	ra,0x0
 4ec:	f4e080e7          	jalr	-178(ra) # 436 <write>
 4f0:	60e2                	ld	ra,24(sp)
 4f2:	6442                	ld	s0,16(sp)
 4f4:	6105                	add	sp,sp,32
 4f6:	8082                	ret

00000000000004f8 <printint>:
 4f8:	7139                	add	sp,sp,-64
 4fa:	fc06                	sd	ra,56(sp)
 4fc:	f822                	sd	s0,48(sp)
 4fe:	f426                	sd	s1,40(sp)
 500:	0080                	add	s0,sp,64
 502:	84aa                	mv	s1,a0
 504:	c299                	beqz	a3,50a <printint+0x12>
 506:	0805cb63          	bltz	a1,59c <printint+0xa4>
 50a:	2581                	sext.w	a1,a1
 50c:	4881                	li	a7,0
 50e:	fc040693          	add	a3,s0,-64
 512:	4701                	li	a4,0
 514:	2601                	sext.w	a2,a2
 516:	00000517          	auipc	a0,0x0
 51a:	4f250513          	add	a0,a0,1266 # a08 <digits>
 51e:	883a                	mv	a6,a4
 520:	2705                	addw	a4,a4,1
 522:	02c5f7bb          	remuw	a5,a1,a2
 526:	1782                	sll	a5,a5,0x20
 528:	9381                	srl	a5,a5,0x20
 52a:	97aa                	add	a5,a5,a0
 52c:	0007c783          	lbu	a5,0(a5)
 530:	00f68023          	sb	a5,0(a3)
 534:	0005879b          	sext.w	a5,a1
 538:	02c5d5bb          	divuw	a1,a1,a2
 53c:	0685                	add	a3,a3,1
 53e:	fec7f0e3          	bgeu	a5,a2,51e <printint+0x26>
 542:	00088c63          	beqz	a7,55a <printint+0x62>
 546:	fd070793          	add	a5,a4,-48
 54a:	00878733          	add	a4,a5,s0
 54e:	02d00793          	li	a5,45
 552:	fef70823          	sb	a5,-16(a4)
 556:	0028071b          	addw	a4,a6,2
 55a:	02e05c63          	blez	a4,592 <printint+0x9a>
 55e:	f04a                	sd	s2,32(sp)
 560:	ec4e                	sd	s3,24(sp)
 562:	fc040793          	add	a5,s0,-64
 566:	00e78933          	add	s2,a5,a4
 56a:	fff78993          	add	s3,a5,-1
 56e:	99ba                	add	s3,s3,a4
 570:	377d                	addw	a4,a4,-1
 572:	1702                	sll	a4,a4,0x20
 574:	9301                	srl	a4,a4,0x20
 576:	40e989b3          	sub	s3,s3,a4
 57a:	fff94583          	lbu	a1,-1(s2)
 57e:	8526                	mv	a0,s1
 580:	00000097          	auipc	ra,0x0
 584:	f56080e7          	jalr	-170(ra) # 4d6 <putc>
 588:	197d                	add	s2,s2,-1
 58a:	ff3918e3          	bne	s2,s3,57a <printint+0x82>
 58e:	7902                	ld	s2,32(sp)
 590:	69e2                	ld	s3,24(sp)
 592:	70e2                	ld	ra,56(sp)
 594:	7442                	ld	s0,48(sp)
 596:	74a2                	ld	s1,40(sp)
 598:	6121                	add	sp,sp,64
 59a:	8082                	ret
 59c:	40b005bb          	negw	a1,a1
 5a0:	4885                	li	a7,1
 5a2:	b7b5                	j	50e <printint+0x16>

00000000000005a4 <vprintf>:
 5a4:	715d                	add	sp,sp,-80
 5a6:	e486                	sd	ra,72(sp)
 5a8:	e0a2                	sd	s0,64(sp)
 5aa:	f84a                	sd	s2,48(sp)
 5ac:	0880                	add	s0,sp,80
 5ae:	0005c903          	lbu	s2,0(a1)
 5b2:	1a090a63          	beqz	s2,766 <vprintf+0x1c2>
 5b6:	fc26                	sd	s1,56(sp)
 5b8:	f44e                	sd	s3,40(sp)
 5ba:	f052                	sd	s4,32(sp)
 5bc:	ec56                	sd	s5,24(sp)
 5be:	e85a                	sd	s6,16(sp)
 5c0:	e45e                	sd	s7,8(sp)
 5c2:	8aaa                	mv	s5,a0
 5c4:	8bb2                	mv	s7,a2
 5c6:	00158493          	add	s1,a1,1
 5ca:	4981                	li	s3,0
 5cc:	02500a13          	li	s4,37
 5d0:	4b55                	li	s6,21
 5d2:	a839                	j	5f0 <vprintf+0x4c>
 5d4:	85ca                	mv	a1,s2
 5d6:	8556                	mv	a0,s5
 5d8:	00000097          	auipc	ra,0x0
 5dc:	efe080e7          	jalr	-258(ra) # 4d6 <putc>
 5e0:	a019                	j	5e6 <vprintf+0x42>
 5e2:	01498d63          	beq	s3,s4,5fc <vprintf+0x58>
 5e6:	0485                	add	s1,s1,1
 5e8:	fff4c903          	lbu	s2,-1(s1)
 5ec:	16090763          	beqz	s2,75a <vprintf+0x1b6>
 5f0:	fe0999e3          	bnez	s3,5e2 <vprintf+0x3e>
 5f4:	ff4910e3          	bne	s2,s4,5d4 <vprintf+0x30>
 5f8:	89d2                	mv	s3,s4
 5fa:	b7f5                	j	5e6 <vprintf+0x42>
 5fc:	13490463          	beq	s2,s4,724 <vprintf+0x180>
 600:	f9d9079b          	addw	a5,s2,-99
 604:	0ff7f793          	zext.b	a5,a5
 608:	12fb6763          	bltu	s6,a5,736 <vprintf+0x192>
 60c:	f9d9079b          	addw	a5,s2,-99
 610:	0ff7f713          	zext.b	a4,a5
 614:	12eb6163          	bltu	s6,a4,736 <vprintf+0x192>
 618:	00271793          	sll	a5,a4,0x2
 61c:	00000717          	auipc	a4,0x0
 620:	39470713          	add	a4,a4,916 # 9b0 <malloc+0x15a>
 624:	97ba                	add	a5,a5,a4
 626:	439c                	lw	a5,0(a5)
 628:	97ba                	add	a5,a5,a4
 62a:	8782                	jr	a5
 62c:	008b8913          	add	s2,s7,8
 630:	4685                	li	a3,1
 632:	4629                	li	a2,10
 634:	000ba583          	lw	a1,0(s7)
 638:	8556                	mv	a0,s5
 63a:	00000097          	auipc	ra,0x0
 63e:	ebe080e7          	jalr	-322(ra) # 4f8 <printint>
 642:	8bca                	mv	s7,s2
 644:	4981                	li	s3,0
 646:	b745                	j	5e6 <vprintf+0x42>
 648:	008b8913          	add	s2,s7,8
 64c:	4681                	li	a3,0
 64e:	4629                	li	a2,10
 650:	000ba583          	lw	a1,0(s7)
 654:	8556                	mv	a0,s5
 656:	00000097          	auipc	ra,0x0
 65a:	ea2080e7          	jalr	-350(ra) # 4f8 <printint>
 65e:	8bca                	mv	s7,s2
 660:	4981                	li	s3,0
 662:	b751                	j	5e6 <vprintf+0x42>
 664:	008b8913          	add	s2,s7,8
 668:	4681                	li	a3,0
 66a:	4641                	li	a2,16
 66c:	000ba583          	lw	a1,0(s7)
 670:	8556                	mv	a0,s5
 672:	00000097          	auipc	ra,0x0
 676:	e86080e7          	jalr	-378(ra) # 4f8 <printint>
 67a:	8bca                	mv	s7,s2
 67c:	4981                	li	s3,0
 67e:	b7a5                	j	5e6 <vprintf+0x42>
 680:	e062                	sd	s8,0(sp)
 682:	008b8c13          	add	s8,s7,8
 686:	000bb983          	ld	s3,0(s7)
 68a:	03000593          	li	a1,48
 68e:	8556                	mv	a0,s5
 690:	00000097          	auipc	ra,0x0
 694:	e46080e7          	jalr	-442(ra) # 4d6 <putc>
 698:	07800593          	li	a1,120
 69c:	8556                	mv	a0,s5
 69e:	00000097          	auipc	ra,0x0
 6a2:	e38080e7          	jalr	-456(ra) # 4d6 <putc>
 6a6:	4941                	li	s2,16
 6a8:	00000b97          	auipc	s7,0x0
 6ac:	360b8b93          	add	s7,s7,864 # a08 <digits>
 6b0:	03c9d793          	srl	a5,s3,0x3c
 6b4:	97de                	add	a5,a5,s7
 6b6:	0007c583          	lbu	a1,0(a5)
 6ba:	8556                	mv	a0,s5
 6bc:	00000097          	auipc	ra,0x0
 6c0:	e1a080e7          	jalr	-486(ra) # 4d6 <putc>
 6c4:	0992                	sll	s3,s3,0x4
 6c6:	397d                	addw	s2,s2,-1
 6c8:	fe0914e3          	bnez	s2,6b0 <vprintf+0x10c>
 6cc:	8be2                	mv	s7,s8
 6ce:	4981                	li	s3,0
 6d0:	6c02                	ld	s8,0(sp)
 6d2:	bf11                	j	5e6 <vprintf+0x42>
 6d4:	008b8993          	add	s3,s7,8
 6d8:	000bb903          	ld	s2,0(s7)
 6dc:	02090163          	beqz	s2,6fe <vprintf+0x15a>
 6e0:	00094583          	lbu	a1,0(s2)
 6e4:	c9a5                	beqz	a1,754 <vprintf+0x1b0>
 6e6:	8556                	mv	a0,s5
 6e8:	00000097          	auipc	ra,0x0
 6ec:	dee080e7          	jalr	-530(ra) # 4d6 <putc>
 6f0:	0905                	add	s2,s2,1
 6f2:	00094583          	lbu	a1,0(s2)
 6f6:	f9e5                	bnez	a1,6e6 <vprintf+0x142>
 6f8:	8bce                	mv	s7,s3
 6fa:	4981                	li	s3,0
 6fc:	b5ed                	j	5e6 <vprintf+0x42>
 6fe:	00000917          	auipc	s2,0x0
 702:	2aa90913          	add	s2,s2,682 # 9a8 <malloc+0x152>
 706:	02800593          	li	a1,40
 70a:	bff1                	j	6e6 <vprintf+0x142>
 70c:	008b8913          	add	s2,s7,8
 710:	000bc583          	lbu	a1,0(s7)
 714:	8556                	mv	a0,s5
 716:	00000097          	auipc	ra,0x0
 71a:	dc0080e7          	jalr	-576(ra) # 4d6 <putc>
 71e:	8bca                	mv	s7,s2
 720:	4981                	li	s3,0
 722:	b5d1                	j	5e6 <vprintf+0x42>
 724:	02500593          	li	a1,37
 728:	8556                	mv	a0,s5
 72a:	00000097          	auipc	ra,0x0
 72e:	dac080e7          	jalr	-596(ra) # 4d6 <putc>
 732:	4981                	li	s3,0
 734:	bd4d                	j	5e6 <vprintf+0x42>
 736:	02500593          	li	a1,37
 73a:	8556                	mv	a0,s5
 73c:	00000097          	auipc	ra,0x0
 740:	d9a080e7          	jalr	-614(ra) # 4d6 <putc>
 744:	85ca                	mv	a1,s2
 746:	8556                	mv	a0,s5
 748:	00000097          	auipc	ra,0x0
 74c:	d8e080e7          	jalr	-626(ra) # 4d6 <putc>
 750:	4981                	li	s3,0
 752:	bd51                	j	5e6 <vprintf+0x42>
 754:	8bce                	mv	s7,s3
 756:	4981                	li	s3,0
 758:	b579                	j	5e6 <vprintf+0x42>
 75a:	74e2                	ld	s1,56(sp)
 75c:	79a2                	ld	s3,40(sp)
 75e:	7a02                	ld	s4,32(sp)
 760:	6ae2                	ld	s5,24(sp)
 762:	6b42                	ld	s6,16(sp)
 764:	6ba2                	ld	s7,8(sp)
 766:	60a6                	ld	ra,72(sp)
 768:	6406                	ld	s0,64(sp)
 76a:	7942                	ld	s2,48(sp)
 76c:	6161                	add	sp,sp,80
 76e:	8082                	ret

0000000000000770 <fprintf>:
 770:	715d                	add	sp,sp,-80
 772:	ec06                	sd	ra,24(sp)
 774:	e822                	sd	s0,16(sp)
 776:	1000                	add	s0,sp,32
 778:	e010                	sd	a2,0(s0)
 77a:	e414                	sd	a3,8(s0)
 77c:	e818                	sd	a4,16(s0)
 77e:	ec1c                	sd	a5,24(s0)
 780:	03043023          	sd	a6,32(s0)
 784:	03143423          	sd	a7,40(s0)
 788:	fe843423          	sd	s0,-24(s0)
 78c:	8622                	mv	a2,s0
 78e:	00000097          	auipc	ra,0x0
 792:	e16080e7          	jalr	-490(ra) # 5a4 <vprintf>
 796:	60e2                	ld	ra,24(sp)
 798:	6442                	ld	s0,16(sp)
 79a:	6161                	add	sp,sp,80
 79c:	8082                	ret

000000000000079e <printf>:
 79e:	711d                	add	sp,sp,-96
 7a0:	ec06                	sd	ra,24(sp)
 7a2:	e822                	sd	s0,16(sp)
 7a4:	1000                	add	s0,sp,32
 7a6:	e40c                	sd	a1,8(s0)
 7a8:	e810                	sd	a2,16(s0)
 7aa:	ec14                	sd	a3,24(s0)
 7ac:	f018                	sd	a4,32(s0)
 7ae:	f41c                	sd	a5,40(s0)
 7b0:	03043823          	sd	a6,48(s0)
 7b4:	03143c23          	sd	a7,56(s0)
 7b8:	00840613          	add	a2,s0,8
 7bc:	fec43423          	sd	a2,-24(s0)
 7c0:	85aa                	mv	a1,a0
 7c2:	4505                	li	a0,1
 7c4:	00000097          	auipc	ra,0x0
 7c8:	de0080e7          	jalr	-544(ra) # 5a4 <vprintf>
 7cc:	60e2                	ld	ra,24(sp)
 7ce:	6442                	ld	s0,16(sp)
 7d0:	6125                	add	sp,sp,96
 7d2:	8082                	ret

00000000000007d4 <free>:
 7d4:	1141                	add	sp,sp,-16
 7d6:	e422                	sd	s0,8(sp)
 7d8:	0800                	add	s0,sp,16
 7da:	ff050693          	add	a3,a0,-16
 7de:	00001797          	auipc	a5,0x1
 7e2:	c627b783          	ld	a5,-926(a5) # 1440 <freep>
 7e6:	a02d                	j	810 <free+0x3c>
 7e8:	4618                	lw	a4,8(a2)
 7ea:	9f2d                	addw	a4,a4,a1
 7ec:	fee52c23          	sw	a4,-8(a0)
 7f0:	6398                	ld	a4,0(a5)
 7f2:	6310                	ld	a2,0(a4)
 7f4:	a83d                	j	832 <free+0x5e>
 7f6:	ff852703          	lw	a4,-8(a0)
 7fa:	9f31                	addw	a4,a4,a2
 7fc:	c798                	sw	a4,8(a5)
 7fe:	ff053683          	ld	a3,-16(a0)
 802:	a091                	j	846 <free+0x72>
 804:	6398                	ld	a4,0(a5)
 806:	00e7e463          	bltu	a5,a4,80e <free+0x3a>
 80a:	00e6ea63          	bltu	a3,a4,81e <free+0x4a>
 80e:	87ba                	mv	a5,a4
 810:	fed7fae3          	bgeu	a5,a3,804 <free+0x30>
 814:	6398                	ld	a4,0(a5)
 816:	00e6e463          	bltu	a3,a4,81e <free+0x4a>
 81a:	fee7eae3          	bltu	a5,a4,80e <free+0x3a>
 81e:	ff852583          	lw	a1,-8(a0)
 822:	6390                	ld	a2,0(a5)
 824:	02059813          	sll	a6,a1,0x20
 828:	01c85713          	srl	a4,a6,0x1c
 82c:	9736                	add	a4,a4,a3
 82e:	fae60de3          	beq	a2,a4,7e8 <free+0x14>
 832:	fec53823          	sd	a2,-16(a0)
 836:	4790                	lw	a2,8(a5)
 838:	02061593          	sll	a1,a2,0x20
 83c:	01c5d713          	srl	a4,a1,0x1c
 840:	973e                	add	a4,a4,a5
 842:	fae68ae3          	beq	a3,a4,7f6 <free+0x22>
 846:	e394                	sd	a3,0(a5)
 848:	00001717          	auipc	a4,0x1
 84c:	bef73c23          	sd	a5,-1032(a4) # 1440 <freep>
 850:	6422                	ld	s0,8(sp)
 852:	0141                	add	sp,sp,16
 854:	8082                	ret

0000000000000856 <malloc>:
 856:	7139                	add	sp,sp,-64
 858:	fc06                	sd	ra,56(sp)
 85a:	f822                	sd	s0,48(sp)
 85c:	f426                	sd	s1,40(sp)
 85e:	ec4e                	sd	s3,24(sp)
 860:	0080                	add	s0,sp,64
 862:	02051493          	sll	s1,a0,0x20
 866:	9081                	srl	s1,s1,0x20
 868:	04bd                	add	s1,s1,15
 86a:	8091                	srl	s1,s1,0x4
 86c:	0014899b          	addw	s3,s1,1
 870:	0485                	add	s1,s1,1
 872:	00001517          	auipc	a0,0x1
 876:	bce53503          	ld	a0,-1074(a0) # 1440 <freep>
 87a:	c915                	beqz	a0,8ae <malloc+0x58>
 87c:	611c                	ld	a5,0(a0)
 87e:	4798                	lw	a4,8(a5)
 880:	08977e63          	bgeu	a4,s1,91c <malloc+0xc6>
 884:	f04a                	sd	s2,32(sp)
 886:	e852                	sd	s4,16(sp)
 888:	e456                	sd	s5,8(sp)
 88a:	e05a                	sd	s6,0(sp)
 88c:	8a4e                	mv	s4,s3
 88e:	0009871b          	sext.w	a4,s3
 892:	6685                	lui	a3,0x1
 894:	00d77363          	bgeu	a4,a3,89a <malloc+0x44>
 898:	6a05                	lui	s4,0x1
 89a:	000a0b1b          	sext.w	s6,s4
 89e:	004a1a1b          	sllw	s4,s4,0x4
 8a2:	00001917          	auipc	s2,0x1
 8a6:	b9e90913          	add	s2,s2,-1122 # 1440 <freep>
 8aa:	5afd                	li	s5,-1
 8ac:	a091                	j	8f0 <malloc+0x9a>
 8ae:	f04a                	sd	s2,32(sp)
 8b0:	e852                	sd	s4,16(sp)
 8b2:	e456                	sd	s5,8(sp)
 8b4:	e05a                	sd	s6,0(sp)
 8b6:	00001797          	auipc	a5,0x1
 8ba:	d9a78793          	add	a5,a5,-614 # 1650 <base>
 8be:	00001717          	auipc	a4,0x1
 8c2:	b8f73123          	sd	a5,-1150(a4) # 1440 <freep>
 8c6:	e39c                	sd	a5,0(a5)
 8c8:	0007a423          	sw	zero,8(a5)
 8cc:	b7c1                	j	88c <malloc+0x36>
 8ce:	6398                	ld	a4,0(a5)
 8d0:	e118                	sd	a4,0(a0)
 8d2:	a08d                	j	934 <malloc+0xde>
 8d4:	01652423          	sw	s6,8(a0)
 8d8:	0541                	add	a0,a0,16
 8da:	00000097          	auipc	ra,0x0
 8de:	efa080e7          	jalr	-262(ra) # 7d4 <free>
 8e2:	00093503          	ld	a0,0(s2)
 8e6:	c13d                	beqz	a0,94c <malloc+0xf6>
 8e8:	611c                	ld	a5,0(a0)
 8ea:	4798                	lw	a4,8(a5)
 8ec:	02977463          	bgeu	a4,s1,914 <malloc+0xbe>
 8f0:	00093703          	ld	a4,0(s2)
 8f4:	853e                	mv	a0,a5
 8f6:	fef719e3          	bne	a4,a5,8e8 <malloc+0x92>
 8fa:	8552                	mv	a0,s4
 8fc:	00000097          	auipc	ra,0x0
 900:	ba2080e7          	jalr	-1118(ra) # 49e <sbrk>
 904:	fd5518e3          	bne	a0,s5,8d4 <malloc+0x7e>
 908:	4501                	li	a0,0
 90a:	7902                	ld	s2,32(sp)
 90c:	6a42                	ld	s4,16(sp)
 90e:	6aa2                	ld	s5,8(sp)
 910:	6b02                	ld	s6,0(sp)
 912:	a03d                	j	940 <malloc+0xea>
 914:	7902                	ld	s2,32(sp)
 916:	6a42                	ld	s4,16(sp)
 918:	6aa2                	ld	s5,8(sp)
 91a:	6b02                	ld	s6,0(sp)
 91c:	fae489e3          	beq	s1,a4,8ce <malloc+0x78>
 920:	4137073b          	subw	a4,a4,s3
 924:	c798                	sw	a4,8(a5)
 926:	02071693          	sll	a3,a4,0x20
 92a:	01c6d713          	srl	a4,a3,0x1c
 92e:	97ba                	add	a5,a5,a4
 930:	0137a423          	sw	s3,8(a5)
 934:	00001717          	auipc	a4,0x1
 938:	b0a73623          	sd	a0,-1268(a4) # 1440 <freep>
 93c:	01078513          	add	a0,a5,16
 940:	70e2                	ld	ra,56(sp)
 942:	7442                	ld	s0,48(sp)
 944:	74a2                	ld	s1,40(sp)
 946:	69e2                	ld	s3,24(sp)
 948:	6121                	add	sp,sp,64
 94a:	8082                	ret
 94c:	7902                	ld	s2,32(sp)
 94e:	6a42                	ld	s4,16(sp)
 950:	6aa2                	ld	s5,8(sp)
 952:	6b02                	ld	s6,0(sp)
 954:	b7f5                	j	940 <malloc+0xea>
