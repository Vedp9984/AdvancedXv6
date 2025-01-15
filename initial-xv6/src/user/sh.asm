
user/_sh:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <getcmd>:
       0:	1101                	add	sp,sp,-32
       2:	ec06                	sd	ra,24(sp)
       4:	e822                	sd	s0,16(sp)
       6:	e426                	sd	s1,8(sp)
       8:	e04a                	sd	s2,0(sp)
       a:	1000                	add	s0,sp,32
       c:	84aa                	mv	s1,a0
       e:	892e                	mv	s2,a1
      10:	4609                	li	a2,2
      12:	00001597          	auipc	a1,0x1
      16:	31e58593          	add	a1,a1,798 # 1330 <malloc+0x100>
      1a:	4509                	li	a0,2
      1c:	00001097          	auipc	ra,0x1
      20:	df4080e7          	jalr	-524(ra) # e10 <write>
      24:	864a                	mv	a2,s2
      26:	4581                	li	a1,0
      28:	8526                	mv	a0,s1
      2a:	00001097          	auipc	ra,0x1
      2e:	bcc080e7          	jalr	-1076(ra) # bf6 <memset>
      32:	85ca                	mv	a1,s2
      34:	8526                	mv	a0,s1
      36:	00001097          	auipc	ra,0x1
      3a:	c06080e7          	jalr	-1018(ra) # c3c <gets>
      3e:	0004c503          	lbu	a0,0(s1)
      42:	00153513          	seqz	a0,a0
      46:	40a00533          	neg	a0,a0
      4a:	60e2                	ld	ra,24(sp)
      4c:	6442                	ld	s0,16(sp)
      4e:	64a2                	ld	s1,8(sp)
      50:	6902                	ld	s2,0(sp)
      52:	6105                	add	sp,sp,32
      54:	8082                	ret

0000000000000056 <panic>:
      56:	1141                	add	sp,sp,-16
      58:	e406                	sd	ra,8(sp)
      5a:	e022                	sd	s0,0(sp)
      5c:	0800                	add	s0,sp,16
      5e:	862a                	mv	a2,a0
      60:	00001597          	auipc	a1,0x1
      64:	2d858593          	add	a1,a1,728 # 1338 <malloc+0x108>
      68:	4509                	li	a0,2
      6a:	00001097          	auipc	ra,0x1
      6e:	0e0080e7          	jalr	224(ra) # 114a <fprintf>
      72:	4505                	li	a0,1
      74:	00001097          	auipc	ra,0x1
      78:	d7c080e7          	jalr	-644(ra) # df0 <exit>

000000000000007c <fork1>:
      7c:	1141                	add	sp,sp,-16
      7e:	e406                	sd	ra,8(sp)
      80:	e022                	sd	s0,0(sp)
      82:	0800                	add	s0,sp,16
      84:	00001097          	auipc	ra,0x1
      88:	d64080e7          	jalr	-668(ra) # de8 <fork>
      8c:	57fd                	li	a5,-1
      8e:	00f50663          	beq	a0,a5,9a <fork1+0x1e>
      92:	60a2                	ld	ra,8(sp)
      94:	6402                	ld	s0,0(sp)
      96:	0141                	add	sp,sp,16
      98:	8082                	ret
      9a:	00001517          	auipc	a0,0x1
      9e:	2a650513          	add	a0,a0,678 # 1340 <malloc+0x110>
      a2:	00000097          	auipc	ra,0x0
      a6:	fb4080e7          	jalr	-76(ra) # 56 <panic>

00000000000000aa <runcmd>:
      aa:	7179                	add	sp,sp,-48
      ac:	f406                	sd	ra,40(sp)
      ae:	f022                	sd	s0,32(sp)
      b0:	1800                	add	s0,sp,48
      b2:	c115                	beqz	a0,d6 <runcmd+0x2c>
      b4:	ec26                	sd	s1,24(sp)
      b6:	84aa                	mv	s1,a0
      b8:	4118                	lw	a4,0(a0)
      ba:	4795                	li	a5,5
      bc:	02e7e363          	bltu	a5,a4,e2 <runcmd+0x38>
      c0:	00056783          	lwu	a5,0(a0)
      c4:	078a                	sll	a5,a5,0x2
      c6:	00001717          	auipc	a4,0x1
      ca:	37a70713          	add	a4,a4,890 # 1440 <malloc+0x210>
      ce:	97ba                	add	a5,a5,a4
      d0:	439c                	lw	a5,0(a5)
      d2:	97ba                	add	a5,a5,a4
      d4:	8782                	jr	a5
      d6:	ec26                	sd	s1,24(sp)
      d8:	4505                	li	a0,1
      da:	00001097          	auipc	ra,0x1
      de:	d16080e7          	jalr	-746(ra) # df0 <exit>
      e2:	00001517          	auipc	a0,0x1
      e6:	26650513          	add	a0,a0,614 # 1348 <malloc+0x118>
      ea:	00000097          	auipc	ra,0x0
      ee:	f6c080e7          	jalr	-148(ra) # 56 <panic>
      f2:	6508                	ld	a0,8(a0)
      f4:	c515                	beqz	a0,120 <runcmd+0x76>
      f6:	00848593          	add	a1,s1,8
      fa:	00001097          	auipc	ra,0x1
      fe:	d2e080e7          	jalr	-722(ra) # e28 <exec>
     102:	6490                	ld	a2,8(s1)
     104:	00001597          	auipc	a1,0x1
     108:	24c58593          	add	a1,a1,588 # 1350 <malloc+0x120>
     10c:	4509                	li	a0,2
     10e:	00001097          	auipc	ra,0x1
     112:	03c080e7          	jalr	60(ra) # 114a <fprintf>
     116:	4501                	li	a0,0
     118:	00001097          	auipc	ra,0x1
     11c:	cd8080e7          	jalr	-808(ra) # df0 <exit>
     120:	4505                	li	a0,1
     122:	00001097          	auipc	ra,0x1
     126:	cce080e7          	jalr	-818(ra) # df0 <exit>
     12a:	5148                	lw	a0,36(a0)
     12c:	00001097          	auipc	ra,0x1
     130:	cec080e7          	jalr	-788(ra) # e18 <close>
     134:	508c                	lw	a1,32(s1)
     136:	6888                	ld	a0,16(s1)
     138:	00001097          	auipc	ra,0x1
     13c:	cf8080e7          	jalr	-776(ra) # e30 <open>
     140:	00054763          	bltz	a0,14e <runcmd+0xa4>
     144:	6488                	ld	a0,8(s1)
     146:	00000097          	auipc	ra,0x0
     14a:	f64080e7          	jalr	-156(ra) # aa <runcmd>
     14e:	6890                	ld	a2,16(s1)
     150:	00001597          	auipc	a1,0x1
     154:	21058593          	add	a1,a1,528 # 1360 <malloc+0x130>
     158:	4509                	li	a0,2
     15a:	00001097          	auipc	ra,0x1
     15e:	ff0080e7          	jalr	-16(ra) # 114a <fprintf>
     162:	4505                	li	a0,1
     164:	00001097          	auipc	ra,0x1
     168:	c8c080e7          	jalr	-884(ra) # df0 <exit>
     16c:	00000097          	auipc	ra,0x0
     170:	f10080e7          	jalr	-240(ra) # 7c <fork1>
     174:	e511                	bnez	a0,180 <runcmd+0xd6>
     176:	6488                	ld	a0,8(s1)
     178:	00000097          	auipc	ra,0x0
     17c:	f32080e7          	jalr	-206(ra) # aa <runcmd>
     180:	4501                	li	a0,0
     182:	00001097          	auipc	ra,0x1
     186:	c76080e7          	jalr	-906(ra) # df8 <wait>
     18a:	6888                	ld	a0,16(s1)
     18c:	00000097          	auipc	ra,0x0
     190:	f1e080e7          	jalr	-226(ra) # aa <runcmd>
     194:	fd840513          	add	a0,s0,-40
     198:	00001097          	auipc	ra,0x1
     19c:	c68080e7          	jalr	-920(ra) # e00 <pipe>
     1a0:	04054363          	bltz	a0,1e6 <runcmd+0x13c>
     1a4:	00000097          	auipc	ra,0x0
     1a8:	ed8080e7          	jalr	-296(ra) # 7c <fork1>
     1ac:	e529                	bnez	a0,1f6 <runcmd+0x14c>
     1ae:	4505                	li	a0,1
     1b0:	00001097          	auipc	ra,0x1
     1b4:	c68080e7          	jalr	-920(ra) # e18 <close>
     1b8:	fdc42503          	lw	a0,-36(s0)
     1bc:	00001097          	auipc	ra,0x1
     1c0:	cac080e7          	jalr	-852(ra) # e68 <dup>
     1c4:	fd842503          	lw	a0,-40(s0)
     1c8:	00001097          	auipc	ra,0x1
     1cc:	c50080e7          	jalr	-944(ra) # e18 <close>
     1d0:	fdc42503          	lw	a0,-36(s0)
     1d4:	00001097          	auipc	ra,0x1
     1d8:	c44080e7          	jalr	-956(ra) # e18 <close>
     1dc:	6488                	ld	a0,8(s1)
     1de:	00000097          	auipc	ra,0x0
     1e2:	ecc080e7          	jalr	-308(ra) # aa <runcmd>
     1e6:	00001517          	auipc	a0,0x1
     1ea:	18a50513          	add	a0,a0,394 # 1370 <malloc+0x140>
     1ee:	00000097          	auipc	ra,0x0
     1f2:	e68080e7          	jalr	-408(ra) # 56 <panic>
     1f6:	00000097          	auipc	ra,0x0
     1fa:	e86080e7          	jalr	-378(ra) # 7c <fork1>
     1fe:	ed05                	bnez	a0,236 <runcmd+0x18c>
     200:	00001097          	auipc	ra,0x1
     204:	c18080e7          	jalr	-1000(ra) # e18 <close>
     208:	fd842503          	lw	a0,-40(s0)
     20c:	00001097          	auipc	ra,0x1
     210:	c5c080e7          	jalr	-932(ra) # e68 <dup>
     214:	fd842503          	lw	a0,-40(s0)
     218:	00001097          	auipc	ra,0x1
     21c:	c00080e7          	jalr	-1024(ra) # e18 <close>
     220:	fdc42503          	lw	a0,-36(s0)
     224:	00001097          	auipc	ra,0x1
     228:	bf4080e7          	jalr	-1036(ra) # e18 <close>
     22c:	6888                	ld	a0,16(s1)
     22e:	00000097          	auipc	ra,0x0
     232:	e7c080e7          	jalr	-388(ra) # aa <runcmd>
     236:	fd842503          	lw	a0,-40(s0)
     23a:	00001097          	auipc	ra,0x1
     23e:	bde080e7          	jalr	-1058(ra) # e18 <close>
     242:	fdc42503          	lw	a0,-36(s0)
     246:	00001097          	auipc	ra,0x1
     24a:	bd2080e7          	jalr	-1070(ra) # e18 <close>
     24e:	4501                	li	a0,0
     250:	00001097          	auipc	ra,0x1
     254:	ba8080e7          	jalr	-1112(ra) # df8 <wait>
     258:	4501                	li	a0,0
     25a:	00001097          	auipc	ra,0x1
     25e:	b9e080e7          	jalr	-1122(ra) # df8 <wait>
     262:	bd55                	j	116 <runcmd+0x6c>
     264:	00000097          	auipc	ra,0x0
     268:	e18080e7          	jalr	-488(ra) # 7c <fork1>
     26c:	ea0515e3          	bnez	a0,116 <runcmd+0x6c>
     270:	6488                	ld	a0,8(s1)
     272:	00000097          	auipc	ra,0x0
     276:	e38080e7          	jalr	-456(ra) # aa <runcmd>

000000000000027a <execcmd>:
     27a:	1101                	add	sp,sp,-32
     27c:	ec06                	sd	ra,24(sp)
     27e:	e822                	sd	s0,16(sp)
     280:	e426                	sd	s1,8(sp)
     282:	1000                	add	s0,sp,32
     284:	0a800513          	li	a0,168
     288:	00001097          	auipc	ra,0x1
     28c:	fa8080e7          	jalr	-88(ra) # 1230 <malloc>
     290:	84aa                	mv	s1,a0
     292:	0a800613          	li	a2,168
     296:	4581                	li	a1,0
     298:	00001097          	auipc	ra,0x1
     29c:	95e080e7          	jalr	-1698(ra) # bf6 <memset>
     2a0:	4785                	li	a5,1
     2a2:	c09c                	sw	a5,0(s1)
     2a4:	8526                	mv	a0,s1
     2a6:	60e2                	ld	ra,24(sp)
     2a8:	6442                	ld	s0,16(sp)
     2aa:	64a2                	ld	s1,8(sp)
     2ac:	6105                	add	sp,sp,32
     2ae:	8082                	ret

00000000000002b0 <redircmd>:
     2b0:	7139                	add	sp,sp,-64
     2b2:	fc06                	sd	ra,56(sp)
     2b4:	f822                	sd	s0,48(sp)
     2b6:	f426                	sd	s1,40(sp)
     2b8:	f04a                	sd	s2,32(sp)
     2ba:	ec4e                	sd	s3,24(sp)
     2bc:	e852                	sd	s4,16(sp)
     2be:	e456                	sd	s5,8(sp)
     2c0:	e05a                	sd	s6,0(sp)
     2c2:	0080                	add	s0,sp,64
     2c4:	8b2a                	mv	s6,a0
     2c6:	8aae                	mv	s5,a1
     2c8:	8a32                	mv	s4,a2
     2ca:	89b6                	mv	s3,a3
     2cc:	893a                	mv	s2,a4
     2ce:	02800513          	li	a0,40
     2d2:	00001097          	auipc	ra,0x1
     2d6:	f5e080e7          	jalr	-162(ra) # 1230 <malloc>
     2da:	84aa                	mv	s1,a0
     2dc:	02800613          	li	a2,40
     2e0:	4581                	li	a1,0
     2e2:	00001097          	auipc	ra,0x1
     2e6:	914080e7          	jalr	-1772(ra) # bf6 <memset>
     2ea:	4789                	li	a5,2
     2ec:	c09c                	sw	a5,0(s1)
     2ee:	0164b423          	sd	s6,8(s1)
     2f2:	0154b823          	sd	s5,16(s1)
     2f6:	0144bc23          	sd	s4,24(s1)
     2fa:	0334a023          	sw	s3,32(s1)
     2fe:	0324a223          	sw	s2,36(s1)
     302:	8526                	mv	a0,s1
     304:	70e2                	ld	ra,56(sp)
     306:	7442                	ld	s0,48(sp)
     308:	74a2                	ld	s1,40(sp)
     30a:	7902                	ld	s2,32(sp)
     30c:	69e2                	ld	s3,24(sp)
     30e:	6a42                	ld	s4,16(sp)
     310:	6aa2                	ld	s5,8(sp)
     312:	6b02                	ld	s6,0(sp)
     314:	6121                	add	sp,sp,64
     316:	8082                	ret

0000000000000318 <pipecmd>:
     318:	7179                	add	sp,sp,-48
     31a:	f406                	sd	ra,40(sp)
     31c:	f022                	sd	s0,32(sp)
     31e:	ec26                	sd	s1,24(sp)
     320:	e84a                	sd	s2,16(sp)
     322:	e44e                	sd	s3,8(sp)
     324:	1800                	add	s0,sp,48
     326:	89aa                	mv	s3,a0
     328:	892e                	mv	s2,a1
     32a:	4561                	li	a0,24
     32c:	00001097          	auipc	ra,0x1
     330:	f04080e7          	jalr	-252(ra) # 1230 <malloc>
     334:	84aa                	mv	s1,a0
     336:	4661                	li	a2,24
     338:	4581                	li	a1,0
     33a:	00001097          	auipc	ra,0x1
     33e:	8bc080e7          	jalr	-1860(ra) # bf6 <memset>
     342:	478d                	li	a5,3
     344:	c09c                	sw	a5,0(s1)
     346:	0134b423          	sd	s3,8(s1)
     34a:	0124b823          	sd	s2,16(s1)
     34e:	8526                	mv	a0,s1
     350:	70a2                	ld	ra,40(sp)
     352:	7402                	ld	s0,32(sp)
     354:	64e2                	ld	s1,24(sp)
     356:	6942                	ld	s2,16(sp)
     358:	69a2                	ld	s3,8(sp)
     35a:	6145                	add	sp,sp,48
     35c:	8082                	ret

000000000000035e <listcmd>:
     35e:	7179                	add	sp,sp,-48
     360:	f406                	sd	ra,40(sp)
     362:	f022                	sd	s0,32(sp)
     364:	ec26                	sd	s1,24(sp)
     366:	e84a                	sd	s2,16(sp)
     368:	e44e                	sd	s3,8(sp)
     36a:	1800                	add	s0,sp,48
     36c:	89aa                	mv	s3,a0
     36e:	892e                	mv	s2,a1
     370:	4561                	li	a0,24
     372:	00001097          	auipc	ra,0x1
     376:	ebe080e7          	jalr	-322(ra) # 1230 <malloc>
     37a:	84aa                	mv	s1,a0
     37c:	4661                	li	a2,24
     37e:	4581                	li	a1,0
     380:	00001097          	auipc	ra,0x1
     384:	876080e7          	jalr	-1930(ra) # bf6 <memset>
     388:	4791                	li	a5,4
     38a:	c09c                	sw	a5,0(s1)
     38c:	0134b423          	sd	s3,8(s1)
     390:	0124b823          	sd	s2,16(s1)
     394:	8526                	mv	a0,s1
     396:	70a2                	ld	ra,40(sp)
     398:	7402                	ld	s0,32(sp)
     39a:	64e2                	ld	s1,24(sp)
     39c:	6942                	ld	s2,16(sp)
     39e:	69a2                	ld	s3,8(sp)
     3a0:	6145                	add	sp,sp,48
     3a2:	8082                	ret

00000000000003a4 <backcmd>:
     3a4:	1101                	add	sp,sp,-32
     3a6:	ec06                	sd	ra,24(sp)
     3a8:	e822                	sd	s0,16(sp)
     3aa:	e426                	sd	s1,8(sp)
     3ac:	e04a                	sd	s2,0(sp)
     3ae:	1000                	add	s0,sp,32
     3b0:	892a                	mv	s2,a0
     3b2:	4541                	li	a0,16
     3b4:	00001097          	auipc	ra,0x1
     3b8:	e7c080e7          	jalr	-388(ra) # 1230 <malloc>
     3bc:	84aa                	mv	s1,a0
     3be:	4641                	li	a2,16
     3c0:	4581                	li	a1,0
     3c2:	00001097          	auipc	ra,0x1
     3c6:	834080e7          	jalr	-1996(ra) # bf6 <memset>
     3ca:	4795                	li	a5,5
     3cc:	c09c                	sw	a5,0(s1)
     3ce:	0124b423          	sd	s2,8(s1)
     3d2:	8526                	mv	a0,s1
     3d4:	60e2                	ld	ra,24(sp)
     3d6:	6442                	ld	s0,16(sp)
     3d8:	64a2                	ld	s1,8(sp)
     3da:	6902                	ld	s2,0(sp)
     3dc:	6105                	add	sp,sp,32
     3de:	8082                	ret

00000000000003e0 <gettoken>:
     3e0:	7139                	add	sp,sp,-64
     3e2:	fc06                	sd	ra,56(sp)
     3e4:	f822                	sd	s0,48(sp)
     3e6:	f426                	sd	s1,40(sp)
     3e8:	f04a                	sd	s2,32(sp)
     3ea:	ec4e                	sd	s3,24(sp)
     3ec:	e852                	sd	s4,16(sp)
     3ee:	e456                	sd	s5,8(sp)
     3f0:	e05a                	sd	s6,0(sp)
     3f2:	0080                	add	s0,sp,64
     3f4:	8a2a                	mv	s4,a0
     3f6:	892e                	mv	s2,a1
     3f8:	8ab2                	mv	s5,a2
     3fa:	8b36                	mv	s6,a3
     3fc:	6104                	ld	s1,0(a0)
     3fe:	00002997          	auipc	s3,0x2
     402:	3da98993          	add	s3,s3,986 # 27d8 <whitespace>
     406:	00b4fe63          	bgeu	s1,a1,422 <gettoken+0x42>
     40a:	0004c583          	lbu	a1,0(s1)
     40e:	854e                	mv	a0,s3
     410:	00001097          	auipc	ra,0x1
     414:	808080e7          	jalr	-2040(ra) # c18 <strchr>
     418:	c509                	beqz	a0,422 <gettoken+0x42>
     41a:	0485                	add	s1,s1,1
     41c:	fe9917e3          	bne	s2,s1,40a <gettoken+0x2a>
     420:	84ca                	mv	s1,s2
     422:	000a8463          	beqz	s5,42a <gettoken+0x4a>
     426:	009ab023          	sd	s1,0(s5)
     42a:	0004c783          	lbu	a5,0(s1)
     42e:	00078a9b          	sext.w	s5,a5
     432:	03c00713          	li	a4,60
     436:	06f76663          	bltu	a4,a5,4a2 <gettoken+0xc2>
     43a:	03a00713          	li	a4,58
     43e:	00f76e63          	bltu	a4,a5,45a <gettoken+0x7a>
     442:	cf89                	beqz	a5,45c <gettoken+0x7c>
     444:	02600713          	li	a4,38
     448:	00e78963          	beq	a5,a4,45a <gettoken+0x7a>
     44c:	fd87879b          	addw	a5,a5,-40
     450:	0ff7f793          	zext.b	a5,a5
     454:	4705                	li	a4,1
     456:	06f76d63          	bltu	a4,a5,4d0 <gettoken+0xf0>
     45a:	0485                	add	s1,s1,1
     45c:	000b0463          	beqz	s6,464 <gettoken+0x84>
     460:	009b3023          	sd	s1,0(s6)
     464:	00002997          	auipc	s3,0x2
     468:	37498993          	add	s3,s3,884 # 27d8 <whitespace>
     46c:	0124fe63          	bgeu	s1,s2,488 <gettoken+0xa8>
     470:	0004c583          	lbu	a1,0(s1)
     474:	854e                	mv	a0,s3
     476:	00000097          	auipc	ra,0x0
     47a:	7a2080e7          	jalr	1954(ra) # c18 <strchr>
     47e:	c509                	beqz	a0,488 <gettoken+0xa8>
     480:	0485                	add	s1,s1,1
     482:	fe9917e3          	bne	s2,s1,470 <gettoken+0x90>
     486:	84ca                	mv	s1,s2
     488:	009a3023          	sd	s1,0(s4)
     48c:	8556                	mv	a0,s5
     48e:	70e2                	ld	ra,56(sp)
     490:	7442                	ld	s0,48(sp)
     492:	74a2                	ld	s1,40(sp)
     494:	7902                	ld	s2,32(sp)
     496:	69e2                	ld	s3,24(sp)
     498:	6a42                	ld	s4,16(sp)
     49a:	6aa2                	ld	s5,8(sp)
     49c:	6b02                	ld	s6,0(sp)
     49e:	6121                	add	sp,sp,64
     4a0:	8082                	ret
     4a2:	03e00713          	li	a4,62
     4a6:	02e79163          	bne	a5,a4,4c8 <gettoken+0xe8>
     4aa:	00148693          	add	a3,s1,1
     4ae:	0014c703          	lbu	a4,1(s1)
     4b2:	03e00793          	li	a5,62
     4b6:	0489                	add	s1,s1,2
     4b8:	02b00a93          	li	s5,43
     4bc:	faf700e3          	beq	a4,a5,45c <gettoken+0x7c>
     4c0:	84b6                	mv	s1,a3
     4c2:	03e00a93          	li	s5,62
     4c6:	bf59                	j	45c <gettoken+0x7c>
     4c8:	07c00713          	li	a4,124
     4cc:	f8e787e3          	beq	a5,a4,45a <gettoken+0x7a>
     4d0:	00002997          	auipc	s3,0x2
     4d4:	30898993          	add	s3,s3,776 # 27d8 <whitespace>
     4d8:	00002a97          	auipc	s5,0x2
     4dc:	2f8a8a93          	add	s5,s5,760 # 27d0 <symbols>
     4e0:	0524f163          	bgeu	s1,s2,522 <gettoken+0x142>
     4e4:	0004c583          	lbu	a1,0(s1)
     4e8:	854e                	mv	a0,s3
     4ea:	00000097          	auipc	ra,0x0
     4ee:	72e080e7          	jalr	1838(ra) # c18 <strchr>
     4f2:	e50d                	bnez	a0,51c <gettoken+0x13c>
     4f4:	0004c583          	lbu	a1,0(s1)
     4f8:	8556                	mv	a0,s5
     4fa:	00000097          	auipc	ra,0x0
     4fe:	71e080e7          	jalr	1822(ra) # c18 <strchr>
     502:	e911                	bnez	a0,516 <gettoken+0x136>
     504:	0485                	add	s1,s1,1
     506:	fc991fe3          	bne	s2,s1,4e4 <gettoken+0x104>
     50a:	84ca                	mv	s1,s2
     50c:	06100a93          	li	s5,97
     510:	f40b18e3          	bnez	s6,460 <gettoken+0x80>
     514:	bf95                	j	488 <gettoken+0xa8>
     516:	06100a93          	li	s5,97
     51a:	b789                	j	45c <gettoken+0x7c>
     51c:	06100a93          	li	s5,97
     520:	bf35                	j	45c <gettoken+0x7c>
     522:	06100a93          	li	s5,97
     526:	f20b1de3          	bnez	s6,460 <gettoken+0x80>
     52a:	bfb9                	j	488 <gettoken+0xa8>

000000000000052c <peek>:
     52c:	7139                	add	sp,sp,-64
     52e:	fc06                	sd	ra,56(sp)
     530:	f822                	sd	s0,48(sp)
     532:	f426                	sd	s1,40(sp)
     534:	f04a                	sd	s2,32(sp)
     536:	ec4e                	sd	s3,24(sp)
     538:	e852                	sd	s4,16(sp)
     53a:	e456                	sd	s5,8(sp)
     53c:	0080                	add	s0,sp,64
     53e:	8a2a                	mv	s4,a0
     540:	892e                	mv	s2,a1
     542:	8ab2                	mv	s5,a2
     544:	6104                	ld	s1,0(a0)
     546:	00002997          	auipc	s3,0x2
     54a:	29298993          	add	s3,s3,658 # 27d8 <whitespace>
     54e:	00b4fe63          	bgeu	s1,a1,56a <peek+0x3e>
     552:	0004c583          	lbu	a1,0(s1)
     556:	854e                	mv	a0,s3
     558:	00000097          	auipc	ra,0x0
     55c:	6c0080e7          	jalr	1728(ra) # c18 <strchr>
     560:	c509                	beqz	a0,56a <peek+0x3e>
     562:	0485                	add	s1,s1,1
     564:	fe9917e3          	bne	s2,s1,552 <peek+0x26>
     568:	84ca                	mv	s1,s2
     56a:	009a3023          	sd	s1,0(s4)
     56e:	0004c583          	lbu	a1,0(s1)
     572:	4501                	li	a0,0
     574:	e991                	bnez	a1,588 <peek+0x5c>
     576:	70e2                	ld	ra,56(sp)
     578:	7442                	ld	s0,48(sp)
     57a:	74a2                	ld	s1,40(sp)
     57c:	7902                	ld	s2,32(sp)
     57e:	69e2                	ld	s3,24(sp)
     580:	6a42                	ld	s4,16(sp)
     582:	6aa2                	ld	s5,8(sp)
     584:	6121                	add	sp,sp,64
     586:	8082                	ret
     588:	8556                	mv	a0,s5
     58a:	00000097          	auipc	ra,0x0
     58e:	68e080e7          	jalr	1678(ra) # c18 <strchr>
     592:	00a03533          	snez	a0,a0
     596:	b7c5                	j	576 <peek+0x4a>

0000000000000598 <parseredirs>:
     598:	711d                	add	sp,sp,-96
     59a:	ec86                	sd	ra,88(sp)
     59c:	e8a2                	sd	s0,80(sp)
     59e:	e4a6                	sd	s1,72(sp)
     5a0:	e0ca                	sd	s2,64(sp)
     5a2:	fc4e                	sd	s3,56(sp)
     5a4:	f852                	sd	s4,48(sp)
     5a6:	f456                	sd	s5,40(sp)
     5a8:	f05a                	sd	s6,32(sp)
     5aa:	ec5e                	sd	s7,24(sp)
     5ac:	1080                	add	s0,sp,96
     5ae:	8a2a                	mv	s4,a0
     5b0:	89ae                	mv	s3,a1
     5b2:	8932                	mv	s2,a2
     5b4:	00001a97          	auipc	s5,0x1
     5b8:	de4a8a93          	add	s5,s5,-540 # 1398 <malloc+0x168>
     5bc:	06100b13          	li	s6,97
     5c0:	03c00b93          	li	s7,60
     5c4:	a02d                	j	5ee <parseredirs+0x56>
     5c6:	00001517          	auipc	a0,0x1
     5ca:	db250513          	add	a0,a0,-590 # 1378 <malloc+0x148>
     5ce:	00000097          	auipc	ra,0x0
     5d2:	a88080e7          	jalr	-1400(ra) # 56 <panic>
     5d6:	4701                	li	a4,0
     5d8:	4681                	li	a3,0
     5da:	fa043603          	ld	a2,-96(s0)
     5de:	fa843583          	ld	a1,-88(s0)
     5e2:	8552                	mv	a0,s4
     5e4:	00000097          	auipc	ra,0x0
     5e8:	ccc080e7          	jalr	-820(ra) # 2b0 <redircmd>
     5ec:	8a2a                	mv	s4,a0
     5ee:	8656                	mv	a2,s5
     5f0:	85ca                	mv	a1,s2
     5f2:	854e                	mv	a0,s3
     5f4:	00000097          	auipc	ra,0x0
     5f8:	f38080e7          	jalr	-200(ra) # 52c <peek>
     5fc:	cd25                	beqz	a0,674 <parseredirs+0xdc>
     5fe:	4681                	li	a3,0
     600:	4601                	li	a2,0
     602:	85ca                	mv	a1,s2
     604:	854e                	mv	a0,s3
     606:	00000097          	auipc	ra,0x0
     60a:	dda080e7          	jalr	-550(ra) # 3e0 <gettoken>
     60e:	84aa                	mv	s1,a0
     610:	fa040693          	add	a3,s0,-96
     614:	fa840613          	add	a2,s0,-88
     618:	85ca                	mv	a1,s2
     61a:	854e                	mv	a0,s3
     61c:	00000097          	auipc	ra,0x0
     620:	dc4080e7          	jalr	-572(ra) # 3e0 <gettoken>
     624:	fb6511e3          	bne	a0,s6,5c6 <parseredirs+0x2e>
     628:	fb7487e3          	beq	s1,s7,5d6 <parseredirs+0x3e>
     62c:	03e00793          	li	a5,62
     630:	02f48463          	beq	s1,a5,658 <parseredirs+0xc0>
     634:	02b00793          	li	a5,43
     638:	faf49be3          	bne	s1,a5,5ee <parseredirs+0x56>
     63c:	4705                	li	a4,1
     63e:	20100693          	li	a3,513
     642:	fa043603          	ld	a2,-96(s0)
     646:	fa843583          	ld	a1,-88(s0)
     64a:	8552                	mv	a0,s4
     64c:	00000097          	auipc	ra,0x0
     650:	c64080e7          	jalr	-924(ra) # 2b0 <redircmd>
     654:	8a2a                	mv	s4,a0
     656:	bf61                	j	5ee <parseredirs+0x56>
     658:	4705                	li	a4,1
     65a:	60100693          	li	a3,1537
     65e:	fa043603          	ld	a2,-96(s0)
     662:	fa843583          	ld	a1,-88(s0)
     666:	8552                	mv	a0,s4
     668:	00000097          	auipc	ra,0x0
     66c:	c48080e7          	jalr	-952(ra) # 2b0 <redircmd>
     670:	8a2a                	mv	s4,a0
     672:	bfb5                	j	5ee <parseredirs+0x56>
     674:	8552                	mv	a0,s4
     676:	60e6                	ld	ra,88(sp)
     678:	6446                	ld	s0,80(sp)
     67a:	64a6                	ld	s1,72(sp)
     67c:	6906                	ld	s2,64(sp)
     67e:	79e2                	ld	s3,56(sp)
     680:	7a42                	ld	s4,48(sp)
     682:	7aa2                	ld	s5,40(sp)
     684:	7b02                	ld	s6,32(sp)
     686:	6be2                	ld	s7,24(sp)
     688:	6125                	add	sp,sp,96
     68a:	8082                	ret

000000000000068c <parseexec>:
     68c:	7159                	add	sp,sp,-112
     68e:	f486                	sd	ra,104(sp)
     690:	f0a2                	sd	s0,96(sp)
     692:	eca6                	sd	s1,88(sp)
     694:	e0d2                	sd	s4,64(sp)
     696:	fc56                	sd	s5,56(sp)
     698:	1880                	add	s0,sp,112
     69a:	8a2a                	mv	s4,a0
     69c:	8aae                	mv	s5,a1
     69e:	00001617          	auipc	a2,0x1
     6a2:	d0260613          	add	a2,a2,-766 # 13a0 <malloc+0x170>
     6a6:	00000097          	auipc	ra,0x0
     6aa:	e86080e7          	jalr	-378(ra) # 52c <peek>
     6ae:	ed15                	bnez	a0,6ea <parseexec+0x5e>
     6b0:	e8ca                	sd	s2,80(sp)
     6b2:	e4ce                	sd	s3,72(sp)
     6b4:	f85a                	sd	s6,48(sp)
     6b6:	f45e                	sd	s7,40(sp)
     6b8:	f062                	sd	s8,32(sp)
     6ba:	ec66                	sd	s9,24(sp)
     6bc:	89aa                	mv	s3,a0
     6be:	00000097          	auipc	ra,0x0
     6c2:	bbc080e7          	jalr	-1092(ra) # 27a <execcmd>
     6c6:	8c2a                	mv	s8,a0
     6c8:	8656                	mv	a2,s5
     6ca:	85d2                	mv	a1,s4
     6cc:	00000097          	auipc	ra,0x0
     6d0:	ecc080e7          	jalr	-308(ra) # 598 <parseredirs>
     6d4:	84aa                	mv	s1,a0
     6d6:	008c0913          	add	s2,s8,8
     6da:	00001b17          	auipc	s6,0x1
     6de:	ce6b0b13          	add	s6,s6,-794 # 13c0 <malloc+0x190>
     6e2:	06100c93          	li	s9,97
     6e6:	4ba9                	li	s7,10
     6e8:	a081                	j	728 <parseexec+0x9c>
     6ea:	85d6                	mv	a1,s5
     6ec:	8552                	mv	a0,s4
     6ee:	00000097          	auipc	ra,0x0
     6f2:	1bc080e7          	jalr	444(ra) # 8aa <parseblock>
     6f6:	84aa                	mv	s1,a0
     6f8:	8526                	mv	a0,s1
     6fa:	70a6                	ld	ra,104(sp)
     6fc:	7406                	ld	s0,96(sp)
     6fe:	64e6                	ld	s1,88(sp)
     700:	6a06                	ld	s4,64(sp)
     702:	7ae2                	ld	s5,56(sp)
     704:	6165                	add	sp,sp,112
     706:	8082                	ret
     708:	00001517          	auipc	a0,0x1
     70c:	ca050513          	add	a0,a0,-864 # 13a8 <malloc+0x178>
     710:	00000097          	auipc	ra,0x0
     714:	946080e7          	jalr	-1722(ra) # 56 <panic>
     718:	8656                	mv	a2,s5
     71a:	85d2                	mv	a1,s4
     71c:	8526                	mv	a0,s1
     71e:	00000097          	auipc	ra,0x0
     722:	e7a080e7          	jalr	-390(ra) # 598 <parseredirs>
     726:	84aa                	mv	s1,a0
     728:	865a                	mv	a2,s6
     72a:	85d6                	mv	a1,s5
     72c:	8552                	mv	a0,s4
     72e:	00000097          	auipc	ra,0x0
     732:	dfe080e7          	jalr	-514(ra) # 52c <peek>
     736:	e131                	bnez	a0,77a <parseexec+0xee>
     738:	f9040693          	add	a3,s0,-112
     73c:	f9840613          	add	a2,s0,-104
     740:	85d6                	mv	a1,s5
     742:	8552                	mv	a0,s4
     744:	00000097          	auipc	ra,0x0
     748:	c9c080e7          	jalr	-868(ra) # 3e0 <gettoken>
     74c:	c51d                	beqz	a0,77a <parseexec+0xee>
     74e:	fb951de3          	bne	a0,s9,708 <parseexec+0x7c>
     752:	f9843783          	ld	a5,-104(s0)
     756:	00f93023          	sd	a5,0(s2)
     75a:	f9043783          	ld	a5,-112(s0)
     75e:	04f93823          	sd	a5,80(s2)
     762:	2985                	addw	s3,s3,1
     764:	0921                	add	s2,s2,8
     766:	fb7999e3          	bne	s3,s7,718 <parseexec+0x8c>
     76a:	00001517          	auipc	a0,0x1
     76e:	c4650513          	add	a0,a0,-954 # 13b0 <malloc+0x180>
     772:	00000097          	auipc	ra,0x0
     776:	8e4080e7          	jalr	-1820(ra) # 56 <panic>
     77a:	098e                	sll	s3,s3,0x3
     77c:	9c4e                	add	s8,s8,s3
     77e:	000c3423          	sd	zero,8(s8)
     782:	040c3c23          	sd	zero,88(s8)
     786:	6946                	ld	s2,80(sp)
     788:	69a6                	ld	s3,72(sp)
     78a:	7b42                	ld	s6,48(sp)
     78c:	7ba2                	ld	s7,40(sp)
     78e:	7c02                	ld	s8,32(sp)
     790:	6ce2                	ld	s9,24(sp)
     792:	b79d                	j	6f8 <parseexec+0x6c>

0000000000000794 <parsepipe>:
     794:	7179                	add	sp,sp,-48
     796:	f406                	sd	ra,40(sp)
     798:	f022                	sd	s0,32(sp)
     79a:	ec26                	sd	s1,24(sp)
     79c:	e84a                	sd	s2,16(sp)
     79e:	e44e                	sd	s3,8(sp)
     7a0:	1800                	add	s0,sp,48
     7a2:	892a                	mv	s2,a0
     7a4:	89ae                	mv	s3,a1
     7a6:	00000097          	auipc	ra,0x0
     7aa:	ee6080e7          	jalr	-282(ra) # 68c <parseexec>
     7ae:	84aa                	mv	s1,a0
     7b0:	00001617          	auipc	a2,0x1
     7b4:	c1860613          	add	a2,a2,-1000 # 13c8 <malloc+0x198>
     7b8:	85ce                	mv	a1,s3
     7ba:	854a                	mv	a0,s2
     7bc:	00000097          	auipc	ra,0x0
     7c0:	d70080e7          	jalr	-656(ra) # 52c <peek>
     7c4:	e909                	bnez	a0,7d6 <parsepipe+0x42>
     7c6:	8526                	mv	a0,s1
     7c8:	70a2                	ld	ra,40(sp)
     7ca:	7402                	ld	s0,32(sp)
     7cc:	64e2                	ld	s1,24(sp)
     7ce:	6942                	ld	s2,16(sp)
     7d0:	69a2                	ld	s3,8(sp)
     7d2:	6145                	add	sp,sp,48
     7d4:	8082                	ret
     7d6:	4681                	li	a3,0
     7d8:	4601                	li	a2,0
     7da:	85ce                	mv	a1,s3
     7dc:	854a                	mv	a0,s2
     7de:	00000097          	auipc	ra,0x0
     7e2:	c02080e7          	jalr	-1022(ra) # 3e0 <gettoken>
     7e6:	85ce                	mv	a1,s3
     7e8:	854a                	mv	a0,s2
     7ea:	00000097          	auipc	ra,0x0
     7ee:	faa080e7          	jalr	-86(ra) # 794 <parsepipe>
     7f2:	85aa                	mv	a1,a0
     7f4:	8526                	mv	a0,s1
     7f6:	00000097          	auipc	ra,0x0
     7fa:	b22080e7          	jalr	-1246(ra) # 318 <pipecmd>
     7fe:	84aa                	mv	s1,a0
     800:	b7d9                	j	7c6 <parsepipe+0x32>

0000000000000802 <parseline>:
     802:	7179                	add	sp,sp,-48
     804:	f406                	sd	ra,40(sp)
     806:	f022                	sd	s0,32(sp)
     808:	ec26                	sd	s1,24(sp)
     80a:	e84a                	sd	s2,16(sp)
     80c:	e44e                	sd	s3,8(sp)
     80e:	e052                	sd	s4,0(sp)
     810:	1800                	add	s0,sp,48
     812:	892a                	mv	s2,a0
     814:	89ae                	mv	s3,a1
     816:	00000097          	auipc	ra,0x0
     81a:	f7e080e7          	jalr	-130(ra) # 794 <parsepipe>
     81e:	84aa                	mv	s1,a0
     820:	00001a17          	auipc	s4,0x1
     824:	bb0a0a13          	add	s4,s4,-1104 # 13d0 <malloc+0x1a0>
     828:	a839                	j	846 <parseline+0x44>
     82a:	4681                	li	a3,0
     82c:	4601                	li	a2,0
     82e:	85ce                	mv	a1,s3
     830:	854a                	mv	a0,s2
     832:	00000097          	auipc	ra,0x0
     836:	bae080e7          	jalr	-1106(ra) # 3e0 <gettoken>
     83a:	8526                	mv	a0,s1
     83c:	00000097          	auipc	ra,0x0
     840:	b68080e7          	jalr	-1176(ra) # 3a4 <backcmd>
     844:	84aa                	mv	s1,a0
     846:	8652                	mv	a2,s4
     848:	85ce                	mv	a1,s3
     84a:	854a                	mv	a0,s2
     84c:	00000097          	auipc	ra,0x0
     850:	ce0080e7          	jalr	-800(ra) # 52c <peek>
     854:	f979                	bnez	a0,82a <parseline+0x28>
     856:	00001617          	auipc	a2,0x1
     85a:	b8260613          	add	a2,a2,-1150 # 13d8 <malloc+0x1a8>
     85e:	85ce                	mv	a1,s3
     860:	854a                	mv	a0,s2
     862:	00000097          	auipc	ra,0x0
     866:	cca080e7          	jalr	-822(ra) # 52c <peek>
     86a:	e911                	bnez	a0,87e <parseline+0x7c>
     86c:	8526                	mv	a0,s1
     86e:	70a2                	ld	ra,40(sp)
     870:	7402                	ld	s0,32(sp)
     872:	64e2                	ld	s1,24(sp)
     874:	6942                	ld	s2,16(sp)
     876:	69a2                	ld	s3,8(sp)
     878:	6a02                	ld	s4,0(sp)
     87a:	6145                	add	sp,sp,48
     87c:	8082                	ret
     87e:	4681                	li	a3,0
     880:	4601                	li	a2,0
     882:	85ce                	mv	a1,s3
     884:	854a                	mv	a0,s2
     886:	00000097          	auipc	ra,0x0
     88a:	b5a080e7          	jalr	-1190(ra) # 3e0 <gettoken>
     88e:	85ce                	mv	a1,s3
     890:	854a                	mv	a0,s2
     892:	00000097          	auipc	ra,0x0
     896:	f70080e7          	jalr	-144(ra) # 802 <parseline>
     89a:	85aa                	mv	a1,a0
     89c:	8526                	mv	a0,s1
     89e:	00000097          	auipc	ra,0x0
     8a2:	ac0080e7          	jalr	-1344(ra) # 35e <listcmd>
     8a6:	84aa                	mv	s1,a0
     8a8:	b7d1                	j	86c <parseline+0x6a>

00000000000008aa <parseblock>:
     8aa:	7179                	add	sp,sp,-48
     8ac:	f406                	sd	ra,40(sp)
     8ae:	f022                	sd	s0,32(sp)
     8b0:	ec26                	sd	s1,24(sp)
     8b2:	e84a                	sd	s2,16(sp)
     8b4:	e44e                	sd	s3,8(sp)
     8b6:	1800                	add	s0,sp,48
     8b8:	84aa                	mv	s1,a0
     8ba:	892e                	mv	s2,a1
     8bc:	00001617          	auipc	a2,0x1
     8c0:	ae460613          	add	a2,a2,-1308 # 13a0 <malloc+0x170>
     8c4:	00000097          	auipc	ra,0x0
     8c8:	c68080e7          	jalr	-920(ra) # 52c <peek>
     8cc:	c12d                	beqz	a0,92e <parseblock+0x84>
     8ce:	4681                	li	a3,0
     8d0:	4601                	li	a2,0
     8d2:	85ca                	mv	a1,s2
     8d4:	8526                	mv	a0,s1
     8d6:	00000097          	auipc	ra,0x0
     8da:	b0a080e7          	jalr	-1270(ra) # 3e0 <gettoken>
     8de:	85ca                	mv	a1,s2
     8e0:	8526                	mv	a0,s1
     8e2:	00000097          	auipc	ra,0x0
     8e6:	f20080e7          	jalr	-224(ra) # 802 <parseline>
     8ea:	89aa                	mv	s3,a0
     8ec:	00001617          	auipc	a2,0x1
     8f0:	b0460613          	add	a2,a2,-1276 # 13f0 <malloc+0x1c0>
     8f4:	85ca                	mv	a1,s2
     8f6:	8526                	mv	a0,s1
     8f8:	00000097          	auipc	ra,0x0
     8fc:	c34080e7          	jalr	-972(ra) # 52c <peek>
     900:	cd1d                	beqz	a0,93e <parseblock+0x94>
     902:	4681                	li	a3,0
     904:	4601                	li	a2,0
     906:	85ca                	mv	a1,s2
     908:	8526                	mv	a0,s1
     90a:	00000097          	auipc	ra,0x0
     90e:	ad6080e7          	jalr	-1322(ra) # 3e0 <gettoken>
     912:	864a                	mv	a2,s2
     914:	85a6                	mv	a1,s1
     916:	854e                	mv	a0,s3
     918:	00000097          	auipc	ra,0x0
     91c:	c80080e7          	jalr	-896(ra) # 598 <parseredirs>
     920:	70a2                	ld	ra,40(sp)
     922:	7402                	ld	s0,32(sp)
     924:	64e2                	ld	s1,24(sp)
     926:	6942                	ld	s2,16(sp)
     928:	69a2                	ld	s3,8(sp)
     92a:	6145                	add	sp,sp,48
     92c:	8082                	ret
     92e:	00001517          	auipc	a0,0x1
     932:	ab250513          	add	a0,a0,-1358 # 13e0 <malloc+0x1b0>
     936:	fffff097          	auipc	ra,0xfffff
     93a:	720080e7          	jalr	1824(ra) # 56 <panic>
     93e:	00001517          	auipc	a0,0x1
     942:	aba50513          	add	a0,a0,-1350 # 13f8 <malloc+0x1c8>
     946:	fffff097          	auipc	ra,0xfffff
     94a:	710080e7          	jalr	1808(ra) # 56 <panic>

000000000000094e <nulterminate>:
     94e:	1101                	add	sp,sp,-32
     950:	ec06                	sd	ra,24(sp)
     952:	e822                	sd	s0,16(sp)
     954:	e426                	sd	s1,8(sp)
     956:	1000                	add	s0,sp,32
     958:	84aa                	mv	s1,a0
     95a:	c521                	beqz	a0,9a2 <nulterminate+0x54>
     95c:	4118                	lw	a4,0(a0)
     95e:	4795                	li	a5,5
     960:	04e7e163          	bltu	a5,a4,9a2 <nulterminate+0x54>
     964:	00056783          	lwu	a5,0(a0)
     968:	078a                	sll	a5,a5,0x2
     96a:	00001717          	auipc	a4,0x1
     96e:	aee70713          	add	a4,a4,-1298 # 1458 <malloc+0x228>
     972:	97ba                	add	a5,a5,a4
     974:	439c                	lw	a5,0(a5)
     976:	97ba                	add	a5,a5,a4
     978:	8782                	jr	a5
     97a:	651c                	ld	a5,8(a0)
     97c:	c39d                	beqz	a5,9a2 <nulterminate+0x54>
     97e:	01050793          	add	a5,a0,16
     982:	67b8                	ld	a4,72(a5)
     984:	00070023          	sb	zero,0(a4)
     988:	07a1                	add	a5,a5,8
     98a:	ff87b703          	ld	a4,-8(a5)
     98e:	fb75                	bnez	a4,982 <nulterminate+0x34>
     990:	a809                	j	9a2 <nulterminate+0x54>
     992:	6508                	ld	a0,8(a0)
     994:	00000097          	auipc	ra,0x0
     998:	fba080e7          	jalr	-70(ra) # 94e <nulterminate>
     99c:	6c9c                	ld	a5,24(s1)
     99e:	00078023          	sb	zero,0(a5)
     9a2:	8526                	mv	a0,s1
     9a4:	60e2                	ld	ra,24(sp)
     9a6:	6442                	ld	s0,16(sp)
     9a8:	64a2                	ld	s1,8(sp)
     9aa:	6105                	add	sp,sp,32
     9ac:	8082                	ret
     9ae:	6508                	ld	a0,8(a0)
     9b0:	00000097          	auipc	ra,0x0
     9b4:	f9e080e7          	jalr	-98(ra) # 94e <nulterminate>
     9b8:	6888                	ld	a0,16(s1)
     9ba:	00000097          	auipc	ra,0x0
     9be:	f94080e7          	jalr	-108(ra) # 94e <nulterminate>
     9c2:	b7c5                	j	9a2 <nulterminate+0x54>
     9c4:	6508                	ld	a0,8(a0)
     9c6:	00000097          	auipc	ra,0x0
     9ca:	f88080e7          	jalr	-120(ra) # 94e <nulterminate>
     9ce:	6888                	ld	a0,16(s1)
     9d0:	00000097          	auipc	ra,0x0
     9d4:	f7e080e7          	jalr	-130(ra) # 94e <nulterminate>
     9d8:	b7e9                	j	9a2 <nulterminate+0x54>
     9da:	6508                	ld	a0,8(a0)
     9dc:	00000097          	auipc	ra,0x0
     9e0:	f72080e7          	jalr	-142(ra) # 94e <nulterminate>
     9e4:	bf7d                	j	9a2 <nulterminate+0x54>

00000000000009e6 <parsecmd>:
     9e6:	7179                	add	sp,sp,-48
     9e8:	f406                	sd	ra,40(sp)
     9ea:	f022                	sd	s0,32(sp)
     9ec:	ec26                	sd	s1,24(sp)
     9ee:	e84a                	sd	s2,16(sp)
     9f0:	1800                	add	s0,sp,48
     9f2:	fca43c23          	sd	a0,-40(s0)
     9f6:	84aa                	mv	s1,a0
     9f8:	00000097          	auipc	ra,0x0
     9fc:	1d4080e7          	jalr	468(ra) # bcc <strlen>
     a00:	1502                	sll	a0,a0,0x20
     a02:	9101                	srl	a0,a0,0x20
     a04:	94aa                	add	s1,s1,a0
     a06:	85a6                	mv	a1,s1
     a08:	fd840513          	add	a0,s0,-40
     a0c:	00000097          	auipc	ra,0x0
     a10:	df6080e7          	jalr	-522(ra) # 802 <parseline>
     a14:	892a                	mv	s2,a0
     a16:	00001617          	auipc	a2,0x1
     a1a:	9fa60613          	add	a2,a2,-1542 # 1410 <malloc+0x1e0>
     a1e:	85a6                	mv	a1,s1
     a20:	fd840513          	add	a0,s0,-40
     a24:	00000097          	auipc	ra,0x0
     a28:	b08080e7          	jalr	-1272(ra) # 52c <peek>
     a2c:	fd843603          	ld	a2,-40(s0)
     a30:	00961e63          	bne	a2,s1,a4c <parsecmd+0x66>
     a34:	854a                	mv	a0,s2
     a36:	00000097          	auipc	ra,0x0
     a3a:	f18080e7          	jalr	-232(ra) # 94e <nulterminate>
     a3e:	854a                	mv	a0,s2
     a40:	70a2                	ld	ra,40(sp)
     a42:	7402                	ld	s0,32(sp)
     a44:	64e2                	ld	s1,24(sp)
     a46:	6942                	ld	s2,16(sp)
     a48:	6145                	add	sp,sp,48
     a4a:	8082                	ret
     a4c:	00001597          	auipc	a1,0x1
     a50:	9cc58593          	add	a1,a1,-1588 # 1418 <malloc+0x1e8>
     a54:	4509                	li	a0,2
     a56:	00000097          	auipc	ra,0x0
     a5a:	6f4080e7          	jalr	1780(ra) # 114a <fprintf>
     a5e:	00001517          	auipc	a0,0x1
     a62:	94a50513          	add	a0,a0,-1718 # 13a8 <malloc+0x178>
     a66:	fffff097          	auipc	ra,0xfffff
     a6a:	5f0080e7          	jalr	1520(ra) # 56 <panic>

0000000000000a6e <main>:
     a6e:	7179                	add	sp,sp,-48
     a70:	f406                	sd	ra,40(sp)
     a72:	f022                	sd	s0,32(sp)
     a74:	ec26                	sd	s1,24(sp)
     a76:	e84a                	sd	s2,16(sp)
     a78:	e44e                	sd	s3,8(sp)
     a7a:	e052                	sd	s4,0(sp)
     a7c:	1800                	add	s0,sp,48
     a7e:	00001497          	auipc	s1,0x1
     a82:	9aa48493          	add	s1,s1,-1622 # 1428 <malloc+0x1f8>
     a86:	4589                	li	a1,2
     a88:	8526                	mv	a0,s1
     a8a:	00000097          	auipc	ra,0x0
     a8e:	3a6080e7          	jalr	934(ra) # e30 <open>
     a92:	00054963          	bltz	a0,aa4 <main+0x36>
     a96:	4789                	li	a5,2
     a98:	fea7d7e3          	bge	a5,a0,a86 <main+0x18>
     a9c:	00000097          	auipc	ra,0x0
     aa0:	37c080e7          	jalr	892(ra) # e18 <close>
     aa4:	00002497          	auipc	s1,0x2
     aa8:	d4c48493          	add	s1,s1,-692 # 27f0 <buf.0>
     aac:	06300913          	li	s2,99
     ab0:	02000993          	li	s3,32
     ab4:	a819                	j	aca <main+0x5c>
     ab6:	fffff097          	auipc	ra,0xfffff
     aba:	5c6080e7          	jalr	1478(ra) # 7c <fork1>
     abe:	c549                	beqz	a0,b48 <main+0xda>
     ac0:	4501                	li	a0,0
     ac2:	00000097          	auipc	ra,0x0
     ac6:	336080e7          	jalr	822(ra) # df8 <wait>
     aca:	06400593          	li	a1,100
     ace:	8526                	mv	a0,s1
     ad0:	fffff097          	auipc	ra,0xfffff
     ad4:	530080e7          	jalr	1328(ra) # 0 <getcmd>
     ad8:	08054463          	bltz	a0,b60 <main+0xf2>
     adc:	0004c783          	lbu	a5,0(s1)
     ae0:	fd279be3          	bne	a5,s2,ab6 <main+0x48>
     ae4:	0014c703          	lbu	a4,1(s1)
     ae8:	06400793          	li	a5,100
     aec:	fcf715e3          	bne	a4,a5,ab6 <main+0x48>
     af0:	0024c783          	lbu	a5,2(s1)
     af4:	fd3791e3          	bne	a5,s3,ab6 <main+0x48>
     af8:	00002a17          	auipc	s4,0x2
     afc:	cf8a0a13          	add	s4,s4,-776 # 27f0 <buf.0>
     b00:	8552                	mv	a0,s4
     b02:	00000097          	auipc	ra,0x0
     b06:	0ca080e7          	jalr	202(ra) # bcc <strlen>
     b0a:	fff5079b          	addw	a5,a0,-1
     b0e:	1782                	sll	a5,a5,0x20
     b10:	9381                	srl	a5,a5,0x20
     b12:	9a3e                	add	s4,s4,a5
     b14:	000a0023          	sb	zero,0(s4)
     b18:	00002517          	auipc	a0,0x2
     b1c:	cdb50513          	add	a0,a0,-805 # 27f3 <buf.0+0x3>
     b20:	00000097          	auipc	ra,0x0
     b24:	340080e7          	jalr	832(ra) # e60 <chdir>
     b28:	fa0551e3          	bgez	a0,aca <main+0x5c>
     b2c:	00002617          	auipc	a2,0x2
     b30:	cc760613          	add	a2,a2,-825 # 27f3 <buf.0+0x3>
     b34:	00001597          	auipc	a1,0x1
     b38:	8fc58593          	add	a1,a1,-1796 # 1430 <malloc+0x200>
     b3c:	4509                	li	a0,2
     b3e:	00000097          	auipc	ra,0x0
     b42:	60c080e7          	jalr	1548(ra) # 114a <fprintf>
     b46:	b751                	j	aca <main+0x5c>
     b48:	00002517          	auipc	a0,0x2
     b4c:	ca850513          	add	a0,a0,-856 # 27f0 <buf.0>
     b50:	00000097          	auipc	ra,0x0
     b54:	e96080e7          	jalr	-362(ra) # 9e6 <parsecmd>
     b58:	fffff097          	auipc	ra,0xfffff
     b5c:	552080e7          	jalr	1362(ra) # aa <runcmd>
     b60:	4501                	li	a0,0
     b62:	00000097          	auipc	ra,0x0
     b66:	28e080e7          	jalr	654(ra) # df0 <exit>

0000000000000b6a <_main>:
     b6a:	1141                	add	sp,sp,-16
     b6c:	e406                	sd	ra,8(sp)
     b6e:	e022                	sd	s0,0(sp)
     b70:	0800                	add	s0,sp,16
     b72:	00000097          	auipc	ra,0x0
     b76:	efc080e7          	jalr	-260(ra) # a6e <main>
     b7a:	4501                	li	a0,0
     b7c:	00000097          	auipc	ra,0x0
     b80:	274080e7          	jalr	628(ra) # df0 <exit>

0000000000000b84 <strcpy>:
     b84:	1141                	add	sp,sp,-16
     b86:	e422                	sd	s0,8(sp)
     b88:	0800                	add	s0,sp,16
     b8a:	87aa                	mv	a5,a0
     b8c:	0585                	add	a1,a1,1
     b8e:	0785                	add	a5,a5,1
     b90:	fff5c703          	lbu	a4,-1(a1)
     b94:	fee78fa3          	sb	a4,-1(a5)
     b98:	fb75                	bnez	a4,b8c <strcpy+0x8>
     b9a:	6422                	ld	s0,8(sp)
     b9c:	0141                	add	sp,sp,16
     b9e:	8082                	ret

0000000000000ba0 <strcmp>:
     ba0:	1141                	add	sp,sp,-16
     ba2:	e422                	sd	s0,8(sp)
     ba4:	0800                	add	s0,sp,16
     ba6:	00054783          	lbu	a5,0(a0)
     baa:	cb91                	beqz	a5,bbe <strcmp+0x1e>
     bac:	0005c703          	lbu	a4,0(a1)
     bb0:	00f71763          	bne	a4,a5,bbe <strcmp+0x1e>
     bb4:	0505                	add	a0,a0,1
     bb6:	0585                	add	a1,a1,1
     bb8:	00054783          	lbu	a5,0(a0)
     bbc:	fbe5                	bnez	a5,bac <strcmp+0xc>
     bbe:	0005c503          	lbu	a0,0(a1)
     bc2:	40a7853b          	subw	a0,a5,a0
     bc6:	6422                	ld	s0,8(sp)
     bc8:	0141                	add	sp,sp,16
     bca:	8082                	ret

0000000000000bcc <strlen>:
     bcc:	1141                	add	sp,sp,-16
     bce:	e422                	sd	s0,8(sp)
     bd0:	0800                	add	s0,sp,16
     bd2:	00054783          	lbu	a5,0(a0)
     bd6:	cf91                	beqz	a5,bf2 <strlen+0x26>
     bd8:	0505                	add	a0,a0,1
     bda:	87aa                	mv	a5,a0
     bdc:	86be                	mv	a3,a5
     bde:	0785                	add	a5,a5,1
     be0:	fff7c703          	lbu	a4,-1(a5)
     be4:	ff65                	bnez	a4,bdc <strlen+0x10>
     be6:	40a6853b          	subw	a0,a3,a0
     bea:	2505                	addw	a0,a0,1
     bec:	6422                	ld	s0,8(sp)
     bee:	0141                	add	sp,sp,16
     bf0:	8082                	ret
     bf2:	4501                	li	a0,0
     bf4:	bfe5                	j	bec <strlen+0x20>

0000000000000bf6 <memset>:
     bf6:	1141                	add	sp,sp,-16
     bf8:	e422                	sd	s0,8(sp)
     bfa:	0800                	add	s0,sp,16
     bfc:	ca19                	beqz	a2,c12 <memset+0x1c>
     bfe:	87aa                	mv	a5,a0
     c00:	1602                	sll	a2,a2,0x20
     c02:	9201                	srl	a2,a2,0x20
     c04:	00a60733          	add	a4,a2,a0
     c08:	00b78023          	sb	a1,0(a5)
     c0c:	0785                	add	a5,a5,1
     c0e:	fee79de3          	bne	a5,a4,c08 <memset+0x12>
     c12:	6422                	ld	s0,8(sp)
     c14:	0141                	add	sp,sp,16
     c16:	8082                	ret

0000000000000c18 <strchr>:
     c18:	1141                	add	sp,sp,-16
     c1a:	e422                	sd	s0,8(sp)
     c1c:	0800                	add	s0,sp,16
     c1e:	00054783          	lbu	a5,0(a0)
     c22:	cb99                	beqz	a5,c38 <strchr+0x20>
     c24:	00f58763          	beq	a1,a5,c32 <strchr+0x1a>
     c28:	0505                	add	a0,a0,1
     c2a:	00054783          	lbu	a5,0(a0)
     c2e:	fbfd                	bnez	a5,c24 <strchr+0xc>
     c30:	4501                	li	a0,0
     c32:	6422                	ld	s0,8(sp)
     c34:	0141                	add	sp,sp,16
     c36:	8082                	ret
     c38:	4501                	li	a0,0
     c3a:	bfe5                	j	c32 <strchr+0x1a>

0000000000000c3c <gets>:
     c3c:	711d                	add	sp,sp,-96
     c3e:	ec86                	sd	ra,88(sp)
     c40:	e8a2                	sd	s0,80(sp)
     c42:	e4a6                	sd	s1,72(sp)
     c44:	e0ca                	sd	s2,64(sp)
     c46:	fc4e                	sd	s3,56(sp)
     c48:	f852                	sd	s4,48(sp)
     c4a:	f456                	sd	s5,40(sp)
     c4c:	f05a                	sd	s6,32(sp)
     c4e:	ec5e                	sd	s7,24(sp)
     c50:	1080                	add	s0,sp,96
     c52:	8baa                	mv	s7,a0
     c54:	8a2e                	mv	s4,a1
     c56:	892a                	mv	s2,a0
     c58:	4481                	li	s1,0
     c5a:	4aa9                	li	s5,10
     c5c:	4b35                	li	s6,13
     c5e:	89a6                	mv	s3,s1
     c60:	2485                	addw	s1,s1,1
     c62:	0344d863          	bge	s1,s4,c92 <gets+0x56>
     c66:	4605                	li	a2,1
     c68:	faf40593          	add	a1,s0,-81
     c6c:	4501                	li	a0,0
     c6e:	00000097          	auipc	ra,0x0
     c72:	19a080e7          	jalr	410(ra) # e08 <read>
     c76:	00a05e63          	blez	a0,c92 <gets+0x56>
     c7a:	faf44783          	lbu	a5,-81(s0)
     c7e:	00f90023          	sb	a5,0(s2)
     c82:	01578763          	beq	a5,s5,c90 <gets+0x54>
     c86:	0905                	add	s2,s2,1
     c88:	fd679be3          	bne	a5,s6,c5e <gets+0x22>
     c8c:	89a6                	mv	s3,s1
     c8e:	a011                	j	c92 <gets+0x56>
     c90:	89a6                	mv	s3,s1
     c92:	99de                	add	s3,s3,s7
     c94:	00098023          	sb	zero,0(s3)
     c98:	855e                	mv	a0,s7
     c9a:	60e6                	ld	ra,88(sp)
     c9c:	6446                	ld	s0,80(sp)
     c9e:	64a6                	ld	s1,72(sp)
     ca0:	6906                	ld	s2,64(sp)
     ca2:	79e2                	ld	s3,56(sp)
     ca4:	7a42                	ld	s4,48(sp)
     ca6:	7aa2                	ld	s5,40(sp)
     ca8:	7b02                	ld	s6,32(sp)
     caa:	6be2                	ld	s7,24(sp)
     cac:	6125                	add	sp,sp,96
     cae:	8082                	ret

0000000000000cb0 <stat>:
     cb0:	1101                	add	sp,sp,-32
     cb2:	ec06                	sd	ra,24(sp)
     cb4:	e822                	sd	s0,16(sp)
     cb6:	e04a                	sd	s2,0(sp)
     cb8:	1000                	add	s0,sp,32
     cba:	892e                	mv	s2,a1
     cbc:	4581                	li	a1,0
     cbe:	00000097          	auipc	ra,0x0
     cc2:	172080e7          	jalr	370(ra) # e30 <open>
     cc6:	02054663          	bltz	a0,cf2 <stat+0x42>
     cca:	e426                	sd	s1,8(sp)
     ccc:	84aa                	mv	s1,a0
     cce:	85ca                	mv	a1,s2
     cd0:	00000097          	auipc	ra,0x0
     cd4:	178080e7          	jalr	376(ra) # e48 <fstat>
     cd8:	892a                	mv	s2,a0
     cda:	8526                	mv	a0,s1
     cdc:	00000097          	auipc	ra,0x0
     ce0:	13c080e7          	jalr	316(ra) # e18 <close>
     ce4:	64a2                	ld	s1,8(sp)
     ce6:	854a                	mv	a0,s2
     ce8:	60e2                	ld	ra,24(sp)
     cea:	6442                	ld	s0,16(sp)
     cec:	6902                	ld	s2,0(sp)
     cee:	6105                	add	sp,sp,32
     cf0:	8082                	ret
     cf2:	597d                	li	s2,-1
     cf4:	bfcd                	j	ce6 <stat+0x36>

0000000000000cf6 <atoi>:
     cf6:	1141                	add	sp,sp,-16
     cf8:	e422                	sd	s0,8(sp)
     cfa:	0800                	add	s0,sp,16
     cfc:	00054683          	lbu	a3,0(a0)
     d00:	fd06879b          	addw	a5,a3,-48
     d04:	0ff7f793          	zext.b	a5,a5
     d08:	4625                	li	a2,9
     d0a:	02f66863          	bltu	a2,a5,d3a <atoi+0x44>
     d0e:	872a                	mv	a4,a0
     d10:	4501                	li	a0,0
     d12:	0705                	add	a4,a4,1
     d14:	0025179b          	sllw	a5,a0,0x2
     d18:	9fa9                	addw	a5,a5,a0
     d1a:	0017979b          	sllw	a5,a5,0x1
     d1e:	9fb5                	addw	a5,a5,a3
     d20:	fd07851b          	addw	a0,a5,-48
     d24:	00074683          	lbu	a3,0(a4)
     d28:	fd06879b          	addw	a5,a3,-48
     d2c:	0ff7f793          	zext.b	a5,a5
     d30:	fef671e3          	bgeu	a2,a5,d12 <atoi+0x1c>
     d34:	6422                	ld	s0,8(sp)
     d36:	0141                	add	sp,sp,16
     d38:	8082                	ret
     d3a:	4501                	li	a0,0
     d3c:	bfe5                	j	d34 <atoi+0x3e>

0000000000000d3e <memmove>:
     d3e:	1141                	add	sp,sp,-16
     d40:	e422                	sd	s0,8(sp)
     d42:	0800                	add	s0,sp,16
     d44:	02b57463          	bgeu	a0,a1,d6c <memmove+0x2e>
     d48:	00c05f63          	blez	a2,d66 <memmove+0x28>
     d4c:	1602                	sll	a2,a2,0x20
     d4e:	9201                	srl	a2,a2,0x20
     d50:	00c507b3          	add	a5,a0,a2
     d54:	872a                	mv	a4,a0
     d56:	0585                	add	a1,a1,1
     d58:	0705                	add	a4,a4,1
     d5a:	fff5c683          	lbu	a3,-1(a1)
     d5e:	fed70fa3          	sb	a3,-1(a4)
     d62:	fef71ae3          	bne	a4,a5,d56 <memmove+0x18>
     d66:	6422                	ld	s0,8(sp)
     d68:	0141                	add	sp,sp,16
     d6a:	8082                	ret
     d6c:	00c50733          	add	a4,a0,a2
     d70:	95b2                	add	a1,a1,a2
     d72:	fec05ae3          	blez	a2,d66 <memmove+0x28>
     d76:	fff6079b          	addw	a5,a2,-1
     d7a:	1782                	sll	a5,a5,0x20
     d7c:	9381                	srl	a5,a5,0x20
     d7e:	fff7c793          	not	a5,a5
     d82:	97ba                	add	a5,a5,a4
     d84:	15fd                	add	a1,a1,-1
     d86:	177d                	add	a4,a4,-1
     d88:	0005c683          	lbu	a3,0(a1)
     d8c:	00d70023          	sb	a3,0(a4)
     d90:	fee79ae3          	bne	a5,a4,d84 <memmove+0x46>
     d94:	bfc9                	j	d66 <memmove+0x28>

0000000000000d96 <memcmp>:
     d96:	1141                	add	sp,sp,-16
     d98:	e422                	sd	s0,8(sp)
     d9a:	0800                	add	s0,sp,16
     d9c:	ca05                	beqz	a2,dcc <memcmp+0x36>
     d9e:	fff6069b          	addw	a3,a2,-1
     da2:	1682                	sll	a3,a3,0x20
     da4:	9281                	srl	a3,a3,0x20
     da6:	0685                	add	a3,a3,1
     da8:	96aa                	add	a3,a3,a0
     daa:	00054783          	lbu	a5,0(a0)
     dae:	0005c703          	lbu	a4,0(a1)
     db2:	00e79863          	bne	a5,a4,dc2 <memcmp+0x2c>
     db6:	0505                	add	a0,a0,1
     db8:	0585                	add	a1,a1,1
     dba:	fed518e3          	bne	a0,a3,daa <memcmp+0x14>
     dbe:	4501                	li	a0,0
     dc0:	a019                	j	dc6 <memcmp+0x30>
     dc2:	40e7853b          	subw	a0,a5,a4
     dc6:	6422                	ld	s0,8(sp)
     dc8:	0141                	add	sp,sp,16
     dca:	8082                	ret
     dcc:	4501                	li	a0,0
     dce:	bfe5                	j	dc6 <memcmp+0x30>

0000000000000dd0 <memcpy>:
     dd0:	1141                	add	sp,sp,-16
     dd2:	e406                	sd	ra,8(sp)
     dd4:	e022                	sd	s0,0(sp)
     dd6:	0800                	add	s0,sp,16
     dd8:	00000097          	auipc	ra,0x0
     ddc:	f66080e7          	jalr	-154(ra) # d3e <memmove>
     de0:	60a2                	ld	ra,8(sp)
     de2:	6402                	ld	s0,0(sp)
     de4:	0141                	add	sp,sp,16
     de6:	8082                	ret

0000000000000de8 <fork>:
     de8:	4885                	li	a7,1
     dea:	00000073          	ecall
     dee:	8082                	ret

0000000000000df0 <exit>:
     df0:	4889                	li	a7,2
     df2:	00000073          	ecall
     df6:	8082                	ret

0000000000000df8 <wait>:
     df8:	488d                	li	a7,3
     dfa:	00000073          	ecall
     dfe:	8082                	ret

0000000000000e00 <pipe>:
     e00:	4891                	li	a7,4
     e02:	00000073          	ecall
     e06:	8082                	ret

0000000000000e08 <read>:
     e08:	4895                	li	a7,5
     e0a:	00000073          	ecall
     e0e:	8082                	ret

0000000000000e10 <write>:
     e10:	48c1                	li	a7,16
     e12:	00000073          	ecall
     e16:	8082                	ret

0000000000000e18 <close>:
     e18:	48d5                	li	a7,21
     e1a:	00000073          	ecall
     e1e:	8082                	ret

0000000000000e20 <kill>:
     e20:	4899                	li	a7,6
     e22:	00000073          	ecall
     e26:	8082                	ret

0000000000000e28 <exec>:
     e28:	489d                	li	a7,7
     e2a:	00000073          	ecall
     e2e:	8082                	ret

0000000000000e30 <open>:
     e30:	48bd                	li	a7,15
     e32:	00000073          	ecall
     e36:	8082                	ret

0000000000000e38 <mknod>:
     e38:	48c5                	li	a7,17
     e3a:	00000073          	ecall
     e3e:	8082                	ret

0000000000000e40 <unlink>:
     e40:	48c9                	li	a7,18
     e42:	00000073          	ecall
     e46:	8082                	ret

0000000000000e48 <fstat>:
     e48:	48a1                	li	a7,8
     e4a:	00000073          	ecall
     e4e:	8082                	ret

0000000000000e50 <link>:
     e50:	48cd                	li	a7,19
     e52:	00000073          	ecall
     e56:	8082                	ret

0000000000000e58 <mkdir>:
     e58:	48d1                	li	a7,20
     e5a:	00000073          	ecall
     e5e:	8082                	ret

0000000000000e60 <chdir>:
     e60:	48a5                	li	a7,9
     e62:	00000073          	ecall
     e66:	8082                	ret

0000000000000e68 <dup>:
     e68:	48a9                	li	a7,10
     e6a:	00000073          	ecall
     e6e:	8082                	ret

0000000000000e70 <getpid>:
     e70:	48ad                	li	a7,11
     e72:	00000073          	ecall
     e76:	8082                	ret

0000000000000e78 <sbrk>:
     e78:	48b1                	li	a7,12
     e7a:	00000073          	ecall
     e7e:	8082                	ret

0000000000000e80 <sleep>:
     e80:	48b5                	li	a7,13
     e82:	00000073          	ecall
     e86:	8082                	ret

0000000000000e88 <uptime>:
     e88:	48b9                	li	a7,14
     e8a:	00000073          	ecall
     e8e:	8082                	ret

0000000000000e90 <waitx>:
     e90:	48d9                	li	a7,22
     e92:	00000073          	ecall
     e96:	8082                	ret

0000000000000e98 <getSysCount>:
     e98:	48dd                	li	a7,23
     e9a:	00000073          	ecall
     e9e:	8082                	ret

0000000000000ea0 <sigalarm>:
     ea0:	48e1                	li	a7,24
     ea2:	00000073          	ecall
     ea6:	8082                	ret

0000000000000ea8 <sigreturn>:
     ea8:	48e5                	li	a7,25
     eaa:	00000073          	ecall
     eae:	8082                	ret

0000000000000eb0 <putc>:
     eb0:	1101                	add	sp,sp,-32
     eb2:	ec06                	sd	ra,24(sp)
     eb4:	e822                	sd	s0,16(sp)
     eb6:	1000                	add	s0,sp,32
     eb8:	feb407a3          	sb	a1,-17(s0)
     ebc:	4605                	li	a2,1
     ebe:	fef40593          	add	a1,s0,-17
     ec2:	00000097          	auipc	ra,0x0
     ec6:	f4e080e7          	jalr	-178(ra) # e10 <write>
     eca:	60e2                	ld	ra,24(sp)
     ecc:	6442                	ld	s0,16(sp)
     ece:	6105                	add	sp,sp,32
     ed0:	8082                	ret

0000000000000ed2 <printint>:
     ed2:	7139                	add	sp,sp,-64
     ed4:	fc06                	sd	ra,56(sp)
     ed6:	f822                	sd	s0,48(sp)
     ed8:	f426                	sd	s1,40(sp)
     eda:	0080                	add	s0,sp,64
     edc:	84aa                	mv	s1,a0
     ede:	c299                	beqz	a3,ee4 <printint+0x12>
     ee0:	0805cb63          	bltz	a1,f76 <printint+0xa4>
     ee4:	2581                	sext.w	a1,a1
     ee6:	4881                	li	a7,0
     ee8:	fc040693          	add	a3,s0,-64
     eec:	4701                	li	a4,0
     eee:	2601                	sext.w	a2,a2
     ef0:	00000517          	auipc	a0,0x0
     ef4:	5e050513          	add	a0,a0,1504 # 14d0 <digits>
     ef8:	883a                	mv	a6,a4
     efa:	2705                	addw	a4,a4,1
     efc:	02c5f7bb          	remuw	a5,a1,a2
     f00:	1782                	sll	a5,a5,0x20
     f02:	9381                	srl	a5,a5,0x20
     f04:	97aa                	add	a5,a5,a0
     f06:	0007c783          	lbu	a5,0(a5)
     f0a:	00f68023          	sb	a5,0(a3)
     f0e:	0005879b          	sext.w	a5,a1
     f12:	02c5d5bb          	divuw	a1,a1,a2
     f16:	0685                	add	a3,a3,1
     f18:	fec7f0e3          	bgeu	a5,a2,ef8 <printint+0x26>
     f1c:	00088c63          	beqz	a7,f34 <printint+0x62>
     f20:	fd070793          	add	a5,a4,-48
     f24:	00878733          	add	a4,a5,s0
     f28:	02d00793          	li	a5,45
     f2c:	fef70823          	sb	a5,-16(a4)
     f30:	0028071b          	addw	a4,a6,2
     f34:	02e05c63          	blez	a4,f6c <printint+0x9a>
     f38:	f04a                	sd	s2,32(sp)
     f3a:	ec4e                	sd	s3,24(sp)
     f3c:	fc040793          	add	a5,s0,-64
     f40:	00e78933          	add	s2,a5,a4
     f44:	fff78993          	add	s3,a5,-1
     f48:	99ba                	add	s3,s3,a4
     f4a:	377d                	addw	a4,a4,-1
     f4c:	1702                	sll	a4,a4,0x20
     f4e:	9301                	srl	a4,a4,0x20
     f50:	40e989b3          	sub	s3,s3,a4
     f54:	fff94583          	lbu	a1,-1(s2)
     f58:	8526                	mv	a0,s1
     f5a:	00000097          	auipc	ra,0x0
     f5e:	f56080e7          	jalr	-170(ra) # eb0 <putc>
     f62:	197d                	add	s2,s2,-1
     f64:	ff3918e3          	bne	s2,s3,f54 <printint+0x82>
     f68:	7902                	ld	s2,32(sp)
     f6a:	69e2                	ld	s3,24(sp)
     f6c:	70e2                	ld	ra,56(sp)
     f6e:	7442                	ld	s0,48(sp)
     f70:	74a2                	ld	s1,40(sp)
     f72:	6121                	add	sp,sp,64
     f74:	8082                	ret
     f76:	40b005bb          	negw	a1,a1
     f7a:	4885                	li	a7,1
     f7c:	b7b5                	j	ee8 <printint+0x16>

0000000000000f7e <vprintf>:
     f7e:	715d                	add	sp,sp,-80
     f80:	e486                	sd	ra,72(sp)
     f82:	e0a2                	sd	s0,64(sp)
     f84:	f84a                	sd	s2,48(sp)
     f86:	0880                	add	s0,sp,80
     f88:	0005c903          	lbu	s2,0(a1)
     f8c:	1a090a63          	beqz	s2,1140 <vprintf+0x1c2>
     f90:	fc26                	sd	s1,56(sp)
     f92:	f44e                	sd	s3,40(sp)
     f94:	f052                	sd	s4,32(sp)
     f96:	ec56                	sd	s5,24(sp)
     f98:	e85a                	sd	s6,16(sp)
     f9a:	e45e                	sd	s7,8(sp)
     f9c:	8aaa                	mv	s5,a0
     f9e:	8bb2                	mv	s7,a2
     fa0:	00158493          	add	s1,a1,1
     fa4:	4981                	li	s3,0
     fa6:	02500a13          	li	s4,37
     faa:	4b55                	li	s6,21
     fac:	a839                	j	fca <vprintf+0x4c>
     fae:	85ca                	mv	a1,s2
     fb0:	8556                	mv	a0,s5
     fb2:	00000097          	auipc	ra,0x0
     fb6:	efe080e7          	jalr	-258(ra) # eb0 <putc>
     fba:	a019                	j	fc0 <vprintf+0x42>
     fbc:	01498d63          	beq	s3,s4,fd6 <vprintf+0x58>
     fc0:	0485                	add	s1,s1,1
     fc2:	fff4c903          	lbu	s2,-1(s1)
     fc6:	16090763          	beqz	s2,1134 <vprintf+0x1b6>
     fca:	fe0999e3          	bnez	s3,fbc <vprintf+0x3e>
     fce:	ff4910e3          	bne	s2,s4,fae <vprintf+0x30>
     fd2:	89d2                	mv	s3,s4
     fd4:	b7f5                	j	fc0 <vprintf+0x42>
     fd6:	13490463          	beq	s2,s4,10fe <vprintf+0x180>
     fda:	f9d9079b          	addw	a5,s2,-99
     fde:	0ff7f793          	zext.b	a5,a5
     fe2:	12fb6763          	bltu	s6,a5,1110 <vprintf+0x192>
     fe6:	f9d9079b          	addw	a5,s2,-99
     fea:	0ff7f713          	zext.b	a4,a5
     fee:	12eb6163          	bltu	s6,a4,1110 <vprintf+0x192>
     ff2:	00271793          	sll	a5,a4,0x2
     ff6:	00000717          	auipc	a4,0x0
     ffa:	48270713          	add	a4,a4,1154 # 1478 <malloc+0x248>
     ffe:	97ba                	add	a5,a5,a4
    1000:	439c                	lw	a5,0(a5)
    1002:	97ba                	add	a5,a5,a4
    1004:	8782                	jr	a5
    1006:	008b8913          	add	s2,s7,8
    100a:	4685                	li	a3,1
    100c:	4629                	li	a2,10
    100e:	000ba583          	lw	a1,0(s7)
    1012:	8556                	mv	a0,s5
    1014:	00000097          	auipc	ra,0x0
    1018:	ebe080e7          	jalr	-322(ra) # ed2 <printint>
    101c:	8bca                	mv	s7,s2
    101e:	4981                	li	s3,0
    1020:	b745                	j	fc0 <vprintf+0x42>
    1022:	008b8913          	add	s2,s7,8
    1026:	4681                	li	a3,0
    1028:	4629                	li	a2,10
    102a:	000ba583          	lw	a1,0(s7)
    102e:	8556                	mv	a0,s5
    1030:	00000097          	auipc	ra,0x0
    1034:	ea2080e7          	jalr	-350(ra) # ed2 <printint>
    1038:	8bca                	mv	s7,s2
    103a:	4981                	li	s3,0
    103c:	b751                	j	fc0 <vprintf+0x42>
    103e:	008b8913          	add	s2,s7,8
    1042:	4681                	li	a3,0
    1044:	4641                	li	a2,16
    1046:	000ba583          	lw	a1,0(s7)
    104a:	8556                	mv	a0,s5
    104c:	00000097          	auipc	ra,0x0
    1050:	e86080e7          	jalr	-378(ra) # ed2 <printint>
    1054:	8bca                	mv	s7,s2
    1056:	4981                	li	s3,0
    1058:	b7a5                	j	fc0 <vprintf+0x42>
    105a:	e062                	sd	s8,0(sp)
    105c:	008b8c13          	add	s8,s7,8
    1060:	000bb983          	ld	s3,0(s7)
    1064:	03000593          	li	a1,48
    1068:	8556                	mv	a0,s5
    106a:	00000097          	auipc	ra,0x0
    106e:	e46080e7          	jalr	-442(ra) # eb0 <putc>
    1072:	07800593          	li	a1,120
    1076:	8556                	mv	a0,s5
    1078:	00000097          	auipc	ra,0x0
    107c:	e38080e7          	jalr	-456(ra) # eb0 <putc>
    1080:	4941                	li	s2,16
    1082:	00000b97          	auipc	s7,0x0
    1086:	44eb8b93          	add	s7,s7,1102 # 14d0 <digits>
    108a:	03c9d793          	srl	a5,s3,0x3c
    108e:	97de                	add	a5,a5,s7
    1090:	0007c583          	lbu	a1,0(a5)
    1094:	8556                	mv	a0,s5
    1096:	00000097          	auipc	ra,0x0
    109a:	e1a080e7          	jalr	-486(ra) # eb0 <putc>
    109e:	0992                	sll	s3,s3,0x4
    10a0:	397d                	addw	s2,s2,-1
    10a2:	fe0914e3          	bnez	s2,108a <vprintf+0x10c>
    10a6:	8be2                	mv	s7,s8
    10a8:	4981                	li	s3,0
    10aa:	6c02                	ld	s8,0(sp)
    10ac:	bf11                	j	fc0 <vprintf+0x42>
    10ae:	008b8993          	add	s3,s7,8
    10b2:	000bb903          	ld	s2,0(s7)
    10b6:	02090163          	beqz	s2,10d8 <vprintf+0x15a>
    10ba:	00094583          	lbu	a1,0(s2)
    10be:	c9a5                	beqz	a1,112e <vprintf+0x1b0>
    10c0:	8556                	mv	a0,s5
    10c2:	00000097          	auipc	ra,0x0
    10c6:	dee080e7          	jalr	-530(ra) # eb0 <putc>
    10ca:	0905                	add	s2,s2,1
    10cc:	00094583          	lbu	a1,0(s2)
    10d0:	f9e5                	bnez	a1,10c0 <vprintf+0x142>
    10d2:	8bce                	mv	s7,s3
    10d4:	4981                	li	s3,0
    10d6:	b5ed                	j	fc0 <vprintf+0x42>
    10d8:	00000917          	auipc	s2,0x0
    10dc:	39890913          	add	s2,s2,920 # 1470 <malloc+0x240>
    10e0:	02800593          	li	a1,40
    10e4:	bff1                	j	10c0 <vprintf+0x142>
    10e6:	008b8913          	add	s2,s7,8
    10ea:	000bc583          	lbu	a1,0(s7)
    10ee:	8556                	mv	a0,s5
    10f0:	00000097          	auipc	ra,0x0
    10f4:	dc0080e7          	jalr	-576(ra) # eb0 <putc>
    10f8:	8bca                	mv	s7,s2
    10fa:	4981                	li	s3,0
    10fc:	b5d1                	j	fc0 <vprintf+0x42>
    10fe:	02500593          	li	a1,37
    1102:	8556                	mv	a0,s5
    1104:	00000097          	auipc	ra,0x0
    1108:	dac080e7          	jalr	-596(ra) # eb0 <putc>
    110c:	4981                	li	s3,0
    110e:	bd4d                	j	fc0 <vprintf+0x42>
    1110:	02500593          	li	a1,37
    1114:	8556                	mv	a0,s5
    1116:	00000097          	auipc	ra,0x0
    111a:	d9a080e7          	jalr	-614(ra) # eb0 <putc>
    111e:	85ca                	mv	a1,s2
    1120:	8556                	mv	a0,s5
    1122:	00000097          	auipc	ra,0x0
    1126:	d8e080e7          	jalr	-626(ra) # eb0 <putc>
    112a:	4981                	li	s3,0
    112c:	bd51                	j	fc0 <vprintf+0x42>
    112e:	8bce                	mv	s7,s3
    1130:	4981                	li	s3,0
    1132:	b579                	j	fc0 <vprintf+0x42>
    1134:	74e2                	ld	s1,56(sp)
    1136:	79a2                	ld	s3,40(sp)
    1138:	7a02                	ld	s4,32(sp)
    113a:	6ae2                	ld	s5,24(sp)
    113c:	6b42                	ld	s6,16(sp)
    113e:	6ba2                	ld	s7,8(sp)
    1140:	60a6                	ld	ra,72(sp)
    1142:	6406                	ld	s0,64(sp)
    1144:	7942                	ld	s2,48(sp)
    1146:	6161                	add	sp,sp,80
    1148:	8082                	ret

000000000000114a <fprintf>:
    114a:	715d                	add	sp,sp,-80
    114c:	ec06                	sd	ra,24(sp)
    114e:	e822                	sd	s0,16(sp)
    1150:	1000                	add	s0,sp,32
    1152:	e010                	sd	a2,0(s0)
    1154:	e414                	sd	a3,8(s0)
    1156:	e818                	sd	a4,16(s0)
    1158:	ec1c                	sd	a5,24(s0)
    115a:	03043023          	sd	a6,32(s0)
    115e:	03143423          	sd	a7,40(s0)
    1162:	fe843423          	sd	s0,-24(s0)
    1166:	8622                	mv	a2,s0
    1168:	00000097          	auipc	ra,0x0
    116c:	e16080e7          	jalr	-490(ra) # f7e <vprintf>
    1170:	60e2                	ld	ra,24(sp)
    1172:	6442                	ld	s0,16(sp)
    1174:	6161                	add	sp,sp,80
    1176:	8082                	ret

0000000000001178 <printf>:
    1178:	711d                	add	sp,sp,-96
    117a:	ec06                	sd	ra,24(sp)
    117c:	e822                	sd	s0,16(sp)
    117e:	1000                	add	s0,sp,32
    1180:	e40c                	sd	a1,8(s0)
    1182:	e810                	sd	a2,16(s0)
    1184:	ec14                	sd	a3,24(s0)
    1186:	f018                	sd	a4,32(s0)
    1188:	f41c                	sd	a5,40(s0)
    118a:	03043823          	sd	a6,48(s0)
    118e:	03143c23          	sd	a7,56(s0)
    1192:	00840613          	add	a2,s0,8
    1196:	fec43423          	sd	a2,-24(s0)
    119a:	85aa                	mv	a1,a0
    119c:	4505                	li	a0,1
    119e:	00000097          	auipc	ra,0x0
    11a2:	de0080e7          	jalr	-544(ra) # f7e <vprintf>
    11a6:	60e2                	ld	ra,24(sp)
    11a8:	6442                	ld	s0,16(sp)
    11aa:	6125                	add	sp,sp,96
    11ac:	8082                	ret

00000000000011ae <free>:
    11ae:	1141                	add	sp,sp,-16
    11b0:	e422                	sd	s0,8(sp)
    11b2:	0800                	add	s0,sp,16
    11b4:	ff050693          	add	a3,a0,-16
    11b8:	00001797          	auipc	a5,0x1
    11bc:	6287b783          	ld	a5,1576(a5) # 27e0 <freep>
    11c0:	a02d                	j	11ea <free+0x3c>
    11c2:	4618                	lw	a4,8(a2)
    11c4:	9f2d                	addw	a4,a4,a1
    11c6:	fee52c23          	sw	a4,-8(a0)
    11ca:	6398                	ld	a4,0(a5)
    11cc:	6310                	ld	a2,0(a4)
    11ce:	a83d                	j	120c <free+0x5e>
    11d0:	ff852703          	lw	a4,-8(a0)
    11d4:	9f31                	addw	a4,a4,a2
    11d6:	c798                	sw	a4,8(a5)
    11d8:	ff053683          	ld	a3,-16(a0)
    11dc:	a091                	j	1220 <free+0x72>
    11de:	6398                	ld	a4,0(a5)
    11e0:	00e7e463          	bltu	a5,a4,11e8 <free+0x3a>
    11e4:	00e6ea63          	bltu	a3,a4,11f8 <free+0x4a>
    11e8:	87ba                	mv	a5,a4
    11ea:	fed7fae3          	bgeu	a5,a3,11de <free+0x30>
    11ee:	6398                	ld	a4,0(a5)
    11f0:	00e6e463          	bltu	a3,a4,11f8 <free+0x4a>
    11f4:	fee7eae3          	bltu	a5,a4,11e8 <free+0x3a>
    11f8:	ff852583          	lw	a1,-8(a0)
    11fc:	6390                	ld	a2,0(a5)
    11fe:	02059813          	sll	a6,a1,0x20
    1202:	01c85713          	srl	a4,a6,0x1c
    1206:	9736                	add	a4,a4,a3
    1208:	fae60de3          	beq	a2,a4,11c2 <free+0x14>
    120c:	fec53823          	sd	a2,-16(a0)
    1210:	4790                	lw	a2,8(a5)
    1212:	02061593          	sll	a1,a2,0x20
    1216:	01c5d713          	srl	a4,a1,0x1c
    121a:	973e                	add	a4,a4,a5
    121c:	fae68ae3          	beq	a3,a4,11d0 <free+0x22>
    1220:	e394                	sd	a3,0(a5)
    1222:	00001717          	auipc	a4,0x1
    1226:	5af73f23          	sd	a5,1470(a4) # 27e0 <freep>
    122a:	6422                	ld	s0,8(sp)
    122c:	0141                	add	sp,sp,16
    122e:	8082                	ret

0000000000001230 <malloc>:
    1230:	7139                	add	sp,sp,-64
    1232:	fc06                	sd	ra,56(sp)
    1234:	f822                	sd	s0,48(sp)
    1236:	f426                	sd	s1,40(sp)
    1238:	ec4e                	sd	s3,24(sp)
    123a:	0080                	add	s0,sp,64
    123c:	02051493          	sll	s1,a0,0x20
    1240:	9081                	srl	s1,s1,0x20
    1242:	04bd                	add	s1,s1,15
    1244:	8091                	srl	s1,s1,0x4
    1246:	0014899b          	addw	s3,s1,1
    124a:	0485                	add	s1,s1,1
    124c:	00001517          	auipc	a0,0x1
    1250:	59453503          	ld	a0,1428(a0) # 27e0 <freep>
    1254:	c915                	beqz	a0,1288 <malloc+0x58>
    1256:	611c                	ld	a5,0(a0)
    1258:	4798                	lw	a4,8(a5)
    125a:	08977e63          	bgeu	a4,s1,12f6 <malloc+0xc6>
    125e:	f04a                	sd	s2,32(sp)
    1260:	e852                	sd	s4,16(sp)
    1262:	e456                	sd	s5,8(sp)
    1264:	e05a                	sd	s6,0(sp)
    1266:	8a4e                	mv	s4,s3
    1268:	0009871b          	sext.w	a4,s3
    126c:	6685                	lui	a3,0x1
    126e:	00d77363          	bgeu	a4,a3,1274 <malloc+0x44>
    1272:	6a05                	lui	s4,0x1
    1274:	000a0b1b          	sext.w	s6,s4
    1278:	004a1a1b          	sllw	s4,s4,0x4
    127c:	00001917          	auipc	s2,0x1
    1280:	56490913          	add	s2,s2,1380 # 27e0 <freep>
    1284:	5afd                	li	s5,-1
    1286:	a091                	j	12ca <malloc+0x9a>
    1288:	f04a                	sd	s2,32(sp)
    128a:	e852                	sd	s4,16(sp)
    128c:	e456                	sd	s5,8(sp)
    128e:	e05a                	sd	s6,0(sp)
    1290:	00001797          	auipc	a5,0x1
    1294:	5c878793          	add	a5,a5,1480 # 2858 <base>
    1298:	00001717          	auipc	a4,0x1
    129c:	54f73423          	sd	a5,1352(a4) # 27e0 <freep>
    12a0:	e39c                	sd	a5,0(a5)
    12a2:	0007a423          	sw	zero,8(a5)
    12a6:	b7c1                	j	1266 <malloc+0x36>
    12a8:	6398                	ld	a4,0(a5)
    12aa:	e118                	sd	a4,0(a0)
    12ac:	a08d                	j	130e <malloc+0xde>
    12ae:	01652423          	sw	s6,8(a0)
    12b2:	0541                	add	a0,a0,16
    12b4:	00000097          	auipc	ra,0x0
    12b8:	efa080e7          	jalr	-262(ra) # 11ae <free>
    12bc:	00093503          	ld	a0,0(s2)
    12c0:	c13d                	beqz	a0,1326 <malloc+0xf6>
    12c2:	611c                	ld	a5,0(a0)
    12c4:	4798                	lw	a4,8(a5)
    12c6:	02977463          	bgeu	a4,s1,12ee <malloc+0xbe>
    12ca:	00093703          	ld	a4,0(s2)
    12ce:	853e                	mv	a0,a5
    12d0:	fef719e3          	bne	a4,a5,12c2 <malloc+0x92>
    12d4:	8552                	mv	a0,s4
    12d6:	00000097          	auipc	ra,0x0
    12da:	ba2080e7          	jalr	-1118(ra) # e78 <sbrk>
    12de:	fd5518e3          	bne	a0,s5,12ae <malloc+0x7e>
    12e2:	4501                	li	a0,0
    12e4:	7902                	ld	s2,32(sp)
    12e6:	6a42                	ld	s4,16(sp)
    12e8:	6aa2                	ld	s5,8(sp)
    12ea:	6b02                	ld	s6,0(sp)
    12ec:	a03d                	j	131a <malloc+0xea>
    12ee:	7902                	ld	s2,32(sp)
    12f0:	6a42                	ld	s4,16(sp)
    12f2:	6aa2                	ld	s5,8(sp)
    12f4:	6b02                	ld	s6,0(sp)
    12f6:	fae489e3          	beq	s1,a4,12a8 <malloc+0x78>
    12fa:	4137073b          	subw	a4,a4,s3
    12fe:	c798                	sw	a4,8(a5)
    1300:	02071693          	sll	a3,a4,0x20
    1304:	01c6d713          	srl	a4,a3,0x1c
    1308:	97ba                	add	a5,a5,a4
    130a:	0137a423          	sw	s3,8(a5)
    130e:	00001717          	auipc	a4,0x1
    1312:	4ca73923          	sd	a0,1234(a4) # 27e0 <freep>
    1316:	01078513          	add	a0,a5,16
    131a:	70e2                	ld	ra,56(sp)
    131c:	7442                	ld	s0,48(sp)
    131e:	74a2                	ld	s1,40(sp)
    1320:	69e2                	ld	s3,24(sp)
    1322:	6121                	add	sp,sp,64
    1324:	8082                	ret
    1326:	7902                	ld	s2,32(sp)
    1328:	6a42                	ld	s4,16(sp)
    132a:	6aa2                	ld	s5,8(sp)
    132c:	6b02                	ld	s6,0(sp)
    132e:	b7f5                	j	131a <malloc+0xea>
