
user/_grind:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <do_rand>:
       0:	1141                	add	sp,sp,-16
       2:	e422                	sd	s0,8(sp)
       4:	0800                	add	s0,sp,16
       6:	611c                	ld	a5,0(a0)
       8:	80000737          	lui	a4,0x80000
       c:	ffe74713          	xor	a4,a4,-2
      10:	02e7f7b3          	remu	a5,a5,a4
      14:	0785                	add	a5,a5,1
      16:	66fd                	lui	a3,0x1f
      18:	31d68693          	add	a3,a3,797 # 1f31d <base+0x1ca85>
      1c:	02d7e733          	rem	a4,a5,a3
      20:	6611                	lui	a2,0x4
      22:	1a760613          	add	a2,a2,423 # 41a7 <base+0x190f>
      26:	02c70733          	mul	a4,a4,a2
      2a:	02d7c7b3          	div	a5,a5,a3
      2e:	76fd                	lui	a3,0xfffff
      30:	4ec68693          	add	a3,a3,1260 # fffffffffffff4ec <base+0xffffffffffffcc54>
      34:	02d787b3          	mul	a5,a5,a3
      38:	97ba                	add	a5,a5,a4
      3a:	0007c963          	bltz	a5,4c <do_rand+0x4c>
      3e:	17fd                	add	a5,a5,-1
      40:	e11c                	sd	a5,0(a0)
      42:	0007851b          	sext.w	a0,a5
      46:	6422                	ld	s0,8(sp)
      48:	0141                	add	sp,sp,16
      4a:	8082                	ret
      4c:	80000737          	lui	a4,0x80000
      50:	fff74713          	not	a4,a4
      54:	97ba                	add	a5,a5,a4
      56:	b7e5                	j	3e <do_rand+0x3e>

0000000000000058 <rand>:
      58:	1141                	add	sp,sp,-16
      5a:	e406                	sd	ra,8(sp)
      5c:	e022                	sd	s0,0(sp)
      5e:	0800                	add	s0,sp,16
      60:	00002517          	auipc	a0,0x2
      64:	43050513          	add	a0,a0,1072 # 2490 <rand_next>
      68:	00000097          	auipc	ra,0x0
      6c:	f98080e7          	jalr	-104(ra) # 0 <do_rand>
      70:	60a2                	ld	ra,8(sp)
      72:	6402                	ld	s0,0(sp)
      74:	0141                	add	sp,sp,16
      76:	8082                	ret

0000000000000078 <go>:
      78:	7159                	add	sp,sp,-112
      7a:	f486                	sd	ra,104(sp)
      7c:	f0a2                	sd	s0,96(sp)
      7e:	eca6                	sd	s1,88(sp)
      80:	fc56                	sd	s5,56(sp)
      82:	1880                	add	s0,sp,112
      84:	84aa                	mv	s1,a0
      86:	4501                	li	a0,0
      88:	00001097          	auipc	ra,0x1
      8c:	e40080e7          	jalr	-448(ra) # ec8 <sbrk>
      90:	8aaa                	mv	s5,a0
      92:	00001517          	auipc	a0,0x1
      96:	2ee50513          	add	a0,a0,750 # 1380 <malloc+0x100>
      9a:	00001097          	auipc	ra,0x1
      9e:	e0e080e7          	jalr	-498(ra) # ea8 <mkdir>
      a2:	00001517          	auipc	a0,0x1
      a6:	2de50513          	add	a0,a0,734 # 1380 <malloc+0x100>
      aa:	00001097          	auipc	ra,0x1
      ae:	e06080e7          	jalr	-506(ra) # eb0 <chdir>
      b2:	c115                	beqz	a0,d6 <go+0x5e>
      b4:	e8ca                	sd	s2,80(sp)
      b6:	e4ce                	sd	s3,72(sp)
      b8:	e0d2                	sd	s4,64(sp)
      ba:	f85a                	sd	s6,48(sp)
      bc:	00001517          	auipc	a0,0x1
      c0:	2cc50513          	add	a0,a0,716 # 1388 <malloc+0x108>
      c4:	00001097          	auipc	ra,0x1
      c8:	104080e7          	jalr	260(ra) # 11c8 <printf>
      cc:	4505                	li	a0,1
      ce:	00001097          	auipc	ra,0x1
      d2:	d72080e7          	jalr	-654(ra) # e40 <exit>
      d6:	e8ca                	sd	s2,80(sp)
      d8:	e4ce                	sd	s3,72(sp)
      da:	e0d2                	sd	s4,64(sp)
      dc:	f85a                	sd	s6,48(sp)
      de:	00001517          	auipc	a0,0x1
      e2:	2ca50513          	add	a0,a0,714 # 13a8 <malloc+0x128>
      e6:	00001097          	auipc	ra,0x1
      ea:	dca080e7          	jalr	-566(ra) # eb0 <chdir>
      ee:	00001997          	auipc	s3,0x1
      f2:	2ca98993          	add	s3,s3,714 # 13b8 <malloc+0x138>
      f6:	c489                	beqz	s1,100 <go+0x88>
      f8:	00001997          	auipc	s3,0x1
      fc:	2b898993          	add	s3,s3,696 # 13b0 <malloc+0x130>
     100:	4481                	li	s1,0
     102:	5a7d                	li	s4,-1
     104:	00001917          	auipc	s2,0x1
     108:	56490913          	add	s2,s2,1380 # 1668 <malloc+0x3e8>
     10c:	a839                	j	12a <go+0xb2>
     10e:	20200593          	li	a1,514
     112:	00001517          	auipc	a0,0x1
     116:	2ae50513          	add	a0,a0,686 # 13c0 <malloc+0x140>
     11a:	00001097          	auipc	ra,0x1
     11e:	d66080e7          	jalr	-666(ra) # e80 <open>
     122:	00001097          	auipc	ra,0x1
     126:	d46080e7          	jalr	-698(ra) # e68 <close>
     12a:	0485                	add	s1,s1,1
     12c:	1f400793          	li	a5,500
     130:	02f4f7b3          	remu	a5,s1,a5
     134:	eb81                	bnez	a5,144 <go+0xcc>
     136:	4605                	li	a2,1
     138:	85ce                	mv	a1,s3
     13a:	4505                	li	a0,1
     13c:	00001097          	auipc	ra,0x1
     140:	d24080e7          	jalr	-732(ra) # e60 <write>
     144:	00000097          	auipc	ra,0x0
     148:	f14080e7          	jalr	-236(ra) # 58 <rand>
     14c:	47dd                	li	a5,23
     14e:	02f5653b          	remw	a0,a0,a5
     152:	0005071b          	sext.w	a4,a0
     156:	47d9                	li	a5,22
     158:	fce7e9e3          	bltu	a5,a4,12a <go+0xb2>
     15c:	02051793          	sll	a5,a0,0x20
     160:	01e7d513          	srl	a0,a5,0x1e
     164:	954a                	add	a0,a0,s2
     166:	411c                	lw	a5,0(a0)
     168:	97ca                	add	a5,a5,s2
     16a:	8782                	jr	a5
     16c:	20200593          	li	a1,514
     170:	00001517          	auipc	a0,0x1
     174:	26050513          	add	a0,a0,608 # 13d0 <malloc+0x150>
     178:	00001097          	auipc	ra,0x1
     17c:	d08080e7          	jalr	-760(ra) # e80 <open>
     180:	00001097          	auipc	ra,0x1
     184:	ce8080e7          	jalr	-792(ra) # e68 <close>
     188:	b74d                	j	12a <go+0xb2>
     18a:	00001517          	auipc	a0,0x1
     18e:	23650513          	add	a0,a0,566 # 13c0 <malloc+0x140>
     192:	00001097          	auipc	ra,0x1
     196:	cfe080e7          	jalr	-770(ra) # e90 <unlink>
     19a:	bf41                	j	12a <go+0xb2>
     19c:	00001517          	auipc	a0,0x1
     1a0:	1e450513          	add	a0,a0,484 # 1380 <malloc+0x100>
     1a4:	00001097          	auipc	ra,0x1
     1a8:	d0c080e7          	jalr	-756(ra) # eb0 <chdir>
     1ac:	e115                	bnez	a0,1d0 <go+0x158>
     1ae:	00001517          	auipc	a0,0x1
     1b2:	23a50513          	add	a0,a0,570 # 13e8 <malloc+0x168>
     1b6:	00001097          	auipc	ra,0x1
     1ba:	cda080e7          	jalr	-806(ra) # e90 <unlink>
     1be:	00001517          	auipc	a0,0x1
     1c2:	1ea50513          	add	a0,a0,490 # 13a8 <malloc+0x128>
     1c6:	00001097          	auipc	ra,0x1
     1ca:	cea080e7          	jalr	-790(ra) # eb0 <chdir>
     1ce:	bfb1                	j	12a <go+0xb2>
     1d0:	00001517          	auipc	a0,0x1
     1d4:	1b850513          	add	a0,a0,440 # 1388 <malloc+0x108>
     1d8:	00001097          	auipc	ra,0x1
     1dc:	ff0080e7          	jalr	-16(ra) # 11c8 <printf>
     1e0:	4505                	li	a0,1
     1e2:	00001097          	auipc	ra,0x1
     1e6:	c5e080e7          	jalr	-930(ra) # e40 <exit>
     1ea:	8552                	mv	a0,s4
     1ec:	00001097          	auipc	ra,0x1
     1f0:	c7c080e7          	jalr	-900(ra) # e68 <close>
     1f4:	20200593          	li	a1,514
     1f8:	00001517          	auipc	a0,0x1
     1fc:	1f850513          	add	a0,a0,504 # 13f0 <malloc+0x170>
     200:	00001097          	auipc	ra,0x1
     204:	c80080e7          	jalr	-896(ra) # e80 <open>
     208:	8a2a                	mv	s4,a0
     20a:	b705                	j	12a <go+0xb2>
     20c:	8552                	mv	a0,s4
     20e:	00001097          	auipc	ra,0x1
     212:	c5a080e7          	jalr	-934(ra) # e68 <close>
     216:	20200593          	li	a1,514
     21a:	00001517          	auipc	a0,0x1
     21e:	1e650513          	add	a0,a0,486 # 1400 <malloc+0x180>
     222:	00001097          	auipc	ra,0x1
     226:	c5e080e7          	jalr	-930(ra) # e80 <open>
     22a:	8a2a                	mv	s4,a0
     22c:	bdfd                	j	12a <go+0xb2>
     22e:	3e700613          	li	a2,999
     232:	00002597          	auipc	a1,0x2
     236:	27e58593          	add	a1,a1,638 # 24b0 <buf.0>
     23a:	8552                	mv	a0,s4
     23c:	00001097          	auipc	ra,0x1
     240:	c24080e7          	jalr	-988(ra) # e60 <write>
     244:	b5dd                	j	12a <go+0xb2>
     246:	3e700613          	li	a2,999
     24a:	00002597          	auipc	a1,0x2
     24e:	26658593          	add	a1,a1,614 # 24b0 <buf.0>
     252:	8552                	mv	a0,s4
     254:	00001097          	auipc	ra,0x1
     258:	c04080e7          	jalr	-1020(ra) # e58 <read>
     25c:	b5f9                	j	12a <go+0xb2>
     25e:	00001517          	auipc	a0,0x1
     262:	16250513          	add	a0,a0,354 # 13c0 <malloc+0x140>
     266:	00001097          	auipc	ra,0x1
     26a:	c42080e7          	jalr	-958(ra) # ea8 <mkdir>
     26e:	20200593          	li	a1,514
     272:	00001517          	auipc	a0,0x1
     276:	1a650513          	add	a0,a0,422 # 1418 <malloc+0x198>
     27a:	00001097          	auipc	ra,0x1
     27e:	c06080e7          	jalr	-1018(ra) # e80 <open>
     282:	00001097          	auipc	ra,0x1
     286:	be6080e7          	jalr	-1050(ra) # e68 <close>
     28a:	00001517          	auipc	a0,0x1
     28e:	19e50513          	add	a0,a0,414 # 1428 <malloc+0x1a8>
     292:	00001097          	auipc	ra,0x1
     296:	bfe080e7          	jalr	-1026(ra) # e90 <unlink>
     29a:	bd41                	j	12a <go+0xb2>
     29c:	00001517          	auipc	a0,0x1
     2a0:	19450513          	add	a0,a0,404 # 1430 <malloc+0x1b0>
     2a4:	00001097          	auipc	ra,0x1
     2a8:	c04080e7          	jalr	-1020(ra) # ea8 <mkdir>
     2ac:	20200593          	li	a1,514
     2b0:	00001517          	auipc	a0,0x1
     2b4:	18850513          	add	a0,a0,392 # 1438 <malloc+0x1b8>
     2b8:	00001097          	auipc	ra,0x1
     2bc:	bc8080e7          	jalr	-1080(ra) # e80 <open>
     2c0:	00001097          	auipc	ra,0x1
     2c4:	ba8080e7          	jalr	-1112(ra) # e68 <close>
     2c8:	00001517          	auipc	a0,0x1
     2cc:	18050513          	add	a0,a0,384 # 1448 <malloc+0x1c8>
     2d0:	00001097          	auipc	ra,0x1
     2d4:	bc0080e7          	jalr	-1088(ra) # e90 <unlink>
     2d8:	bd89                	j	12a <go+0xb2>
     2da:	00001517          	auipc	a0,0x1
     2de:	13650513          	add	a0,a0,310 # 1410 <malloc+0x190>
     2e2:	00001097          	auipc	ra,0x1
     2e6:	bae080e7          	jalr	-1106(ra) # e90 <unlink>
     2ea:	00001597          	auipc	a1,0x1
     2ee:	0fe58593          	add	a1,a1,254 # 13e8 <malloc+0x168>
     2f2:	00001517          	auipc	a0,0x1
     2f6:	15e50513          	add	a0,a0,350 # 1450 <malloc+0x1d0>
     2fa:	00001097          	auipc	ra,0x1
     2fe:	ba6080e7          	jalr	-1114(ra) # ea0 <link>
     302:	b525                	j	12a <go+0xb2>
     304:	00001517          	auipc	a0,0x1
     308:	16450513          	add	a0,a0,356 # 1468 <malloc+0x1e8>
     30c:	00001097          	auipc	ra,0x1
     310:	b84080e7          	jalr	-1148(ra) # e90 <unlink>
     314:	00001597          	auipc	a1,0x1
     318:	0dc58593          	add	a1,a1,220 # 13f0 <malloc+0x170>
     31c:	00001517          	auipc	a0,0x1
     320:	15c50513          	add	a0,a0,348 # 1478 <malloc+0x1f8>
     324:	00001097          	auipc	ra,0x1
     328:	b7c080e7          	jalr	-1156(ra) # ea0 <link>
     32c:	bbfd                	j	12a <go+0xb2>
     32e:	00001097          	auipc	ra,0x1
     332:	b0a080e7          	jalr	-1270(ra) # e38 <fork>
     336:	c909                	beqz	a0,348 <go+0x2d0>
     338:	00054c63          	bltz	a0,350 <go+0x2d8>
     33c:	4501                	li	a0,0
     33e:	00001097          	auipc	ra,0x1
     342:	b0a080e7          	jalr	-1270(ra) # e48 <wait>
     346:	b3d5                	j	12a <go+0xb2>
     348:	00001097          	auipc	ra,0x1
     34c:	af8080e7          	jalr	-1288(ra) # e40 <exit>
     350:	00001517          	auipc	a0,0x1
     354:	13050513          	add	a0,a0,304 # 1480 <malloc+0x200>
     358:	00001097          	auipc	ra,0x1
     35c:	e70080e7          	jalr	-400(ra) # 11c8 <printf>
     360:	4505                	li	a0,1
     362:	00001097          	auipc	ra,0x1
     366:	ade080e7          	jalr	-1314(ra) # e40 <exit>
     36a:	00001097          	auipc	ra,0x1
     36e:	ace080e7          	jalr	-1330(ra) # e38 <fork>
     372:	c909                	beqz	a0,384 <go+0x30c>
     374:	02054563          	bltz	a0,39e <go+0x326>
     378:	4501                	li	a0,0
     37a:	00001097          	auipc	ra,0x1
     37e:	ace080e7          	jalr	-1330(ra) # e48 <wait>
     382:	b365                	j	12a <go+0xb2>
     384:	00001097          	auipc	ra,0x1
     388:	ab4080e7          	jalr	-1356(ra) # e38 <fork>
     38c:	00001097          	auipc	ra,0x1
     390:	aac080e7          	jalr	-1364(ra) # e38 <fork>
     394:	4501                	li	a0,0
     396:	00001097          	auipc	ra,0x1
     39a:	aaa080e7          	jalr	-1366(ra) # e40 <exit>
     39e:	00001517          	auipc	a0,0x1
     3a2:	0e250513          	add	a0,a0,226 # 1480 <malloc+0x200>
     3a6:	00001097          	auipc	ra,0x1
     3aa:	e22080e7          	jalr	-478(ra) # 11c8 <printf>
     3ae:	4505                	li	a0,1
     3b0:	00001097          	auipc	ra,0x1
     3b4:	a90080e7          	jalr	-1392(ra) # e40 <exit>
     3b8:	6505                	lui	a0,0x1
     3ba:	77b50513          	add	a0,a0,1915 # 177b <digits+0x53>
     3be:	00001097          	auipc	ra,0x1
     3c2:	b0a080e7          	jalr	-1270(ra) # ec8 <sbrk>
     3c6:	b395                	j	12a <go+0xb2>
     3c8:	4501                	li	a0,0
     3ca:	00001097          	auipc	ra,0x1
     3ce:	afe080e7          	jalr	-1282(ra) # ec8 <sbrk>
     3d2:	d4aafce3          	bgeu	s5,a0,12a <go+0xb2>
     3d6:	4501                	li	a0,0
     3d8:	00001097          	auipc	ra,0x1
     3dc:	af0080e7          	jalr	-1296(ra) # ec8 <sbrk>
     3e0:	40aa853b          	subw	a0,s5,a0
     3e4:	00001097          	auipc	ra,0x1
     3e8:	ae4080e7          	jalr	-1308(ra) # ec8 <sbrk>
     3ec:	bb3d                	j	12a <go+0xb2>
     3ee:	00001097          	auipc	ra,0x1
     3f2:	a4a080e7          	jalr	-1462(ra) # e38 <fork>
     3f6:	8b2a                	mv	s6,a0
     3f8:	c51d                	beqz	a0,426 <go+0x3ae>
     3fa:	04054963          	bltz	a0,44c <go+0x3d4>
     3fe:	00001517          	auipc	a0,0x1
     402:	09a50513          	add	a0,a0,154 # 1498 <malloc+0x218>
     406:	00001097          	auipc	ra,0x1
     40a:	aaa080e7          	jalr	-1366(ra) # eb0 <chdir>
     40e:	ed21                	bnez	a0,466 <go+0x3ee>
     410:	855a                	mv	a0,s6
     412:	00001097          	auipc	ra,0x1
     416:	a5e080e7          	jalr	-1442(ra) # e70 <kill>
     41a:	4501                	li	a0,0
     41c:	00001097          	auipc	ra,0x1
     420:	a2c080e7          	jalr	-1492(ra) # e48 <wait>
     424:	b319                	j	12a <go+0xb2>
     426:	20200593          	li	a1,514
     42a:	00001517          	auipc	a0,0x1
     42e:	03650513          	add	a0,a0,54 # 1460 <malloc+0x1e0>
     432:	00001097          	auipc	ra,0x1
     436:	a4e080e7          	jalr	-1458(ra) # e80 <open>
     43a:	00001097          	auipc	ra,0x1
     43e:	a2e080e7          	jalr	-1490(ra) # e68 <close>
     442:	4501                	li	a0,0
     444:	00001097          	auipc	ra,0x1
     448:	9fc080e7          	jalr	-1540(ra) # e40 <exit>
     44c:	00001517          	auipc	a0,0x1
     450:	03450513          	add	a0,a0,52 # 1480 <malloc+0x200>
     454:	00001097          	auipc	ra,0x1
     458:	d74080e7          	jalr	-652(ra) # 11c8 <printf>
     45c:	4505                	li	a0,1
     45e:	00001097          	auipc	ra,0x1
     462:	9e2080e7          	jalr	-1566(ra) # e40 <exit>
     466:	00001517          	auipc	a0,0x1
     46a:	04250513          	add	a0,a0,66 # 14a8 <malloc+0x228>
     46e:	00001097          	auipc	ra,0x1
     472:	d5a080e7          	jalr	-678(ra) # 11c8 <printf>
     476:	4505                	li	a0,1
     478:	00001097          	auipc	ra,0x1
     47c:	9c8080e7          	jalr	-1592(ra) # e40 <exit>
     480:	00001097          	auipc	ra,0x1
     484:	9b8080e7          	jalr	-1608(ra) # e38 <fork>
     488:	c909                	beqz	a0,49a <go+0x422>
     48a:	02054563          	bltz	a0,4b4 <go+0x43c>
     48e:	4501                	li	a0,0
     490:	00001097          	auipc	ra,0x1
     494:	9b8080e7          	jalr	-1608(ra) # e48 <wait>
     498:	b949                	j	12a <go+0xb2>
     49a:	00001097          	auipc	ra,0x1
     49e:	a26080e7          	jalr	-1498(ra) # ec0 <getpid>
     4a2:	00001097          	auipc	ra,0x1
     4a6:	9ce080e7          	jalr	-1586(ra) # e70 <kill>
     4aa:	4501                	li	a0,0
     4ac:	00001097          	auipc	ra,0x1
     4b0:	994080e7          	jalr	-1644(ra) # e40 <exit>
     4b4:	00001517          	auipc	a0,0x1
     4b8:	fcc50513          	add	a0,a0,-52 # 1480 <malloc+0x200>
     4bc:	00001097          	auipc	ra,0x1
     4c0:	d0c080e7          	jalr	-756(ra) # 11c8 <printf>
     4c4:	4505                	li	a0,1
     4c6:	00001097          	auipc	ra,0x1
     4ca:	97a080e7          	jalr	-1670(ra) # e40 <exit>
     4ce:	fa840513          	add	a0,s0,-88
     4d2:	00001097          	auipc	ra,0x1
     4d6:	97e080e7          	jalr	-1666(ra) # e50 <pipe>
     4da:	02054b63          	bltz	a0,510 <go+0x498>
     4de:	00001097          	auipc	ra,0x1
     4e2:	95a080e7          	jalr	-1702(ra) # e38 <fork>
     4e6:	c131                	beqz	a0,52a <go+0x4b2>
     4e8:	0a054a63          	bltz	a0,59c <go+0x524>
     4ec:	fa842503          	lw	a0,-88(s0)
     4f0:	00001097          	auipc	ra,0x1
     4f4:	978080e7          	jalr	-1672(ra) # e68 <close>
     4f8:	fac42503          	lw	a0,-84(s0)
     4fc:	00001097          	auipc	ra,0x1
     500:	96c080e7          	jalr	-1684(ra) # e68 <close>
     504:	4501                	li	a0,0
     506:	00001097          	auipc	ra,0x1
     50a:	942080e7          	jalr	-1726(ra) # e48 <wait>
     50e:	b931                	j	12a <go+0xb2>
     510:	00001517          	auipc	a0,0x1
     514:	fb050513          	add	a0,a0,-80 # 14c0 <malloc+0x240>
     518:	00001097          	auipc	ra,0x1
     51c:	cb0080e7          	jalr	-848(ra) # 11c8 <printf>
     520:	4505                	li	a0,1
     522:	00001097          	auipc	ra,0x1
     526:	91e080e7          	jalr	-1762(ra) # e40 <exit>
     52a:	00001097          	auipc	ra,0x1
     52e:	90e080e7          	jalr	-1778(ra) # e38 <fork>
     532:	00001097          	auipc	ra,0x1
     536:	906080e7          	jalr	-1786(ra) # e38 <fork>
     53a:	4605                	li	a2,1
     53c:	00001597          	auipc	a1,0x1
     540:	f9c58593          	add	a1,a1,-100 # 14d8 <malloc+0x258>
     544:	fac42503          	lw	a0,-84(s0)
     548:	00001097          	auipc	ra,0x1
     54c:	918080e7          	jalr	-1768(ra) # e60 <write>
     550:	4785                	li	a5,1
     552:	02f51363          	bne	a0,a5,578 <go+0x500>
     556:	4605                	li	a2,1
     558:	fa040593          	add	a1,s0,-96
     55c:	fa842503          	lw	a0,-88(s0)
     560:	00001097          	auipc	ra,0x1
     564:	8f8080e7          	jalr	-1800(ra) # e58 <read>
     568:	4785                	li	a5,1
     56a:	02f51063          	bne	a0,a5,58a <go+0x512>
     56e:	4501                	li	a0,0
     570:	00001097          	auipc	ra,0x1
     574:	8d0080e7          	jalr	-1840(ra) # e40 <exit>
     578:	00001517          	auipc	a0,0x1
     57c:	f6850513          	add	a0,a0,-152 # 14e0 <malloc+0x260>
     580:	00001097          	auipc	ra,0x1
     584:	c48080e7          	jalr	-952(ra) # 11c8 <printf>
     588:	b7f9                	j	556 <go+0x4de>
     58a:	00001517          	auipc	a0,0x1
     58e:	f7650513          	add	a0,a0,-138 # 1500 <malloc+0x280>
     592:	00001097          	auipc	ra,0x1
     596:	c36080e7          	jalr	-970(ra) # 11c8 <printf>
     59a:	bfd1                	j	56e <go+0x4f6>
     59c:	00001517          	auipc	a0,0x1
     5a0:	ee450513          	add	a0,a0,-284 # 1480 <malloc+0x200>
     5a4:	00001097          	auipc	ra,0x1
     5a8:	c24080e7          	jalr	-988(ra) # 11c8 <printf>
     5ac:	4505                	li	a0,1
     5ae:	00001097          	auipc	ra,0x1
     5b2:	892080e7          	jalr	-1902(ra) # e40 <exit>
     5b6:	00001097          	auipc	ra,0x1
     5ba:	882080e7          	jalr	-1918(ra) # e38 <fork>
     5be:	c909                	beqz	a0,5d0 <go+0x558>
     5c0:	06054f63          	bltz	a0,63e <go+0x5c6>
     5c4:	4501                	li	a0,0
     5c6:	00001097          	auipc	ra,0x1
     5ca:	882080e7          	jalr	-1918(ra) # e48 <wait>
     5ce:	beb1                	j	12a <go+0xb2>
     5d0:	00001517          	auipc	a0,0x1
     5d4:	e9050513          	add	a0,a0,-368 # 1460 <malloc+0x1e0>
     5d8:	00001097          	auipc	ra,0x1
     5dc:	8b8080e7          	jalr	-1864(ra) # e90 <unlink>
     5e0:	00001517          	auipc	a0,0x1
     5e4:	e8050513          	add	a0,a0,-384 # 1460 <malloc+0x1e0>
     5e8:	00001097          	auipc	ra,0x1
     5ec:	8c0080e7          	jalr	-1856(ra) # ea8 <mkdir>
     5f0:	00001517          	auipc	a0,0x1
     5f4:	e7050513          	add	a0,a0,-400 # 1460 <malloc+0x1e0>
     5f8:	00001097          	auipc	ra,0x1
     5fc:	8b8080e7          	jalr	-1864(ra) # eb0 <chdir>
     600:	00001517          	auipc	a0,0x1
     604:	dc850513          	add	a0,a0,-568 # 13c8 <malloc+0x148>
     608:	00001097          	auipc	ra,0x1
     60c:	888080e7          	jalr	-1912(ra) # e90 <unlink>
     610:	20200593          	li	a1,514
     614:	00001517          	auipc	a0,0x1
     618:	ec450513          	add	a0,a0,-316 # 14d8 <malloc+0x258>
     61c:	00001097          	auipc	ra,0x1
     620:	864080e7          	jalr	-1948(ra) # e80 <open>
     624:	00001517          	auipc	a0,0x1
     628:	eb450513          	add	a0,a0,-332 # 14d8 <malloc+0x258>
     62c:	00001097          	auipc	ra,0x1
     630:	864080e7          	jalr	-1948(ra) # e90 <unlink>
     634:	4501                	li	a0,0
     636:	00001097          	auipc	ra,0x1
     63a:	80a080e7          	jalr	-2038(ra) # e40 <exit>
     63e:	00001517          	auipc	a0,0x1
     642:	e4250513          	add	a0,a0,-446 # 1480 <malloc+0x200>
     646:	00001097          	auipc	ra,0x1
     64a:	b82080e7          	jalr	-1150(ra) # 11c8 <printf>
     64e:	4505                	li	a0,1
     650:	00000097          	auipc	ra,0x0
     654:	7f0080e7          	jalr	2032(ra) # e40 <exit>
     658:	00001517          	auipc	a0,0x1
     65c:	ec850513          	add	a0,a0,-312 # 1520 <malloc+0x2a0>
     660:	00001097          	auipc	ra,0x1
     664:	830080e7          	jalr	-2000(ra) # e90 <unlink>
     668:	20200593          	li	a1,514
     66c:	00001517          	auipc	a0,0x1
     670:	eb450513          	add	a0,a0,-332 # 1520 <malloc+0x2a0>
     674:	00001097          	auipc	ra,0x1
     678:	80c080e7          	jalr	-2036(ra) # e80 <open>
     67c:	8b2a                	mv	s6,a0
     67e:	04054f63          	bltz	a0,6dc <go+0x664>
     682:	4605                	li	a2,1
     684:	00001597          	auipc	a1,0x1
     688:	e5458593          	add	a1,a1,-428 # 14d8 <malloc+0x258>
     68c:	00000097          	auipc	ra,0x0
     690:	7d4080e7          	jalr	2004(ra) # e60 <write>
     694:	4785                	li	a5,1
     696:	06f51063          	bne	a0,a5,6f6 <go+0x67e>
     69a:	fa840593          	add	a1,s0,-88
     69e:	855a                	mv	a0,s6
     6a0:	00000097          	auipc	ra,0x0
     6a4:	7f8080e7          	jalr	2040(ra) # e98 <fstat>
     6a8:	e525                	bnez	a0,710 <go+0x698>
     6aa:	fb843583          	ld	a1,-72(s0)
     6ae:	4785                	li	a5,1
     6b0:	06f59d63          	bne	a1,a5,72a <go+0x6b2>
     6b4:	fac42583          	lw	a1,-84(s0)
     6b8:	0c800793          	li	a5,200
     6bc:	08b7e563          	bltu	a5,a1,746 <go+0x6ce>
     6c0:	855a                	mv	a0,s6
     6c2:	00000097          	auipc	ra,0x0
     6c6:	7a6080e7          	jalr	1958(ra) # e68 <close>
     6ca:	00001517          	auipc	a0,0x1
     6ce:	e5650513          	add	a0,a0,-426 # 1520 <malloc+0x2a0>
     6d2:	00000097          	auipc	ra,0x0
     6d6:	7be080e7          	jalr	1982(ra) # e90 <unlink>
     6da:	bc81                	j	12a <go+0xb2>
     6dc:	00001517          	auipc	a0,0x1
     6e0:	e4c50513          	add	a0,a0,-436 # 1528 <malloc+0x2a8>
     6e4:	00001097          	auipc	ra,0x1
     6e8:	ae4080e7          	jalr	-1308(ra) # 11c8 <printf>
     6ec:	4505                	li	a0,1
     6ee:	00000097          	auipc	ra,0x0
     6f2:	752080e7          	jalr	1874(ra) # e40 <exit>
     6f6:	00001517          	auipc	a0,0x1
     6fa:	e4a50513          	add	a0,a0,-438 # 1540 <malloc+0x2c0>
     6fe:	00001097          	auipc	ra,0x1
     702:	aca080e7          	jalr	-1334(ra) # 11c8 <printf>
     706:	4505                	li	a0,1
     708:	00000097          	auipc	ra,0x0
     70c:	738080e7          	jalr	1848(ra) # e40 <exit>
     710:	00001517          	auipc	a0,0x1
     714:	e4850513          	add	a0,a0,-440 # 1558 <malloc+0x2d8>
     718:	00001097          	auipc	ra,0x1
     71c:	ab0080e7          	jalr	-1360(ra) # 11c8 <printf>
     720:	4505                	li	a0,1
     722:	00000097          	auipc	ra,0x0
     726:	71e080e7          	jalr	1822(ra) # e40 <exit>
     72a:	2581                	sext.w	a1,a1
     72c:	00001517          	auipc	a0,0x1
     730:	e4450513          	add	a0,a0,-444 # 1570 <malloc+0x2f0>
     734:	00001097          	auipc	ra,0x1
     738:	a94080e7          	jalr	-1388(ra) # 11c8 <printf>
     73c:	4505                	li	a0,1
     73e:	00000097          	auipc	ra,0x0
     742:	702080e7          	jalr	1794(ra) # e40 <exit>
     746:	00001517          	auipc	a0,0x1
     74a:	e5250513          	add	a0,a0,-430 # 1598 <malloc+0x318>
     74e:	00001097          	auipc	ra,0x1
     752:	a7a080e7          	jalr	-1414(ra) # 11c8 <printf>
     756:	4505                	li	a0,1
     758:	00000097          	auipc	ra,0x0
     75c:	6e8080e7          	jalr	1768(ra) # e40 <exit>
     760:	f9840513          	add	a0,s0,-104
     764:	00000097          	auipc	ra,0x0
     768:	6ec080e7          	jalr	1772(ra) # e50 <pipe>
     76c:	10054063          	bltz	a0,86c <go+0x7f4>
     770:	fa040513          	add	a0,s0,-96
     774:	00000097          	auipc	ra,0x0
     778:	6dc080e7          	jalr	1756(ra) # e50 <pipe>
     77c:	10054663          	bltz	a0,888 <go+0x810>
     780:	00000097          	auipc	ra,0x0
     784:	6b8080e7          	jalr	1720(ra) # e38 <fork>
     788:	10050e63          	beqz	a0,8a4 <go+0x82c>
     78c:	1c054663          	bltz	a0,958 <go+0x8e0>
     790:	00000097          	auipc	ra,0x0
     794:	6a8080e7          	jalr	1704(ra) # e38 <fork>
     798:	1c050e63          	beqz	a0,974 <go+0x8fc>
     79c:	2a054a63          	bltz	a0,a50 <go+0x9d8>
     7a0:	f9842503          	lw	a0,-104(s0)
     7a4:	00000097          	auipc	ra,0x0
     7a8:	6c4080e7          	jalr	1732(ra) # e68 <close>
     7ac:	f9c42503          	lw	a0,-100(s0)
     7b0:	00000097          	auipc	ra,0x0
     7b4:	6b8080e7          	jalr	1720(ra) # e68 <close>
     7b8:	fa442503          	lw	a0,-92(s0)
     7bc:	00000097          	auipc	ra,0x0
     7c0:	6ac080e7          	jalr	1708(ra) # e68 <close>
     7c4:	f8042823          	sw	zero,-112(s0)
     7c8:	4605                	li	a2,1
     7ca:	f9040593          	add	a1,s0,-112
     7ce:	fa042503          	lw	a0,-96(s0)
     7d2:	00000097          	auipc	ra,0x0
     7d6:	686080e7          	jalr	1670(ra) # e58 <read>
     7da:	4605                	li	a2,1
     7dc:	f9140593          	add	a1,s0,-111
     7e0:	fa042503          	lw	a0,-96(s0)
     7e4:	00000097          	auipc	ra,0x0
     7e8:	674080e7          	jalr	1652(ra) # e58 <read>
     7ec:	4605                	li	a2,1
     7ee:	f9240593          	add	a1,s0,-110
     7f2:	fa042503          	lw	a0,-96(s0)
     7f6:	00000097          	auipc	ra,0x0
     7fa:	662080e7          	jalr	1634(ra) # e58 <read>
     7fe:	fa042503          	lw	a0,-96(s0)
     802:	00000097          	auipc	ra,0x0
     806:	666080e7          	jalr	1638(ra) # e68 <close>
     80a:	f9440513          	add	a0,s0,-108
     80e:	00000097          	auipc	ra,0x0
     812:	63a080e7          	jalr	1594(ra) # e48 <wait>
     816:	fa840513          	add	a0,s0,-88
     81a:	00000097          	auipc	ra,0x0
     81e:	62e080e7          	jalr	1582(ra) # e48 <wait>
     822:	f9442783          	lw	a5,-108(s0)
     826:	fa842703          	lw	a4,-88(s0)
     82a:	8fd9                	or	a5,a5,a4
     82c:	ef89                	bnez	a5,846 <go+0x7ce>
     82e:	00001597          	auipc	a1,0x1
     832:	e0a58593          	add	a1,a1,-502 # 1638 <malloc+0x3b8>
     836:	f9040513          	add	a0,s0,-112
     83a:	00000097          	auipc	ra,0x0
     83e:	3b6080e7          	jalr	950(ra) # bf0 <strcmp>
     842:	8e0504e3          	beqz	a0,12a <go+0xb2>
     846:	f9040693          	add	a3,s0,-112
     84a:	fa842603          	lw	a2,-88(s0)
     84e:	f9442583          	lw	a1,-108(s0)
     852:	00001517          	auipc	a0,0x1
     856:	dee50513          	add	a0,a0,-530 # 1640 <malloc+0x3c0>
     85a:	00001097          	auipc	ra,0x1
     85e:	96e080e7          	jalr	-1682(ra) # 11c8 <printf>
     862:	4505                	li	a0,1
     864:	00000097          	auipc	ra,0x0
     868:	5dc080e7          	jalr	1500(ra) # e40 <exit>
     86c:	00001597          	auipc	a1,0x1
     870:	c5458593          	add	a1,a1,-940 # 14c0 <malloc+0x240>
     874:	4509                	li	a0,2
     876:	00001097          	auipc	ra,0x1
     87a:	924080e7          	jalr	-1756(ra) # 119a <fprintf>
     87e:	4505                	li	a0,1
     880:	00000097          	auipc	ra,0x0
     884:	5c0080e7          	jalr	1472(ra) # e40 <exit>
     888:	00001597          	auipc	a1,0x1
     88c:	c3858593          	add	a1,a1,-968 # 14c0 <malloc+0x240>
     890:	4509                	li	a0,2
     892:	00001097          	auipc	ra,0x1
     896:	908080e7          	jalr	-1784(ra) # 119a <fprintf>
     89a:	4505                	li	a0,1
     89c:	00000097          	auipc	ra,0x0
     8a0:	5a4080e7          	jalr	1444(ra) # e40 <exit>
     8a4:	fa042503          	lw	a0,-96(s0)
     8a8:	00000097          	auipc	ra,0x0
     8ac:	5c0080e7          	jalr	1472(ra) # e68 <close>
     8b0:	fa442503          	lw	a0,-92(s0)
     8b4:	00000097          	auipc	ra,0x0
     8b8:	5b4080e7          	jalr	1460(ra) # e68 <close>
     8bc:	f9842503          	lw	a0,-104(s0)
     8c0:	00000097          	auipc	ra,0x0
     8c4:	5a8080e7          	jalr	1448(ra) # e68 <close>
     8c8:	4505                	li	a0,1
     8ca:	00000097          	auipc	ra,0x0
     8ce:	59e080e7          	jalr	1438(ra) # e68 <close>
     8d2:	f9c42503          	lw	a0,-100(s0)
     8d6:	00000097          	auipc	ra,0x0
     8da:	5e2080e7          	jalr	1506(ra) # eb8 <dup>
     8de:	4785                	li	a5,1
     8e0:	02f50063          	beq	a0,a5,900 <go+0x888>
     8e4:	00001597          	auipc	a1,0x1
     8e8:	cdc58593          	add	a1,a1,-804 # 15c0 <malloc+0x340>
     8ec:	4509                	li	a0,2
     8ee:	00001097          	auipc	ra,0x1
     8f2:	8ac080e7          	jalr	-1876(ra) # 119a <fprintf>
     8f6:	4505                	li	a0,1
     8f8:	00000097          	auipc	ra,0x0
     8fc:	548080e7          	jalr	1352(ra) # e40 <exit>
     900:	f9c42503          	lw	a0,-100(s0)
     904:	00000097          	auipc	ra,0x0
     908:	564080e7          	jalr	1380(ra) # e68 <close>
     90c:	00001797          	auipc	a5,0x1
     910:	ccc78793          	add	a5,a5,-820 # 15d8 <malloc+0x358>
     914:	faf43423          	sd	a5,-88(s0)
     918:	00001797          	auipc	a5,0x1
     91c:	cc878793          	add	a5,a5,-824 # 15e0 <malloc+0x360>
     920:	faf43823          	sd	a5,-80(s0)
     924:	fa043c23          	sd	zero,-72(s0)
     928:	fa840593          	add	a1,s0,-88
     92c:	00001517          	auipc	a0,0x1
     930:	cbc50513          	add	a0,a0,-836 # 15e8 <malloc+0x368>
     934:	00000097          	auipc	ra,0x0
     938:	544080e7          	jalr	1348(ra) # e78 <exec>
     93c:	00001597          	auipc	a1,0x1
     940:	cbc58593          	add	a1,a1,-836 # 15f8 <malloc+0x378>
     944:	4509                	li	a0,2
     946:	00001097          	auipc	ra,0x1
     94a:	854080e7          	jalr	-1964(ra) # 119a <fprintf>
     94e:	4509                	li	a0,2
     950:	00000097          	auipc	ra,0x0
     954:	4f0080e7          	jalr	1264(ra) # e40 <exit>
     958:	00001597          	auipc	a1,0x1
     95c:	b2858593          	add	a1,a1,-1240 # 1480 <malloc+0x200>
     960:	4509                	li	a0,2
     962:	00001097          	auipc	ra,0x1
     966:	838080e7          	jalr	-1992(ra) # 119a <fprintf>
     96a:	450d                	li	a0,3
     96c:	00000097          	auipc	ra,0x0
     970:	4d4080e7          	jalr	1236(ra) # e40 <exit>
     974:	f9c42503          	lw	a0,-100(s0)
     978:	00000097          	auipc	ra,0x0
     97c:	4f0080e7          	jalr	1264(ra) # e68 <close>
     980:	fa042503          	lw	a0,-96(s0)
     984:	00000097          	auipc	ra,0x0
     988:	4e4080e7          	jalr	1252(ra) # e68 <close>
     98c:	4501                	li	a0,0
     98e:	00000097          	auipc	ra,0x0
     992:	4da080e7          	jalr	1242(ra) # e68 <close>
     996:	f9842503          	lw	a0,-104(s0)
     99a:	00000097          	auipc	ra,0x0
     99e:	51e080e7          	jalr	1310(ra) # eb8 <dup>
     9a2:	cd19                	beqz	a0,9c0 <go+0x948>
     9a4:	00001597          	auipc	a1,0x1
     9a8:	c1c58593          	add	a1,a1,-996 # 15c0 <malloc+0x340>
     9ac:	4509                	li	a0,2
     9ae:	00000097          	auipc	ra,0x0
     9b2:	7ec080e7          	jalr	2028(ra) # 119a <fprintf>
     9b6:	4511                	li	a0,4
     9b8:	00000097          	auipc	ra,0x0
     9bc:	488080e7          	jalr	1160(ra) # e40 <exit>
     9c0:	f9842503          	lw	a0,-104(s0)
     9c4:	00000097          	auipc	ra,0x0
     9c8:	4a4080e7          	jalr	1188(ra) # e68 <close>
     9cc:	4505                	li	a0,1
     9ce:	00000097          	auipc	ra,0x0
     9d2:	49a080e7          	jalr	1178(ra) # e68 <close>
     9d6:	fa442503          	lw	a0,-92(s0)
     9da:	00000097          	auipc	ra,0x0
     9de:	4de080e7          	jalr	1246(ra) # eb8 <dup>
     9e2:	4785                	li	a5,1
     9e4:	02f50063          	beq	a0,a5,a04 <go+0x98c>
     9e8:	00001597          	auipc	a1,0x1
     9ec:	bd858593          	add	a1,a1,-1064 # 15c0 <malloc+0x340>
     9f0:	4509                	li	a0,2
     9f2:	00000097          	auipc	ra,0x0
     9f6:	7a8080e7          	jalr	1960(ra) # 119a <fprintf>
     9fa:	4515                	li	a0,5
     9fc:	00000097          	auipc	ra,0x0
     a00:	444080e7          	jalr	1092(ra) # e40 <exit>
     a04:	fa442503          	lw	a0,-92(s0)
     a08:	00000097          	auipc	ra,0x0
     a0c:	460080e7          	jalr	1120(ra) # e68 <close>
     a10:	00001797          	auipc	a5,0x1
     a14:	c0078793          	add	a5,a5,-1024 # 1610 <malloc+0x390>
     a18:	faf43423          	sd	a5,-88(s0)
     a1c:	fa043823          	sd	zero,-80(s0)
     a20:	fa840593          	add	a1,s0,-88
     a24:	00001517          	auipc	a0,0x1
     a28:	bf450513          	add	a0,a0,-1036 # 1618 <malloc+0x398>
     a2c:	00000097          	auipc	ra,0x0
     a30:	44c080e7          	jalr	1100(ra) # e78 <exec>
     a34:	00001597          	auipc	a1,0x1
     a38:	bec58593          	add	a1,a1,-1044 # 1620 <malloc+0x3a0>
     a3c:	4509                	li	a0,2
     a3e:	00000097          	auipc	ra,0x0
     a42:	75c080e7          	jalr	1884(ra) # 119a <fprintf>
     a46:	4519                	li	a0,6
     a48:	00000097          	auipc	ra,0x0
     a4c:	3f8080e7          	jalr	1016(ra) # e40 <exit>
     a50:	00001597          	auipc	a1,0x1
     a54:	a3058593          	add	a1,a1,-1488 # 1480 <malloc+0x200>
     a58:	4509                	li	a0,2
     a5a:	00000097          	auipc	ra,0x0
     a5e:	740080e7          	jalr	1856(ra) # 119a <fprintf>
     a62:	451d                	li	a0,7
     a64:	00000097          	auipc	ra,0x0
     a68:	3dc080e7          	jalr	988(ra) # e40 <exit>

0000000000000a6c <iter>:
     a6c:	7179                	add	sp,sp,-48
     a6e:	f406                	sd	ra,40(sp)
     a70:	f022                	sd	s0,32(sp)
     a72:	1800                	add	s0,sp,48
     a74:	00001517          	auipc	a0,0x1
     a78:	9ec50513          	add	a0,a0,-1556 # 1460 <malloc+0x1e0>
     a7c:	00000097          	auipc	ra,0x0
     a80:	414080e7          	jalr	1044(ra) # e90 <unlink>
     a84:	00001517          	auipc	a0,0x1
     a88:	98c50513          	add	a0,a0,-1652 # 1410 <malloc+0x190>
     a8c:	00000097          	auipc	ra,0x0
     a90:	404080e7          	jalr	1028(ra) # e90 <unlink>
     a94:	00000097          	auipc	ra,0x0
     a98:	3a4080e7          	jalr	932(ra) # e38 <fork>
     a9c:	02054363          	bltz	a0,ac2 <iter+0x56>
     aa0:	ec26                	sd	s1,24(sp)
     aa2:	84aa                	mv	s1,a0
     aa4:	ed15                	bnez	a0,ae0 <iter+0x74>
     aa6:	e84a                	sd	s2,16(sp)
     aa8:	00002717          	auipc	a4,0x2
     aac:	9e870713          	add	a4,a4,-1560 # 2490 <rand_next>
     ab0:	631c                	ld	a5,0(a4)
     ab2:	01f7c793          	xor	a5,a5,31
     ab6:	e31c                	sd	a5,0(a4)
     ab8:	4501                	li	a0,0
     aba:	fffff097          	auipc	ra,0xfffff
     abe:	5be080e7          	jalr	1470(ra) # 78 <go>
     ac2:	ec26                	sd	s1,24(sp)
     ac4:	e84a                	sd	s2,16(sp)
     ac6:	00001517          	auipc	a0,0x1
     aca:	9ba50513          	add	a0,a0,-1606 # 1480 <malloc+0x200>
     ace:	00000097          	auipc	ra,0x0
     ad2:	6fa080e7          	jalr	1786(ra) # 11c8 <printf>
     ad6:	4505                	li	a0,1
     ad8:	00000097          	auipc	ra,0x0
     adc:	368080e7          	jalr	872(ra) # e40 <exit>
     ae0:	e84a                	sd	s2,16(sp)
     ae2:	00000097          	auipc	ra,0x0
     ae6:	356080e7          	jalr	854(ra) # e38 <fork>
     aea:	892a                	mv	s2,a0
     aec:	02054263          	bltz	a0,b10 <iter+0xa4>
     af0:	ed0d                	bnez	a0,b2a <iter+0xbe>
     af2:	00002697          	auipc	a3,0x2
     af6:	99e68693          	add	a3,a3,-1634 # 2490 <rand_next>
     afa:	629c                	ld	a5,0(a3)
     afc:	6709                	lui	a4,0x2
     afe:	c0970713          	add	a4,a4,-1015 # 1c09 <digits+0x4e1>
     b02:	8fb9                	xor	a5,a5,a4
     b04:	e29c                	sd	a5,0(a3)
     b06:	4505                	li	a0,1
     b08:	fffff097          	auipc	ra,0xfffff
     b0c:	570080e7          	jalr	1392(ra) # 78 <go>
     b10:	00001517          	auipc	a0,0x1
     b14:	97050513          	add	a0,a0,-1680 # 1480 <malloc+0x200>
     b18:	00000097          	auipc	ra,0x0
     b1c:	6b0080e7          	jalr	1712(ra) # 11c8 <printf>
     b20:	4505                	li	a0,1
     b22:	00000097          	auipc	ra,0x0
     b26:	31e080e7          	jalr	798(ra) # e40 <exit>
     b2a:	57fd                	li	a5,-1
     b2c:	fcf42e23          	sw	a5,-36(s0)
     b30:	fdc40513          	add	a0,s0,-36
     b34:	00000097          	auipc	ra,0x0
     b38:	314080e7          	jalr	788(ra) # e48 <wait>
     b3c:	fdc42783          	lw	a5,-36(s0)
     b40:	ef99                	bnez	a5,b5e <iter+0xf2>
     b42:	57fd                	li	a5,-1
     b44:	fcf42c23          	sw	a5,-40(s0)
     b48:	fd840513          	add	a0,s0,-40
     b4c:	00000097          	auipc	ra,0x0
     b50:	2fc080e7          	jalr	764(ra) # e48 <wait>
     b54:	4501                	li	a0,0
     b56:	00000097          	auipc	ra,0x0
     b5a:	2ea080e7          	jalr	746(ra) # e40 <exit>
     b5e:	8526                	mv	a0,s1
     b60:	00000097          	auipc	ra,0x0
     b64:	310080e7          	jalr	784(ra) # e70 <kill>
     b68:	854a                	mv	a0,s2
     b6a:	00000097          	auipc	ra,0x0
     b6e:	306080e7          	jalr	774(ra) # e70 <kill>
     b72:	bfc1                	j	b42 <iter+0xd6>

0000000000000b74 <main>:
     b74:	1101                	add	sp,sp,-32
     b76:	ec06                	sd	ra,24(sp)
     b78:	e822                	sd	s0,16(sp)
     b7a:	e426                	sd	s1,8(sp)
     b7c:	1000                	add	s0,sp,32
     b7e:	00002497          	auipc	s1,0x2
     b82:	91248493          	add	s1,s1,-1774 # 2490 <rand_next>
     b86:	a829                	j	ba0 <main+0x2c>
     b88:	00000097          	auipc	ra,0x0
     b8c:	ee4080e7          	jalr	-284(ra) # a6c <iter>
     b90:	4551                	li	a0,20
     b92:	00000097          	auipc	ra,0x0
     b96:	33e080e7          	jalr	830(ra) # ed0 <sleep>
     b9a:	609c                	ld	a5,0(s1)
     b9c:	0785                	add	a5,a5,1
     b9e:	e09c                	sd	a5,0(s1)
     ba0:	00000097          	auipc	ra,0x0
     ba4:	298080e7          	jalr	664(ra) # e38 <fork>
     ba8:	d165                	beqz	a0,b88 <main+0x14>
     baa:	fea053e3          	blez	a0,b90 <main+0x1c>
     bae:	4501                	li	a0,0
     bb0:	00000097          	auipc	ra,0x0
     bb4:	298080e7          	jalr	664(ra) # e48 <wait>
     bb8:	bfe1                	j	b90 <main+0x1c>

0000000000000bba <_main>:
     bba:	1141                	add	sp,sp,-16
     bbc:	e406                	sd	ra,8(sp)
     bbe:	e022                	sd	s0,0(sp)
     bc0:	0800                	add	s0,sp,16
     bc2:	00000097          	auipc	ra,0x0
     bc6:	fb2080e7          	jalr	-78(ra) # b74 <main>
     bca:	4501                	li	a0,0
     bcc:	00000097          	auipc	ra,0x0
     bd0:	274080e7          	jalr	628(ra) # e40 <exit>

0000000000000bd4 <strcpy>:
     bd4:	1141                	add	sp,sp,-16
     bd6:	e422                	sd	s0,8(sp)
     bd8:	0800                	add	s0,sp,16
     bda:	87aa                	mv	a5,a0
     bdc:	0585                	add	a1,a1,1
     bde:	0785                	add	a5,a5,1
     be0:	fff5c703          	lbu	a4,-1(a1)
     be4:	fee78fa3          	sb	a4,-1(a5)
     be8:	fb75                	bnez	a4,bdc <strcpy+0x8>
     bea:	6422                	ld	s0,8(sp)
     bec:	0141                	add	sp,sp,16
     bee:	8082                	ret

0000000000000bf0 <strcmp>:
     bf0:	1141                	add	sp,sp,-16
     bf2:	e422                	sd	s0,8(sp)
     bf4:	0800                	add	s0,sp,16
     bf6:	00054783          	lbu	a5,0(a0)
     bfa:	cb91                	beqz	a5,c0e <strcmp+0x1e>
     bfc:	0005c703          	lbu	a4,0(a1)
     c00:	00f71763          	bne	a4,a5,c0e <strcmp+0x1e>
     c04:	0505                	add	a0,a0,1
     c06:	0585                	add	a1,a1,1
     c08:	00054783          	lbu	a5,0(a0)
     c0c:	fbe5                	bnez	a5,bfc <strcmp+0xc>
     c0e:	0005c503          	lbu	a0,0(a1)
     c12:	40a7853b          	subw	a0,a5,a0
     c16:	6422                	ld	s0,8(sp)
     c18:	0141                	add	sp,sp,16
     c1a:	8082                	ret

0000000000000c1c <strlen>:
     c1c:	1141                	add	sp,sp,-16
     c1e:	e422                	sd	s0,8(sp)
     c20:	0800                	add	s0,sp,16
     c22:	00054783          	lbu	a5,0(a0)
     c26:	cf91                	beqz	a5,c42 <strlen+0x26>
     c28:	0505                	add	a0,a0,1
     c2a:	87aa                	mv	a5,a0
     c2c:	86be                	mv	a3,a5
     c2e:	0785                	add	a5,a5,1
     c30:	fff7c703          	lbu	a4,-1(a5)
     c34:	ff65                	bnez	a4,c2c <strlen+0x10>
     c36:	40a6853b          	subw	a0,a3,a0
     c3a:	2505                	addw	a0,a0,1
     c3c:	6422                	ld	s0,8(sp)
     c3e:	0141                	add	sp,sp,16
     c40:	8082                	ret
     c42:	4501                	li	a0,0
     c44:	bfe5                	j	c3c <strlen+0x20>

0000000000000c46 <memset>:
     c46:	1141                	add	sp,sp,-16
     c48:	e422                	sd	s0,8(sp)
     c4a:	0800                	add	s0,sp,16
     c4c:	ca19                	beqz	a2,c62 <memset+0x1c>
     c4e:	87aa                	mv	a5,a0
     c50:	1602                	sll	a2,a2,0x20
     c52:	9201                	srl	a2,a2,0x20
     c54:	00a60733          	add	a4,a2,a0
     c58:	00b78023          	sb	a1,0(a5)
     c5c:	0785                	add	a5,a5,1
     c5e:	fee79de3          	bne	a5,a4,c58 <memset+0x12>
     c62:	6422                	ld	s0,8(sp)
     c64:	0141                	add	sp,sp,16
     c66:	8082                	ret

0000000000000c68 <strchr>:
     c68:	1141                	add	sp,sp,-16
     c6a:	e422                	sd	s0,8(sp)
     c6c:	0800                	add	s0,sp,16
     c6e:	00054783          	lbu	a5,0(a0)
     c72:	cb99                	beqz	a5,c88 <strchr+0x20>
     c74:	00f58763          	beq	a1,a5,c82 <strchr+0x1a>
     c78:	0505                	add	a0,a0,1
     c7a:	00054783          	lbu	a5,0(a0)
     c7e:	fbfd                	bnez	a5,c74 <strchr+0xc>
     c80:	4501                	li	a0,0
     c82:	6422                	ld	s0,8(sp)
     c84:	0141                	add	sp,sp,16
     c86:	8082                	ret
     c88:	4501                	li	a0,0
     c8a:	bfe5                	j	c82 <strchr+0x1a>

0000000000000c8c <gets>:
     c8c:	711d                	add	sp,sp,-96
     c8e:	ec86                	sd	ra,88(sp)
     c90:	e8a2                	sd	s0,80(sp)
     c92:	e4a6                	sd	s1,72(sp)
     c94:	e0ca                	sd	s2,64(sp)
     c96:	fc4e                	sd	s3,56(sp)
     c98:	f852                	sd	s4,48(sp)
     c9a:	f456                	sd	s5,40(sp)
     c9c:	f05a                	sd	s6,32(sp)
     c9e:	ec5e                	sd	s7,24(sp)
     ca0:	1080                	add	s0,sp,96
     ca2:	8baa                	mv	s7,a0
     ca4:	8a2e                	mv	s4,a1
     ca6:	892a                	mv	s2,a0
     ca8:	4481                	li	s1,0
     caa:	4aa9                	li	s5,10
     cac:	4b35                	li	s6,13
     cae:	89a6                	mv	s3,s1
     cb0:	2485                	addw	s1,s1,1
     cb2:	0344d863          	bge	s1,s4,ce2 <gets+0x56>
     cb6:	4605                	li	a2,1
     cb8:	faf40593          	add	a1,s0,-81
     cbc:	4501                	li	a0,0
     cbe:	00000097          	auipc	ra,0x0
     cc2:	19a080e7          	jalr	410(ra) # e58 <read>
     cc6:	00a05e63          	blez	a0,ce2 <gets+0x56>
     cca:	faf44783          	lbu	a5,-81(s0)
     cce:	00f90023          	sb	a5,0(s2)
     cd2:	01578763          	beq	a5,s5,ce0 <gets+0x54>
     cd6:	0905                	add	s2,s2,1
     cd8:	fd679be3          	bne	a5,s6,cae <gets+0x22>
     cdc:	89a6                	mv	s3,s1
     cde:	a011                	j	ce2 <gets+0x56>
     ce0:	89a6                	mv	s3,s1
     ce2:	99de                	add	s3,s3,s7
     ce4:	00098023          	sb	zero,0(s3)
     ce8:	855e                	mv	a0,s7
     cea:	60e6                	ld	ra,88(sp)
     cec:	6446                	ld	s0,80(sp)
     cee:	64a6                	ld	s1,72(sp)
     cf0:	6906                	ld	s2,64(sp)
     cf2:	79e2                	ld	s3,56(sp)
     cf4:	7a42                	ld	s4,48(sp)
     cf6:	7aa2                	ld	s5,40(sp)
     cf8:	7b02                	ld	s6,32(sp)
     cfa:	6be2                	ld	s7,24(sp)
     cfc:	6125                	add	sp,sp,96
     cfe:	8082                	ret

0000000000000d00 <stat>:
     d00:	1101                	add	sp,sp,-32
     d02:	ec06                	sd	ra,24(sp)
     d04:	e822                	sd	s0,16(sp)
     d06:	e04a                	sd	s2,0(sp)
     d08:	1000                	add	s0,sp,32
     d0a:	892e                	mv	s2,a1
     d0c:	4581                	li	a1,0
     d0e:	00000097          	auipc	ra,0x0
     d12:	172080e7          	jalr	370(ra) # e80 <open>
     d16:	02054663          	bltz	a0,d42 <stat+0x42>
     d1a:	e426                	sd	s1,8(sp)
     d1c:	84aa                	mv	s1,a0
     d1e:	85ca                	mv	a1,s2
     d20:	00000097          	auipc	ra,0x0
     d24:	178080e7          	jalr	376(ra) # e98 <fstat>
     d28:	892a                	mv	s2,a0
     d2a:	8526                	mv	a0,s1
     d2c:	00000097          	auipc	ra,0x0
     d30:	13c080e7          	jalr	316(ra) # e68 <close>
     d34:	64a2                	ld	s1,8(sp)
     d36:	854a                	mv	a0,s2
     d38:	60e2                	ld	ra,24(sp)
     d3a:	6442                	ld	s0,16(sp)
     d3c:	6902                	ld	s2,0(sp)
     d3e:	6105                	add	sp,sp,32
     d40:	8082                	ret
     d42:	597d                	li	s2,-1
     d44:	bfcd                	j	d36 <stat+0x36>

0000000000000d46 <atoi>:
     d46:	1141                	add	sp,sp,-16
     d48:	e422                	sd	s0,8(sp)
     d4a:	0800                	add	s0,sp,16
     d4c:	00054683          	lbu	a3,0(a0)
     d50:	fd06879b          	addw	a5,a3,-48
     d54:	0ff7f793          	zext.b	a5,a5
     d58:	4625                	li	a2,9
     d5a:	02f66863          	bltu	a2,a5,d8a <atoi+0x44>
     d5e:	872a                	mv	a4,a0
     d60:	4501                	li	a0,0
     d62:	0705                	add	a4,a4,1
     d64:	0025179b          	sllw	a5,a0,0x2
     d68:	9fa9                	addw	a5,a5,a0
     d6a:	0017979b          	sllw	a5,a5,0x1
     d6e:	9fb5                	addw	a5,a5,a3
     d70:	fd07851b          	addw	a0,a5,-48
     d74:	00074683          	lbu	a3,0(a4)
     d78:	fd06879b          	addw	a5,a3,-48
     d7c:	0ff7f793          	zext.b	a5,a5
     d80:	fef671e3          	bgeu	a2,a5,d62 <atoi+0x1c>
     d84:	6422                	ld	s0,8(sp)
     d86:	0141                	add	sp,sp,16
     d88:	8082                	ret
     d8a:	4501                	li	a0,0
     d8c:	bfe5                	j	d84 <atoi+0x3e>

0000000000000d8e <memmove>:
     d8e:	1141                	add	sp,sp,-16
     d90:	e422                	sd	s0,8(sp)
     d92:	0800                	add	s0,sp,16
     d94:	02b57463          	bgeu	a0,a1,dbc <memmove+0x2e>
     d98:	00c05f63          	blez	a2,db6 <memmove+0x28>
     d9c:	1602                	sll	a2,a2,0x20
     d9e:	9201                	srl	a2,a2,0x20
     da0:	00c507b3          	add	a5,a0,a2
     da4:	872a                	mv	a4,a0
     da6:	0585                	add	a1,a1,1
     da8:	0705                	add	a4,a4,1
     daa:	fff5c683          	lbu	a3,-1(a1)
     dae:	fed70fa3          	sb	a3,-1(a4)
     db2:	fef71ae3          	bne	a4,a5,da6 <memmove+0x18>
     db6:	6422                	ld	s0,8(sp)
     db8:	0141                	add	sp,sp,16
     dba:	8082                	ret
     dbc:	00c50733          	add	a4,a0,a2
     dc0:	95b2                	add	a1,a1,a2
     dc2:	fec05ae3          	blez	a2,db6 <memmove+0x28>
     dc6:	fff6079b          	addw	a5,a2,-1
     dca:	1782                	sll	a5,a5,0x20
     dcc:	9381                	srl	a5,a5,0x20
     dce:	fff7c793          	not	a5,a5
     dd2:	97ba                	add	a5,a5,a4
     dd4:	15fd                	add	a1,a1,-1
     dd6:	177d                	add	a4,a4,-1
     dd8:	0005c683          	lbu	a3,0(a1)
     ddc:	00d70023          	sb	a3,0(a4)
     de0:	fee79ae3          	bne	a5,a4,dd4 <memmove+0x46>
     de4:	bfc9                	j	db6 <memmove+0x28>

0000000000000de6 <memcmp>:
     de6:	1141                	add	sp,sp,-16
     de8:	e422                	sd	s0,8(sp)
     dea:	0800                	add	s0,sp,16
     dec:	ca05                	beqz	a2,e1c <memcmp+0x36>
     dee:	fff6069b          	addw	a3,a2,-1
     df2:	1682                	sll	a3,a3,0x20
     df4:	9281                	srl	a3,a3,0x20
     df6:	0685                	add	a3,a3,1
     df8:	96aa                	add	a3,a3,a0
     dfa:	00054783          	lbu	a5,0(a0)
     dfe:	0005c703          	lbu	a4,0(a1)
     e02:	00e79863          	bne	a5,a4,e12 <memcmp+0x2c>
     e06:	0505                	add	a0,a0,1
     e08:	0585                	add	a1,a1,1
     e0a:	fed518e3          	bne	a0,a3,dfa <memcmp+0x14>
     e0e:	4501                	li	a0,0
     e10:	a019                	j	e16 <memcmp+0x30>
     e12:	40e7853b          	subw	a0,a5,a4
     e16:	6422                	ld	s0,8(sp)
     e18:	0141                	add	sp,sp,16
     e1a:	8082                	ret
     e1c:	4501                	li	a0,0
     e1e:	bfe5                	j	e16 <memcmp+0x30>

0000000000000e20 <memcpy>:
     e20:	1141                	add	sp,sp,-16
     e22:	e406                	sd	ra,8(sp)
     e24:	e022                	sd	s0,0(sp)
     e26:	0800                	add	s0,sp,16
     e28:	00000097          	auipc	ra,0x0
     e2c:	f66080e7          	jalr	-154(ra) # d8e <memmove>
     e30:	60a2                	ld	ra,8(sp)
     e32:	6402                	ld	s0,0(sp)
     e34:	0141                	add	sp,sp,16
     e36:	8082                	ret

0000000000000e38 <fork>:
     e38:	4885                	li	a7,1
     e3a:	00000073          	ecall
     e3e:	8082                	ret

0000000000000e40 <exit>:
     e40:	4889                	li	a7,2
     e42:	00000073          	ecall
     e46:	8082                	ret

0000000000000e48 <wait>:
     e48:	488d                	li	a7,3
     e4a:	00000073          	ecall
     e4e:	8082                	ret

0000000000000e50 <pipe>:
     e50:	4891                	li	a7,4
     e52:	00000073          	ecall
     e56:	8082                	ret

0000000000000e58 <read>:
     e58:	4895                	li	a7,5
     e5a:	00000073          	ecall
     e5e:	8082                	ret

0000000000000e60 <write>:
     e60:	48c1                	li	a7,16
     e62:	00000073          	ecall
     e66:	8082                	ret

0000000000000e68 <close>:
     e68:	48d5                	li	a7,21
     e6a:	00000073          	ecall
     e6e:	8082                	ret

0000000000000e70 <kill>:
     e70:	4899                	li	a7,6
     e72:	00000073          	ecall
     e76:	8082                	ret

0000000000000e78 <exec>:
     e78:	489d                	li	a7,7
     e7a:	00000073          	ecall
     e7e:	8082                	ret

0000000000000e80 <open>:
     e80:	48bd                	li	a7,15
     e82:	00000073          	ecall
     e86:	8082                	ret

0000000000000e88 <mknod>:
     e88:	48c5                	li	a7,17
     e8a:	00000073          	ecall
     e8e:	8082                	ret

0000000000000e90 <unlink>:
     e90:	48c9                	li	a7,18
     e92:	00000073          	ecall
     e96:	8082                	ret

0000000000000e98 <fstat>:
     e98:	48a1                	li	a7,8
     e9a:	00000073          	ecall
     e9e:	8082                	ret

0000000000000ea0 <link>:
     ea0:	48cd                	li	a7,19
     ea2:	00000073          	ecall
     ea6:	8082                	ret

0000000000000ea8 <mkdir>:
     ea8:	48d1                	li	a7,20
     eaa:	00000073          	ecall
     eae:	8082                	ret

0000000000000eb0 <chdir>:
     eb0:	48a5                	li	a7,9
     eb2:	00000073          	ecall
     eb6:	8082                	ret

0000000000000eb8 <dup>:
     eb8:	48a9                	li	a7,10
     eba:	00000073          	ecall
     ebe:	8082                	ret

0000000000000ec0 <getpid>:
     ec0:	48ad                	li	a7,11
     ec2:	00000073          	ecall
     ec6:	8082                	ret

0000000000000ec8 <sbrk>:
     ec8:	48b1                	li	a7,12
     eca:	00000073          	ecall
     ece:	8082                	ret

0000000000000ed0 <sleep>:
     ed0:	48b5                	li	a7,13
     ed2:	00000073          	ecall
     ed6:	8082                	ret

0000000000000ed8 <uptime>:
     ed8:	48b9                	li	a7,14
     eda:	00000073          	ecall
     ede:	8082                	ret

0000000000000ee0 <waitx>:
     ee0:	48d9                	li	a7,22
     ee2:	00000073          	ecall
     ee6:	8082                	ret

0000000000000ee8 <getSysCount>:
     ee8:	48dd                	li	a7,23
     eea:	00000073          	ecall
     eee:	8082                	ret

0000000000000ef0 <sigalarm>:
     ef0:	48e1                	li	a7,24
     ef2:	00000073          	ecall
     ef6:	8082                	ret

0000000000000ef8 <sigreturn>:
     ef8:	48e5                	li	a7,25
     efa:	00000073          	ecall
     efe:	8082                	ret

0000000000000f00 <putc>:
     f00:	1101                	add	sp,sp,-32
     f02:	ec06                	sd	ra,24(sp)
     f04:	e822                	sd	s0,16(sp)
     f06:	1000                	add	s0,sp,32
     f08:	feb407a3          	sb	a1,-17(s0)
     f0c:	4605                	li	a2,1
     f0e:	fef40593          	add	a1,s0,-17
     f12:	00000097          	auipc	ra,0x0
     f16:	f4e080e7          	jalr	-178(ra) # e60 <write>
     f1a:	60e2                	ld	ra,24(sp)
     f1c:	6442                	ld	s0,16(sp)
     f1e:	6105                	add	sp,sp,32
     f20:	8082                	ret

0000000000000f22 <printint>:
     f22:	7139                	add	sp,sp,-64
     f24:	fc06                	sd	ra,56(sp)
     f26:	f822                	sd	s0,48(sp)
     f28:	f426                	sd	s1,40(sp)
     f2a:	0080                	add	s0,sp,64
     f2c:	84aa                	mv	s1,a0
     f2e:	c299                	beqz	a3,f34 <printint+0x12>
     f30:	0805cb63          	bltz	a1,fc6 <printint+0xa4>
     f34:	2581                	sext.w	a1,a1
     f36:	4881                	li	a7,0
     f38:	fc040693          	add	a3,s0,-64
     f3c:	4701                	li	a4,0
     f3e:	2601                	sext.w	a2,a2
     f40:	00000517          	auipc	a0,0x0
     f44:	7e850513          	add	a0,a0,2024 # 1728 <digits>
     f48:	883a                	mv	a6,a4
     f4a:	2705                	addw	a4,a4,1
     f4c:	02c5f7bb          	remuw	a5,a1,a2
     f50:	1782                	sll	a5,a5,0x20
     f52:	9381                	srl	a5,a5,0x20
     f54:	97aa                	add	a5,a5,a0
     f56:	0007c783          	lbu	a5,0(a5)
     f5a:	00f68023          	sb	a5,0(a3)
     f5e:	0005879b          	sext.w	a5,a1
     f62:	02c5d5bb          	divuw	a1,a1,a2
     f66:	0685                	add	a3,a3,1
     f68:	fec7f0e3          	bgeu	a5,a2,f48 <printint+0x26>
     f6c:	00088c63          	beqz	a7,f84 <printint+0x62>
     f70:	fd070793          	add	a5,a4,-48
     f74:	00878733          	add	a4,a5,s0
     f78:	02d00793          	li	a5,45
     f7c:	fef70823          	sb	a5,-16(a4)
     f80:	0028071b          	addw	a4,a6,2
     f84:	02e05c63          	blez	a4,fbc <printint+0x9a>
     f88:	f04a                	sd	s2,32(sp)
     f8a:	ec4e                	sd	s3,24(sp)
     f8c:	fc040793          	add	a5,s0,-64
     f90:	00e78933          	add	s2,a5,a4
     f94:	fff78993          	add	s3,a5,-1
     f98:	99ba                	add	s3,s3,a4
     f9a:	377d                	addw	a4,a4,-1
     f9c:	1702                	sll	a4,a4,0x20
     f9e:	9301                	srl	a4,a4,0x20
     fa0:	40e989b3          	sub	s3,s3,a4
     fa4:	fff94583          	lbu	a1,-1(s2)
     fa8:	8526                	mv	a0,s1
     faa:	00000097          	auipc	ra,0x0
     fae:	f56080e7          	jalr	-170(ra) # f00 <putc>
     fb2:	197d                	add	s2,s2,-1
     fb4:	ff3918e3          	bne	s2,s3,fa4 <printint+0x82>
     fb8:	7902                	ld	s2,32(sp)
     fba:	69e2                	ld	s3,24(sp)
     fbc:	70e2                	ld	ra,56(sp)
     fbe:	7442                	ld	s0,48(sp)
     fc0:	74a2                	ld	s1,40(sp)
     fc2:	6121                	add	sp,sp,64
     fc4:	8082                	ret
     fc6:	40b005bb          	negw	a1,a1
     fca:	4885                	li	a7,1
     fcc:	b7b5                	j	f38 <printint+0x16>

0000000000000fce <vprintf>:
     fce:	715d                	add	sp,sp,-80
     fd0:	e486                	sd	ra,72(sp)
     fd2:	e0a2                	sd	s0,64(sp)
     fd4:	f84a                	sd	s2,48(sp)
     fd6:	0880                	add	s0,sp,80
     fd8:	0005c903          	lbu	s2,0(a1)
     fdc:	1a090a63          	beqz	s2,1190 <vprintf+0x1c2>
     fe0:	fc26                	sd	s1,56(sp)
     fe2:	f44e                	sd	s3,40(sp)
     fe4:	f052                	sd	s4,32(sp)
     fe6:	ec56                	sd	s5,24(sp)
     fe8:	e85a                	sd	s6,16(sp)
     fea:	e45e                	sd	s7,8(sp)
     fec:	8aaa                	mv	s5,a0
     fee:	8bb2                	mv	s7,a2
     ff0:	00158493          	add	s1,a1,1
     ff4:	4981                	li	s3,0
     ff6:	02500a13          	li	s4,37
     ffa:	4b55                	li	s6,21
     ffc:	a839                	j	101a <vprintf+0x4c>
     ffe:	85ca                	mv	a1,s2
    1000:	8556                	mv	a0,s5
    1002:	00000097          	auipc	ra,0x0
    1006:	efe080e7          	jalr	-258(ra) # f00 <putc>
    100a:	a019                	j	1010 <vprintf+0x42>
    100c:	01498d63          	beq	s3,s4,1026 <vprintf+0x58>
    1010:	0485                	add	s1,s1,1
    1012:	fff4c903          	lbu	s2,-1(s1)
    1016:	16090763          	beqz	s2,1184 <vprintf+0x1b6>
    101a:	fe0999e3          	bnez	s3,100c <vprintf+0x3e>
    101e:	ff4910e3          	bne	s2,s4,ffe <vprintf+0x30>
    1022:	89d2                	mv	s3,s4
    1024:	b7f5                	j	1010 <vprintf+0x42>
    1026:	13490463          	beq	s2,s4,114e <vprintf+0x180>
    102a:	f9d9079b          	addw	a5,s2,-99
    102e:	0ff7f793          	zext.b	a5,a5
    1032:	12fb6763          	bltu	s6,a5,1160 <vprintf+0x192>
    1036:	f9d9079b          	addw	a5,s2,-99
    103a:	0ff7f713          	zext.b	a4,a5
    103e:	12eb6163          	bltu	s6,a4,1160 <vprintf+0x192>
    1042:	00271793          	sll	a5,a4,0x2
    1046:	00000717          	auipc	a4,0x0
    104a:	68a70713          	add	a4,a4,1674 # 16d0 <malloc+0x450>
    104e:	97ba                	add	a5,a5,a4
    1050:	439c                	lw	a5,0(a5)
    1052:	97ba                	add	a5,a5,a4
    1054:	8782                	jr	a5
    1056:	008b8913          	add	s2,s7,8
    105a:	4685                	li	a3,1
    105c:	4629                	li	a2,10
    105e:	000ba583          	lw	a1,0(s7)
    1062:	8556                	mv	a0,s5
    1064:	00000097          	auipc	ra,0x0
    1068:	ebe080e7          	jalr	-322(ra) # f22 <printint>
    106c:	8bca                	mv	s7,s2
    106e:	4981                	li	s3,0
    1070:	b745                	j	1010 <vprintf+0x42>
    1072:	008b8913          	add	s2,s7,8
    1076:	4681                	li	a3,0
    1078:	4629                	li	a2,10
    107a:	000ba583          	lw	a1,0(s7)
    107e:	8556                	mv	a0,s5
    1080:	00000097          	auipc	ra,0x0
    1084:	ea2080e7          	jalr	-350(ra) # f22 <printint>
    1088:	8bca                	mv	s7,s2
    108a:	4981                	li	s3,0
    108c:	b751                	j	1010 <vprintf+0x42>
    108e:	008b8913          	add	s2,s7,8
    1092:	4681                	li	a3,0
    1094:	4641                	li	a2,16
    1096:	000ba583          	lw	a1,0(s7)
    109a:	8556                	mv	a0,s5
    109c:	00000097          	auipc	ra,0x0
    10a0:	e86080e7          	jalr	-378(ra) # f22 <printint>
    10a4:	8bca                	mv	s7,s2
    10a6:	4981                	li	s3,0
    10a8:	b7a5                	j	1010 <vprintf+0x42>
    10aa:	e062                	sd	s8,0(sp)
    10ac:	008b8c13          	add	s8,s7,8
    10b0:	000bb983          	ld	s3,0(s7)
    10b4:	03000593          	li	a1,48
    10b8:	8556                	mv	a0,s5
    10ba:	00000097          	auipc	ra,0x0
    10be:	e46080e7          	jalr	-442(ra) # f00 <putc>
    10c2:	07800593          	li	a1,120
    10c6:	8556                	mv	a0,s5
    10c8:	00000097          	auipc	ra,0x0
    10cc:	e38080e7          	jalr	-456(ra) # f00 <putc>
    10d0:	4941                	li	s2,16
    10d2:	00000b97          	auipc	s7,0x0
    10d6:	656b8b93          	add	s7,s7,1622 # 1728 <digits>
    10da:	03c9d793          	srl	a5,s3,0x3c
    10de:	97de                	add	a5,a5,s7
    10e0:	0007c583          	lbu	a1,0(a5)
    10e4:	8556                	mv	a0,s5
    10e6:	00000097          	auipc	ra,0x0
    10ea:	e1a080e7          	jalr	-486(ra) # f00 <putc>
    10ee:	0992                	sll	s3,s3,0x4
    10f0:	397d                	addw	s2,s2,-1
    10f2:	fe0914e3          	bnez	s2,10da <vprintf+0x10c>
    10f6:	8be2                	mv	s7,s8
    10f8:	4981                	li	s3,0
    10fa:	6c02                	ld	s8,0(sp)
    10fc:	bf11                	j	1010 <vprintf+0x42>
    10fe:	008b8993          	add	s3,s7,8
    1102:	000bb903          	ld	s2,0(s7)
    1106:	02090163          	beqz	s2,1128 <vprintf+0x15a>
    110a:	00094583          	lbu	a1,0(s2)
    110e:	c9a5                	beqz	a1,117e <vprintf+0x1b0>
    1110:	8556                	mv	a0,s5
    1112:	00000097          	auipc	ra,0x0
    1116:	dee080e7          	jalr	-530(ra) # f00 <putc>
    111a:	0905                	add	s2,s2,1
    111c:	00094583          	lbu	a1,0(s2)
    1120:	f9e5                	bnez	a1,1110 <vprintf+0x142>
    1122:	8bce                	mv	s7,s3
    1124:	4981                	li	s3,0
    1126:	b5ed                	j	1010 <vprintf+0x42>
    1128:	00000917          	auipc	s2,0x0
    112c:	5a090913          	add	s2,s2,1440 # 16c8 <malloc+0x448>
    1130:	02800593          	li	a1,40
    1134:	bff1                	j	1110 <vprintf+0x142>
    1136:	008b8913          	add	s2,s7,8
    113a:	000bc583          	lbu	a1,0(s7)
    113e:	8556                	mv	a0,s5
    1140:	00000097          	auipc	ra,0x0
    1144:	dc0080e7          	jalr	-576(ra) # f00 <putc>
    1148:	8bca                	mv	s7,s2
    114a:	4981                	li	s3,0
    114c:	b5d1                	j	1010 <vprintf+0x42>
    114e:	02500593          	li	a1,37
    1152:	8556                	mv	a0,s5
    1154:	00000097          	auipc	ra,0x0
    1158:	dac080e7          	jalr	-596(ra) # f00 <putc>
    115c:	4981                	li	s3,0
    115e:	bd4d                	j	1010 <vprintf+0x42>
    1160:	02500593          	li	a1,37
    1164:	8556                	mv	a0,s5
    1166:	00000097          	auipc	ra,0x0
    116a:	d9a080e7          	jalr	-614(ra) # f00 <putc>
    116e:	85ca                	mv	a1,s2
    1170:	8556                	mv	a0,s5
    1172:	00000097          	auipc	ra,0x0
    1176:	d8e080e7          	jalr	-626(ra) # f00 <putc>
    117a:	4981                	li	s3,0
    117c:	bd51                	j	1010 <vprintf+0x42>
    117e:	8bce                	mv	s7,s3
    1180:	4981                	li	s3,0
    1182:	b579                	j	1010 <vprintf+0x42>
    1184:	74e2                	ld	s1,56(sp)
    1186:	79a2                	ld	s3,40(sp)
    1188:	7a02                	ld	s4,32(sp)
    118a:	6ae2                	ld	s5,24(sp)
    118c:	6b42                	ld	s6,16(sp)
    118e:	6ba2                	ld	s7,8(sp)
    1190:	60a6                	ld	ra,72(sp)
    1192:	6406                	ld	s0,64(sp)
    1194:	7942                	ld	s2,48(sp)
    1196:	6161                	add	sp,sp,80
    1198:	8082                	ret

000000000000119a <fprintf>:
    119a:	715d                	add	sp,sp,-80
    119c:	ec06                	sd	ra,24(sp)
    119e:	e822                	sd	s0,16(sp)
    11a0:	1000                	add	s0,sp,32
    11a2:	e010                	sd	a2,0(s0)
    11a4:	e414                	sd	a3,8(s0)
    11a6:	e818                	sd	a4,16(s0)
    11a8:	ec1c                	sd	a5,24(s0)
    11aa:	03043023          	sd	a6,32(s0)
    11ae:	03143423          	sd	a7,40(s0)
    11b2:	fe843423          	sd	s0,-24(s0)
    11b6:	8622                	mv	a2,s0
    11b8:	00000097          	auipc	ra,0x0
    11bc:	e16080e7          	jalr	-490(ra) # fce <vprintf>
    11c0:	60e2                	ld	ra,24(sp)
    11c2:	6442                	ld	s0,16(sp)
    11c4:	6161                	add	sp,sp,80
    11c6:	8082                	ret

00000000000011c8 <printf>:
    11c8:	711d                	add	sp,sp,-96
    11ca:	ec06                	sd	ra,24(sp)
    11cc:	e822                	sd	s0,16(sp)
    11ce:	1000                	add	s0,sp,32
    11d0:	e40c                	sd	a1,8(s0)
    11d2:	e810                	sd	a2,16(s0)
    11d4:	ec14                	sd	a3,24(s0)
    11d6:	f018                	sd	a4,32(s0)
    11d8:	f41c                	sd	a5,40(s0)
    11da:	03043823          	sd	a6,48(s0)
    11de:	03143c23          	sd	a7,56(s0)
    11e2:	00840613          	add	a2,s0,8
    11e6:	fec43423          	sd	a2,-24(s0)
    11ea:	85aa                	mv	a1,a0
    11ec:	4505                	li	a0,1
    11ee:	00000097          	auipc	ra,0x0
    11f2:	de0080e7          	jalr	-544(ra) # fce <vprintf>
    11f6:	60e2                	ld	ra,24(sp)
    11f8:	6442                	ld	s0,16(sp)
    11fa:	6125                	add	sp,sp,96
    11fc:	8082                	ret

00000000000011fe <free>:
    11fe:	1141                	add	sp,sp,-16
    1200:	e422                	sd	s0,8(sp)
    1202:	0800                	add	s0,sp,16
    1204:	ff050693          	add	a3,a0,-16
    1208:	00001797          	auipc	a5,0x1
    120c:	2987b783          	ld	a5,664(a5) # 24a0 <freep>
    1210:	a02d                	j	123a <free+0x3c>
    1212:	4618                	lw	a4,8(a2)
    1214:	9f2d                	addw	a4,a4,a1
    1216:	fee52c23          	sw	a4,-8(a0)
    121a:	6398                	ld	a4,0(a5)
    121c:	6310                	ld	a2,0(a4)
    121e:	a83d                	j	125c <free+0x5e>
    1220:	ff852703          	lw	a4,-8(a0)
    1224:	9f31                	addw	a4,a4,a2
    1226:	c798                	sw	a4,8(a5)
    1228:	ff053683          	ld	a3,-16(a0)
    122c:	a091                	j	1270 <free+0x72>
    122e:	6398                	ld	a4,0(a5)
    1230:	00e7e463          	bltu	a5,a4,1238 <free+0x3a>
    1234:	00e6ea63          	bltu	a3,a4,1248 <free+0x4a>
    1238:	87ba                	mv	a5,a4
    123a:	fed7fae3          	bgeu	a5,a3,122e <free+0x30>
    123e:	6398                	ld	a4,0(a5)
    1240:	00e6e463          	bltu	a3,a4,1248 <free+0x4a>
    1244:	fee7eae3          	bltu	a5,a4,1238 <free+0x3a>
    1248:	ff852583          	lw	a1,-8(a0)
    124c:	6390                	ld	a2,0(a5)
    124e:	02059813          	sll	a6,a1,0x20
    1252:	01c85713          	srl	a4,a6,0x1c
    1256:	9736                	add	a4,a4,a3
    1258:	fae60de3          	beq	a2,a4,1212 <free+0x14>
    125c:	fec53823          	sd	a2,-16(a0)
    1260:	4790                	lw	a2,8(a5)
    1262:	02061593          	sll	a1,a2,0x20
    1266:	01c5d713          	srl	a4,a1,0x1c
    126a:	973e                	add	a4,a4,a5
    126c:	fae68ae3          	beq	a3,a4,1220 <free+0x22>
    1270:	e394                	sd	a3,0(a5)
    1272:	00001717          	auipc	a4,0x1
    1276:	22f73723          	sd	a5,558(a4) # 24a0 <freep>
    127a:	6422                	ld	s0,8(sp)
    127c:	0141                	add	sp,sp,16
    127e:	8082                	ret

0000000000001280 <malloc>:
    1280:	7139                	add	sp,sp,-64
    1282:	fc06                	sd	ra,56(sp)
    1284:	f822                	sd	s0,48(sp)
    1286:	f426                	sd	s1,40(sp)
    1288:	ec4e                	sd	s3,24(sp)
    128a:	0080                	add	s0,sp,64
    128c:	02051493          	sll	s1,a0,0x20
    1290:	9081                	srl	s1,s1,0x20
    1292:	04bd                	add	s1,s1,15
    1294:	8091                	srl	s1,s1,0x4
    1296:	0014899b          	addw	s3,s1,1
    129a:	0485                	add	s1,s1,1
    129c:	00001517          	auipc	a0,0x1
    12a0:	20453503          	ld	a0,516(a0) # 24a0 <freep>
    12a4:	c915                	beqz	a0,12d8 <malloc+0x58>
    12a6:	611c                	ld	a5,0(a0)
    12a8:	4798                	lw	a4,8(a5)
    12aa:	08977e63          	bgeu	a4,s1,1346 <malloc+0xc6>
    12ae:	f04a                	sd	s2,32(sp)
    12b0:	e852                	sd	s4,16(sp)
    12b2:	e456                	sd	s5,8(sp)
    12b4:	e05a                	sd	s6,0(sp)
    12b6:	8a4e                	mv	s4,s3
    12b8:	0009871b          	sext.w	a4,s3
    12bc:	6685                	lui	a3,0x1
    12be:	00d77363          	bgeu	a4,a3,12c4 <malloc+0x44>
    12c2:	6a05                	lui	s4,0x1
    12c4:	000a0b1b          	sext.w	s6,s4
    12c8:	004a1a1b          	sllw	s4,s4,0x4
    12cc:	00001917          	auipc	s2,0x1
    12d0:	1d490913          	add	s2,s2,468 # 24a0 <freep>
    12d4:	5afd                	li	s5,-1
    12d6:	a091                	j	131a <malloc+0x9a>
    12d8:	f04a                	sd	s2,32(sp)
    12da:	e852                	sd	s4,16(sp)
    12dc:	e456                	sd	s5,8(sp)
    12de:	e05a                	sd	s6,0(sp)
    12e0:	00001797          	auipc	a5,0x1
    12e4:	5b878793          	add	a5,a5,1464 # 2898 <base>
    12e8:	00001717          	auipc	a4,0x1
    12ec:	1af73c23          	sd	a5,440(a4) # 24a0 <freep>
    12f0:	e39c                	sd	a5,0(a5)
    12f2:	0007a423          	sw	zero,8(a5)
    12f6:	b7c1                	j	12b6 <malloc+0x36>
    12f8:	6398                	ld	a4,0(a5)
    12fa:	e118                	sd	a4,0(a0)
    12fc:	a08d                	j	135e <malloc+0xde>
    12fe:	01652423          	sw	s6,8(a0)
    1302:	0541                	add	a0,a0,16
    1304:	00000097          	auipc	ra,0x0
    1308:	efa080e7          	jalr	-262(ra) # 11fe <free>
    130c:	00093503          	ld	a0,0(s2)
    1310:	c13d                	beqz	a0,1376 <malloc+0xf6>
    1312:	611c                	ld	a5,0(a0)
    1314:	4798                	lw	a4,8(a5)
    1316:	02977463          	bgeu	a4,s1,133e <malloc+0xbe>
    131a:	00093703          	ld	a4,0(s2)
    131e:	853e                	mv	a0,a5
    1320:	fef719e3          	bne	a4,a5,1312 <malloc+0x92>
    1324:	8552                	mv	a0,s4
    1326:	00000097          	auipc	ra,0x0
    132a:	ba2080e7          	jalr	-1118(ra) # ec8 <sbrk>
    132e:	fd5518e3          	bne	a0,s5,12fe <malloc+0x7e>
    1332:	4501                	li	a0,0
    1334:	7902                	ld	s2,32(sp)
    1336:	6a42                	ld	s4,16(sp)
    1338:	6aa2                	ld	s5,8(sp)
    133a:	6b02                	ld	s6,0(sp)
    133c:	a03d                	j	136a <malloc+0xea>
    133e:	7902                	ld	s2,32(sp)
    1340:	6a42                	ld	s4,16(sp)
    1342:	6aa2                	ld	s5,8(sp)
    1344:	6b02                	ld	s6,0(sp)
    1346:	fae489e3          	beq	s1,a4,12f8 <malloc+0x78>
    134a:	4137073b          	subw	a4,a4,s3
    134e:	c798                	sw	a4,8(a5)
    1350:	02071693          	sll	a3,a4,0x20
    1354:	01c6d713          	srl	a4,a3,0x1c
    1358:	97ba                	add	a5,a5,a4
    135a:	0137a423          	sw	s3,8(a5)
    135e:	00001717          	auipc	a4,0x1
    1362:	14a73123          	sd	a0,322(a4) # 24a0 <freep>
    1366:	01078513          	add	a0,a5,16
    136a:	70e2                	ld	ra,56(sp)
    136c:	7442                	ld	s0,48(sp)
    136e:	74a2                	ld	s1,40(sp)
    1370:	69e2                	ld	s3,24(sp)
    1372:	6121                	add	sp,sp,64
    1374:	8082                	ret
    1376:	7902                	ld	s2,32(sp)
    1378:	6a42                	ld	s4,16(sp)
    137a:	6aa2                	ld	s5,8(sp)
    137c:	6b02                	ld	s6,0(sp)
    137e:	b7f5                	j	136a <malloc+0xea>
