
kernel/kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	5f010113          	add	sp,sp,1520 # 8000b5f0 <stack0>
    80000008:	6505                	lui	a0,0x1
    8000000a:	f14025f3          	csrr	a1,mhartid
    8000000e:	0585                	add	a1,a1,1
    80000010:	02b50533          	mul	a0,a0,a1
    80000014:	912a                	add	sp,sp,a0
    80000016:	076000ef          	jal	8000008c <start>

000000008000001a <spin>:
    8000001a:	a001                	j	8000001a <spin>

000000008000001c <timerinit>:
    8000001c:	1141                	add	sp,sp,-16
    8000001e:	e422                	sd	s0,8(sp)
    80000020:	0800                	add	s0,sp,16
    80000022:	f14027f3          	csrr	a5,mhartid
    80000026:	0007859b          	sext.w	a1,a5
    8000002a:	0037979b          	sllw	a5,a5,0x3
    8000002e:	02004737          	lui	a4,0x2004
    80000032:	97ba                	add	a5,a5,a4
    80000034:	0200c737          	lui	a4,0x200c
    80000038:	1761                	add	a4,a4,-8 # 200bff8 <_entry-0x7dff4008>
    8000003a:	6318                	ld	a4,0(a4)
    8000003c:	000f4637          	lui	a2,0xf4
    80000040:	24060613          	add	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80000044:	9732                	add	a4,a4,a2
    80000046:	e398                	sd	a4,0(a5)
    80000048:	00259693          	sll	a3,a1,0x2
    8000004c:	96ae                	add	a3,a3,a1
    8000004e:	068e                	sll	a3,a3,0x3
    80000050:	0000b717          	auipc	a4,0xb
    80000054:	46070713          	add	a4,a4,1120 # 8000b4b0 <timer_scratch>
    80000058:	9736                	add	a4,a4,a3
    8000005a:	ef1c                	sd	a5,24(a4)
    8000005c:	f310                	sd	a2,32(a4)
    8000005e:	34071073          	csrw	mscratch,a4
    80000062:	00006797          	auipc	a5,0x6
    80000066:	5be78793          	add	a5,a5,1470 # 80006620 <timervec>
    8000006a:	30579073          	csrw	mtvec,a5
    8000006e:	300027f3          	csrr	a5,mstatus
    80000072:	0087e793          	or	a5,a5,8
    80000076:	30079073          	csrw	mstatus,a5
    8000007a:	304027f3          	csrr	a5,mie
    8000007e:	0807e793          	or	a5,a5,128
    80000082:	30479073          	csrw	mie,a5
    80000086:	6422                	ld	s0,8(sp)
    80000088:	0141                	add	sp,sp,16
    8000008a:	8082                	ret

000000008000008c <start>:
    8000008c:	1141                	add	sp,sp,-16
    8000008e:	e406                	sd	ra,8(sp)
    80000090:	e022                	sd	s0,0(sp)
    80000092:	0800                	add	s0,sp,16
    80000094:	300027f3          	csrr	a5,mstatus
    80000098:	7779                	lui	a4,0xffffe
    8000009a:	7ff70713          	add	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffd8ddf>
    8000009e:	8ff9                	and	a5,a5,a4
    800000a0:	6705                	lui	a4,0x1
    800000a2:	80070713          	add	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800000a6:	8fd9                	or	a5,a5,a4
    800000a8:	30079073          	csrw	mstatus,a5
    800000ac:	00001797          	auipc	a5,0x1
    800000b0:	e2678793          	add	a5,a5,-474 # 80000ed2 <main>
    800000b4:	34179073          	csrw	mepc,a5
    800000b8:	4781                	li	a5,0
    800000ba:	18079073          	csrw	satp,a5
    800000be:	67c1                	lui	a5,0x10
    800000c0:	17fd                	add	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800000c2:	30279073          	csrw	medeleg,a5
    800000c6:	30379073          	csrw	mideleg,a5
    800000ca:	104027f3          	csrr	a5,sie
    800000ce:	2227e793          	or	a5,a5,546
    800000d2:	10479073          	csrw	sie,a5
    800000d6:	57fd                	li	a5,-1
    800000d8:	83a9                	srl	a5,a5,0xa
    800000da:	3b079073          	csrw	pmpaddr0,a5
    800000de:	47bd                	li	a5,15
    800000e0:	3a079073          	csrw	pmpcfg0,a5
    800000e4:	00000097          	auipc	ra,0x0
    800000e8:	f38080e7          	jalr	-200(ra) # 8000001c <timerinit>
    800000ec:	f14027f3          	csrr	a5,mhartid
    800000f0:	2781                	sext.w	a5,a5
    800000f2:	823e                	mv	tp,a5
    800000f4:	30200073          	mret
    800000f8:	60a2                	ld	ra,8(sp)
    800000fa:	6402                	ld	s0,0(sp)
    800000fc:	0141                	add	sp,sp,16
    800000fe:	8082                	ret

0000000080000100 <consolewrite>:
    80000100:	715d                	add	sp,sp,-80
    80000102:	e486                	sd	ra,72(sp)
    80000104:	e0a2                	sd	s0,64(sp)
    80000106:	f84a                	sd	s2,48(sp)
    80000108:	0880                	add	s0,sp,80
    8000010a:	04c05663          	blez	a2,80000156 <consolewrite+0x56>
    8000010e:	fc26                	sd	s1,56(sp)
    80000110:	f44e                	sd	s3,40(sp)
    80000112:	f052                	sd	s4,32(sp)
    80000114:	ec56                	sd	s5,24(sp)
    80000116:	8a2a                	mv	s4,a0
    80000118:	84ae                	mv	s1,a1
    8000011a:	89b2                	mv	s3,a2
    8000011c:	4901                	li	s2,0
    8000011e:	5afd                	li	s5,-1
    80000120:	4685                	li	a3,1
    80000122:	8626                	mv	a2,s1
    80000124:	85d2                	mv	a1,s4
    80000126:	fbf40513          	add	a0,s0,-65
    8000012a:	00003097          	auipc	ra,0x3
    8000012e:	900080e7          	jalr	-1792(ra) # 80002a2a <either_copyin>
    80000132:	03550463          	beq	a0,s5,8000015a <consolewrite+0x5a>
    80000136:	fbf44503          	lbu	a0,-65(s0)
    8000013a:	00000097          	auipc	ra,0x0
    8000013e:	7e4080e7          	jalr	2020(ra) # 8000091e <uartputc>
    80000142:	2905                	addw	s2,s2,1
    80000144:	0485                	add	s1,s1,1
    80000146:	fd299de3          	bne	s3,s2,80000120 <consolewrite+0x20>
    8000014a:	894e                	mv	s2,s3
    8000014c:	74e2                	ld	s1,56(sp)
    8000014e:	79a2                	ld	s3,40(sp)
    80000150:	7a02                	ld	s4,32(sp)
    80000152:	6ae2                	ld	s5,24(sp)
    80000154:	a039                	j	80000162 <consolewrite+0x62>
    80000156:	4901                	li	s2,0
    80000158:	a029                	j	80000162 <consolewrite+0x62>
    8000015a:	74e2                	ld	s1,56(sp)
    8000015c:	79a2                	ld	s3,40(sp)
    8000015e:	7a02                	ld	s4,32(sp)
    80000160:	6ae2                	ld	s5,24(sp)
    80000162:	854a                	mv	a0,s2
    80000164:	60a6                	ld	ra,72(sp)
    80000166:	6406                	ld	s0,64(sp)
    80000168:	7942                	ld	s2,48(sp)
    8000016a:	6161                	add	sp,sp,80
    8000016c:	8082                	ret

000000008000016e <consoleread>:
    8000016e:	711d                	add	sp,sp,-96
    80000170:	ec86                	sd	ra,88(sp)
    80000172:	e8a2                	sd	s0,80(sp)
    80000174:	e4a6                	sd	s1,72(sp)
    80000176:	e0ca                	sd	s2,64(sp)
    80000178:	fc4e                	sd	s3,56(sp)
    8000017a:	f852                	sd	s4,48(sp)
    8000017c:	f456                	sd	s5,40(sp)
    8000017e:	f05a                	sd	s6,32(sp)
    80000180:	1080                	add	s0,sp,96
    80000182:	8aaa                	mv	s5,a0
    80000184:	8a2e                	mv	s4,a1
    80000186:	89b2                	mv	s3,a2
    80000188:	00060b1b          	sext.w	s6,a2
    8000018c:	00013517          	auipc	a0,0x13
    80000190:	46450513          	add	a0,a0,1124 # 800135f0 <cons>
    80000194:	00001097          	auipc	ra,0x1
    80000198:	aa4080e7          	jalr	-1372(ra) # 80000c38 <acquire>
    8000019c:	00013497          	auipc	s1,0x13
    800001a0:	45448493          	add	s1,s1,1108 # 800135f0 <cons>
    800001a4:	00013917          	auipc	s2,0x13
    800001a8:	4e490913          	add	s2,s2,1252 # 80013688 <cons+0x98>
    800001ac:	0d305763          	blez	s3,8000027a <consoleread+0x10c>
    800001b0:	0984a783          	lw	a5,152(s1)
    800001b4:	09c4a703          	lw	a4,156(s1)
    800001b8:	0af71c63          	bne	a4,a5,80000270 <consoleread+0x102>
    800001bc:	00002097          	auipc	ra,0x2
    800001c0:	8e2080e7          	jalr	-1822(ra) # 80001a9e <myproc>
    800001c4:	00002097          	auipc	ra,0x2
    800001c8:	6b0080e7          	jalr	1712(ra) # 80002874 <killed>
    800001cc:	e52d                	bnez	a0,80000236 <consoleread+0xc8>
    800001ce:	85a6                	mv	a1,s1
    800001d0:	854a                	mv	a0,s2
    800001d2:	00002097          	auipc	ra,0x2
    800001d6:	3ee080e7          	jalr	1006(ra) # 800025c0 <sleep>
    800001da:	0984a783          	lw	a5,152(s1)
    800001de:	09c4a703          	lw	a4,156(s1)
    800001e2:	fcf70de3          	beq	a4,a5,800001bc <consoleread+0x4e>
    800001e6:	ec5e                	sd	s7,24(sp)
    800001e8:	00013717          	auipc	a4,0x13
    800001ec:	40870713          	add	a4,a4,1032 # 800135f0 <cons>
    800001f0:	0017869b          	addw	a3,a5,1
    800001f4:	08d72c23          	sw	a3,152(a4)
    800001f8:	07f7f693          	and	a3,a5,127
    800001fc:	9736                	add	a4,a4,a3
    800001fe:	01874703          	lbu	a4,24(a4)
    80000202:	00070b9b          	sext.w	s7,a4
    80000206:	4691                	li	a3,4
    80000208:	04db8a63          	beq	s7,a3,8000025c <consoleread+0xee>
    8000020c:	fae407a3          	sb	a4,-81(s0)
    80000210:	4685                	li	a3,1
    80000212:	faf40613          	add	a2,s0,-81
    80000216:	85d2                	mv	a1,s4
    80000218:	8556                	mv	a0,s5
    8000021a:	00002097          	auipc	ra,0x2
    8000021e:	7ba080e7          	jalr	1978(ra) # 800029d4 <either_copyout>
    80000222:	57fd                	li	a5,-1
    80000224:	04f50a63          	beq	a0,a5,80000278 <consoleread+0x10a>
    80000228:	0a05                	add	s4,s4,1
    8000022a:	39fd                	addw	s3,s3,-1
    8000022c:	47a9                	li	a5,10
    8000022e:	06fb8163          	beq	s7,a5,80000290 <consoleread+0x122>
    80000232:	6be2                	ld	s7,24(sp)
    80000234:	bfa5                	j	800001ac <consoleread+0x3e>
    80000236:	00013517          	auipc	a0,0x13
    8000023a:	3ba50513          	add	a0,a0,954 # 800135f0 <cons>
    8000023e:	00001097          	auipc	ra,0x1
    80000242:	aae080e7          	jalr	-1362(ra) # 80000cec <release>
    80000246:	557d                	li	a0,-1
    80000248:	60e6                	ld	ra,88(sp)
    8000024a:	6446                	ld	s0,80(sp)
    8000024c:	64a6                	ld	s1,72(sp)
    8000024e:	6906                	ld	s2,64(sp)
    80000250:	79e2                	ld	s3,56(sp)
    80000252:	7a42                	ld	s4,48(sp)
    80000254:	7aa2                	ld	s5,40(sp)
    80000256:	7b02                	ld	s6,32(sp)
    80000258:	6125                	add	sp,sp,96
    8000025a:	8082                	ret
    8000025c:	0009871b          	sext.w	a4,s3
    80000260:	01677a63          	bgeu	a4,s6,80000274 <consoleread+0x106>
    80000264:	00013717          	auipc	a4,0x13
    80000268:	42f72223          	sw	a5,1060(a4) # 80013688 <cons+0x98>
    8000026c:	6be2                	ld	s7,24(sp)
    8000026e:	a031                	j	8000027a <consoleread+0x10c>
    80000270:	ec5e                	sd	s7,24(sp)
    80000272:	bf9d                	j	800001e8 <consoleread+0x7a>
    80000274:	6be2                	ld	s7,24(sp)
    80000276:	a011                	j	8000027a <consoleread+0x10c>
    80000278:	6be2                	ld	s7,24(sp)
    8000027a:	00013517          	auipc	a0,0x13
    8000027e:	37650513          	add	a0,a0,886 # 800135f0 <cons>
    80000282:	00001097          	auipc	ra,0x1
    80000286:	a6a080e7          	jalr	-1430(ra) # 80000cec <release>
    8000028a:	413b053b          	subw	a0,s6,s3
    8000028e:	bf6d                	j	80000248 <consoleread+0xda>
    80000290:	6be2                	ld	s7,24(sp)
    80000292:	b7e5                	j	8000027a <consoleread+0x10c>

0000000080000294 <consputc>:
    80000294:	1141                	add	sp,sp,-16
    80000296:	e406                	sd	ra,8(sp)
    80000298:	e022                	sd	s0,0(sp)
    8000029a:	0800                	add	s0,sp,16
    8000029c:	10000793          	li	a5,256
    800002a0:	00f50a63          	beq	a0,a5,800002b4 <consputc+0x20>
    800002a4:	00000097          	auipc	ra,0x0
    800002a8:	59c080e7          	jalr	1436(ra) # 80000840 <uartputc_sync>
    800002ac:	60a2                	ld	ra,8(sp)
    800002ae:	6402                	ld	s0,0(sp)
    800002b0:	0141                	add	sp,sp,16
    800002b2:	8082                	ret
    800002b4:	4521                	li	a0,8
    800002b6:	00000097          	auipc	ra,0x0
    800002ba:	58a080e7          	jalr	1418(ra) # 80000840 <uartputc_sync>
    800002be:	02000513          	li	a0,32
    800002c2:	00000097          	auipc	ra,0x0
    800002c6:	57e080e7          	jalr	1406(ra) # 80000840 <uartputc_sync>
    800002ca:	4521                	li	a0,8
    800002cc:	00000097          	auipc	ra,0x0
    800002d0:	574080e7          	jalr	1396(ra) # 80000840 <uartputc_sync>
    800002d4:	bfe1                	j	800002ac <consputc+0x18>

00000000800002d6 <consoleintr>:
    800002d6:	1101                	add	sp,sp,-32
    800002d8:	ec06                	sd	ra,24(sp)
    800002da:	e822                	sd	s0,16(sp)
    800002dc:	e426                	sd	s1,8(sp)
    800002de:	1000                	add	s0,sp,32
    800002e0:	84aa                	mv	s1,a0
    800002e2:	00013517          	auipc	a0,0x13
    800002e6:	30e50513          	add	a0,a0,782 # 800135f0 <cons>
    800002ea:	00001097          	auipc	ra,0x1
    800002ee:	94e080e7          	jalr	-1714(ra) # 80000c38 <acquire>
    800002f2:	47d5                	li	a5,21
    800002f4:	0af48563          	beq	s1,a5,8000039e <consoleintr+0xc8>
    800002f8:	0297c963          	blt	a5,s1,8000032a <consoleintr+0x54>
    800002fc:	47a1                	li	a5,8
    800002fe:	0ef48c63          	beq	s1,a5,800003f6 <consoleintr+0x120>
    80000302:	47c1                	li	a5,16
    80000304:	10f49f63          	bne	s1,a5,80000422 <consoleintr+0x14c>
    80000308:	00002097          	auipc	ra,0x2
    8000030c:	778080e7          	jalr	1912(ra) # 80002a80 <procdump>
    80000310:	00013517          	auipc	a0,0x13
    80000314:	2e050513          	add	a0,a0,736 # 800135f0 <cons>
    80000318:	00001097          	auipc	ra,0x1
    8000031c:	9d4080e7          	jalr	-1580(ra) # 80000cec <release>
    80000320:	60e2                	ld	ra,24(sp)
    80000322:	6442                	ld	s0,16(sp)
    80000324:	64a2                	ld	s1,8(sp)
    80000326:	6105                	add	sp,sp,32
    80000328:	8082                	ret
    8000032a:	07f00793          	li	a5,127
    8000032e:	0cf48463          	beq	s1,a5,800003f6 <consoleintr+0x120>
    80000332:	00013717          	auipc	a4,0x13
    80000336:	2be70713          	add	a4,a4,702 # 800135f0 <cons>
    8000033a:	0a072783          	lw	a5,160(a4)
    8000033e:	09872703          	lw	a4,152(a4)
    80000342:	9f99                	subw	a5,a5,a4
    80000344:	07f00713          	li	a4,127
    80000348:	fcf764e3          	bltu	a4,a5,80000310 <consoleintr+0x3a>
    8000034c:	47b5                	li	a5,13
    8000034e:	0cf48d63          	beq	s1,a5,80000428 <consoleintr+0x152>
    80000352:	8526                	mv	a0,s1
    80000354:	00000097          	auipc	ra,0x0
    80000358:	f40080e7          	jalr	-192(ra) # 80000294 <consputc>
    8000035c:	00013797          	auipc	a5,0x13
    80000360:	29478793          	add	a5,a5,660 # 800135f0 <cons>
    80000364:	0a07a683          	lw	a3,160(a5)
    80000368:	0016871b          	addw	a4,a3,1
    8000036c:	0007061b          	sext.w	a2,a4
    80000370:	0ae7a023          	sw	a4,160(a5)
    80000374:	07f6f693          	and	a3,a3,127
    80000378:	97b6                	add	a5,a5,a3
    8000037a:	00978c23          	sb	s1,24(a5)
    8000037e:	47a9                	li	a5,10
    80000380:	0cf48b63          	beq	s1,a5,80000456 <consoleintr+0x180>
    80000384:	4791                	li	a5,4
    80000386:	0cf48863          	beq	s1,a5,80000456 <consoleintr+0x180>
    8000038a:	00013797          	auipc	a5,0x13
    8000038e:	2fe7a783          	lw	a5,766(a5) # 80013688 <cons+0x98>
    80000392:	9f1d                	subw	a4,a4,a5
    80000394:	08000793          	li	a5,128
    80000398:	f6f71ce3          	bne	a4,a5,80000310 <consoleintr+0x3a>
    8000039c:	a86d                	j	80000456 <consoleintr+0x180>
    8000039e:	e04a                	sd	s2,0(sp)
    800003a0:	00013717          	auipc	a4,0x13
    800003a4:	25070713          	add	a4,a4,592 # 800135f0 <cons>
    800003a8:	0a072783          	lw	a5,160(a4)
    800003ac:	09c72703          	lw	a4,156(a4)
    800003b0:	00013497          	auipc	s1,0x13
    800003b4:	24048493          	add	s1,s1,576 # 800135f0 <cons>
    800003b8:	4929                	li	s2,10
    800003ba:	02f70a63          	beq	a4,a5,800003ee <consoleintr+0x118>
    800003be:	37fd                	addw	a5,a5,-1
    800003c0:	07f7f713          	and	a4,a5,127
    800003c4:	9726                	add	a4,a4,s1
    800003c6:	01874703          	lbu	a4,24(a4)
    800003ca:	03270463          	beq	a4,s2,800003f2 <consoleintr+0x11c>
    800003ce:	0af4a023          	sw	a5,160(s1)
    800003d2:	10000513          	li	a0,256
    800003d6:	00000097          	auipc	ra,0x0
    800003da:	ebe080e7          	jalr	-322(ra) # 80000294 <consputc>
    800003de:	0a04a783          	lw	a5,160(s1)
    800003e2:	09c4a703          	lw	a4,156(s1)
    800003e6:	fcf71ce3          	bne	a4,a5,800003be <consoleintr+0xe8>
    800003ea:	6902                	ld	s2,0(sp)
    800003ec:	b715                	j	80000310 <consoleintr+0x3a>
    800003ee:	6902                	ld	s2,0(sp)
    800003f0:	b705                	j	80000310 <consoleintr+0x3a>
    800003f2:	6902                	ld	s2,0(sp)
    800003f4:	bf31                	j	80000310 <consoleintr+0x3a>
    800003f6:	00013717          	auipc	a4,0x13
    800003fa:	1fa70713          	add	a4,a4,506 # 800135f0 <cons>
    800003fe:	0a072783          	lw	a5,160(a4)
    80000402:	09c72703          	lw	a4,156(a4)
    80000406:	f0f705e3          	beq	a4,a5,80000310 <consoleintr+0x3a>
    8000040a:	37fd                	addw	a5,a5,-1
    8000040c:	00013717          	auipc	a4,0x13
    80000410:	28f72223          	sw	a5,644(a4) # 80013690 <cons+0xa0>
    80000414:	10000513          	li	a0,256
    80000418:	00000097          	auipc	ra,0x0
    8000041c:	e7c080e7          	jalr	-388(ra) # 80000294 <consputc>
    80000420:	bdc5                	j	80000310 <consoleintr+0x3a>
    80000422:	ee0487e3          	beqz	s1,80000310 <consoleintr+0x3a>
    80000426:	b731                	j	80000332 <consoleintr+0x5c>
    80000428:	4529                	li	a0,10
    8000042a:	00000097          	auipc	ra,0x0
    8000042e:	e6a080e7          	jalr	-406(ra) # 80000294 <consputc>
    80000432:	00013797          	auipc	a5,0x13
    80000436:	1be78793          	add	a5,a5,446 # 800135f0 <cons>
    8000043a:	0a07a703          	lw	a4,160(a5)
    8000043e:	0017069b          	addw	a3,a4,1
    80000442:	0006861b          	sext.w	a2,a3
    80000446:	0ad7a023          	sw	a3,160(a5)
    8000044a:	07f77713          	and	a4,a4,127
    8000044e:	97ba                	add	a5,a5,a4
    80000450:	4729                	li	a4,10
    80000452:	00e78c23          	sb	a4,24(a5)
    80000456:	00013797          	auipc	a5,0x13
    8000045a:	22c7ab23          	sw	a2,566(a5) # 8001368c <cons+0x9c>
    8000045e:	00013517          	auipc	a0,0x13
    80000462:	22a50513          	add	a0,a0,554 # 80013688 <cons+0x98>
    80000466:	00002097          	auipc	ra,0x2
    8000046a:	1be080e7          	jalr	446(ra) # 80002624 <wakeup>
    8000046e:	b54d                	j	80000310 <consoleintr+0x3a>

0000000080000470 <consoleinit>:
    80000470:	1141                	add	sp,sp,-16
    80000472:	e406                	sd	ra,8(sp)
    80000474:	e022                	sd	s0,0(sp)
    80000476:	0800                	add	s0,sp,16
    80000478:	00008597          	auipc	a1,0x8
    8000047c:	b8858593          	add	a1,a1,-1144 # 80008000 <etext>
    80000480:	00013517          	auipc	a0,0x13
    80000484:	17050513          	add	a0,a0,368 # 800135f0 <cons>
    80000488:	00000097          	auipc	ra,0x0
    8000048c:	720080e7          	jalr	1824(ra) # 80000ba8 <initlock>
    80000490:	00000097          	auipc	ra,0x0
    80000494:	354080e7          	jalr	852(ra) # 800007e4 <uartinit>
    80000498:	00024797          	auipc	a5,0x24
    8000049c:	3f078793          	add	a5,a5,1008 # 80024888 <devsw>
    800004a0:	00000717          	auipc	a4,0x0
    800004a4:	cce70713          	add	a4,a4,-818 # 8000016e <consoleread>
    800004a8:	eb98                	sd	a4,16(a5)
    800004aa:	00000717          	auipc	a4,0x0
    800004ae:	c5670713          	add	a4,a4,-938 # 80000100 <consolewrite>
    800004b2:	ef98                	sd	a4,24(a5)
    800004b4:	60a2                	ld	ra,8(sp)
    800004b6:	6402                	ld	s0,0(sp)
    800004b8:	0141                	add	sp,sp,16
    800004ba:	8082                	ret

00000000800004bc <printint>:
    800004bc:	7179                	add	sp,sp,-48
    800004be:	f406                	sd	ra,40(sp)
    800004c0:	f022                	sd	s0,32(sp)
    800004c2:	1800                	add	s0,sp,48
    800004c4:	c219                	beqz	a2,800004ca <printint+0xe>
    800004c6:	08054963          	bltz	a0,80000558 <printint+0x9c>
    800004ca:	2501                	sext.w	a0,a0
    800004cc:	4881                	li	a7,0
    800004ce:	fd040693          	add	a3,s0,-48
    800004d2:	4701                	li	a4,0
    800004d4:	2581                	sext.w	a1,a1
    800004d6:	00008617          	auipc	a2,0x8
    800004da:	b5a60613          	add	a2,a2,-1190 # 80008030 <digits>
    800004de:	883a                	mv	a6,a4
    800004e0:	2705                	addw	a4,a4,1
    800004e2:	02b577bb          	remuw	a5,a0,a1
    800004e6:	1782                	sll	a5,a5,0x20
    800004e8:	9381                	srl	a5,a5,0x20
    800004ea:	97b2                	add	a5,a5,a2
    800004ec:	0007c783          	lbu	a5,0(a5)
    800004f0:	00f68023          	sb	a5,0(a3)
    800004f4:	0005079b          	sext.w	a5,a0
    800004f8:	02b5553b          	divuw	a0,a0,a1
    800004fc:	0685                	add	a3,a3,1
    800004fe:	feb7f0e3          	bgeu	a5,a1,800004de <printint+0x22>
    80000502:	00088c63          	beqz	a7,8000051a <printint+0x5e>
    80000506:	fe070793          	add	a5,a4,-32
    8000050a:	00878733          	add	a4,a5,s0
    8000050e:	02d00793          	li	a5,45
    80000512:	fef70823          	sb	a5,-16(a4)
    80000516:	0028071b          	addw	a4,a6,2
    8000051a:	02e05b63          	blez	a4,80000550 <printint+0x94>
    8000051e:	ec26                	sd	s1,24(sp)
    80000520:	e84a                	sd	s2,16(sp)
    80000522:	fd040793          	add	a5,s0,-48
    80000526:	00e784b3          	add	s1,a5,a4
    8000052a:	fff78913          	add	s2,a5,-1
    8000052e:	993a                	add	s2,s2,a4
    80000530:	377d                	addw	a4,a4,-1
    80000532:	1702                	sll	a4,a4,0x20
    80000534:	9301                	srl	a4,a4,0x20
    80000536:	40e90933          	sub	s2,s2,a4
    8000053a:	fff4c503          	lbu	a0,-1(s1)
    8000053e:	00000097          	auipc	ra,0x0
    80000542:	d56080e7          	jalr	-682(ra) # 80000294 <consputc>
    80000546:	14fd                	add	s1,s1,-1
    80000548:	ff2499e3          	bne	s1,s2,8000053a <printint+0x7e>
    8000054c:	64e2                	ld	s1,24(sp)
    8000054e:	6942                	ld	s2,16(sp)
    80000550:	70a2                	ld	ra,40(sp)
    80000552:	7402                	ld	s0,32(sp)
    80000554:	6145                	add	sp,sp,48
    80000556:	8082                	ret
    80000558:	40a0053b          	negw	a0,a0
    8000055c:	4885                	li	a7,1
    8000055e:	bf85                	j	800004ce <printint+0x12>

0000000080000560 <panic>:
    80000560:	1101                	add	sp,sp,-32
    80000562:	ec06                	sd	ra,24(sp)
    80000564:	e822                	sd	s0,16(sp)
    80000566:	e426                	sd	s1,8(sp)
    80000568:	1000                	add	s0,sp,32
    8000056a:	84aa                	mv	s1,a0
    8000056c:	00013797          	auipc	a5,0x13
    80000570:	1407a223          	sw	zero,324(a5) # 800136b0 <pr+0x18>
    80000574:	00008517          	auipc	a0,0x8
    80000578:	a9450513          	add	a0,a0,-1388 # 80008008 <etext+0x8>
    8000057c:	00000097          	auipc	ra,0x0
    80000580:	02e080e7          	jalr	46(ra) # 800005aa <printf>
    80000584:	8526                	mv	a0,s1
    80000586:	00000097          	auipc	ra,0x0
    8000058a:	024080e7          	jalr	36(ra) # 800005aa <printf>
    8000058e:	00008517          	auipc	a0,0x8
    80000592:	b2a50513          	add	a0,a0,-1238 # 800080b8 <digits+0x88>
    80000596:	00000097          	auipc	ra,0x0
    8000059a:	014080e7          	jalr	20(ra) # 800005aa <printf>
    8000059e:	4785                	li	a5,1
    800005a0:	0000b717          	auipc	a4,0xb
    800005a4:	ecf72823          	sw	a5,-304(a4) # 8000b470 <panicked>
    800005a8:	a001                	j	800005a8 <panic+0x48>

00000000800005aa <printf>:
    800005aa:	7131                	add	sp,sp,-192
    800005ac:	fc86                	sd	ra,120(sp)
    800005ae:	f8a2                	sd	s0,112(sp)
    800005b0:	e8d2                	sd	s4,80(sp)
    800005b2:	f06a                	sd	s10,32(sp)
    800005b4:	0100                	add	s0,sp,128
    800005b6:	8a2a                	mv	s4,a0
    800005b8:	e40c                	sd	a1,8(s0)
    800005ba:	e810                	sd	a2,16(s0)
    800005bc:	ec14                	sd	a3,24(s0)
    800005be:	f018                	sd	a4,32(s0)
    800005c0:	f41c                	sd	a5,40(s0)
    800005c2:	03043823          	sd	a6,48(s0)
    800005c6:	03143c23          	sd	a7,56(s0)
    800005ca:	00013d17          	auipc	s10,0x13
    800005ce:	0e6d2d03          	lw	s10,230(s10) # 800136b0 <pr+0x18>
    800005d2:	040d1463          	bnez	s10,8000061a <printf+0x70>
    800005d6:	040a0b63          	beqz	s4,8000062c <printf+0x82>
    800005da:	00840793          	add	a5,s0,8
    800005de:	f8f43423          	sd	a5,-120(s0)
    800005e2:	000a4503          	lbu	a0,0(s4)
    800005e6:	18050b63          	beqz	a0,8000077c <printf+0x1d2>
    800005ea:	f4a6                	sd	s1,104(sp)
    800005ec:	f0ca                	sd	s2,96(sp)
    800005ee:	ecce                	sd	s3,88(sp)
    800005f0:	e4d6                	sd	s5,72(sp)
    800005f2:	e0da                	sd	s6,64(sp)
    800005f4:	fc5e                	sd	s7,56(sp)
    800005f6:	f862                	sd	s8,48(sp)
    800005f8:	f466                	sd	s9,40(sp)
    800005fa:	ec6e                	sd	s11,24(sp)
    800005fc:	4981                	li	s3,0
    800005fe:	02500b13          	li	s6,37
    80000602:	07000b93          	li	s7,112
    80000606:	4cc1                	li	s9,16
    80000608:	00008a97          	auipc	s5,0x8
    8000060c:	a28a8a93          	add	s5,s5,-1496 # 80008030 <digits>
    80000610:	07300c13          	li	s8,115
    80000614:	06400d93          	li	s11,100
    80000618:	a0b1                	j	80000664 <printf+0xba>
    8000061a:	00013517          	auipc	a0,0x13
    8000061e:	07e50513          	add	a0,a0,126 # 80013698 <pr>
    80000622:	00000097          	auipc	ra,0x0
    80000626:	616080e7          	jalr	1558(ra) # 80000c38 <acquire>
    8000062a:	b775                	j	800005d6 <printf+0x2c>
    8000062c:	f4a6                	sd	s1,104(sp)
    8000062e:	f0ca                	sd	s2,96(sp)
    80000630:	ecce                	sd	s3,88(sp)
    80000632:	e4d6                	sd	s5,72(sp)
    80000634:	e0da                	sd	s6,64(sp)
    80000636:	fc5e                	sd	s7,56(sp)
    80000638:	f862                	sd	s8,48(sp)
    8000063a:	f466                	sd	s9,40(sp)
    8000063c:	ec6e                	sd	s11,24(sp)
    8000063e:	00008517          	auipc	a0,0x8
    80000642:	9da50513          	add	a0,a0,-1574 # 80008018 <etext+0x18>
    80000646:	00000097          	auipc	ra,0x0
    8000064a:	f1a080e7          	jalr	-230(ra) # 80000560 <panic>
    8000064e:	00000097          	auipc	ra,0x0
    80000652:	c46080e7          	jalr	-954(ra) # 80000294 <consputc>
    80000656:	2985                	addw	s3,s3,1
    80000658:	013a07b3          	add	a5,s4,s3
    8000065c:	0007c503          	lbu	a0,0(a5)
    80000660:	10050563          	beqz	a0,8000076a <printf+0x1c0>
    80000664:	ff6515e3          	bne	a0,s6,8000064e <printf+0xa4>
    80000668:	2985                	addw	s3,s3,1
    8000066a:	013a07b3          	add	a5,s4,s3
    8000066e:	0007c783          	lbu	a5,0(a5)
    80000672:	0007849b          	sext.w	s1,a5
    80000676:	10078b63          	beqz	a5,8000078c <printf+0x1e2>
    8000067a:	05778a63          	beq	a5,s7,800006ce <printf+0x124>
    8000067e:	02fbf663          	bgeu	s7,a5,800006aa <printf+0x100>
    80000682:	09878863          	beq	a5,s8,80000712 <printf+0x168>
    80000686:	07800713          	li	a4,120
    8000068a:	0ce79563          	bne	a5,a4,80000754 <printf+0x1aa>
    8000068e:	f8843783          	ld	a5,-120(s0)
    80000692:	00878713          	add	a4,a5,8
    80000696:	f8e43423          	sd	a4,-120(s0)
    8000069a:	4605                	li	a2,1
    8000069c:	85e6                	mv	a1,s9
    8000069e:	4388                	lw	a0,0(a5)
    800006a0:	00000097          	auipc	ra,0x0
    800006a4:	e1c080e7          	jalr	-484(ra) # 800004bc <printint>
    800006a8:	b77d                	j	80000656 <printf+0xac>
    800006aa:	09678f63          	beq	a5,s6,80000748 <printf+0x19e>
    800006ae:	0bb79363          	bne	a5,s11,80000754 <printf+0x1aa>
    800006b2:	f8843783          	ld	a5,-120(s0)
    800006b6:	00878713          	add	a4,a5,8
    800006ba:	f8e43423          	sd	a4,-120(s0)
    800006be:	4605                	li	a2,1
    800006c0:	45a9                	li	a1,10
    800006c2:	4388                	lw	a0,0(a5)
    800006c4:	00000097          	auipc	ra,0x0
    800006c8:	df8080e7          	jalr	-520(ra) # 800004bc <printint>
    800006cc:	b769                	j	80000656 <printf+0xac>
    800006ce:	f8843783          	ld	a5,-120(s0)
    800006d2:	00878713          	add	a4,a5,8
    800006d6:	f8e43423          	sd	a4,-120(s0)
    800006da:	0007b903          	ld	s2,0(a5)
    800006de:	03000513          	li	a0,48
    800006e2:	00000097          	auipc	ra,0x0
    800006e6:	bb2080e7          	jalr	-1102(ra) # 80000294 <consputc>
    800006ea:	07800513          	li	a0,120
    800006ee:	00000097          	auipc	ra,0x0
    800006f2:	ba6080e7          	jalr	-1114(ra) # 80000294 <consputc>
    800006f6:	84e6                	mv	s1,s9
    800006f8:	03c95793          	srl	a5,s2,0x3c
    800006fc:	97d6                	add	a5,a5,s5
    800006fe:	0007c503          	lbu	a0,0(a5)
    80000702:	00000097          	auipc	ra,0x0
    80000706:	b92080e7          	jalr	-1134(ra) # 80000294 <consputc>
    8000070a:	0912                	sll	s2,s2,0x4
    8000070c:	34fd                	addw	s1,s1,-1
    8000070e:	f4ed                	bnez	s1,800006f8 <printf+0x14e>
    80000710:	b799                	j	80000656 <printf+0xac>
    80000712:	f8843783          	ld	a5,-120(s0)
    80000716:	00878713          	add	a4,a5,8
    8000071a:	f8e43423          	sd	a4,-120(s0)
    8000071e:	6384                	ld	s1,0(a5)
    80000720:	cc89                	beqz	s1,8000073a <printf+0x190>
    80000722:	0004c503          	lbu	a0,0(s1)
    80000726:	d905                	beqz	a0,80000656 <printf+0xac>
    80000728:	00000097          	auipc	ra,0x0
    8000072c:	b6c080e7          	jalr	-1172(ra) # 80000294 <consputc>
    80000730:	0485                	add	s1,s1,1
    80000732:	0004c503          	lbu	a0,0(s1)
    80000736:	f96d                	bnez	a0,80000728 <printf+0x17e>
    80000738:	bf39                	j	80000656 <printf+0xac>
    8000073a:	00008497          	auipc	s1,0x8
    8000073e:	8d648493          	add	s1,s1,-1834 # 80008010 <etext+0x10>
    80000742:	02800513          	li	a0,40
    80000746:	b7cd                	j	80000728 <printf+0x17e>
    80000748:	855a                	mv	a0,s6
    8000074a:	00000097          	auipc	ra,0x0
    8000074e:	b4a080e7          	jalr	-1206(ra) # 80000294 <consputc>
    80000752:	b711                	j	80000656 <printf+0xac>
    80000754:	855a                	mv	a0,s6
    80000756:	00000097          	auipc	ra,0x0
    8000075a:	b3e080e7          	jalr	-1218(ra) # 80000294 <consputc>
    8000075e:	8526                	mv	a0,s1
    80000760:	00000097          	auipc	ra,0x0
    80000764:	b34080e7          	jalr	-1228(ra) # 80000294 <consputc>
    80000768:	b5fd                	j	80000656 <printf+0xac>
    8000076a:	74a6                	ld	s1,104(sp)
    8000076c:	7906                	ld	s2,96(sp)
    8000076e:	69e6                	ld	s3,88(sp)
    80000770:	6aa6                	ld	s5,72(sp)
    80000772:	6b06                	ld	s6,64(sp)
    80000774:	7be2                	ld	s7,56(sp)
    80000776:	7c42                	ld	s8,48(sp)
    80000778:	7ca2                	ld	s9,40(sp)
    8000077a:	6de2                	ld	s11,24(sp)
    8000077c:	020d1263          	bnez	s10,800007a0 <printf+0x1f6>
    80000780:	70e6                	ld	ra,120(sp)
    80000782:	7446                	ld	s0,112(sp)
    80000784:	6a46                	ld	s4,80(sp)
    80000786:	7d02                	ld	s10,32(sp)
    80000788:	6129                	add	sp,sp,192
    8000078a:	8082                	ret
    8000078c:	74a6                	ld	s1,104(sp)
    8000078e:	7906                	ld	s2,96(sp)
    80000790:	69e6                	ld	s3,88(sp)
    80000792:	6aa6                	ld	s5,72(sp)
    80000794:	6b06                	ld	s6,64(sp)
    80000796:	7be2                	ld	s7,56(sp)
    80000798:	7c42                	ld	s8,48(sp)
    8000079a:	7ca2                	ld	s9,40(sp)
    8000079c:	6de2                	ld	s11,24(sp)
    8000079e:	bff9                	j	8000077c <printf+0x1d2>
    800007a0:	00013517          	auipc	a0,0x13
    800007a4:	ef850513          	add	a0,a0,-264 # 80013698 <pr>
    800007a8:	00000097          	auipc	ra,0x0
    800007ac:	544080e7          	jalr	1348(ra) # 80000cec <release>
    800007b0:	bfc1                	j	80000780 <printf+0x1d6>

00000000800007b2 <printfinit>:
    800007b2:	1101                	add	sp,sp,-32
    800007b4:	ec06                	sd	ra,24(sp)
    800007b6:	e822                	sd	s0,16(sp)
    800007b8:	e426                	sd	s1,8(sp)
    800007ba:	1000                	add	s0,sp,32
    800007bc:	00013497          	auipc	s1,0x13
    800007c0:	edc48493          	add	s1,s1,-292 # 80013698 <pr>
    800007c4:	00008597          	auipc	a1,0x8
    800007c8:	86458593          	add	a1,a1,-1948 # 80008028 <etext+0x28>
    800007cc:	8526                	mv	a0,s1
    800007ce:	00000097          	auipc	ra,0x0
    800007d2:	3da080e7          	jalr	986(ra) # 80000ba8 <initlock>
    800007d6:	4785                	li	a5,1
    800007d8:	cc9c                	sw	a5,24(s1)
    800007da:	60e2                	ld	ra,24(sp)
    800007dc:	6442                	ld	s0,16(sp)
    800007de:	64a2                	ld	s1,8(sp)
    800007e0:	6105                	add	sp,sp,32
    800007e2:	8082                	ret

00000000800007e4 <uartinit>:
    800007e4:	1141                	add	sp,sp,-16
    800007e6:	e406                	sd	ra,8(sp)
    800007e8:	e022                	sd	s0,0(sp)
    800007ea:	0800                	add	s0,sp,16
    800007ec:	100007b7          	lui	a5,0x10000
    800007f0:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800007f4:	10000737          	lui	a4,0x10000
    800007f8:	f8000693          	li	a3,-128
    800007fc:	00d701a3          	sb	a3,3(a4) # 10000003 <_entry-0x6ffffffd>
    80000800:	468d                	li	a3,3
    80000802:	10000637          	lui	a2,0x10000
    80000806:	00d60023          	sb	a3,0(a2) # 10000000 <_entry-0x70000000>
    8000080a:	000780a3          	sb	zero,1(a5)
    8000080e:	00d701a3          	sb	a3,3(a4)
    80000812:	10000737          	lui	a4,0x10000
    80000816:	461d                	li	a2,7
    80000818:	00c70123          	sb	a2,2(a4) # 10000002 <_entry-0x6ffffffe>
    8000081c:	00d780a3          	sb	a3,1(a5)
    80000820:	00008597          	auipc	a1,0x8
    80000824:	82858593          	add	a1,a1,-2008 # 80008048 <digits+0x18>
    80000828:	00013517          	auipc	a0,0x13
    8000082c:	e9050513          	add	a0,a0,-368 # 800136b8 <uart_tx_lock>
    80000830:	00000097          	auipc	ra,0x0
    80000834:	378080e7          	jalr	888(ra) # 80000ba8 <initlock>
    80000838:	60a2                	ld	ra,8(sp)
    8000083a:	6402                	ld	s0,0(sp)
    8000083c:	0141                	add	sp,sp,16
    8000083e:	8082                	ret

0000000080000840 <uartputc_sync>:
    80000840:	1101                	add	sp,sp,-32
    80000842:	ec06                	sd	ra,24(sp)
    80000844:	e822                	sd	s0,16(sp)
    80000846:	e426                	sd	s1,8(sp)
    80000848:	1000                	add	s0,sp,32
    8000084a:	84aa                	mv	s1,a0
    8000084c:	00000097          	auipc	ra,0x0
    80000850:	3a0080e7          	jalr	928(ra) # 80000bec <push_off>
    80000854:	0000b797          	auipc	a5,0xb
    80000858:	c1c7a783          	lw	a5,-996(a5) # 8000b470 <panicked>
    8000085c:	eb85                	bnez	a5,8000088c <uartputc_sync+0x4c>
    8000085e:	10000737          	lui	a4,0x10000
    80000862:	0715                	add	a4,a4,5 # 10000005 <_entry-0x6ffffffb>
    80000864:	00074783          	lbu	a5,0(a4)
    80000868:	0207f793          	and	a5,a5,32
    8000086c:	dfe5                	beqz	a5,80000864 <uartputc_sync+0x24>
    8000086e:	0ff4f513          	zext.b	a0,s1
    80000872:	100007b7          	lui	a5,0x10000
    80000876:	00a78023          	sb	a0,0(a5) # 10000000 <_entry-0x70000000>
    8000087a:	00000097          	auipc	ra,0x0
    8000087e:	412080e7          	jalr	1042(ra) # 80000c8c <pop_off>
    80000882:	60e2                	ld	ra,24(sp)
    80000884:	6442                	ld	s0,16(sp)
    80000886:	64a2                	ld	s1,8(sp)
    80000888:	6105                	add	sp,sp,32
    8000088a:	8082                	ret
    8000088c:	a001                	j	8000088c <uartputc_sync+0x4c>

000000008000088e <uartstart>:
    8000088e:	0000b797          	auipc	a5,0xb
    80000892:	bea7b783          	ld	a5,-1046(a5) # 8000b478 <uart_tx_r>
    80000896:	0000b717          	auipc	a4,0xb
    8000089a:	bea73703          	ld	a4,-1046(a4) # 8000b480 <uart_tx_w>
    8000089e:	06f70f63          	beq	a4,a5,8000091c <uartstart+0x8e>
    800008a2:	7139                	add	sp,sp,-64
    800008a4:	fc06                	sd	ra,56(sp)
    800008a6:	f822                	sd	s0,48(sp)
    800008a8:	f426                	sd	s1,40(sp)
    800008aa:	f04a                	sd	s2,32(sp)
    800008ac:	ec4e                	sd	s3,24(sp)
    800008ae:	e852                	sd	s4,16(sp)
    800008b0:	e456                	sd	s5,8(sp)
    800008b2:	e05a                	sd	s6,0(sp)
    800008b4:	0080                	add	s0,sp,64
    800008b6:	10000937          	lui	s2,0x10000
    800008ba:	0915                	add	s2,s2,5 # 10000005 <_entry-0x6ffffffb>
    800008bc:	00013a97          	auipc	s5,0x13
    800008c0:	dfca8a93          	add	s5,s5,-516 # 800136b8 <uart_tx_lock>
    800008c4:	0000b497          	auipc	s1,0xb
    800008c8:	bb448493          	add	s1,s1,-1100 # 8000b478 <uart_tx_r>
    800008cc:	10000a37          	lui	s4,0x10000
    800008d0:	0000b997          	auipc	s3,0xb
    800008d4:	bb098993          	add	s3,s3,-1104 # 8000b480 <uart_tx_w>
    800008d8:	00094703          	lbu	a4,0(s2)
    800008dc:	02077713          	and	a4,a4,32
    800008e0:	c705                	beqz	a4,80000908 <uartstart+0x7a>
    800008e2:	01f7f713          	and	a4,a5,31
    800008e6:	9756                	add	a4,a4,s5
    800008e8:	01874b03          	lbu	s6,24(a4)
    800008ec:	0785                	add	a5,a5,1
    800008ee:	e09c                	sd	a5,0(s1)
    800008f0:	8526                	mv	a0,s1
    800008f2:	00002097          	auipc	ra,0x2
    800008f6:	d32080e7          	jalr	-718(ra) # 80002624 <wakeup>
    800008fa:	016a0023          	sb	s6,0(s4) # 10000000 <_entry-0x70000000>
    800008fe:	609c                	ld	a5,0(s1)
    80000900:	0009b703          	ld	a4,0(s3)
    80000904:	fcf71ae3          	bne	a4,a5,800008d8 <uartstart+0x4a>
    80000908:	70e2                	ld	ra,56(sp)
    8000090a:	7442                	ld	s0,48(sp)
    8000090c:	74a2                	ld	s1,40(sp)
    8000090e:	7902                	ld	s2,32(sp)
    80000910:	69e2                	ld	s3,24(sp)
    80000912:	6a42                	ld	s4,16(sp)
    80000914:	6aa2                	ld	s5,8(sp)
    80000916:	6b02                	ld	s6,0(sp)
    80000918:	6121                	add	sp,sp,64
    8000091a:	8082                	ret
    8000091c:	8082                	ret

000000008000091e <uartputc>:
    8000091e:	7179                	add	sp,sp,-48
    80000920:	f406                	sd	ra,40(sp)
    80000922:	f022                	sd	s0,32(sp)
    80000924:	ec26                	sd	s1,24(sp)
    80000926:	e84a                	sd	s2,16(sp)
    80000928:	e44e                	sd	s3,8(sp)
    8000092a:	e052                	sd	s4,0(sp)
    8000092c:	1800                	add	s0,sp,48
    8000092e:	8a2a                	mv	s4,a0
    80000930:	00013517          	auipc	a0,0x13
    80000934:	d8850513          	add	a0,a0,-632 # 800136b8 <uart_tx_lock>
    80000938:	00000097          	auipc	ra,0x0
    8000093c:	300080e7          	jalr	768(ra) # 80000c38 <acquire>
    80000940:	0000b797          	auipc	a5,0xb
    80000944:	b307a783          	lw	a5,-1232(a5) # 8000b470 <panicked>
    80000948:	e7c9                	bnez	a5,800009d2 <uartputc+0xb4>
    8000094a:	0000b717          	auipc	a4,0xb
    8000094e:	b3673703          	ld	a4,-1226(a4) # 8000b480 <uart_tx_w>
    80000952:	0000b797          	auipc	a5,0xb
    80000956:	b267b783          	ld	a5,-1242(a5) # 8000b478 <uart_tx_r>
    8000095a:	02078793          	add	a5,a5,32
    8000095e:	00013997          	auipc	s3,0x13
    80000962:	d5a98993          	add	s3,s3,-678 # 800136b8 <uart_tx_lock>
    80000966:	0000b497          	auipc	s1,0xb
    8000096a:	b1248493          	add	s1,s1,-1262 # 8000b478 <uart_tx_r>
    8000096e:	0000b917          	auipc	s2,0xb
    80000972:	b1290913          	add	s2,s2,-1262 # 8000b480 <uart_tx_w>
    80000976:	00e79f63          	bne	a5,a4,80000994 <uartputc+0x76>
    8000097a:	85ce                	mv	a1,s3
    8000097c:	8526                	mv	a0,s1
    8000097e:	00002097          	auipc	ra,0x2
    80000982:	c42080e7          	jalr	-958(ra) # 800025c0 <sleep>
    80000986:	00093703          	ld	a4,0(s2)
    8000098a:	609c                	ld	a5,0(s1)
    8000098c:	02078793          	add	a5,a5,32
    80000990:	fee785e3          	beq	a5,a4,8000097a <uartputc+0x5c>
    80000994:	00013497          	auipc	s1,0x13
    80000998:	d2448493          	add	s1,s1,-732 # 800136b8 <uart_tx_lock>
    8000099c:	01f77793          	and	a5,a4,31
    800009a0:	97a6                	add	a5,a5,s1
    800009a2:	01478c23          	sb	s4,24(a5)
    800009a6:	0705                	add	a4,a4,1
    800009a8:	0000b797          	auipc	a5,0xb
    800009ac:	ace7bc23          	sd	a4,-1320(a5) # 8000b480 <uart_tx_w>
    800009b0:	00000097          	auipc	ra,0x0
    800009b4:	ede080e7          	jalr	-290(ra) # 8000088e <uartstart>
    800009b8:	8526                	mv	a0,s1
    800009ba:	00000097          	auipc	ra,0x0
    800009be:	332080e7          	jalr	818(ra) # 80000cec <release>
    800009c2:	70a2                	ld	ra,40(sp)
    800009c4:	7402                	ld	s0,32(sp)
    800009c6:	64e2                	ld	s1,24(sp)
    800009c8:	6942                	ld	s2,16(sp)
    800009ca:	69a2                	ld	s3,8(sp)
    800009cc:	6a02                	ld	s4,0(sp)
    800009ce:	6145                	add	sp,sp,48
    800009d0:	8082                	ret
    800009d2:	a001                	j	800009d2 <uartputc+0xb4>

00000000800009d4 <uartgetc>:
    800009d4:	1141                	add	sp,sp,-16
    800009d6:	e422                	sd	s0,8(sp)
    800009d8:	0800                	add	s0,sp,16
    800009da:	100007b7          	lui	a5,0x10000
    800009de:	0795                	add	a5,a5,5 # 10000005 <_entry-0x6ffffffb>
    800009e0:	0007c783          	lbu	a5,0(a5)
    800009e4:	8b85                	and	a5,a5,1
    800009e6:	cb81                	beqz	a5,800009f6 <uartgetc+0x22>
    800009e8:	100007b7          	lui	a5,0x10000
    800009ec:	0007c503          	lbu	a0,0(a5) # 10000000 <_entry-0x70000000>
    800009f0:	6422                	ld	s0,8(sp)
    800009f2:	0141                	add	sp,sp,16
    800009f4:	8082                	ret
    800009f6:	557d                	li	a0,-1
    800009f8:	bfe5                	j	800009f0 <uartgetc+0x1c>

00000000800009fa <uartintr>:
    800009fa:	1101                	add	sp,sp,-32
    800009fc:	ec06                	sd	ra,24(sp)
    800009fe:	e822                	sd	s0,16(sp)
    80000a00:	e426                	sd	s1,8(sp)
    80000a02:	1000                	add	s0,sp,32
    80000a04:	54fd                	li	s1,-1
    80000a06:	a029                	j	80000a10 <uartintr+0x16>
    80000a08:	00000097          	auipc	ra,0x0
    80000a0c:	8ce080e7          	jalr	-1842(ra) # 800002d6 <consoleintr>
    80000a10:	00000097          	auipc	ra,0x0
    80000a14:	fc4080e7          	jalr	-60(ra) # 800009d4 <uartgetc>
    80000a18:	fe9518e3          	bne	a0,s1,80000a08 <uartintr+0xe>
    80000a1c:	00013497          	auipc	s1,0x13
    80000a20:	c9c48493          	add	s1,s1,-868 # 800136b8 <uart_tx_lock>
    80000a24:	8526                	mv	a0,s1
    80000a26:	00000097          	auipc	ra,0x0
    80000a2a:	212080e7          	jalr	530(ra) # 80000c38 <acquire>
    80000a2e:	00000097          	auipc	ra,0x0
    80000a32:	e60080e7          	jalr	-416(ra) # 8000088e <uartstart>
    80000a36:	8526                	mv	a0,s1
    80000a38:	00000097          	auipc	ra,0x0
    80000a3c:	2b4080e7          	jalr	692(ra) # 80000cec <release>
    80000a40:	60e2                	ld	ra,24(sp)
    80000a42:	6442                	ld	s0,16(sp)
    80000a44:	64a2                	ld	s1,8(sp)
    80000a46:	6105                	add	sp,sp,32
    80000a48:	8082                	ret

0000000080000a4a <kfree>:
    80000a4a:	1101                	add	sp,sp,-32
    80000a4c:	ec06                	sd	ra,24(sp)
    80000a4e:	e822                	sd	s0,16(sp)
    80000a50:	e426                	sd	s1,8(sp)
    80000a52:	e04a                	sd	s2,0(sp)
    80000a54:	1000                	add	s0,sp,32
    80000a56:	03451793          	sll	a5,a0,0x34
    80000a5a:	ebb9                	bnez	a5,80000ab0 <kfree+0x66>
    80000a5c:	84aa                	mv	s1,a0
    80000a5e:	00025797          	auipc	a5,0x25
    80000a62:	fc278793          	add	a5,a5,-62 # 80025a20 <end>
    80000a66:	04f56563          	bltu	a0,a5,80000ab0 <kfree+0x66>
    80000a6a:	47c5                	li	a5,17
    80000a6c:	07ee                	sll	a5,a5,0x1b
    80000a6e:	04f57163          	bgeu	a0,a5,80000ab0 <kfree+0x66>
    80000a72:	6605                	lui	a2,0x1
    80000a74:	4585                	li	a1,1
    80000a76:	00000097          	auipc	ra,0x0
    80000a7a:	2be080e7          	jalr	702(ra) # 80000d34 <memset>
    80000a7e:	00013917          	auipc	s2,0x13
    80000a82:	c7290913          	add	s2,s2,-910 # 800136f0 <kmem>
    80000a86:	854a                	mv	a0,s2
    80000a88:	00000097          	auipc	ra,0x0
    80000a8c:	1b0080e7          	jalr	432(ra) # 80000c38 <acquire>
    80000a90:	01893783          	ld	a5,24(s2)
    80000a94:	e09c                	sd	a5,0(s1)
    80000a96:	00993c23          	sd	s1,24(s2)
    80000a9a:	854a                	mv	a0,s2
    80000a9c:	00000097          	auipc	ra,0x0
    80000aa0:	250080e7          	jalr	592(ra) # 80000cec <release>
    80000aa4:	60e2                	ld	ra,24(sp)
    80000aa6:	6442                	ld	s0,16(sp)
    80000aa8:	64a2                	ld	s1,8(sp)
    80000aaa:	6902                	ld	s2,0(sp)
    80000aac:	6105                	add	sp,sp,32
    80000aae:	8082                	ret
    80000ab0:	00007517          	auipc	a0,0x7
    80000ab4:	5a050513          	add	a0,a0,1440 # 80008050 <digits+0x20>
    80000ab8:	00000097          	auipc	ra,0x0
    80000abc:	aa8080e7          	jalr	-1368(ra) # 80000560 <panic>

0000000080000ac0 <freerange>:
    80000ac0:	7179                	add	sp,sp,-48
    80000ac2:	f406                	sd	ra,40(sp)
    80000ac4:	f022                	sd	s0,32(sp)
    80000ac6:	ec26                	sd	s1,24(sp)
    80000ac8:	1800                	add	s0,sp,48
    80000aca:	6785                	lui	a5,0x1
    80000acc:	fff78713          	add	a4,a5,-1 # fff <_entry-0x7ffff001>
    80000ad0:	00e504b3          	add	s1,a0,a4
    80000ad4:	777d                	lui	a4,0xfffff
    80000ad6:	8cf9                	and	s1,s1,a4
    80000ad8:	94be                	add	s1,s1,a5
    80000ada:	0295e463          	bltu	a1,s1,80000b02 <freerange+0x42>
    80000ade:	e84a                	sd	s2,16(sp)
    80000ae0:	e44e                	sd	s3,8(sp)
    80000ae2:	e052                	sd	s4,0(sp)
    80000ae4:	892e                	mv	s2,a1
    80000ae6:	7a7d                	lui	s4,0xfffff
    80000ae8:	6985                	lui	s3,0x1
    80000aea:	01448533          	add	a0,s1,s4
    80000aee:	00000097          	auipc	ra,0x0
    80000af2:	f5c080e7          	jalr	-164(ra) # 80000a4a <kfree>
    80000af6:	94ce                	add	s1,s1,s3
    80000af8:	fe9979e3          	bgeu	s2,s1,80000aea <freerange+0x2a>
    80000afc:	6942                	ld	s2,16(sp)
    80000afe:	69a2                	ld	s3,8(sp)
    80000b00:	6a02                	ld	s4,0(sp)
    80000b02:	70a2                	ld	ra,40(sp)
    80000b04:	7402                	ld	s0,32(sp)
    80000b06:	64e2                	ld	s1,24(sp)
    80000b08:	6145                	add	sp,sp,48
    80000b0a:	8082                	ret

0000000080000b0c <kinit>:
    80000b0c:	1141                	add	sp,sp,-16
    80000b0e:	e406                	sd	ra,8(sp)
    80000b10:	e022                	sd	s0,0(sp)
    80000b12:	0800                	add	s0,sp,16
    80000b14:	00007597          	auipc	a1,0x7
    80000b18:	54458593          	add	a1,a1,1348 # 80008058 <digits+0x28>
    80000b1c:	00013517          	auipc	a0,0x13
    80000b20:	bd450513          	add	a0,a0,-1068 # 800136f0 <kmem>
    80000b24:	00000097          	auipc	ra,0x0
    80000b28:	084080e7          	jalr	132(ra) # 80000ba8 <initlock>
    80000b2c:	45c5                	li	a1,17
    80000b2e:	05ee                	sll	a1,a1,0x1b
    80000b30:	00025517          	auipc	a0,0x25
    80000b34:	ef050513          	add	a0,a0,-272 # 80025a20 <end>
    80000b38:	00000097          	auipc	ra,0x0
    80000b3c:	f88080e7          	jalr	-120(ra) # 80000ac0 <freerange>
    80000b40:	60a2                	ld	ra,8(sp)
    80000b42:	6402                	ld	s0,0(sp)
    80000b44:	0141                	add	sp,sp,16
    80000b46:	8082                	ret

0000000080000b48 <kalloc>:
    80000b48:	1101                	add	sp,sp,-32
    80000b4a:	ec06                	sd	ra,24(sp)
    80000b4c:	e822                	sd	s0,16(sp)
    80000b4e:	e426                	sd	s1,8(sp)
    80000b50:	1000                	add	s0,sp,32
    80000b52:	00013497          	auipc	s1,0x13
    80000b56:	b9e48493          	add	s1,s1,-1122 # 800136f0 <kmem>
    80000b5a:	8526                	mv	a0,s1
    80000b5c:	00000097          	auipc	ra,0x0
    80000b60:	0dc080e7          	jalr	220(ra) # 80000c38 <acquire>
    80000b64:	6c84                	ld	s1,24(s1)
    80000b66:	c885                	beqz	s1,80000b96 <kalloc+0x4e>
    80000b68:	609c                	ld	a5,0(s1)
    80000b6a:	00013517          	auipc	a0,0x13
    80000b6e:	b8650513          	add	a0,a0,-1146 # 800136f0 <kmem>
    80000b72:	ed1c                	sd	a5,24(a0)
    80000b74:	00000097          	auipc	ra,0x0
    80000b78:	178080e7          	jalr	376(ra) # 80000cec <release>
    80000b7c:	6605                	lui	a2,0x1
    80000b7e:	4595                	li	a1,5
    80000b80:	8526                	mv	a0,s1
    80000b82:	00000097          	auipc	ra,0x0
    80000b86:	1b2080e7          	jalr	434(ra) # 80000d34 <memset>
    80000b8a:	8526                	mv	a0,s1
    80000b8c:	60e2                	ld	ra,24(sp)
    80000b8e:	6442                	ld	s0,16(sp)
    80000b90:	64a2                	ld	s1,8(sp)
    80000b92:	6105                	add	sp,sp,32
    80000b94:	8082                	ret
    80000b96:	00013517          	auipc	a0,0x13
    80000b9a:	b5a50513          	add	a0,a0,-1190 # 800136f0 <kmem>
    80000b9e:	00000097          	auipc	ra,0x0
    80000ba2:	14e080e7          	jalr	334(ra) # 80000cec <release>
    80000ba6:	b7d5                	j	80000b8a <kalloc+0x42>

0000000080000ba8 <initlock>:
    80000ba8:	1141                	add	sp,sp,-16
    80000baa:	e422                	sd	s0,8(sp)
    80000bac:	0800                	add	s0,sp,16
    80000bae:	e50c                	sd	a1,8(a0)
    80000bb0:	00052023          	sw	zero,0(a0)
    80000bb4:	00053823          	sd	zero,16(a0)
    80000bb8:	6422                	ld	s0,8(sp)
    80000bba:	0141                	add	sp,sp,16
    80000bbc:	8082                	ret

0000000080000bbe <holding>:
    80000bbe:	411c                	lw	a5,0(a0)
    80000bc0:	e399                	bnez	a5,80000bc6 <holding+0x8>
    80000bc2:	4501                	li	a0,0
    80000bc4:	8082                	ret
    80000bc6:	1101                	add	sp,sp,-32
    80000bc8:	ec06                	sd	ra,24(sp)
    80000bca:	e822                	sd	s0,16(sp)
    80000bcc:	e426                	sd	s1,8(sp)
    80000bce:	1000                	add	s0,sp,32
    80000bd0:	6904                	ld	s1,16(a0)
    80000bd2:	00001097          	auipc	ra,0x1
    80000bd6:	eb0080e7          	jalr	-336(ra) # 80001a82 <mycpu>
    80000bda:	40a48533          	sub	a0,s1,a0
    80000bde:	00153513          	seqz	a0,a0
    80000be2:	60e2                	ld	ra,24(sp)
    80000be4:	6442                	ld	s0,16(sp)
    80000be6:	64a2                	ld	s1,8(sp)
    80000be8:	6105                	add	sp,sp,32
    80000bea:	8082                	ret

0000000080000bec <push_off>:
    80000bec:	1101                	add	sp,sp,-32
    80000bee:	ec06                	sd	ra,24(sp)
    80000bf0:	e822                	sd	s0,16(sp)
    80000bf2:	e426                	sd	s1,8(sp)
    80000bf4:	1000                	add	s0,sp,32
    80000bf6:	100024f3          	csrr	s1,sstatus
    80000bfa:	100027f3          	csrr	a5,sstatus
    80000bfe:	9bf5                	and	a5,a5,-3
    80000c00:	10079073          	csrw	sstatus,a5
    80000c04:	00001097          	auipc	ra,0x1
    80000c08:	e7e080e7          	jalr	-386(ra) # 80001a82 <mycpu>
    80000c0c:	5d3c                	lw	a5,120(a0)
    80000c0e:	cf89                	beqz	a5,80000c28 <push_off+0x3c>
    80000c10:	00001097          	auipc	ra,0x1
    80000c14:	e72080e7          	jalr	-398(ra) # 80001a82 <mycpu>
    80000c18:	5d3c                	lw	a5,120(a0)
    80000c1a:	2785                	addw	a5,a5,1
    80000c1c:	dd3c                	sw	a5,120(a0)
    80000c1e:	60e2                	ld	ra,24(sp)
    80000c20:	6442                	ld	s0,16(sp)
    80000c22:	64a2                	ld	s1,8(sp)
    80000c24:	6105                	add	sp,sp,32
    80000c26:	8082                	ret
    80000c28:	00001097          	auipc	ra,0x1
    80000c2c:	e5a080e7          	jalr	-422(ra) # 80001a82 <mycpu>
    80000c30:	8085                	srl	s1,s1,0x1
    80000c32:	8885                	and	s1,s1,1
    80000c34:	dd64                	sw	s1,124(a0)
    80000c36:	bfe9                	j	80000c10 <push_off+0x24>

0000000080000c38 <acquire>:
    80000c38:	1101                	add	sp,sp,-32
    80000c3a:	ec06                	sd	ra,24(sp)
    80000c3c:	e822                	sd	s0,16(sp)
    80000c3e:	e426                	sd	s1,8(sp)
    80000c40:	1000                	add	s0,sp,32
    80000c42:	84aa                	mv	s1,a0
    80000c44:	00000097          	auipc	ra,0x0
    80000c48:	fa8080e7          	jalr	-88(ra) # 80000bec <push_off>
    80000c4c:	8526                	mv	a0,s1
    80000c4e:	00000097          	auipc	ra,0x0
    80000c52:	f70080e7          	jalr	-144(ra) # 80000bbe <holding>
    80000c56:	4705                	li	a4,1
    80000c58:	e115                	bnez	a0,80000c7c <acquire+0x44>
    80000c5a:	87ba                	mv	a5,a4
    80000c5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80000c60:	2781                	sext.w	a5,a5
    80000c62:	ffe5                	bnez	a5,80000c5a <acquire+0x22>
    80000c64:	0ff0000f          	fence
    80000c68:	00001097          	auipc	ra,0x1
    80000c6c:	e1a080e7          	jalr	-486(ra) # 80001a82 <mycpu>
    80000c70:	e888                	sd	a0,16(s1)
    80000c72:	60e2                	ld	ra,24(sp)
    80000c74:	6442                	ld	s0,16(sp)
    80000c76:	64a2                	ld	s1,8(sp)
    80000c78:	6105                	add	sp,sp,32
    80000c7a:	8082                	ret
    80000c7c:	00007517          	auipc	a0,0x7
    80000c80:	3e450513          	add	a0,a0,996 # 80008060 <digits+0x30>
    80000c84:	00000097          	auipc	ra,0x0
    80000c88:	8dc080e7          	jalr	-1828(ra) # 80000560 <panic>

0000000080000c8c <pop_off>:
    80000c8c:	1141                	add	sp,sp,-16
    80000c8e:	e406                	sd	ra,8(sp)
    80000c90:	e022                	sd	s0,0(sp)
    80000c92:	0800                	add	s0,sp,16
    80000c94:	00001097          	auipc	ra,0x1
    80000c98:	dee080e7          	jalr	-530(ra) # 80001a82 <mycpu>
    80000c9c:	100027f3          	csrr	a5,sstatus
    80000ca0:	8b89                	and	a5,a5,2
    80000ca2:	e78d                	bnez	a5,80000ccc <pop_off+0x40>
    80000ca4:	5d3c                	lw	a5,120(a0)
    80000ca6:	02f05b63          	blez	a5,80000cdc <pop_off+0x50>
    80000caa:	37fd                	addw	a5,a5,-1
    80000cac:	0007871b          	sext.w	a4,a5
    80000cb0:	dd3c                	sw	a5,120(a0)
    80000cb2:	eb09                	bnez	a4,80000cc4 <pop_off+0x38>
    80000cb4:	5d7c                	lw	a5,124(a0)
    80000cb6:	c799                	beqz	a5,80000cc4 <pop_off+0x38>
    80000cb8:	100027f3          	csrr	a5,sstatus
    80000cbc:	0027e793          	or	a5,a5,2
    80000cc0:	10079073          	csrw	sstatus,a5
    80000cc4:	60a2                	ld	ra,8(sp)
    80000cc6:	6402                	ld	s0,0(sp)
    80000cc8:	0141                	add	sp,sp,16
    80000cca:	8082                	ret
    80000ccc:	00007517          	auipc	a0,0x7
    80000cd0:	39c50513          	add	a0,a0,924 # 80008068 <digits+0x38>
    80000cd4:	00000097          	auipc	ra,0x0
    80000cd8:	88c080e7          	jalr	-1908(ra) # 80000560 <panic>
    80000cdc:	00007517          	auipc	a0,0x7
    80000ce0:	3a450513          	add	a0,a0,932 # 80008080 <digits+0x50>
    80000ce4:	00000097          	auipc	ra,0x0
    80000ce8:	87c080e7          	jalr	-1924(ra) # 80000560 <panic>

0000000080000cec <release>:
    80000cec:	1101                	add	sp,sp,-32
    80000cee:	ec06                	sd	ra,24(sp)
    80000cf0:	e822                	sd	s0,16(sp)
    80000cf2:	e426                	sd	s1,8(sp)
    80000cf4:	1000                	add	s0,sp,32
    80000cf6:	84aa                	mv	s1,a0
    80000cf8:	00000097          	auipc	ra,0x0
    80000cfc:	ec6080e7          	jalr	-314(ra) # 80000bbe <holding>
    80000d00:	c115                	beqz	a0,80000d24 <release+0x38>
    80000d02:	0004b823          	sd	zero,16(s1)
    80000d06:	0ff0000f          	fence
    80000d0a:	0f50000f          	fence	iorw,ow
    80000d0e:	0804a02f          	amoswap.w	zero,zero,(s1)
    80000d12:	00000097          	auipc	ra,0x0
    80000d16:	f7a080e7          	jalr	-134(ra) # 80000c8c <pop_off>
    80000d1a:	60e2                	ld	ra,24(sp)
    80000d1c:	6442                	ld	s0,16(sp)
    80000d1e:	64a2                	ld	s1,8(sp)
    80000d20:	6105                	add	sp,sp,32
    80000d22:	8082                	ret
    80000d24:	00007517          	auipc	a0,0x7
    80000d28:	36450513          	add	a0,a0,868 # 80008088 <digits+0x58>
    80000d2c:	00000097          	auipc	ra,0x0
    80000d30:	834080e7          	jalr	-1996(ra) # 80000560 <panic>

0000000080000d34 <memset>:
    80000d34:	1141                	add	sp,sp,-16
    80000d36:	e422                	sd	s0,8(sp)
    80000d38:	0800                	add	s0,sp,16
    80000d3a:	ca19                	beqz	a2,80000d50 <memset+0x1c>
    80000d3c:	87aa                	mv	a5,a0
    80000d3e:	1602                	sll	a2,a2,0x20
    80000d40:	9201                	srl	a2,a2,0x20
    80000d42:	00a60733          	add	a4,a2,a0
    80000d46:	00b78023          	sb	a1,0(a5)
    80000d4a:	0785                	add	a5,a5,1
    80000d4c:	fee79de3          	bne	a5,a4,80000d46 <memset+0x12>
    80000d50:	6422                	ld	s0,8(sp)
    80000d52:	0141                	add	sp,sp,16
    80000d54:	8082                	ret

0000000080000d56 <memcmp>:
    80000d56:	1141                	add	sp,sp,-16
    80000d58:	e422                	sd	s0,8(sp)
    80000d5a:	0800                	add	s0,sp,16
    80000d5c:	ca05                	beqz	a2,80000d8c <memcmp+0x36>
    80000d5e:	fff6069b          	addw	a3,a2,-1 # fff <_entry-0x7ffff001>
    80000d62:	1682                	sll	a3,a3,0x20
    80000d64:	9281                	srl	a3,a3,0x20
    80000d66:	0685                	add	a3,a3,1
    80000d68:	96aa                	add	a3,a3,a0
    80000d6a:	00054783          	lbu	a5,0(a0)
    80000d6e:	0005c703          	lbu	a4,0(a1)
    80000d72:	00e79863          	bne	a5,a4,80000d82 <memcmp+0x2c>
    80000d76:	0505                	add	a0,a0,1
    80000d78:	0585                	add	a1,a1,1
    80000d7a:	fed518e3          	bne	a0,a3,80000d6a <memcmp+0x14>
    80000d7e:	4501                	li	a0,0
    80000d80:	a019                	j	80000d86 <memcmp+0x30>
    80000d82:	40e7853b          	subw	a0,a5,a4
    80000d86:	6422                	ld	s0,8(sp)
    80000d88:	0141                	add	sp,sp,16
    80000d8a:	8082                	ret
    80000d8c:	4501                	li	a0,0
    80000d8e:	bfe5                	j	80000d86 <memcmp+0x30>

0000000080000d90 <memmove>:
    80000d90:	1141                	add	sp,sp,-16
    80000d92:	e422                	sd	s0,8(sp)
    80000d94:	0800                	add	s0,sp,16
    80000d96:	c205                	beqz	a2,80000db6 <memmove+0x26>
    80000d98:	02a5e263          	bltu	a1,a0,80000dbc <memmove+0x2c>
    80000d9c:	1602                	sll	a2,a2,0x20
    80000d9e:	9201                	srl	a2,a2,0x20
    80000da0:	00c587b3          	add	a5,a1,a2
    80000da4:	872a                	mv	a4,a0
    80000da6:	0585                	add	a1,a1,1
    80000da8:	0705                	add	a4,a4,1 # fffffffffffff001 <end+0xffffffff7ffd95e1>
    80000daa:	fff5c683          	lbu	a3,-1(a1)
    80000dae:	fed70fa3          	sb	a3,-1(a4)
    80000db2:	feb79ae3          	bne	a5,a1,80000da6 <memmove+0x16>
    80000db6:	6422                	ld	s0,8(sp)
    80000db8:	0141                	add	sp,sp,16
    80000dba:	8082                	ret
    80000dbc:	02061693          	sll	a3,a2,0x20
    80000dc0:	9281                	srl	a3,a3,0x20
    80000dc2:	00d58733          	add	a4,a1,a3
    80000dc6:	fce57be3          	bgeu	a0,a4,80000d9c <memmove+0xc>
    80000dca:	96aa                	add	a3,a3,a0
    80000dcc:	fff6079b          	addw	a5,a2,-1
    80000dd0:	1782                	sll	a5,a5,0x20
    80000dd2:	9381                	srl	a5,a5,0x20
    80000dd4:	fff7c793          	not	a5,a5
    80000dd8:	97ba                	add	a5,a5,a4
    80000dda:	177d                	add	a4,a4,-1
    80000ddc:	16fd                	add	a3,a3,-1
    80000dde:	00074603          	lbu	a2,0(a4)
    80000de2:	00c68023          	sb	a2,0(a3)
    80000de6:	fef71ae3          	bne	a4,a5,80000dda <memmove+0x4a>
    80000dea:	b7f1                	j	80000db6 <memmove+0x26>

0000000080000dec <memcpy>:
    80000dec:	1141                	add	sp,sp,-16
    80000dee:	e406                	sd	ra,8(sp)
    80000df0:	e022                	sd	s0,0(sp)
    80000df2:	0800                	add	s0,sp,16
    80000df4:	00000097          	auipc	ra,0x0
    80000df8:	f9c080e7          	jalr	-100(ra) # 80000d90 <memmove>
    80000dfc:	60a2                	ld	ra,8(sp)
    80000dfe:	6402                	ld	s0,0(sp)
    80000e00:	0141                	add	sp,sp,16
    80000e02:	8082                	ret

0000000080000e04 <strncmp>:
    80000e04:	1141                	add	sp,sp,-16
    80000e06:	e422                	sd	s0,8(sp)
    80000e08:	0800                	add	s0,sp,16
    80000e0a:	ce11                	beqz	a2,80000e26 <strncmp+0x22>
    80000e0c:	00054783          	lbu	a5,0(a0)
    80000e10:	cf89                	beqz	a5,80000e2a <strncmp+0x26>
    80000e12:	0005c703          	lbu	a4,0(a1)
    80000e16:	00f71a63          	bne	a4,a5,80000e2a <strncmp+0x26>
    80000e1a:	367d                	addw	a2,a2,-1
    80000e1c:	0505                	add	a0,a0,1
    80000e1e:	0585                	add	a1,a1,1
    80000e20:	f675                	bnez	a2,80000e0c <strncmp+0x8>
    80000e22:	4501                	li	a0,0
    80000e24:	a801                	j	80000e34 <strncmp+0x30>
    80000e26:	4501                	li	a0,0
    80000e28:	a031                	j	80000e34 <strncmp+0x30>
    80000e2a:	00054503          	lbu	a0,0(a0)
    80000e2e:	0005c783          	lbu	a5,0(a1)
    80000e32:	9d1d                	subw	a0,a0,a5
    80000e34:	6422                	ld	s0,8(sp)
    80000e36:	0141                	add	sp,sp,16
    80000e38:	8082                	ret

0000000080000e3a <strncpy>:
    80000e3a:	1141                	add	sp,sp,-16
    80000e3c:	e422                	sd	s0,8(sp)
    80000e3e:	0800                	add	s0,sp,16
    80000e40:	87aa                	mv	a5,a0
    80000e42:	86b2                	mv	a3,a2
    80000e44:	367d                	addw	a2,a2,-1
    80000e46:	02d05563          	blez	a3,80000e70 <strncpy+0x36>
    80000e4a:	0785                	add	a5,a5,1
    80000e4c:	0005c703          	lbu	a4,0(a1)
    80000e50:	fee78fa3          	sb	a4,-1(a5)
    80000e54:	0585                	add	a1,a1,1
    80000e56:	f775                	bnez	a4,80000e42 <strncpy+0x8>
    80000e58:	873e                	mv	a4,a5
    80000e5a:	9fb5                	addw	a5,a5,a3
    80000e5c:	37fd                	addw	a5,a5,-1
    80000e5e:	00c05963          	blez	a2,80000e70 <strncpy+0x36>
    80000e62:	0705                	add	a4,a4,1
    80000e64:	fe070fa3          	sb	zero,-1(a4)
    80000e68:	40e786bb          	subw	a3,a5,a4
    80000e6c:	fed04be3          	bgtz	a3,80000e62 <strncpy+0x28>
    80000e70:	6422                	ld	s0,8(sp)
    80000e72:	0141                	add	sp,sp,16
    80000e74:	8082                	ret

0000000080000e76 <safestrcpy>:
    80000e76:	1141                	add	sp,sp,-16
    80000e78:	e422                	sd	s0,8(sp)
    80000e7a:	0800                	add	s0,sp,16
    80000e7c:	02c05363          	blez	a2,80000ea2 <safestrcpy+0x2c>
    80000e80:	fff6069b          	addw	a3,a2,-1
    80000e84:	1682                	sll	a3,a3,0x20
    80000e86:	9281                	srl	a3,a3,0x20
    80000e88:	96ae                	add	a3,a3,a1
    80000e8a:	87aa                	mv	a5,a0
    80000e8c:	00d58963          	beq	a1,a3,80000e9e <safestrcpy+0x28>
    80000e90:	0585                	add	a1,a1,1
    80000e92:	0785                	add	a5,a5,1
    80000e94:	fff5c703          	lbu	a4,-1(a1)
    80000e98:	fee78fa3          	sb	a4,-1(a5)
    80000e9c:	fb65                	bnez	a4,80000e8c <safestrcpy+0x16>
    80000e9e:	00078023          	sb	zero,0(a5)
    80000ea2:	6422                	ld	s0,8(sp)
    80000ea4:	0141                	add	sp,sp,16
    80000ea6:	8082                	ret

0000000080000ea8 <strlen>:
    80000ea8:	1141                	add	sp,sp,-16
    80000eaa:	e422                	sd	s0,8(sp)
    80000eac:	0800                	add	s0,sp,16
    80000eae:	00054783          	lbu	a5,0(a0)
    80000eb2:	cf91                	beqz	a5,80000ece <strlen+0x26>
    80000eb4:	0505                	add	a0,a0,1
    80000eb6:	87aa                	mv	a5,a0
    80000eb8:	86be                	mv	a3,a5
    80000eba:	0785                	add	a5,a5,1
    80000ebc:	fff7c703          	lbu	a4,-1(a5)
    80000ec0:	ff65                	bnez	a4,80000eb8 <strlen+0x10>
    80000ec2:	40a6853b          	subw	a0,a3,a0
    80000ec6:	2505                	addw	a0,a0,1
    80000ec8:	6422                	ld	s0,8(sp)
    80000eca:	0141                	add	sp,sp,16
    80000ecc:	8082                	ret
    80000ece:	4501                	li	a0,0
    80000ed0:	bfe5                	j	80000ec8 <strlen+0x20>

0000000080000ed2 <main>:
    80000ed2:	1141                	add	sp,sp,-16
    80000ed4:	e406                	sd	ra,8(sp)
    80000ed6:	e022                	sd	s0,0(sp)
    80000ed8:	0800                	add	s0,sp,16
    80000eda:	00001097          	auipc	ra,0x1
    80000ede:	b98080e7          	jalr	-1128(ra) # 80001a72 <cpuid>
    80000ee2:	0000a717          	auipc	a4,0xa
    80000ee6:	5a670713          	add	a4,a4,1446 # 8000b488 <started>
    80000eea:	c139                	beqz	a0,80000f30 <main+0x5e>
    80000eec:	431c                	lw	a5,0(a4)
    80000eee:	2781                	sext.w	a5,a5
    80000ef0:	dff5                	beqz	a5,80000eec <main+0x1a>
    80000ef2:	0ff0000f          	fence
    80000ef6:	00001097          	auipc	ra,0x1
    80000efa:	b7c080e7          	jalr	-1156(ra) # 80001a72 <cpuid>
    80000efe:	85aa                	mv	a1,a0
    80000f00:	00007517          	auipc	a0,0x7
    80000f04:	1a850513          	add	a0,a0,424 # 800080a8 <digits+0x78>
    80000f08:	fffff097          	auipc	ra,0xfffff
    80000f0c:	6a2080e7          	jalr	1698(ra) # 800005aa <printf>
    80000f10:	00000097          	auipc	ra,0x0
    80000f14:	0d8080e7          	jalr	216(ra) # 80000fe8 <kvminithart>
    80000f18:	00002097          	auipc	ra,0x2
    80000f1c:	eca080e7          	jalr	-310(ra) # 80002de2 <trapinithart>
    80000f20:	00005097          	auipc	ra,0x5
    80000f24:	744080e7          	jalr	1860(ra) # 80006664 <plicinithart>
    80000f28:	00001097          	auipc	ra,0x1
    80000f2c:	576080e7          	jalr	1398(ra) # 8000249e <scheduler>
    80000f30:	fffff097          	auipc	ra,0xfffff
    80000f34:	540080e7          	jalr	1344(ra) # 80000470 <consoleinit>
    80000f38:	00000097          	auipc	ra,0x0
    80000f3c:	87a080e7          	jalr	-1926(ra) # 800007b2 <printfinit>
    80000f40:	00007517          	auipc	a0,0x7
    80000f44:	17850513          	add	a0,a0,376 # 800080b8 <digits+0x88>
    80000f48:	fffff097          	auipc	ra,0xfffff
    80000f4c:	662080e7          	jalr	1634(ra) # 800005aa <printf>
    80000f50:	00007517          	auipc	a0,0x7
    80000f54:	14050513          	add	a0,a0,320 # 80008090 <digits+0x60>
    80000f58:	fffff097          	auipc	ra,0xfffff
    80000f5c:	652080e7          	jalr	1618(ra) # 800005aa <printf>
    80000f60:	00007517          	auipc	a0,0x7
    80000f64:	15850513          	add	a0,a0,344 # 800080b8 <digits+0x88>
    80000f68:	fffff097          	auipc	ra,0xfffff
    80000f6c:	642080e7          	jalr	1602(ra) # 800005aa <printf>
    80000f70:	00000097          	auipc	ra,0x0
    80000f74:	b9c080e7          	jalr	-1124(ra) # 80000b0c <kinit>
    80000f78:	00000097          	auipc	ra,0x0
    80000f7c:	326080e7          	jalr	806(ra) # 8000129e <kvminit>
    80000f80:	00000097          	auipc	ra,0x0
    80000f84:	068080e7          	jalr	104(ra) # 80000fe8 <kvminithart>
    80000f88:	00001097          	auipc	ra,0x1
    80000f8c:	a0c080e7          	jalr	-1524(ra) # 80001994 <procinit>
    80000f90:	00002097          	auipc	ra,0x2
    80000f94:	e2a080e7          	jalr	-470(ra) # 80002dba <trapinit>
    80000f98:	00002097          	auipc	ra,0x2
    80000f9c:	e4a080e7          	jalr	-438(ra) # 80002de2 <trapinithart>
    80000fa0:	00005097          	auipc	ra,0x5
    80000fa4:	6aa080e7          	jalr	1706(ra) # 8000664a <plicinit>
    80000fa8:	00005097          	auipc	ra,0x5
    80000fac:	6bc080e7          	jalr	1724(ra) # 80006664 <plicinithart>
    80000fb0:	00002097          	auipc	ra,0x2
    80000fb4:	77c080e7          	jalr	1916(ra) # 8000372c <binit>
    80000fb8:	00003097          	auipc	ra,0x3
    80000fbc:	e32080e7          	jalr	-462(ra) # 80003dea <iinit>
    80000fc0:	00004097          	auipc	ra,0x4
    80000fc4:	de2080e7          	jalr	-542(ra) # 80004da2 <fileinit>
    80000fc8:	00005097          	auipc	ra,0x5
    80000fcc:	7a4080e7          	jalr	1956(ra) # 8000676c <virtio_disk_init>
    80000fd0:	00001097          	auipc	ra,0x1
    80000fd4:	dcc080e7          	jalr	-564(ra) # 80001d9c <userinit>
    80000fd8:	0ff0000f          	fence
    80000fdc:	4785                	li	a5,1
    80000fde:	0000a717          	auipc	a4,0xa
    80000fe2:	4af72523          	sw	a5,1194(a4) # 8000b488 <started>
    80000fe6:	b789                	j	80000f28 <main+0x56>

0000000080000fe8 <kvminithart>:
    80000fe8:	1141                	add	sp,sp,-16
    80000fea:	e422                	sd	s0,8(sp)
    80000fec:	0800                	add	s0,sp,16
    80000fee:	12000073          	sfence.vma
    80000ff2:	0000a797          	auipc	a5,0xa
    80000ff6:	49e7b783          	ld	a5,1182(a5) # 8000b490 <kernel_pagetable>
    80000ffa:	83b1                	srl	a5,a5,0xc
    80000ffc:	577d                	li	a4,-1
    80000ffe:	177e                	sll	a4,a4,0x3f
    80001000:	8fd9                	or	a5,a5,a4
    80001002:	18079073          	csrw	satp,a5
    80001006:	12000073          	sfence.vma
    8000100a:	6422                	ld	s0,8(sp)
    8000100c:	0141                	add	sp,sp,16
    8000100e:	8082                	ret

0000000080001010 <walk>:
    80001010:	7139                	add	sp,sp,-64
    80001012:	fc06                	sd	ra,56(sp)
    80001014:	f822                	sd	s0,48(sp)
    80001016:	f426                	sd	s1,40(sp)
    80001018:	f04a                	sd	s2,32(sp)
    8000101a:	ec4e                	sd	s3,24(sp)
    8000101c:	e852                	sd	s4,16(sp)
    8000101e:	e456                	sd	s5,8(sp)
    80001020:	e05a                	sd	s6,0(sp)
    80001022:	0080                	add	s0,sp,64
    80001024:	84aa                	mv	s1,a0
    80001026:	89ae                	mv	s3,a1
    80001028:	8ab2                	mv	s5,a2
    8000102a:	57fd                	li	a5,-1
    8000102c:	83e9                	srl	a5,a5,0x1a
    8000102e:	4a79                	li	s4,30
    80001030:	4b31                	li	s6,12
    80001032:	04b7f263          	bgeu	a5,a1,80001076 <walk+0x66>
    80001036:	00007517          	auipc	a0,0x7
    8000103a:	08a50513          	add	a0,a0,138 # 800080c0 <digits+0x90>
    8000103e:	fffff097          	auipc	ra,0xfffff
    80001042:	522080e7          	jalr	1314(ra) # 80000560 <panic>
    80001046:	060a8663          	beqz	s5,800010b2 <walk+0xa2>
    8000104a:	00000097          	auipc	ra,0x0
    8000104e:	afe080e7          	jalr	-1282(ra) # 80000b48 <kalloc>
    80001052:	84aa                	mv	s1,a0
    80001054:	c529                	beqz	a0,8000109e <walk+0x8e>
    80001056:	6605                	lui	a2,0x1
    80001058:	4581                	li	a1,0
    8000105a:	00000097          	auipc	ra,0x0
    8000105e:	cda080e7          	jalr	-806(ra) # 80000d34 <memset>
    80001062:	00c4d793          	srl	a5,s1,0xc
    80001066:	07aa                	sll	a5,a5,0xa
    80001068:	0017e793          	or	a5,a5,1
    8000106c:	00f93023          	sd	a5,0(s2)
    80001070:	3a5d                	addw	s4,s4,-9 # ffffffffffffeff7 <end+0xffffffff7ffd95d7>
    80001072:	036a0063          	beq	s4,s6,80001092 <walk+0x82>
    80001076:	0149d933          	srl	s2,s3,s4
    8000107a:	1ff97913          	and	s2,s2,511
    8000107e:	090e                	sll	s2,s2,0x3
    80001080:	9926                	add	s2,s2,s1
    80001082:	00093483          	ld	s1,0(s2)
    80001086:	0014f793          	and	a5,s1,1
    8000108a:	dfd5                	beqz	a5,80001046 <walk+0x36>
    8000108c:	80a9                	srl	s1,s1,0xa
    8000108e:	04b2                	sll	s1,s1,0xc
    80001090:	b7c5                	j	80001070 <walk+0x60>
    80001092:	00c9d513          	srl	a0,s3,0xc
    80001096:	1ff57513          	and	a0,a0,511
    8000109a:	050e                	sll	a0,a0,0x3
    8000109c:	9526                	add	a0,a0,s1
    8000109e:	70e2                	ld	ra,56(sp)
    800010a0:	7442                	ld	s0,48(sp)
    800010a2:	74a2                	ld	s1,40(sp)
    800010a4:	7902                	ld	s2,32(sp)
    800010a6:	69e2                	ld	s3,24(sp)
    800010a8:	6a42                	ld	s4,16(sp)
    800010aa:	6aa2                	ld	s5,8(sp)
    800010ac:	6b02                	ld	s6,0(sp)
    800010ae:	6121                	add	sp,sp,64
    800010b0:	8082                	ret
    800010b2:	4501                	li	a0,0
    800010b4:	b7ed                	j	8000109e <walk+0x8e>

00000000800010b6 <walkaddr>:
    800010b6:	57fd                	li	a5,-1
    800010b8:	83e9                	srl	a5,a5,0x1a
    800010ba:	00b7f463          	bgeu	a5,a1,800010c2 <walkaddr+0xc>
    800010be:	4501                	li	a0,0
    800010c0:	8082                	ret
    800010c2:	1141                	add	sp,sp,-16
    800010c4:	e406                	sd	ra,8(sp)
    800010c6:	e022                	sd	s0,0(sp)
    800010c8:	0800                	add	s0,sp,16
    800010ca:	4601                	li	a2,0
    800010cc:	00000097          	auipc	ra,0x0
    800010d0:	f44080e7          	jalr	-188(ra) # 80001010 <walk>
    800010d4:	c105                	beqz	a0,800010f4 <walkaddr+0x3e>
    800010d6:	611c                	ld	a5,0(a0)
    800010d8:	0117f693          	and	a3,a5,17
    800010dc:	4745                	li	a4,17
    800010de:	4501                	li	a0,0
    800010e0:	00e68663          	beq	a3,a4,800010ec <walkaddr+0x36>
    800010e4:	60a2                	ld	ra,8(sp)
    800010e6:	6402                	ld	s0,0(sp)
    800010e8:	0141                	add	sp,sp,16
    800010ea:	8082                	ret
    800010ec:	83a9                	srl	a5,a5,0xa
    800010ee:	00c79513          	sll	a0,a5,0xc
    800010f2:	bfcd                	j	800010e4 <walkaddr+0x2e>
    800010f4:	4501                	li	a0,0
    800010f6:	b7fd                	j	800010e4 <walkaddr+0x2e>

00000000800010f8 <mappages>:
    800010f8:	715d                	add	sp,sp,-80
    800010fa:	e486                	sd	ra,72(sp)
    800010fc:	e0a2                	sd	s0,64(sp)
    800010fe:	fc26                	sd	s1,56(sp)
    80001100:	f84a                	sd	s2,48(sp)
    80001102:	f44e                	sd	s3,40(sp)
    80001104:	f052                	sd	s4,32(sp)
    80001106:	ec56                	sd	s5,24(sp)
    80001108:	e85a                	sd	s6,16(sp)
    8000110a:	e45e                	sd	s7,8(sp)
    8000110c:	0880                	add	s0,sp,80
    8000110e:	c639                	beqz	a2,8000115c <mappages+0x64>
    80001110:	8aaa                	mv	s5,a0
    80001112:	8b3a                	mv	s6,a4
    80001114:	777d                	lui	a4,0xfffff
    80001116:	00e5f7b3          	and	a5,a1,a4
    8000111a:	fff58993          	add	s3,a1,-1
    8000111e:	99b2                	add	s3,s3,a2
    80001120:	00e9f9b3          	and	s3,s3,a4
    80001124:	893e                	mv	s2,a5
    80001126:	40f68a33          	sub	s4,a3,a5
    8000112a:	6b85                	lui	s7,0x1
    8000112c:	014904b3          	add	s1,s2,s4
    80001130:	4605                	li	a2,1
    80001132:	85ca                	mv	a1,s2
    80001134:	8556                	mv	a0,s5
    80001136:	00000097          	auipc	ra,0x0
    8000113a:	eda080e7          	jalr	-294(ra) # 80001010 <walk>
    8000113e:	cd1d                	beqz	a0,8000117c <mappages+0x84>
    80001140:	611c                	ld	a5,0(a0)
    80001142:	8b85                	and	a5,a5,1
    80001144:	e785                	bnez	a5,8000116c <mappages+0x74>
    80001146:	80b1                	srl	s1,s1,0xc
    80001148:	04aa                	sll	s1,s1,0xa
    8000114a:	0164e4b3          	or	s1,s1,s6
    8000114e:	0014e493          	or	s1,s1,1
    80001152:	e104                	sd	s1,0(a0)
    80001154:	05390063          	beq	s2,s3,80001194 <mappages+0x9c>
    80001158:	995e                	add	s2,s2,s7
    8000115a:	bfc9                	j	8000112c <mappages+0x34>
    8000115c:	00007517          	auipc	a0,0x7
    80001160:	f6c50513          	add	a0,a0,-148 # 800080c8 <digits+0x98>
    80001164:	fffff097          	auipc	ra,0xfffff
    80001168:	3fc080e7          	jalr	1020(ra) # 80000560 <panic>
    8000116c:	00007517          	auipc	a0,0x7
    80001170:	f6c50513          	add	a0,a0,-148 # 800080d8 <digits+0xa8>
    80001174:	fffff097          	auipc	ra,0xfffff
    80001178:	3ec080e7          	jalr	1004(ra) # 80000560 <panic>
    8000117c:	557d                	li	a0,-1
    8000117e:	60a6                	ld	ra,72(sp)
    80001180:	6406                	ld	s0,64(sp)
    80001182:	74e2                	ld	s1,56(sp)
    80001184:	7942                	ld	s2,48(sp)
    80001186:	79a2                	ld	s3,40(sp)
    80001188:	7a02                	ld	s4,32(sp)
    8000118a:	6ae2                	ld	s5,24(sp)
    8000118c:	6b42                	ld	s6,16(sp)
    8000118e:	6ba2                	ld	s7,8(sp)
    80001190:	6161                	add	sp,sp,80
    80001192:	8082                	ret
    80001194:	4501                	li	a0,0
    80001196:	b7e5                	j	8000117e <mappages+0x86>

0000000080001198 <kvmmap>:
    80001198:	1141                	add	sp,sp,-16
    8000119a:	e406                	sd	ra,8(sp)
    8000119c:	e022                	sd	s0,0(sp)
    8000119e:	0800                	add	s0,sp,16
    800011a0:	87b6                	mv	a5,a3
    800011a2:	86b2                	mv	a3,a2
    800011a4:	863e                	mv	a2,a5
    800011a6:	00000097          	auipc	ra,0x0
    800011aa:	f52080e7          	jalr	-174(ra) # 800010f8 <mappages>
    800011ae:	e509                	bnez	a0,800011b8 <kvmmap+0x20>
    800011b0:	60a2                	ld	ra,8(sp)
    800011b2:	6402                	ld	s0,0(sp)
    800011b4:	0141                	add	sp,sp,16
    800011b6:	8082                	ret
    800011b8:	00007517          	auipc	a0,0x7
    800011bc:	f3050513          	add	a0,a0,-208 # 800080e8 <digits+0xb8>
    800011c0:	fffff097          	auipc	ra,0xfffff
    800011c4:	3a0080e7          	jalr	928(ra) # 80000560 <panic>

00000000800011c8 <kvmmake>:
    800011c8:	1101                	add	sp,sp,-32
    800011ca:	ec06                	sd	ra,24(sp)
    800011cc:	e822                	sd	s0,16(sp)
    800011ce:	e426                	sd	s1,8(sp)
    800011d0:	e04a                	sd	s2,0(sp)
    800011d2:	1000                	add	s0,sp,32
    800011d4:	00000097          	auipc	ra,0x0
    800011d8:	974080e7          	jalr	-1676(ra) # 80000b48 <kalloc>
    800011dc:	84aa                	mv	s1,a0
    800011de:	6605                	lui	a2,0x1
    800011e0:	4581                	li	a1,0
    800011e2:	00000097          	auipc	ra,0x0
    800011e6:	b52080e7          	jalr	-1198(ra) # 80000d34 <memset>
    800011ea:	4719                	li	a4,6
    800011ec:	6685                	lui	a3,0x1
    800011ee:	10000637          	lui	a2,0x10000
    800011f2:	100005b7          	lui	a1,0x10000
    800011f6:	8526                	mv	a0,s1
    800011f8:	00000097          	auipc	ra,0x0
    800011fc:	fa0080e7          	jalr	-96(ra) # 80001198 <kvmmap>
    80001200:	4719                	li	a4,6
    80001202:	6685                	lui	a3,0x1
    80001204:	10001637          	lui	a2,0x10001
    80001208:	100015b7          	lui	a1,0x10001
    8000120c:	8526                	mv	a0,s1
    8000120e:	00000097          	auipc	ra,0x0
    80001212:	f8a080e7          	jalr	-118(ra) # 80001198 <kvmmap>
    80001216:	4719                	li	a4,6
    80001218:	004006b7          	lui	a3,0x400
    8000121c:	0c000637          	lui	a2,0xc000
    80001220:	0c0005b7          	lui	a1,0xc000
    80001224:	8526                	mv	a0,s1
    80001226:	00000097          	auipc	ra,0x0
    8000122a:	f72080e7          	jalr	-142(ra) # 80001198 <kvmmap>
    8000122e:	00007917          	auipc	s2,0x7
    80001232:	dd290913          	add	s2,s2,-558 # 80008000 <etext>
    80001236:	4729                	li	a4,10
    80001238:	80007697          	auipc	a3,0x80007
    8000123c:	dc868693          	add	a3,a3,-568 # 8000 <_entry-0x7fff8000>
    80001240:	4605                	li	a2,1
    80001242:	067e                	sll	a2,a2,0x1f
    80001244:	85b2                	mv	a1,a2
    80001246:	8526                	mv	a0,s1
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	f50080e7          	jalr	-176(ra) # 80001198 <kvmmap>
    80001250:	46c5                	li	a3,17
    80001252:	06ee                	sll	a3,a3,0x1b
    80001254:	4719                	li	a4,6
    80001256:	412686b3          	sub	a3,a3,s2
    8000125a:	864a                	mv	a2,s2
    8000125c:	85ca                	mv	a1,s2
    8000125e:	8526                	mv	a0,s1
    80001260:	00000097          	auipc	ra,0x0
    80001264:	f38080e7          	jalr	-200(ra) # 80001198 <kvmmap>
    80001268:	4729                	li	a4,10
    8000126a:	6685                	lui	a3,0x1
    8000126c:	00006617          	auipc	a2,0x6
    80001270:	d9460613          	add	a2,a2,-620 # 80007000 <_trampoline>
    80001274:	040005b7          	lui	a1,0x4000
    80001278:	15fd                	add	a1,a1,-1 # 3ffffff <_entry-0x7c000001>
    8000127a:	05b2                	sll	a1,a1,0xc
    8000127c:	8526                	mv	a0,s1
    8000127e:	00000097          	auipc	ra,0x0
    80001282:	f1a080e7          	jalr	-230(ra) # 80001198 <kvmmap>
    80001286:	8526                	mv	a0,s1
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	668080e7          	jalr	1640(ra) # 800018f0 <proc_mapstacks>
    80001290:	8526                	mv	a0,s1
    80001292:	60e2                	ld	ra,24(sp)
    80001294:	6442                	ld	s0,16(sp)
    80001296:	64a2                	ld	s1,8(sp)
    80001298:	6902                	ld	s2,0(sp)
    8000129a:	6105                	add	sp,sp,32
    8000129c:	8082                	ret

000000008000129e <kvminit>:
    8000129e:	1141                	add	sp,sp,-16
    800012a0:	e406                	sd	ra,8(sp)
    800012a2:	e022                	sd	s0,0(sp)
    800012a4:	0800                	add	s0,sp,16
    800012a6:	00000097          	auipc	ra,0x0
    800012aa:	f22080e7          	jalr	-222(ra) # 800011c8 <kvmmake>
    800012ae:	0000a797          	auipc	a5,0xa
    800012b2:	1ea7b123          	sd	a0,482(a5) # 8000b490 <kernel_pagetable>
    800012b6:	60a2                	ld	ra,8(sp)
    800012b8:	6402                	ld	s0,0(sp)
    800012ba:	0141                	add	sp,sp,16
    800012bc:	8082                	ret

00000000800012be <uvmunmap>:
    800012be:	715d                	add	sp,sp,-80
    800012c0:	e486                	sd	ra,72(sp)
    800012c2:	e0a2                	sd	s0,64(sp)
    800012c4:	0880                	add	s0,sp,80
    800012c6:	03459793          	sll	a5,a1,0x34
    800012ca:	e39d                	bnez	a5,800012f0 <uvmunmap+0x32>
    800012cc:	f84a                	sd	s2,48(sp)
    800012ce:	f44e                	sd	s3,40(sp)
    800012d0:	f052                	sd	s4,32(sp)
    800012d2:	ec56                	sd	s5,24(sp)
    800012d4:	e85a                	sd	s6,16(sp)
    800012d6:	e45e                	sd	s7,8(sp)
    800012d8:	8a2a                	mv	s4,a0
    800012da:	892e                	mv	s2,a1
    800012dc:	8ab6                	mv	s5,a3
    800012de:	0632                	sll	a2,a2,0xc
    800012e0:	00b609b3          	add	s3,a2,a1
    800012e4:	4b85                	li	s7,1
    800012e6:	6b05                	lui	s6,0x1
    800012e8:	0935fb63          	bgeu	a1,s3,8000137e <uvmunmap+0xc0>
    800012ec:	fc26                	sd	s1,56(sp)
    800012ee:	a8a9                	j	80001348 <uvmunmap+0x8a>
    800012f0:	fc26                	sd	s1,56(sp)
    800012f2:	f84a                	sd	s2,48(sp)
    800012f4:	f44e                	sd	s3,40(sp)
    800012f6:	f052                	sd	s4,32(sp)
    800012f8:	ec56                	sd	s5,24(sp)
    800012fa:	e85a                	sd	s6,16(sp)
    800012fc:	e45e                	sd	s7,8(sp)
    800012fe:	00007517          	auipc	a0,0x7
    80001302:	df250513          	add	a0,a0,-526 # 800080f0 <digits+0xc0>
    80001306:	fffff097          	auipc	ra,0xfffff
    8000130a:	25a080e7          	jalr	602(ra) # 80000560 <panic>
    8000130e:	00007517          	auipc	a0,0x7
    80001312:	dfa50513          	add	a0,a0,-518 # 80008108 <digits+0xd8>
    80001316:	fffff097          	auipc	ra,0xfffff
    8000131a:	24a080e7          	jalr	586(ra) # 80000560 <panic>
    8000131e:	00007517          	auipc	a0,0x7
    80001322:	dfa50513          	add	a0,a0,-518 # 80008118 <digits+0xe8>
    80001326:	fffff097          	auipc	ra,0xfffff
    8000132a:	23a080e7          	jalr	570(ra) # 80000560 <panic>
    8000132e:	00007517          	auipc	a0,0x7
    80001332:	e0250513          	add	a0,a0,-510 # 80008130 <digits+0x100>
    80001336:	fffff097          	auipc	ra,0xfffff
    8000133a:	22a080e7          	jalr	554(ra) # 80000560 <panic>
    8000133e:	0004b023          	sd	zero,0(s1)
    80001342:	995a                	add	s2,s2,s6
    80001344:	03397c63          	bgeu	s2,s3,8000137c <uvmunmap+0xbe>
    80001348:	4601                	li	a2,0
    8000134a:	85ca                	mv	a1,s2
    8000134c:	8552                	mv	a0,s4
    8000134e:	00000097          	auipc	ra,0x0
    80001352:	cc2080e7          	jalr	-830(ra) # 80001010 <walk>
    80001356:	84aa                	mv	s1,a0
    80001358:	d95d                	beqz	a0,8000130e <uvmunmap+0x50>
    8000135a:	6108                	ld	a0,0(a0)
    8000135c:	00157793          	and	a5,a0,1
    80001360:	dfdd                	beqz	a5,8000131e <uvmunmap+0x60>
    80001362:	3ff57793          	and	a5,a0,1023
    80001366:	fd7784e3          	beq	a5,s7,8000132e <uvmunmap+0x70>
    8000136a:	fc0a8ae3          	beqz	s5,8000133e <uvmunmap+0x80>
    8000136e:	8129                	srl	a0,a0,0xa
    80001370:	0532                	sll	a0,a0,0xc
    80001372:	fffff097          	auipc	ra,0xfffff
    80001376:	6d8080e7          	jalr	1752(ra) # 80000a4a <kfree>
    8000137a:	b7d1                	j	8000133e <uvmunmap+0x80>
    8000137c:	74e2                	ld	s1,56(sp)
    8000137e:	7942                	ld	s2,48(sp)
    80001380:	79a2                	ld	s3,40(sp)
    80001382:	7a02                	ld	s4,32(sp)
    80001384:	6ae2                	ld	s5,24(sp)
    80001386:	6b42                	ld	s6,16(sp)
    80001388:	6ba2                	ld	s7,8(sp)
    8000138a:	60a6                	ld	ra,72(sp)
    8000138c:	6406                	ld	s0,64(sp)
    8000138e:	6161                	add	sp,sp,80
    80001390:	8082                	ret

0000000080001392 <uvmcreate>:
    80001392:	1101                	add	sp,sp,-32
    80001394:	ec06                	sd	ra,24(sp)
    80001396:	e822                	sd	s0,16(sp)
    80001398:	e426                	sd	s1,8(sp)
    8000139a:	1000                	add	s0,sp,32
    8000139c:	fffff097          	auipc	ra,0xfffff
    800013a0:	7ac080e7          	jalr	1964(ra) # 80000b48 <kalloc>
    800013a4:	84aa                	mv	s1,a0
    800013a6:	c519                	beqz	a0,800013b4 <uvmcreate+0x22>
    800013a8:	6605                	lui	a2,0x1
    800013aa:	4581                	li	a1,0
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	988080e7          	jalr	-1656(ra) # 80000d34 <memset>
    800013b4:	8526                	mv	a0,s1
    800013b6:	60e2                	ld	ra,24(sp)
    800013b8:	6442                	ld	s0,16(sp)
    800013ba:	64a2                	ld	s1,8(sp)
    800013bc:	6105                	add	sp,sp,32
    800013be:	8082                	ret

00000000800013c0 <uvmfirst>:
    800013c0:	7179                	add	sp,sp,-48
    800013c2:	f406                	sd	ra,40(sp)
    800013c4:	f022                	sd	s0,32(sp)
    800013c6:	ec26                	sd	s1,24(sp)
    800013c8:	e84a                	sd	s2,16(sp)
    800013ca:	e44e                	sd	s3,8(sp)
    800013cc:	e052                	sd	s4,0(sp)
    800013ce:	1800                	add	s0,sp,48
    800013d0:	6785                	lui	a5,0x1
    800013d2:	04f67863          	bgeu	a2,a5,80001422 <uvmfirst+0x62>
    800013d6:	8a2a                	mv	s4,a0
    800013d8:	89ae                	mv	s3,a1
    800013da:	84b2                	mv	s1,a2
    800013dc:	fffff097          	auipc	ra,0xfffff
    800013e0:	76c080e7          	jalr	1900(ra) # 80000b48 <kalloc>
    800013e4:	892a                	mv	s2,a0
    800013e6:	6605                	lui	a2,0x1
    800013e8:	4581                	li	a1,0
    800013ea:	00000097          	auipc	ra,0x0
    800013ee:	94a080e7          	jalr	-1718(ra) # 80000d34 <memset>
    800013f2:	4779                	li	a4,30
    800013f4:	86ca                	mv	a3,s2
    800013f6:	6605                	lui	a2,0x1
    800013f8:	4581                	li	a1,0
    800013fa:	8552                	mv	a0,s4
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	cfc080e7          	jalr	-772(ra) # 800010f8 <mappages>
    80001404:	8626                	mv	a2,s1
    80001406:	85ce                	mv	a1,s3
    80001408:	854a                	mv	a0,s2
    8000140a:	00000097          	auipc	ra,0x0
    8000140e:	986080e7          	jalr	-1658(ra) # 80000d90 <memmove>
    80001412:	70a2                	ld	ra,40(sp)
    80001414:	7402                	ld	s0,32(sp)
    80001416:	64e2                	ld	s1,24(sp)
    80001418:	6942                	ld	s2,16(sp)
    8000141a:	69a2                	ld	s3,8(sp)
    8000141c:	6a02                	ld	s4,0(sp)
    8000141e:	6145                	add	sp,sp,48
    80001420:	8082                	ret
    80001422:	00007517          	auipc	a0,0x7
    80001426:	d2650513          	add	a0,a0,-730 # 80008148 <digits+0x118>
    8000142a:	fffff097          	auipc	ra,0xfffff
    8000142e:	136080e7          	jalr	310(ra) # 80000560 <panic>

0000000080001432 <uvmdealloc>:
    80001432:	1101                	add	sp,sp,-32
    80001434:	ec06                	sd	ra,24(sp)
    80001436:	e822                	sd	s0,16(sp)
    80001438:	e426                	sd	s1,8(sp)
    8000143a:	1000                	add	s0,sp,32
    8000143c:	84ae                	mv	s1,a1
    8000143e:	00b67d63          	bgeu	a2,a1,80001458 <uvmdealloc+0x26>
    80001442:	84b2                	mv	s1,a2
    80001444:	6785                	lui	a5,0x1
    80001446:	17fd                	add	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001448:	00f60733          	add	a4,a2,a5
    8000144c:	76fd                	lui	a3,0xfffff
    8000144e:	8f75                	and	a4,a4,a3
    80001450:	97ae                	add	a5,a5,a1
    80001452:	8ff5                	and	a5,a5,a3
    80001454:	00f76863          	bltu	a4,a5,80001464 <uvmdealloc+0x32>
    80001458:	8526                	mv	a0,s1
    8000145a:	60e2                	ld	ra,24(sp)
    8000145c:	6442                	ld	s0,16(sp)
    8000145e:	64a2                	ld	s1,8(sp)
    80001460:	6105                	add	sp,sp,32
    80001462:	8082                	ret
    80001464:	8f99                	sub	a5,a5,a4
    80001466:	83b1                	srl	a5,a5,0xc
    80001468:	4685                	li	a3,1
    8000146a:	0007861b          	sext.w	a2,a5
    8000146e:	85ba                	mv	a1,a4
    80001470:	00000097          	auipc	ra,0x0
    80001474:	e4e080e7          	jalr	-434(ra) # 800012be <uvmunmap>
    80001478:	b7c5                	j	80001458 <uvmdealloc+0x26>

000000008000147a <uvmalloc>:
    8000147a:	0ab66b63          	bltu	a2,a1,80001530 <uvmalloc+0xb6>
    8000147e:	7139                	add	sp,sp,-64
    80001480:	fc06                	sd	ra,56(sp)
    80001482:	f822                	sd	s0,48(sp)
    80001484:	ec4e                	sd	s3,24(sp)
    80001486:	e852                	sd	s4,16(sp)
    80001488:	e456                	sd	s5,8(sp)
    8000148a:	0080                	add	s0,sp,64
    8000148c:	8aaa                	mv	s5,a0
    8000148e:	8a32                	mv	s4,a2
    80001490:	6785                	lui	a5,0x1
    80001492:	17fd                	add	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001494:	95be                	add	a1,a1,a5
    80001496:	77fd                	lui	a5,0xfffff
    80001498:	00f5f9b3          	and	s3,a1,a5
    8000149c:	08c9fc63          	bgeu	s3,a2,80001534 <uvmalloc+0xba>
    800014a0:	f426                	sd	s1,40(sp)
    800014a2:	f04a                	sd	s2,32(sp)
    800014a4:	e05a                	sd	s6,0(sp)
    800014a6:	894e                	mv	s2,s3
    800014a8:	0126eb13          	or	s6,a3,18
    800014ac:	fffff097          	auipc	ra,0xfffff
    800014b0:	69c080e7          	jalr	1692(ra) # 80000b48 <kalloc>
    800014b4:	84aa                	mv	s1,a0
    800014b6:	c915                	beqz	a0,800014ea <uvmalloc+0x70>
    800014b8:	6605                	lui	a2,0x1
    800014ba:	4581                	li	a1,0
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	878080e7          	jalr	-1928(ra) # 80000d34 <memset>
    800014c4:	875a                	mv	a4,s6
    800014c6:	86a6                	mv	a3,s1
    800014c8:	6605                	lui	a2,0x1
    800014ca:	85ca                	mv	a1,s2
    800014cc:	8556                	mv	a0,s5
    800014ce:	00000097          	auipc	ra,0x0
    800014d2:	c2a080e7          	jalr	-982(ra) # 800010f8 <mappages>
    800014d6:	ed05                	bnez	a0,8000150e <uvmalloc+0x94>
    800014d8:	6785                	lui	a5,0x1
    800014da:	993e                	add	s2,s2,a5
    800014dc:	fd4968e3          	bltu	s2,s4,800014ac <uvmalloc+0x32>
    800014e0:	8552                	mv	a0,s4
    800014e2:	74a2                	ld	s1,40(sp)
    800014e4:	7902                	ld	s2,32(sp)
    800014e6:	6b02                	ld	s6,0(sp)
    800014e8:	a821                	j	80001500 <uvmalloc+0x86>
    800014ea:	864e                	mv	a2,s3
    800014ec:	85ca                	mv	a1,s2
    800014ee:	8556                	mv	a0,s5
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	f42080e7          	jalr	-190(ra) # 80001432 <uvmdealloc>
    800014f8:	4501                	li	a0,0
    800014fa:	74a2                	ld	s1,40(sp)
    800014fc:	7902                	ld	s2,32(sp)
    800014fe:	6b02                	ld	s6,0(sp)
    80001500:	70e2                	ld	ra,56(sp)
    80001502:	7442                	ld	s0,48(sp)
    80001504:	69e2                	ld	s3,24(sp)
    80001506:	6a42                	ld	s4,16(sp)
    80001508:	6aa2                	ld	s5,8(sp)
    8000150a:	6121                	add	sp,sp,64
    8000150c:	8082                	ret
    8000150e:	8526                	mv	a0,s1
    80001510:	fffff097          	auipc	ra,0xfffff
    80001514:	53a080e7          	jalr	1338(ra) # 80000a4a <kfree>
    80001518:	864e                	mv	a2,s3
    8000151a:	85ca                	mv	a1,s2
    8000151c:	8556                	mv	a0,s5
    8000151e:	00000097          	auipc	ra,0x0
    80001522:	f14080e7          	jalr	-236(ra) # 80001432 <uvmdealloc>
    80001526:	4501                	li	a0,0
    80001528:	74a2                	ld	s1,40(sp)
    8000152a:	7902                	ld	s2,32(sp)
    8000152c:	6b02                	ld	s6,0(sp)
    8000152e:	bfc9                	j	80001500 <uvmalloc+0x86>
    80001530:	852e                	mv	a0,a1
    80001532:	8082                	ret
    80001534:	8532                	mv	a0,a2
    80001536:	b7e9                	j	80001500 <uvmalloc+0x86>

0000000080001538 <freewalk>:
    80001538:	7179                	add	sp,sp,-48
    8000153a:	f406                	sd	ra,40(sp)
    8000153c:	f022                	sd	s0,32(sp)
    8000153e:	ec26                	sd	s1,24(sp)
    80001540:	e84a                	sd	s2,16(sp)
    80001542:	e44e                	sd	s3,8(sp)
    80001544:	e052                	sd	s4,0(sp)
    80001546:	1800                	add	s0,sp,48
    80001548:	8a2a                	mv	s4,a0
    8000154a:	84aa                	mv	s1,a0
    8000154c:	6905                	lui	s2,0x1
    8000154e:	992a                	add	s2,s2,a0
    80001550:	4985                	li	s3,1
    80001552:	a829                	j	8000156c <freewalk+0x34>
    80001554:	83a9                	srl	a5,a5,0xa
    80001556:	00c79513          	sll	a0,a5,0xc
    8000155a:	00000097          	auipc	ra,0x0
    8000155e:	fde080e7          	jalr	-34(ra) # 80001538 <freewalk>
    80001562:	0004b023          	sd	zero,0(s1)
    80001566:	04a1                	add	s1,s1,8
    80001568:	03248163          	beq	s1,s2,8000158a <freewalk+0x52>
    8000156c:	609c                	ld	a5,0(s1)
    8000156e:	00f7f713          	and	a4,a5,15
    80001572:	ff3701e3          	beq	a4,s3,80001554 <freewalk+0x1c>
    80001576:	8b85                	and	a5,a5,1
    80001578:	d7fd                	beqz	a5,80001566 <freewalk+0x2e>
    8000157a:	00007517          	auipc	a0,0x7
    8000157e:	bee50513          	add	a0,a0,-1042 # 80008168 <digits+0x138>
    80001582:	fffff097          	auipc	ra,0xfffff
    80001586:	fde080e7          	jalr	-34(ra) # 80000560 <panic>
    8000158a:	8552                	mv	a0,s4
    8000158c:	fffff097          	auipc	ra,0xfffff
    80001590:	4be080e7          	jalr	1214(ra) # 80000a4a <kfree>
    80001594:	70a2                	ld	ra,40(sp)
    80001596:	7402                	ld	s0,32(sp)
    80001598:	64e2                	ld	s1,24(sp)
    8000159a:	6942                	ld	s2,16(sp)
    8000159c:	69a2                	ld	s3,8(sp)
    8000159e:	6a02                	ld	s4,0(sp)
    800015a0:	6145                	add	sp,sp,48
    800015a2:	8082                	ret

00000000800015a4 <uvmfree>:
    800015a4:	1101                	add	sp,sp,-32
    800015a6:	ec06                	sd	ra,24(sp)
    800015a8:	e822                	sd	s0,16(sp)
    800015aa:	e426                	sd	s1,8(sp)
    800015ac:	1000                	add	s0,sp,32
    800015ae:	84aa                	mv	s1,a0
    800015b0:	e999                	bnez	a1,800015c6 <uvmfree+0x22>
    800015b2:	8526                	mv	a0,s1
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f84080e7          	jalr	-124(ra) # 80001538 <freewalk>
    800015bc:	60e2                	ld	ra,24(sp)
    800015be:	6442                	ld	s0,16(sp)
    800015c0:	64a2                	ld	s1,8(sp)
    800015c2:	6105                	add	sp,sp,32
    800015c4:	8082                	ret
    800015c6:	6785                	lui	a5,0x1
    800015c8:	17fd                	add	a5,a5,-1 # fff <_entry-0x7ffff001>
    800015ca:	95be                	add	a1,a1,a5
    800015cc:	4685                	li	a3,1
    800015ce:	00c5d613          	srl	a2,a1,0xc
    800015d2:	4581                	li	a1,0
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	cea080e7          	jalr	-790(ra) # 800012be <uvmunmap>
    800015dc:	bfd9                	j	800015b2 <uvmfree+0xe>

00000000800015de <uvmcopy>:
    800015de:	c679                	beqz	a2,800016ac <uvmcopy+0xce>
    800015e0:	715d                	add	sp,sp,-80
    800015e2:	e486                	sd	ra,72(sp)
    800015e4:	e0a2                	sd	s0,64(sp)
    800015e6:	fc26                	sd	s1,56(sp)
    800015e8:	f84a                	sd	s2,48(sp)
    800015ea:	f44e                	sd	s3,40(sp)
    800015ec:	f052                	sd	s4,32(sp)
    800015ee:	ec56                	sd	s5,24(sp)
    800015f0:	e85a                	sd	s6,16(sp)
    800015f2:	e45e                	sd	s7,8(sp)
    800015f4:	0880                	add	s0,sp,80
    800015f6:	8b2a                	mv	s6,a0
    800015f8:	8aae                	mv	s5,a1
    800015fa:	8a32                	mv	s4,a2
    800015fc:	4981                	li	s3,0
    800015fe:	4601                	li	a2,0
    80001600:	85ce                	mv	a1,s3
    80001602:	855a                	mv	a0,s6
    80001604:	00000097          	auipc	ra,0x0
    80001608:	a0c080e7          	jalr	-1524(ra) # 80001010 <walk>
    8000160c:	c531                	beqz	a0,80001658 <uvmcopy+0x7a>
    8000160e:	6118                	ld	a4,0(a0)
    80001610:	00177793          	and	a5,a4,1
    80001614:	cbb1                	beqz	a5,80001668 <uvmcopy+0x8a>
    80001616:	00a75593          	srl	a1,a4,0xa
    8000161a:	00c59b93          	sll	s7,a1,0xc
    8000161e:	3ff77493          	and	s1,a4,1023
    80001622:	fffff097          	auipc	ra,0xfffff
    80001626:	526080e7          	jalr	1318(ra) # 80000b48 <kalloc>
    8000162a:	892a                	mv	s2,a0
    8000162c:	c939                	beqz	a0,80001682 <uvmcopy+0xa4>
    8000162e:	6605                	lui	a2,0x1
    80001630:	85de                	mv	a1,s7
    80001632:	fffff097          	auipc	ra,0xfffff
    80001636:	75e080e7          	jalr	1886(ra) # 80000d90 <memmove>
    8000163a:	8726                	mv	a4,s1
    8000163c:	86ca                	mv	a3,s2
    8000163e:	6605                	lui	a2,0x1
    80001640:	85ce                	mv	a1,s3
    80001642:	8556                	mv	a0,s5
    80001644:	00000097          	auipc	ra,0x0
    80001648:	ab4080e7          	jalr	-1356(ra) # 800010f8 <mappages>
    8000164c:	e515                	bnez	a0,80001678 <uvmcopy+0x9a>
    8000164e:	6785                	lui	a5,0x1
    80001650:	99be                	add	s3,s3,a5
    80001652:	fb49e6e3          	bltu	s3,s4,800015fe <uvmcopy+0x20>
    80001656:	a081                	j	80001696 <uvmcopy+0xb8>
    80001658:	00007517          	auipc	a0,0x7
    8000165c:	b2050513          	add	a0,a0,-1248 # 80008178 <digits+0x148>
    80001660:	fffff097          	auipc	ra,0xfffff
    80001664:	f00080e7          	jalr	-256(ra) # 80000560 <panic>
    80001668:	00007517          	auipc	a0,0x7
    8000166c:	b3050513          	add	a0,a0,-1232 # 80008198 <digits+0x168>
    80001670:	fffff097          	auipc	ra,0xfffff
    80001674:	ef0080e7          	jalr	-272(ra) # 80000560 <panic>
    80001678:	854a                	mv	a0,s2
    8000167a:	fffff097          	auipc	ra,0xfffff
    8000167e:	3d0080e7          	jalr	976(ra) # 80000a4a <kfree>
    80001682:	4685                	li	a3,1
    80001684:	00c9d613          	srl	a2,s3,0xc
    80001688:	4581                	li	a1,0
    8000168a:	8556                	mv	a0,s5
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	c32080e7          	jalr	-974(ra) # 800012be <uvmunmap>
    80001694:	557d                	li	a0,-1
    80001696:	60a6                	ld	ra,72(sp)
    80001698:	6406                	ld	s0,64(sp)
    8000169a:	74e2                	ld	s1,56(sp)
    8000169c:	7942                	ld	s2,48(sp)
    8000169e:	79a2                	ld	s3,40(sp)
    800016a0:	7a02                	ld	s4,32(sp)
    800016a2:	6ae2                	ld	s5,24(sp)
    800016a4:	6b42                	ld	s6,16(sp)
    800016a6:	6ba2                	ld	s7,8(sp)
    800016a8:	6161                	add	sp,sp,80
    800016aa:	8082                	ret
    800016ac:	4501                	li	a0,0
    800016ae:	8082                	ret

00000000800016b0 <uvmclear>:
    800016b0:	1141                	add	sp,sp,-16
    800016b2:	e406                	sd	ra,8(sp)
    800016b4:	e022                	sd	s0,0(sp)
    800016b6:	0800                	add	s0,sp,16
    800016b8:	4601                	li	a2,0
    800016ba:	00000097          	auipc	ra,0x0
    800016be:	956080e7          	jalr	-1706(ra) # 80001010 <walk>
    800016c2:	c901                	beqz	a0,800016d2 <uvmclear+0x22>
    800016c4:	611c                	ld	a5,0(a0)
    800016c6:	9bbd                	and	a5,a5,-17
    800016c8:	e11c                	sd	a5,0(a0)
    800016ca:	60a2                	ld	ra,8(sp)
    800016cc:	6402                	ld	s0,0(sp)
    800016ce:	0141                	add	sp,sp,16
    800016d0:	8082                	ret
    800016d2:	00007517          	auipc	a0,0x7
    800016d6:	ae650513          	add	a0,a0,-1306 # 800081b8 <digits+0x188>
    800016da:	fffff097          	auipc	ra,0xfffff
    800016de:	e86080e7          	jalr	-378(ra) # 80000560 <panic>

00000000800016e2 <copyout>:
    800016e2:	c6bd                	beqz	a3,80001750 <copyout+0x6e>
    800016e4:	715d                	add	sp,sp,-80
    800016e6:	e486                	sd	ra,72(sp)
    800016e8:	e0a2                	sd	s0,64(sp)
    800016ea:	fc26                	sd	s1,56(sp)
    800016ec:	f84a                	sd	s2,48(sp)
    800016ee:	f44e                	sd	s3,40(sp)
    800016f0:	f052                	sd	s4,32(sp)
    800016f2:	ec56                	sd	s5,24(sp)
    800016f4:	e85a                	sd	s6,16(sp)
    800016f6:	e45e                	sd	s7,8(sp)
    800016f8:	e062                	sd	s8,0(sp)
    800016fa:	0880                	add	s0,sp,80
    800016fc:	8b2a                	mv	s6,a0
    800016fe:	8c2e                	mv	s8,a1
    80001700:	8a32                	mv	s4,a2
    80001702:	89b6                	mv	s3,a3
    80001704:	7bfd                	lui	s7,0xfffff
    80001706:	6a85                	lui	s5,0x1
    80001708:	a015                	j	8000172c <copyout+0x4a>
    8000170a:	9562                	add	a0,a0,s8
    8000170c:	0004861b          	sext.w	a2,s1
    80001710:	85d2                	mv	a1,s4
    80001712:	41250533          	sub	a0,a0,s2
    80001716:	fffff097          	auipc	ra,0xfffff
    8000171a:	67a080e7          	jalr	1658(ra) # 80000d90 <memmove>
    8000171e:	409989b3          	sub	s3,s3,s1
    80001722:	9a26                	add	s4,s4,s1
    80001724:	01590c33          	add	s8,s2,s5
    80001728:	02098263          	beqz	s3,8000174c <copyout+0x6a>
    8000172c:	017c7933          	and	s2,s8,s7
    80001730:	85ca                	mv	a1,s2
    80001732:	855a                	mv	a0,s6
    80001734:	00000097          	auipc	ra,0x0
    80001738:	982080e7          	jalr	-1662(ra) # 800010b6 <walkaddr>
    8000173c:	cd01                	beqz	a0,80001754 <copyout+0x72>
    8000173e:	418904b3          	sub	s1,s2,s8
    80001742:	94d6                	add	s1,s1,s5
    80001744:	fc99f3e3          	bgeu	s3,s1,8000170a <copyout+0x28>
    80001748:	84ce                	mv	s1,s3
    8000174a:	b7c1                	j	8000170a <copyout+0x28>
    8000174c:	4501                	li	a0,0
    8000174e:	a021                	j	80001756 <copyout+0x74>
    80001750:	4501                	li	a0,0
    80001752:	8082                	ret
    80001754:	557d                	li	a0,-1
    80001756:	60a6                	ld	ra,72(sp)
    80001758:	6406                	ld	s0,64(sp)
    8000175a:	74e2                	ld	s1,56(sp)
    8000175c:	7942                	ld	s2,48(sp)
    8000175e:	79a2                	ld	s3,40(sp)
    80001760:	7a02                	ld	s4,32(sp)
    80001762:	6ae2                	ld	s5,24(sp)
    80001764:	6b42                	ld	s6,16(sp)
    80001766:	6ba2                	ld	s7,8(sp)
    80001768:	6c02                	ld	s8,0(sp)
    8000176a:	6161                	add	sp,sp,80
    8000176c:	8082                	ret

000000008000176e <copyin>:
    8000176e:	caa5                	beqz	a3,800017de <copyin+0x70>
    80001770:	715d                	add	sp,sp,-80
    80001772:	e486                	sd	ra,72(sp)
    80001774:	e0a2                	sd	s0,64(sp)
    80001776:	fc26                	sd	s1,56(sp)
    80001778:	f84a                	sd	s2,48(sp)
    8000177a:	f44e                	sd	s3,40(sp)
    8000177c:	f052                	sd	s4,32(sp)
    8000177e:	ec56                	sd	s5,24(sp)
    80001780:	e85a                	sd	s6,16(sp)
    80001782:	e45e                	sd	s7,8(sp)
    80001784:	e062                	sd	s8,0(sp)
    80001786:	0880                	add	s0,sp,80
    80001788:	8b2a                	mv	s6,a0
    8000178a:	8a2e                	mv	s4,a1
    8000178c:	8c32                	mv	s8,a2
    8000178e:	89b6                	mv	s3,a3
    80001790:	7bfd                	lui	s7,0xfffff
    80001792:	6a85                	lui	s5,0x1
    80001794:	a01d                	j	800017ba <copyin+0x4c>
    80001796:	018505b3          	add	a1,a0,s8
    8000179a:	0004861b          	sext.w	a2,s1
    8000179e:	412585b3          	sub	a1,a1,s2
    800017a2:	8552                	mv	a0,s4
    800017a4:	fffff097          	auipc	ra,0xfffff
    800017a8:	5ec080e7          	jalr	1516(ra) # 80000d90 <memmove>
    800017ac:	409989b3          	sub	s3,s3,s1
    800017b0:	9a26                	add	s4,s4,s1
    800017b2:	01590c33          	add	s8,s2,s5
    800017b6:	02098263          	beqz	s3,800017da <copyin+0x6c>
    800017ba:	017c7933          	and	s2,s8,s7
    800017be:	85ca                	mv	a1,s2
    800017c0:	855a                	mv	a0,s6
    800017c2:	00000097          	auipc	ra,0x0
    800017c6:	8f4080e7          	jalr	-1804(ra) # 800010b6 <walkaddr>
    800017ca:	cd01                	beqz	a0,800017e2 <copyin+0x74>
    800017cc:	418904b3          	sub	s1,s2,s8
    800017d0:	94d6                	add	s1,s1,s5
    800017d2:	fc99f2e3          	bgeu	s3,s1,80001796 <copyin+0x28>
    800017d6:	84ce                	mv	s1,s3
    800017d8:	bf7d                	j	80001796 <copyin+0x28>
    800017da:	4501                	li	a0,0
    800017dc:	a021                	j	800017e4 <copyin+0x76>
    800017de:	4501                	li	a0,0
    800017e0:	8082                	ret
    800017e2:	557d                	li	a0,-1
    800017e4:	60a6                	ld	ra,72(sp)
    800017e6:	6406                	ld	s0,64(sp)
    800017e8:	74e2                	ld	s1,56(sp)
    800017ea:	7942                	ld	s2,48(sp)
    800017ec:	79a2                	ld	s3,40(sp)
    800017ee:	7a02                	ld	s4,32(sp)
    800017f0:	6ae2                	ld	s5,24(sp)
    800017f2:	6b42                	ld	s6,16(sp)
    800017f4:	6ba2                	ld	s7,8(sp)
    800017f6:	6c02                	ld	s8,0(sp)
    800017f8:	6161                	add	sp,sp,80
    800017fa:	8082                	ret

00000000800017fc <copyinstr>:
    800017fc:	cacd                	beqz	a3,800018ae <copyinstr+0xb2>
    800017fe:	715d                	add	sp,sp,-80
    80001800:	e486                	sd	ra,72(sp)
    80001802:	e0a2                	sd	s0,64(sp)
    80001804:	fc26                	sd	s1,56(sp)
    80001806:	f84a                	sd	s2,48(sp)
    80001808:	f44e                	sd	s3,40(sp)
    8000180a:	f052                	sd	s4,32(sp)
    8000180c:	ec56                	sd	s5,24(sp)
    8000180e:	e85a                	sd	s6,16(sp)
    80001810:	e45e                	sd	s7,8(sp)
    80001812:	0880                	add	s0,sp,80
    80001814:	8a2a                	mv	s4,a0
    80001816:	8b2e                	mv	s6,a1
    80001818:	8bb2                	mv	s7,a2
    8000181a:	8936                	mv	s2,a3
    8000181c:	7afd                	lui	s5,0xfffff
    8000181e:	6985                	lui	s3,0x1
    80001820:	a825                	j	80001858 <copyinstr+0x5c>
    80001822:	00078023          	sb	zero,0(a5) # 1000 <_entry-0x7ffff000>
    80001826:	4785                	li	a5,1
    80001828:	37fd                	addw	a5,a5,-1
    8000182a:	0007851b          	sext.w	a0,a5
    8000182e:	60a6                	ld	ra,72(sp)
    80001830:	6406                	ld	s0,64(sp)
    80001832:	74e2                	ld	s1,56(sp)
    80001834:	7942                	ld	s2,48(sp)
    80001836:	79a2                	ld	s3,40(sp)
    80001838:	7a02                	ld	s4,32(sp)
    8000183a:	6ae2                	ld	s5,24(sp)
    8000183c:	6b42                	ld	s6,16(sp)
    8000183e:	6ba2                	ld	s7,8(sp)
    80001840:	6161                	add	sp,sp,80
    80001842:	8082                	ret
    80001844:	fff90713          	add	a4,s2,-1 # fff <_entry-0x7ffff001>
    80001848:	9742                	add	a4,a4,a6
    8000184a:	40b70933          	sub	s2,a4,a1
    8000184e:	01348bb3          	add	s7,s1,s3
    80001852:	04e58663          	beq	a1,a4,8000189e <copyinstr+0xa2>
    80001856:	8b3e                	mv	s6,a5
    80001858:	015bf4b3          	and	s1,s7,s5
    8000185c:	85a6                	mv	a1,s1
    8000185e:	8552                	mv	a0,s4
    80001860:	00000097          	auipc	ra,0x0
    80001864:	856080e7          	jalr	-1962(ra) # 800010b6 <walkaddr>
    80001868:	cd0d                	beqz	a0,800018a2 <copyinstr+0xa6>
    8000186a:	417486b3          	sub	a3,s1,s7
    8000186e:	96ce                	add	a3,a3,s3
    80001870:	00d97363          	bgeu	s2,a3,80001876 <copyinstr+0x7a>
    80001874:	86ca                	mv	a3,s2
    80001876:	955e                	add	a0,a0,s7
    80001878:	8d05                	sub	a0,a0,s1
    8000187a:	c695                	beqz	a3,800018a6 <copyinstr+0xaa>
    8000187c:	87da                	mv	a5,s6
    8000187e:	885a                	mv	a6,s6
    80001880:	41650633          	sub	a2,a0,s6
    80001884:	96da                	add	a3,a3,s6
    80001886:	85be                	mv	a1,a5
    80001888:	00f60733          	add	a4,a2,a5
    8000188c:	00074703          	lbu	a4,0(a4) # fffffffffffff000 <end+0xffffffff7ffd95e0>
    80001890:	db49                	beqz	a4,80001822 <copyinstr+0x26>
    80001892:	00e78023          	sb	a4,0(a5)
    80001896:	0785                	add	a5,a5,1
    80001898:	fed797e3          	bne	a5,a3,80001886 <copyinstr+0x8a>
    8000189c:	b765                	j	80001844 <copyinstr+0x48>
    8000189e:	4781                	li	a5,0
    800018a0:	b761                	j	80001828 <copyinstr+0x2c>
    800018a2:	557d                	li	a0,-1
    800018a4:	b769                	j	8000182e <copyinstr+0x32>
    800018a6:	6b85                	lui	s7,0x1
    800018a8:	9ba6                	add	s7,s7,s1
    800018aa:	87da                	mv	a5,s6
    800018ac:	b76d                	j	80001856 <copyinstr+0x5a>
    800018ae:	4781                	li	a5,0
    800018b0:	37fd                	addw	a5,a5,-1
    800018b2:	0007851b          	sext.w	a0,a5
    800018b6:	8082                	ret

00000000800018b8 <switchkvm>:
    800018b8:	1141                	add	sp,sp,-16
    800018ba:	e406                	sd	ra,8(sp)
    800018bc:	e022                	sd	s0,0(sp)
    800018be:	0800                	add	s0,sp,16
    800018c0:	fffff097          	auipc	ra,0xfffff
    800018c4:	32c080e7          	jalr	812(ra) # 80000bec <push_off>
    800018c8:	0000a797          	auipc	a5,0xa
    800018cc:	bc87b783          	ld	a5,-1080(a5) # 8000b490 <kernel_pagetable>
    800018d0:	83b1                	srl	a5,a5,0xc
    800018d2:	577d                	li	a4,-1
    800018d4:	177e                	sll	a4,a4,0x3f
    800018d6:	8fd9                	or	a5,a5,a4
    800018d8:	18079073          	csrw	satp,a5
    800018dc:	12000073          	sfence.vma
    800018e0:	fffff097          	auipc	ra,0xfffff
    800018e4:	3ac080e7          	jalr	940(ra) # 80000c8c <pop_off>
    800018e8:	60a2                	ld	ra,8(sp)
    800018ea:	6402                	ld	s0,0(sp)
    800018ec:	0141                	add	sp,sp,16
    800018ee:	8082                	ret

00000000800018f0 <proc_mapstacks>:
    800018f0:	7139                	add	sp,sp,-64
    800018f2:	fc06                	sd	ra,56(sp)
    800018f4:	f822                	sd	s0,48(sp)
    800018f6:	f426                	sd	s1,40(sp)
    800018f8:	f04a                	sd	s2,32(sp)
    800018fa:	ec4e                	sd	s3,24(sp)
    800018fc:	e852                	sd	s4,16(sp)
    800018fe:	e456                	sd	s5,8(sp)
    80001900:	e05a                	sd	s6,0(sp)
    80001902:	0080                	add	s0,sp,64
    80001904:	8a2a                	mv	s4,a0
    80001906:	00012497          	auipc	s1,0x12
    8000190a:	23a48493          	add	s1,s1,570 # 80013b40 <proc>
    8000190e:	8b26                	mv	s6,s1
    80001910:	00874937          	lui	s2,0x874
    80001914:	ecb90913          	add	s2,s2,-309 # 873ecb <_entry-0x7f78c135>
    80001918:	0932                	sll	s2,s2,0xc
    8000191a:	de390913          	add	s2,s2,-541
    8000191e:	093a                	sll	s2,s2,0xe
    80001920:	13590913          	add	s2,s2,309
    80001924:	0932                	sll	s2,s2,0xc
    80001926:	21d90913          	add	s2,s2,541
    8000192a:	040009b7          	lui	s3,0x4000
    8000192e:	19fd                	add	s3,s3,-1 # 3ffffff <_entry-0x7c000001>
    80001930:	09b2                	sll	s3,s3,0xc
    80001932:	00019a97          	auipc	s5,0x19
    80001936:	c0ea8a93          	add	s5,s5,-1010 # 8001a540 <tickslock>
    8000193a:	fffff097          	auipc	ra,0xfffff
    8000193e:	20e080e7          	jalr	526(ra) # 80000b48 <kalloc>
    80001942:	862a                	mv	a2,a0
    80001944:	c121                	beqz	a0,80001984 <proc_mapstacks+0x94>
    80001946:	416485b3          	sub	a1,s1,s6
    8000194a:	858d                	sra	a1,a1,0x3
    8000194c:	032585b3          	mul	a1,a1,s2
    80001950:	2585                	addw	a1,a1,1
    80001952:	00d5959b          	sllw	a1,a1,0xd
    80001956:	4719                	li	a4,6
    80001958:	6685                	lui	a3,0x1
    8000195a:	40b985b3          	sub	a1,s3,a1
    8000195e:	8552                	mv	a0,s4
    80001960:	00000097          	auipc	ra,0x0
    80001964:	838080e7          	jalr	-1992(ra) # 80001198 <kvmmap>
    80001968:	1a848493          	add	s1,s1,424
    8000196c:	fd5497e3          	bne	s1,s5,8000193a <proc_mapstacks+0x4a>
    80001970:	70e2                	ld	ra,56(sp)
    80001972:	7442                	ld	s0,48(sp)
    80001974:	74a2                	ld	s1,40(sp)
    80001976:	7902                	ld	s2,32(sp)
    80001978:	69e2                	ld	s3,24(sp)
    8000197a:	6a42                	ld	s4,16(sp)
    8000197c:	6aa2                	ld	s5,8(sp)
    8000197e:	6b02                	ld	s6,0(sp)
    80001980:	6121                	add	sp,sp,64
    80001982:	8082                	ret
    80001984:	00007517          	auipc	a0,0x7
    80001988:	84450513          	add	a0,a0,-1980 # 800081c8 <digits+0x198>
    8000198c:	fffff097          	auipc	ra,0xfffff
    80001990:	bd4080e7          	jalr	-1068(ra) # 80000560 <panic>

0000000080001994 <procinit>:
    80001994:	715d                	add	sp,sp,-80
    80001996:	e486                	sd	ra,72(sp)
    80001998:	e0a2                	sd	s0,64(sp)
    8000199a:	fc26                	sd	s1,56(sp)
    8000199c:	f84a                	sd	s2,48(sp)
    8000199e:	f44e                	sd	s3,40(sp)
    800019a0:	f052                	sd	s4,32(sp)
    800019a2:	ec56                	sd	s5,24(sp)
    800019a4:	e85a                	sd	s6,16(sp)
    800019a6:	e45e                	sd	s7,8(sp)
    800019a8:	0880                	add	s0,sp,80
    800019aa:	00007597          	auipc	a1,0x7
    800019ae:	82658593          	add	a1,a1,-2010 # 800081d0 <digits+0x1a0>
    800019b2:	00012517          	auipc	a0,0x12
    800019b6:	d5e50513          	add	a0,a0,-674 # 80013710 <pid_lock>
    800019ba:	fffff097          	auipc	ra,0xfffff
    800019be:	1ee080e7          	jalr	494(ra) # 80000ba8 <initlock>
    800019c2:	00007597          	auipc	a1,0x7
    800019c6:	81658593          	add	a1,a1,-2026 # 800081d8 <digits+0x1a8>
    800019ca:	00012517          	auipc	a0,0x12
    800019ce:	d5e50513          	add	a0,a0,-674 # 80013728 <wait_lock>
    800019d2:	fffff097          	auipc	ra,0xfffff
    800019d6:	1d6080e7          	jalr	470(ra) # 80000ba8 <initlock>
    800019da:	00012497          	auipc	s1,0x12
    800019de:	16648493          	add	s1,s1,358 # 80013b40 <proc>
    800019e2:	00007b97          	auipc	s7,0x7
    800019e6:	806b8b93          	add	s7,s7,-2042 # 800081e8 <digits+0x1b8>
    800019ea:	8b26                	mv	s6,s1
    800019ec:	00874937          	lui	s2,0x874
    800019f0:	ecb90913          	add	s2,s2,-309 # 873ecb <_entry-0x7f78c135>
    800019f4:	0932                	sll	s2,s2,0xc
    800019f6:	de390913          	add	s2,s2,-541
    800019fa:	093a                	sll	s2,s2,0xe
    800019fc:	13590913          	add	s2,s2,309
    80001a00:	0932                	sll	s2,s2,0xc
    80001a02:	21d90913          	add	s2,s2,541
    80001a06:	040009b7          	lui	s3,0x4000
    80001a0a:	19fd                	add	s3,s3,-1 # 3ffffff <_entry-0x7c000001>
    80001a0c:	09b2                	sll	s3,s3,0xc
    80001a0e:	00019a97          	auipc	s5,0x19
    80001a12:	b4aa8a93          	add	s5,s5,-1206 # 8001a558 <syscall_count>
    80001a16:	00019a17          	auipc	s4,0x19
    80001a1a:	b2aa0a13          	add	s4,s4,-1238 # 8001a540 <tickslock>
    80001a1e:	85de                	mv	a1,s7
    80001a20:	8526                	mv	a0,s1
    80001a22:	fffff097          	auipc	ra,0xfffff
    80001a26:	186080e7          	jalr	390(ra) # 80000ba8 <initlock>
    80001a2a:	0404a623          	sw	zero,76(s1)
    80001a2e:	416487b3          	sub	a5,s1,s6
    80001a32:	878d                	sra	a5,a5,0x3
    80001a34:	032787b3          	mul	a5,a5,s2
    80001a38:	2785                	addw	a5,a5,1
    80001a3a:	00d7979b          	sllw	a5,a5,0xd
    80001a3e:	40f987b3          	sub	a5,s3,a5
    80001a42:	f8bc                	sd	a5,112(s1)
    80001a44:	10000613          	li	a2,256
    80001a48:	4581                	li	a1,0
    80001a4a:	8556                	mv	a0,s5
    80001a4c:	fffff097          	auipc	ra,0xfffff
    80001a50:	2e8080e7          	jalr	744(ra) # 80000d34 <memset>
    80001a54:	1a848493          	add	s1,s1,424
    80001a58:	fd4493e3          	bne	s1,s4,80001a1e <procinit+0x8a>
    80001a5c:	60a6                	ld	ra,72(sp)
    80001a5e:	6406                	ld	s0,64(sp)
    80001a60:	74e2                	ld	s1,56(sp)
    80001a62:	7942                	ld	s2,48(sp)
    80001a64:	79a2                	ld	s3,40(sp)
    80001a66:	7a02                	ld	s4,32(sp)
    80001a68:	6ae2                	ld	s5,24(sp)
    80001a6a:	6b42                	ld	s6,16(sp)
    80001a6c:	6ba2                	ld	s7,8(sp)
    80001a6e:	6161                	add	sp,sp,80
    80001a70:	8082                	ret

0000000080001a72 <cpuid>:
    80001a72:	1141                	add	sp,sp,-16
    80001a74:	e422                	sd	s0,8(sp)
    80001a76:	0800                	add	s0,sp,16
    80001a78:	8512                	mv	a0,tp
    80001a7a:	2501                	sext.w	a0,a0
    80001a7c:	6422                	ld	s0,8(sp)
    80001a7e:	0141                	add	sp,sp,16
    80001a80:	8082                	ret

0000000080001a82 <mycpu>:
    80001a82:	1141                	add	sp,sp,-16
    80001a84:	e422                	sd	s0,8(sp)
    80001a86:	0800                	add	s0,sp,16
    80001a88:	8792                	mv	a5,tp
    80001a8a:	2781                	sext.w	a5,a5
    80001a8c:	079e                	sll	a5,a5,0x7
    80001a8e:	00012517          	auipc	a0,0x12
    80001a92:	cb250513          	add	a0,a0,-846 # 80013740 <cpus>
    80001a96:	953e                	add	a0,a0,a5
    80001a98:	6422                	ld	s0,8(sp)
    80001a9a:	0141                	add	sp,sp,16
    80001a9c:	8082                	ret

0000000080001a9e <myproc>:
    80001a9e:	1101                	add	sp,sp,-32
    80001aa0:	ec06                	sd	ra,24(sp)
    80001aa2:	e822                	sd	s0,16(sp)
    80001aa4:	e426                	sd	s1,8(sp)
    80001aa6:	1000                	add	s0,sp,32
    80001aa8:	fffff097          	auipc	ra,0xfffff
    80001aac:	144080e7          	jalr	324(ra) # 80000bec <push_off>
    80001ab0:	8792                	mv	a5,tp
    80001ab2:	2781                	sext.w	a5,a5
    80001ab4:	079e                	sll	a5,a5,0x7
    80001ab6:	00012717          	auipc	a4,0x12
    80001aba:	c5a70713          	add	a4,a4,-934 # 80013710 <pid_lock>
    80001abe:	97ba                	add	a5,a5,a4
    80001ac0:	7b84                	ld	s1,48(a5)
    80001ac2:	fffff097          	auipc	ra,0xfffff
    80001ac6:	1ca080e7          	jalr	458(ra) # 80000c8c <pop_off>
    80001aca:	8526                	mv	a0,s1
    80001acc:	60e2                	ld	ra,24(sp)
    80001ace:	6442                	ld	s0,16(sp)
    80001ad0:	64a2                	ld	s1,8(sp)
    80001ad2:	6105                	add	sp,sp,32
    80001ad4:	8082                	ret

0000000080001ad6 <forkret>:
    80001ad6:	1141                	add	sp,sp,-16
    80001ad8:	e406                	sd	ra,8(sp)
    80001ada:	e022                	sd	s0,0(sp)
    80001adc:	0800                	add	s0,sp,16
    80001ade:	00000097          	auipc	ra,0x0
    80001ae2:	fc0080e7          	jalr	-64(ra) # 80001a9e <myproc>
    80001ae6:	fffff097          	auipc	ra,0xfffff
    80001aea:	206080e7          	jalr	518(ra) # 80000cec <release>
    80001aee:	0000a797          	auipc	a5,0xa
    80001af2:	9227a783          	lw	a5,-1758(a5) # 8000b410 <first.1>
    80001af6:	eb89                	bnez	a5,80001b08 <forkret+0x32>
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	302080e7          	jalr	770(ra) # 80002dfa <usertrapret>
    80001b00:	60a2                	ld	ra,8(sp)
    80001b02:	6402                	ld	s0,0(sp)
    80001b04:	0141                	add	sp,sp,16
    80001b06:	8082                	ret
    80001b08:	0000a797          	auipc	a5,0xa
    80001b0c:	9007a423          	sw	zero,-1784(a5) # 8000b410 <first.1>
    80001b10:	4505                	li	a0,1
    80001b12:	00002097          	auipc	ra,0x2
    80001b16:	258080e7          	jalr	600(ra) # 80003d6a <fsinit>
    80001b1a:	bff9                	j	80001af8 <forkret+0x22>

0000000080001b1c <allocpid>:
    80001b1c:	1101                	add	sp,sp,-32
    80001b1e:	ec06                	sd	ra,24(sp)
    80001b20:	e822                	sd	s0,16(sp)
    80001b22:	e426                	sd	s1,8(sp)
    80001b24:	e04a                	sd	s2,0(sp)
    80001b26:	1000                	add	s0,sp,32
    80001b28:	00012917          	auipc	s2,0x12
    80001b2c:	be890913          	add	s2,s2,-1048 # 80013710 <pid_lock>
    80001b30:	854a                	mv	a0,s2
    80001b32:	fffff097          	auipc	ra,0xfffff
    80001b36:	106080e7          	jalr	262(ra) # 80000c38 <acquire>
    80001b3a:	0000a797          	auipc	a5,0xa
    80001b3e:	8de78793          	add	a5,a5,-1826 # 8000b418 <nextpid>
    80001b42:	4384                	lw	s1,0(a5)
    80001b44:	0014871b          	addw	a4,s1,1
    80001b48:	c398                	sw	a4,0(a5)
    80001b4a:	854a                	mv	a0,s2
    80001b4c:	fffff097          	auipc	ra,0xfffff
    80001b50:	1a0080e7          	jalr	416(ra) # 80000cec <release>
    80001b54:	8526                	mv	a0,s1
    80001b56:	60e2                	ld	ra,24(sp)
    80001b58:	6442                	ld	s0,16(sp)
    80001b5a:	64a2                	ld	s1,8(sp)
    80001b5c:	6902                	ld	s2,0(sp)
    80001b5e:	6105                	add	sp,sp,32
    80001b60:	8082                	ret

0000000080001b62 <proc_pagetable>:
    80001b62:	1101                	add	sp,sp,-32
    80001b64:	ec06                	sd	ra,24(sp)
    80001b66:	e822                	sd	s0,16(sp)
    80001b68:	e426                	sd	s1,8(sp)
    80001b6a:	e04a                	sd	s2,0(sp)
    80001b6c:	1000                	add	s0,sp,32
    80001b6e:	892a                	mv	s2,a0
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	822080e7          	jalr	-2014(ra) # 80001392 <uvmcreate>
    80001b78:	84aa                	mv	s1,a0
    80001b7a:	c121                	beqz	a0,80001bba <proc_pagetable+0x58>
    80001b7c:	4729                	li	a4,10
    80001b7e:	00005697          	auipc	a3,0x5
    80001b82:	48268693          	add	a3,a3,1154 # 80007000 <_trampoline>
    80001b86:	6605                	lui	a2,0x1
    80001b88:	040005b7          	lui	a1,0x4000
    80001b8c:	15fd                	add	a1,a1,-1 # 3ffffff <_entry-0x7c000001>
    80001b8e:	05b2                	sll	a1,a1,0xc
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	568080e7          	jalr	1384(ra) # 800010f8 <mappages>
    80001b98:	02054863          	bltz	a0,80001bc8 <proc_pagetable+0x66>
    80001b9c:	4719                	li	a4,6
    80001b9e:	08893683          	ld	a3,136(s2)
    80001ba2:	6605                	lui	a2,0x1
    80001ba4:	020005b7          	lui	a1,0x2000
    80001ba8:	15fd                	add	a1,a1,-1 # 1ffffff <_entry-0x7e000001>
    80001baa:	05b6                	sll	a1,a1,0xd
    80001bac:	8526                	mv	a0,s1
    80001bae:	fffff097          	auipc	ra,0xfffff
    80001bb2:	54a080e7          	jalr	1354(ra) # 800010f8 <mappages>
    80001bb6:	02054163          	bltz	a0,80001bd8 <proc_pagetable+0x76>
    80001bba:	8526                	mv	a0,s1
    80001bbc:	60e2                	ld	ra,24(sp)
    80001bbe:	6442                	ld	s0,16(sp)
    80001bc0:	64a2                	ld	s1,8(sp)
    80001bc2:	6902                	ld	s2,0(sp)
    80001bc4:	6105                	add	sp,sp,32
    80001bc6:	8082                	ret
    80001bc8:	4581                	li	a1,0
    80001bca:	8526                	mv	a0,s1
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	9d8080e7          	jalr	-1576(ra) # 800015a4 <uvmfree>
    80001bd4:	4481                	li	s1,0
    80001bd6:	b7d5                	j	80001bba <proc_pagetable+0x58>
    80001bd8:	4681                	li	a3,0
    80001bda:	4605                	li	a2,1
    80001bdc:	040005b7          	lui	a1,0x4000
    80001be0:	15fd                	add	a1,a1,-1 # 3ffffff <_entry-0x7c000001>
    80001be2:	05b2                	sll	a1,a1,0xc
    80001be4:	8526                	mv	a0,s1
    80001be6:	fffff097          	auipc	ra,0xfffff
    80001bea:	6d8080e7          	jalr	1752(ra) # 800012be <uvmunmap>
    80001bee:	4581                	li	a1,0
    80001bf0:	8526                	mv	a0,s1
    80001bf2:	00000097          	auipc	ra,0x0
    80001bf6:	9b2080e7          	jalr	-1614(ra) # 800015a4 <uvmfree>
    80001bfa:	4481                	li	s1,0
    80001bfc:	bf7d                	j	80001bba <proc_pagetable+0x58>

0000000080001bfe <proc_freepagetable>:
    80001bfe:	1101                	add	sp,sp,-32
    80001c00:	ec06                	sd	ra,24(sp)
    80001c02:	e822                	sd	s0,16(sp)
    80001c04:	e426                	sd	s1,8(sp)
    80001c06:	e04a                	sd	s2,0(sp)
    80001c08:	1000                	add	s0,sp,32
    80001c0a:	84aa                	mv	s1,a0
    80001c0c:	892e                	mv	s2,a1
    80001c0e:	4681                	li	a3,0
    80001c10:	4605                	li	a2,1
    80001c12:	040005b7          	lui	a1,0x4000
    80001c16:	15fd                	add	a1,a1,-1 # 3ffffff <_entry-0x7c000001>
    80001c18:	05b2                	sll	a1,a1,0xc
    80001c1a:	fffff097          	auipc	ra,0xfffff
    80001c1e:	6a4080e7          	jalr	1700(ra) # 800012be <uvmunmap>
    80001c22:	4681                	li	a3,0
    80001c24:	4605                	li	a2,1
    80001c26:	020005b7          	lui	a1,0x2000
    80001c2a:	15fd                	add	a1,a1,-1 # 1ffffff <_entry-0x7e000001>
    80001c2c:	05b6                	sll	a1,a1,0xd
    80001c2e:	8526                	mv	a0,s1
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	68e080e7          	jalr	1678(ra) # 800012be <uvmunmap>
    80001c38:	85ca                	mv	a1,s2
    80001c3a:	8526                	mv	a0,s1
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	968080e7          	jalr	-1688(ra) # 800015a4 <uvmfree>
    80001c44:	60e2                	ld	ra,24(sp)
    80001c46:	6442                	ld	s0,16(sp)
    80001c48:	64a2                	ld	s1,8(sp)
    80001c4a:	6902                	ld	s2,0(sp)
    80001c4c:	6105                	add	sp,sp,32
    80001c4e:	8082                	ret

0000000080001c50 <freeproc>:
    80001c50:	1101                	add	sp,sp,-32
    80001c52:	ec06                	sd	ra,24(sp)
    80001c54:	e822                	sd	s0,16(sp)
    80001c56:	e426                	sd	s1,8(sp)
    80001c58:	1000                	add	s0,sp,32
    80001c5a:	84aa                	mv	s1,a0
    80001c5c:	6548                	ld	a0,136(a0)
    80001c5e:	c509                	beqz	a0,80001c68 <freeproc+0x18>
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	dea080e7          	jalr	-534(ra) # 80000a4a <kfree>
    80001c68:	0804b423          	sd	zero,136(s1)
    80001c6c:	60c8                	ld	a0,128(s1)
    80001c6e:	c511                	beqz	a0,80001c7a <freeproc+0x2a>
    80001c70:	7cac                	ld	a1,120(s1)
    80001c72:	00000097          	auipc	ra,0x0
    80001c76:	f8c080e7          	jalr	-116(ra) # 80001bfe <proc_freepagetable>
    80001c7a:	0804b023          	sd	zero,128(s1)
    80001c7e:	0604bc23          	sd	zero,120(s1)
    80001c82:	0604a023          	sw	zero,96(s1)
    80001c86:	0604b423          	sd	zero,104(s1)
    80001c8a:	18048423          	sb	zero,392(s1)
    80001c8e:	0404b823          	sd	zero,80(s1)
    80001c92:	0404ac23          	sw	zero,88(s1)
    80001c96:	0404ae23          	sw	zero,92(s1)
    80001c9a:	0404a623          	sw	zero,76(s1)
    80001c9e:	60e2                	ld	ra,24(sp)
    80001ca0:	6442                	ld	s0,16(sp)
    80001ca2:	64a2                	ld	s1,8(sp)
    80001ca4:	6105                	add	sp,sp,32
    80001ca6:	8082                	ret

0000000080001ca8 <allocproc>:
    80001ca8:	1101                	add	sp,sp,-32
    80001caa:	ec06                	sd	ra,24(sp)
    80001cac:	e822                	sd	s0,16(sp)
    80001cae:	e426                	sd	s1,8(sp)
    80001cb0:	e04a                	sd	s2,0(sp)
    80001cb2:	1000                	add	s0,sp,32
    80001cb4:	00012497          	auipc	s1,0x12
    80001cb8:	e8c48493          	add	s1,s1,-372 # 80013b40 <proc>
    80001cbc:	00019917          	auipc	s2,0x19
    80001cc0:	88490913          	add	s2,s2,-1916 # 8001a540 <tickslock>
    80001cc4:	8526                	mv	a0,s1
    80001cc6:	fffff097          	auipc	ra,0xfffff
    80001cca:	f72080e7          	jalr	-142(ra) # 80000c38 <acquire>
    80001cce:	44fc                	lw	a5,76(s1)
    80001cd0:	cf81                	beqz	a5,80001ce8 <allocproc+0x40>
    80001cd2:	8526                	mv	a0,s1
    80001cd4:	fffff097          	auipc	ra,0xfffff
    80001cd8:	018080e7          	jalr	24(ra) # 80000cec <release>
    80001cdc:	1a848493          	add	s1,s1,424
    80001ce0:	ff2492e3          	bne	s1,s2,80001cc4 <allocproc+0x1c>
    80001ce4:	4481                	li	s1,0
    80001ce6:	a8a5                	j	80001d5e <allocproc+0xb6>
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	e34080e7          	jalr	-460(ra) # 80001b1c <allocpid>
    80001cf0:	d0a8                	sw	a0,96(s1)
    80001cf2:	4785                	li	a5,1
    80001cf4:	c4fc                	sw	a5,76(s1)
    80001cf6:	fffff097          	auipc	ra,0xfffff
    80001cfa:	e52080e7          	jalr	-430(ra) # 80000b48 <kalloc>
    80001cfe:	892a                	mv	s2,a0
    80001d00:	e4c8                	sd	a0,136(s1)
    80001d02:	c52d                	beqz	a0,80001d6c <allocproc+0xc4>
    80001d04:	8526                	mv	a0,s1
    80001d06:	00000097          	auipc	ra,0x0
    80001d0a:	e5c080e7          	jalr	-420(ra) # 80001b62 <proc_pagetable>
    80001d0e:	892a                	mv	s2,a0
    80001d10:	e0c8                	sd	a0,128(s1)
    80001d12:	c92d                	beqz	a0,80001d84 <allocproc+0xdc>
    80001d14:	07000613          	li	a2,112
    80001d18:	4581                	li	a1,0
    80001d1a:	09048513          	add	a0,s1,144
    80001d1e:	fffff097          	auipc	ra,0xfffff
    80001d22:	016080e7          	jalr	22(ra) # 80000d34 <memset>
    80001d26:	00000797          	auipc	a5,0x0
    80001d2a:	db078793          	add	a5,a5,-592 # 80001ad6 <forkret>
    80001d2e:	e8dc                	sd	a5,144(s1)
    80001d30:	78bc                	ld	a5,112(s1)
    80001d32:	6705                	lui	a4,0x1
    80001d34:	97ba                	add	a5,a5,a4
    80001d36:	ecdc                	sd	a5,152(s1)
    80001d38:	1804ac23          	sw	zero,408(s1)
    80001d3c:	1a04a023          	sw	zero,416(s1)
    80001d40:	00009797          	auipc	a5,0x9
    80001d44:	7607a783          	lw	a5,1888(a5) # 8000b4a0 <ticks>
    80001d48:	18f4ae23          	sw	a5,412(s1)
    80001d4c:	4705                	li	a4,1
    80001d4e:	dcd8                	sw	a4,60(s1)
    80001d50:	0404a223          	sw	zero,68(s1)
    80001d54:	c0bc                	sw	a5,64(s1)
    80001d56:	0204ac23          	sw	zero,56(s1)
    80001d5a:	0404a423          	sw	zero,72(s1)
    80001d5e:	8526                	mv	a0,s1
    80001d60:	60e2                	ld	ra,24(sp)
    80001d62:	6442                	ld	s0,16(sp)
    80001d64:	64a2                	ld	s1,8(sp)
    80001d66:	6902                	ld	s2,0(sp)
    80001d68:	6105                	add	sp,sp,32
    80001d6a:	8082                	ret
    80001d6c:	8526                	mv	a0,s1
    80001d6e:	00000097          	auipc	ra,0x0
    80001d72:	ee2080e7          	jalr	-286(ra) # 80001c50 <freeproc>
    80001d76:	8526                	mv	a0,s1
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	f74080e7          	jalr	-140(ra) # 80000cec <release>
    80001d80:	84ca                	mv	s1,s2
    80001d82:	bff1                	j	80001d5e <allocproc+0xb6>
    80001d84:	8526                	mv	a0,s1
    80001d86:	00000097          	auipc	ra,0x0
    80001d8a:	eca080e7          	jalr	-310(ra) # 80001c50 <freeproc>
    80001d8e:	8526                	mv	a0,s1
    80001d90:	fffff097          	auipc	ra,0xfffff
    80001d94:	f5c080e7          	jalr	-164(ra) # 80000cec <release>
    80001d98:	84ca                	mv	s1,s2
    80001d9a:	b7d1                	j	80001d5e <allocproc+0xb6>

0000000080001d9c <userinit>:
    80001d9c:	1101                	add	sp,sp,-32
    80001d9e:	ec06                	sd	ra,24(sp)
    80001da0:	e822                	sd	s0,16(sp)
    80001da2:	e426                	sd	s1,8(sp)
    80001da4:	1000                	add	s0,sp,32
    80001da6:	00000097          	auipc	ra,0x0
    80001daa:	f02080e7          	jalr	-254(ra) # 80001ca8 <allocproc>
    80001dae:	84aa                	mv	s1,a0
    80001db0:	00009797          	auipc	a5,0x9
    80001db4:	6ea7b423          	sd	a0,1768(a5) # 8000b498 <initproc>
    80001db8:	04052223          	sw	zero,68(a0)
    80001dbc:	03400613          	li	a2,52
    80001dc0:	00009597          	auipc	a1,0x9
    80001dc4:	66058593          	add	a1,a1,1632 # 8000b420 <initcode>
    80001dc8:	6148                	ld	a0,128(a0)
    80001dca:	fffff097          	auipc	ra,0xfffff
    80001dce:	5f6080e7          	jalr	1526(ra) # 800013c0 <uvmfirst>
    80001dd2:	6785                	lui	a5,0x1
    80001dd4:	fcbc                	sd	a5,120(s1)
    80001dd6:	64d8                	ld	a4,136(s1)
    80001dd8:	00073c23          	sd	zero,24(a4) # 1018 <_entry-0x7fffefe8>
    80001ddc:	64d8                	ld	a4,136(s1)
    80001dde:	fb1c                	sd	a5,48(a4)
    80001de0:	4641                	li	a2,16
    80001de2:	00006597          	auipc	a1,0x6
    80001de6:	40e58593          	add	a1,a1,1038 # 800081f0 <digits+0x1c0>
    80001dea:	18848513          	add	a0,s1,392
    80001dee:	fffff097          	auipc	ra,0xfffff
    80001df2:	088080e7          	jalr	136(ra) # 80000e76 <safestrcpy>
    80001df6:	00006517          	auipc	a0,0x6
    80001dfa:	40a50513          	add	a0,a0,1034 # 80008200 <digits+0x1d0>
    80001dfe:	00003097          	auipc	ra,0x3
    80001e02:	9be080e7          	jalr	-1602(ra) # 800047bc <namei>
    80001e06:	18a4b023          	sd	a0,384(s1)
    80001e0a:	478d                	li	a5,3
    80001e0c:	c4fc                	sw	a5,76(s1)
    80001e0e:	8526                	mv	a0,s1
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	edc080e7          	jalr	-292(ra) # 80000cec <release>
    80001e18:	60e2                	ld	ra,24(sp)
    80001e1a:	6442                	ld	s0,16(sp)
    80001e1c:	64a2                	ld	s1,8(sp)
    80001e1e:	6105                	add	sp,sp,32
    80001e20:	8082                	ret

0000000080001e22 <growproc>:
    80001e22:	1101                	add	sp,sp,-32
    80001e24:	ec06                	sd	ra,24(sp)
    80001e26:	e822                	sd	s0,16(sp)
    80001e28:	e426                	sd	s1,8(sp)
    80001e2a:	e04a                	sd	s2,0(sp)
    80001e2c:	1000                	add	s0,sp,32
    80001e2e:	892a                	mv	s2,a0
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	c6e080e7          	jalr	-914(ra) # 80001a9e <myproc>
    80001e38:	84aa                	mv	s1,a0
    80001e3a:	7d2c                	ld	a1,120(a0)
    80001e3c:	01204c63          	bgtz	s2,80001e54 <growproc+0x32>
    80001e40:	02094663          	bltz	s2,80001e6c <growproc+0x4a>
    80001e44:	fcac                	sd	a1,120(s1)
    80001e46:	4501                	li	a0,0
    80001e48:	60e2                	ld	ra,24(sp)
    80001e4a:	6442                	ld	s0,16(sp)
    80001e4c:	64a2                	ld	s1,8(sp)
    80001e4e:	6902                	ld	s2,0(sp)
    80001e50:	6105                	add	sp,sp,32
    80001e52:	8082                	ret
    80001e54:	4691                	li	a3,4
    80001e56:	00b90633          	add	a2,s2,a1
    80001e5a:	6148                	ld	a0,128(a0)
    80001e5c:	fffff097          	auipc	ra,0xfffff
    80001e60:	61e080e7          	jalr	1566(ra) # 8000147a <uvmalloc>
    80001e64:	85aa                	mv	a1,a0
    80001e66:	fd79                	bnez	a0,80001e44 <growproc+0x22>
    80001e68:	557d                	li	a0,-1
    80001e6a:	bff9                	j	80001e48 <growproc+0x26>
    80001e6c:	00b90633          	add	a2,s2,a1
    80001e70:	6148                	ld	a0,128(a0)
    80001e72:	fffff097          	auipc	ra,0xfffff
    80001e76:	5c0080e7          	jalr	1472(ra) # 80001432 <uvmdealloc>
    80001e7a:	85aa                	mv	a1,a0
    80001e7c:	b7e1                	j	80001e44 <growproc+0x22>

0000000080001e7e <fork>:
    80001e7e:	7139                	add	sp,sp,-64
    80001e80:	fc06                	sd	ra,56(sp)
    80001e82:	f822                	sd	s0,48(sp)
    80001e84:	f04a                	sd	s2,32(sp)
    80001e86:	e456                	sd	s5,8(sp)
    80001e88:	0080                	add	s0,sp,64
    80001e8a:	00000097          	auipc	ra,0x0
    80001e8e:	c14080e7          	jalr	-1004(ra) # 80001a9e <myproc>
    80001e92:	8aaa                	mv	s5,a0
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	e14080e7          	jalr	-492(ra) # 80001ca8 <allocproc>
    80001e9c:	12050063          	beqz	a0,80001fbc <fork+0x13e>
    80001ea0:	e852                	sd	s4,16(sp)
    80001ea2:	8a2a                	mv	s4,a0
    80001ea4:	078ab603          	ld	a2,120(s5)
    80001ea8:	614c                	ld	a1,128(a0)
    80001eaa:	080ab503          	ld	a0,128(s5)
    80001eae:	fffff097          	auipc	ra,0xfffff
    80001eb2:	730080e7          	jalr	1840(ra) # 800015de <uvmcopy>
    80001eb6:	04054a63          	bltz	a0,80001f0a <fork+0x8c>
    80001eba:	f426                	sd	s1,40(sp)
    80001ebc:	ec4e                	sd	s3,24(sp)
    80001ebe:	078ab783          	ld	a5,120(s5)
    80001ec2:	06fa3c23          	sd	a5,120(s4)
    80001ec6:	088ab683          	ld	a3,136(s5)
    80001eca:	87b6                	mv	a5,a3
    80001ecc:	088a3703          	ld	a4,136(s4)
    80001ed0:	12068693          	add	a3,a3,288
    80001ed4:	0007b803          	ld	a6,0(a5) # 1000 <_entry-0x7ffff000>
    80001ed8:	6788                	ld	a0,8(a5)
    80001eda:	6b8c                	ld	a1,16(a5)
    80001edc:	6f90                	ld	a2,24(a5)
    80001ede:	01073023          	sd	a6,0(a4)
    80001ee2:	e708                	sd	a0,8(a4)
    80001ee4:	eb0c                	sd	a1,16(a4)
    80001ee6:	ef10                	sd	a2,24(a4)
    80001ee8:	02078793          	add	a5,a5,32
    80001eec:	02070713          	add	a4,a4,32
    80001ef0:	fed792e3          	bne	a5,a3,80001ed4 <fork+0x56>
    80001ef4:	088a3783          	ld	a5,136(s4)
    80001ef8:	0607b823          	sd	zero,112(a5)
    80001efc:	100a8493          	add	s1,s5,256
    80001f00:	100a0913          	add	s2,s4,256
    80001f04:	180a8993          	add	s3,s5,384
    80001f08:	a015                	j	80001f2c <fork+0xae>
    80001f0a:	8552                	mv	a0,s4
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	d44080e7          	jalr	-700(ra) # 80001c50 <freeproc>
    80001f14:	8552                	mv	a0,s4
    80001f16:	fffff097          	auipc	ra,0xfffff
    80001f1a:	dd6080e7          	jalr	-554(ra) # 80000cec <release>
    80001f1e:	597d                	li	s2,-1
    80001f20:	6a42                	ld	s4,16(sp)
    80001f22:	a071                	j	80001fae <fork+0x130>
    80001f24:	04a1                	add	s1,s1,8
    80001f26:	0921                	add	s2,s2,8
    80001f28:	01348b63          	beq	s1,s3,80001f3e <fork+0xc0>
    80001f2c:	6088                	ld	a0,0(s1)
    80001f2e:	d97d                	beqz	a0,80001f24 <fork+0xa6>
    80001f30:	00003097          	auipc	ra,0x3
    80001f34:	f04080e7          	jalr	-252(ra) # 80004e34 <filedup>
    80001f38:	00a93023          	sd	a0,0(s2)
    80001f3c:	b7e5                	j	80001f24 <fork+0xa6>
    80001f3e:	180ab503          	ld	a0,384(s5)
    80001f42:	00002097          	auipc	ra,0x2
    80001f46:	06e080e7          	jalr	110(ra) # 80003fb0 <idup>
    80001f4a:	18aa3023          	sd	a0,384(s4)
    80001f4e:	4641                	li	a2,16
    80001f50:	188a8593          	add	a1,s5,392
    80001f54:	188a0513          	add	a0,s4,392
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	f1e080e7          	jalr	-226(ra) # 80000e76 <safestrcpy>
    80001f60:	060a2903          	lw	s2,96(s4)
    80001f64:	8552                	mv	a0,s4
    80001f66:	fffff097          	auipc	ra,0xfffff
    80001f6a:	d86080e7          	jalr	-634(ra) # 80000cec <release>
    80001f6e:	00011497          	auipc	s1,0x11
    80001f72:	7ba48493          	add	s1,s1,1978 # 80013728 <wait_lock>
    80001f76:	8526                	mv	a0,s1
    80001f78:	fffff097          	auipc	ra,0xfffff
    80001f7c:	cc0080e7          	jalr	-832(ra) # 80000c38 <acquire>
    80001f80:	075a3423          	sd	s5,104(s4)
    80001f84:	8526                	mv	a0,s1
    80001f86:	fffff097          	auipc	ra,0xfffff
    80001f8a:	d66080e7          	jalr	-666(ra) # 80000cec <release>
    80001f8e:	8552                	mv	a0,s4
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	ca8080e7          	jalr	-856(ra) # 80000c38 <acquire>
    80001f98:	478d                	li	a5,3
    80001f9a:	04fa2623          	sw	a5,76(s4)
    80001f9e:	8552                	mv	a0,s4
    80001fa0:	fffff097          	auipc	ra,0xfffff
    80001fa4:	d4c080e7          	jalr	-692(ra) # 80000cec <release>
    80001fa8:	74a2                	ld	s1,40(sp)
    80001faa:	69e2                	ld	s3,24(sp)
    80001fac:	6a42                	ld	s4,16(sp)
    80001fae:	854a                	mv	a0,s2
    80001fb0:	70e2                	ld	ra,56(sp)
    80001fb2:	7442                	ld	s0,48(sp)
    80001fb4:	7902                	ld	s2,32(sp)
    80001fb6:	6aa2                	ld	s5,8(sp)
    80001fb8:	6121                	add	sp,sp,64
    80001fba:	8082                	ret
    80001fbc:	597d                	li	s2,-1
    80001fbe:	bfc5                	j	80001fae <fork+0x130>

0000000080001fc0 <mlfq_scheduler>:
    80001fc0:	7119                	add	sp,sp,-128
    80001fc2:	fc86                	sd	ra,120(sp)
    80001fc4:	f8a2                	sd	s0,112(sp)
    80001fc6:	f4a6                	sd	s1,104(sp)
    80001fc8:	f0ca                	sd	s2,96(sp)
    80001fca:	ecce                	sd	s3,88(sp)
    80001fcc:	e8d2                	sd	s4,80(sp)
    80001fce:	e4d6                	sd	s5,72(sp)
    80001fd0:	e0da                	sd	s6,64(sp)
    80001fd2:	fc5e                	sd	s7,56(sp)
    80001fd4:	f862                	sd	s8,48(sp)
    80001fd6:	f466                	sd	s9,40(sp)
    80001fd8:	f06a                	sd	s10,32(sp)
    80001fda:	0100                	add	s0,sp,128
    80001fdc:	81010113          	add	sp,sp,-2032
    80001fe0:	00006517          	auipc	a0,0x6
    80001fe4:	22850513          	add	a0,a0,552 # 80008208 <digits+0x1d8>
    80001fe8:	ffffe097          	auipc	ra,0xffffe
    80001fec:	5c2080e7          	jalr	1474(ra) # 800005aa <printf>
    80001ff0:	8792                	mv	a5,tp
    80001ff2:	2781                	sext.w	a5,a5
    80001ff4:	00779693          	sll	a3,a5,0x7
    80001ff8:	00011717          	auipc	a4,0x11
    80001ffc:	71870713          	add	a4,a4,1816 # 80013710 <pid_lock>
    80002000:	9736                	add	a4,a4,a3
    80002002:	02073823          	sd	zero,48(a4)
    80002006:	777d                	lui	a4,0xfffff
    80002008:	fa070713          	add	a4,a4,-96 # ffffffffffffefa0 <end+0xffffffff7ffd9580>
    8000200c:	9722                	add	a4,a4,s0
    8000200e:	7e072823          	sw	zero,2032(a4)
    80002012:	7e072a23          	sw	zero,2036(a4)
    80002016:	7e072c23          	sw	zero,2040(a4)
    8000201a:	7e072e23          	sw	zero,2044(a4)
    8000201e:	00011717          	auipc	a4,0x11
    80002022:	72a70713          	add	a4,a4,1834 # 80013748 <cpus+0x8>
    80002026:	00e68d33          	add	s10,a3,a4
    8000202a:	00018917          	auipc	s2,0x18
    8000202e:	51690913          	add	s2,s2,1302 # 8001a540 <tickslock>
    80002032:	7a7d                	lui	s4,0xfffff
    80002034:	fa0a0713          	add	a4,s4,-96 # ffffffffffffefa0 <end+0xffffffff7ffd9580>
    80002038:	00870a33          	add	s4,a4,s0
    8000203c:	00011c17          	auipc	s8,0x11
    80002040:	6d4c0c13          	add	s8,s8,1748 # 80013710 <pid_lock>
    80002044:	9c36                	add	s8,s8,a3
    80002046:	aa2d                	j	80002180 <mlfq_scheduler+0x1c0>
    80002048:	00012497          	auipc	s1,0x12
    8000204c:	af848493          	add	s1,s1,-1288 # 80013b40 <proc>
    80002050:	a811                	j	80002064 <mlfq_scheduler+0xa4>
    80002052:	8526                	mv	a0,s1
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	c98080e7          	jalr	-872(ra) # 80000cec <release>
    8000205c:	1a848493          	add	s1,s1,424
    80002060:	09248b63          	beq	s1,s2,800020f6 <mlfq_scheduler+0x136>
    80002064:	8526                	mv	a0,s1
    80002066:	fffff097          	auipc	ra,0xfffff
    8000206a:	bd2080e7          	jalr	-1070(ra) # 80000c38 <acquire>
    8000206e:	44fc                	lw	a5,76(s1)
    80002070:	ff3791e3          	bne	a5,s3,80002052 <mlfq_scheduler+0x92>
    80002074:	0404a223          	sw	zero,68(s1)
    80002078:	bfe9                	j	80002052 <mlfq_scheduler+0x92>
    8000207a:	8526                	mv	a0,s1
    8000207c:	fffff097          	auipc	ra,0xfffff
    80002080:	c70080e7          	jalr	-912(ra) # 80000cec <release>
    80002084:	1a848493          	add	s1,s1,424
    80002088:	03248d63          	beq	s1,s2,800020c2 <mlfq_scheduler+0x102>
    8000208c:	8526                	mv	a0,s1
    8000208e:	fffff097          	auipc	ra,0xfffff
    80002092:	baa080e7          	jalr	-1110(ra) # 80000c38 <acquire>
    80002096:	44fc                	lw	a5,76(s1)
    80002098:	ff3791e3          	bne	a5,s3,8000207a <mlfq_scheduler+0xba>
    8000209c:	40fc                	lw	a5,68(s1)
    8000209e:	00279713          	sll	a4,a5,0x2
    800020a2:	9752                	add	a4,a4,s4
    800020a4:	7f072683          	lw	a3,2032(a4)
    800020a8:	0016861b          	addw	a2,a3,1
    800020ac:	7ec72823          	sw	a2,2032(a4)
    800020b0:	079a                	sll	a5,a5,0x6
    800020b2:	97b6                	add	a5,a5,a3
    800020b4:	078e                	sll	a5,a5,0x3
    800020b6:	fa078793          	add	a5,a5,-96
    800020ba:	97a2                	add	a5,a5,s0
    800020bc:	8097b023          	sd	s1,-2048(a5)
    800020c0:	bf6d                	j	8000207a <mlfq_scheduler+0xba>
    800020c2:	fa0b0793          	add	a5,s6,-96 # fa0 <_entry-0x7ffff060>
    800020c6:	00878733          	add	a4,a5,s0
    800020ca:	4781                	li	a5,0
    800020cc:	4314                	lw	a3,0(a4)
    800020ce:	04d04163          	bgtz	a3,80002110 <mlfq_scheduler+0x150>
    800020d2:	2785                	addw	a5,a5,1
    800020d4:	0711                	add	a4,a4,4
    800020d6:	ff579be3          	bne	a5,s5,800020cc <mlfq_scheduler+0x10c>
    800020da:	100027f3          	csrr	a5,sstatus
    800020de:	0027e793          	or	a5,a5,2
    800020e2:	10079073          	csrw	sstatus,a5
    800020e6:	000ba783          	lw	a5,0(s7)
    800020ea:	03000713          	li	a4,48
    800020ee:	02e7f7bb          	remuw	a5,a5,a4
    800020f2:	2781                	sext.w	a5,a5
    800020f4:	dbb1                	beqz	a5,80002048 <mlfq_scheduler+0x88>
    800020f6:	7e0a2823          	sw	zero,2032(s4)
    800020fa:	7e0a2a23          	sw	zero,2036(s4)
    800020fe:	7e0a2c23          	sw	zero,2040(s4)
    80002102:	7e0a2e23          	sw	zero,2044(s4)
    80002106:	00012497          	auipc	s1,0x12
    8000210a:	a3a48493          	add	s1,s1,-1478 # 80013b40 <proc>
    8000210e:	bfbd                	j	8000208c <mlfq_scheduler+0xcc>
    80002110:	00979713          	sll	a4,a5,0x9
    80002114:	fa070713          	add	a4,a4,-96
    80002118:	9722                	add	a4,a4,s0
    8000211a:	80073483          	ld	s1,-2048(a4)
    8000211e:	fff6859b          	addw	a1,a3,-1
    80002122:	0005871b          	sext.w	a4,a1
    80002126:	02e05a63          	blez	a4,8000215a <mlfq_scheduler+0x19a>
    8000212a:	00979713          	sll	a4,a5,0x9
    8000212e:	757d                	lui	a0,0xfffff
    80002130:	7a050613          	add	a2,a0,1952 # fffffffffffff7a0 <end+0xffffffff7ffd9d80>
    80002134:	9622                	add	a2,a2,s0
    80002136:	963a                	add	a2,a2,a4
    80002138:	ffe6871b          	addw	a4,a3,-2
    8000213c:	1702                	sll	a4,a4,0x20
    8000213e:	9301                	srl	a4,a4,0x20
    80002140:	00679693          	sll	a3,a5,0x6
    80002144:	9736                	add	a4,a4,a3
    80002146:	070e                	sll	a4,a4,0x3
    80002148:	7a850693          	add	a3,a0,1960
    8000214c:	96a2                	add	a3,a3,s0
    8000214e:	9736                	add	a4,a4,a3
    80002150:	6614                	ld	a3,8(a2)
    80002152:	e214                	sd	a3,0(a2)
    80002154:	0621                	add	a2,a2,8 # 1008 <_entry-0x7fffeff8>
    80002156:	fec71de3          	bne	a4,a2,80002150 <mlfq_scheduler+0x190>
    8000215a:	078a                	sll	a5,a5,0x2
    8000215c:	97d2                	add	a5,a5,s4
    8000215e:	7eb7a823          	sw	a1,2032(a5)
    80002162:	dca5                	beqz	s1,800020da <mlfq_scheduler+0x11a>
    80002164:	8526                	mv	a0,s1
    80002166:	fffff097          	auipc	ra,0xfffff
    8000216a:	ad2080e7          	jalr	-1326(ra) # 80000c38 <acquire>
    8000216e:	44f8                	lw	a4,76(s1)
    80002170:	478d                	li	a5,3
    80002172:	02f70163          	beq	a4,a5,80002194 <mlfq_scheduler+0x1d4>
    80002176:	8526                	mv	a0,s1
    80002178:	fffff097          	auipc	ra,0xfffff
    8000217c:	b74080e7          	jalr	-1164(ra) # 80000cec <release>
    80002180:	00009b97          	auipc	s7,0x9
    80002184:	320b8b93          	add	s7,s7,800 # 8000b4a0 <ticks>
    80002188:	498d                	li	s3,3
    8000218a:	7b7d                	lui	s6,0xfffff
    8000218c:	7f0b0b13          	add	s6,s6,2032 # fffffffffffff7f0 <end+0xffffffff7ffd9dd0>
    80002190:	4a91                	li	s5,4
    80002192:	b7a1                	j	800020da <mlfq_scheduler+0x11a>
    80002194:	4791                	li	a5,4
    80002196:	c4fc                	sw	a5,76(s1)
    80002198:	029c3823          	sd	s1,48(s8)
    8000219c:	40f8                	lw	a4,68(s1)
    8000219e:	070a                	sll	a4,a4,0x2
    800021a0:	00009797          	auipc	a5,0x9
    800021a4:	28078793          	add	a5,a5,640 # 8000b420 <initcode>
    800021a8:	97ba                	add	a5,a5,a4
    800021aa:	0387ab83          	lw	s7,56(a5)
    800021ae:	00009c97          	auipc	s9,0x9
    800021b2:	2f2cac83          	lw	s9,754(s9) # 8000b4a0 <ticks>
    800021b6:	00012997          	auipc	s3,0x12
    800021ba:	98a98993          	add	s3,s3,-1654 # 80013b40 <proc>
    800021be:	00009b17          	auipc	s6,0x9
    800021c2:	2e2b0b13          	add	s6,s6,738 # 8000b4a0 <ticks>
    800021c6:	00006a97          	auipc	s5,0x6
    800021ca:	05aa8a93          	add	s5,s5,90 # 80008220 <digits+0x1f0>
    800021ce:	0449a683          	lw	a3,68(s3)
    800021d2:	0609a603          	lw	a2,96(s3)
    800021d6:	000b2583          	lw	a1,0(s6)
    800021da:	8556                	mv	a0,s5
    800021dc:	ffffe097          	auipc	ra,0xffffe
    800021e0:	3ce080e7          	jalr	974(ra) # 800005aa <printf>
    800021e4:	1a898993          	add	s3,s3,424
    800021e8:	ff2993e3          	bne	s3,s2,800021ce <mlfq_scheduler+0x20e>
    800021ec:	09048593          	add	a1,s1,144
    800021f0:	856a                	mv	a0,s10
    800021f2:	00001097          	auipc	ra,0x1
    800021f6:	b5e080e7          	jalr	-1186(ra) # 80002d50 <swtch>
    800021fa:	020c3823          	sd	zero,48(s8)
    800021fe:	00009797          	auipc	a5,0x9
    80002202:	2a27a783          	lw	a5,674(a5) # 8000b4a0 <ticks>
    80002206:	419787bb          	subw	a5,a5,s9
    8000220a:	44b8                	lw	a4,72(s1)
    8000220c:	9fb9                	addw	a5,a5,a4
    8000220e:	0007871b          	sext.w	a4,a5
    80002212:	c4bc                	sw	a5,72(s1)
    80002214:	44fc                	lw	a5,76(s1)
    80002216:	4689                	li	a3,2
    80002218:	00d78b63          	beq	a5,a3,8000222e <mlfq_scheduler+0x26e>
    8000221c:	468d                	li	a3,3
    8000221e:	02d78f63          	beq	a5,a3,8000225c <mlfq_scheduler+0x29c>
    80002222:	4715                	li	a4,5
    80002224:	06e79863          	bne	a5,a4,80002294 <mlfq_scheduler+0x2d4>
    80002228:	0404a423          	sw	zero,72(s1)
    8000222c:	a0a5                	j	80002294 <mlfq_scheduler+0x2d4>
    8000222e:	40fc                	lw	a5,68(s1)
    80002230:	06f05263          	blez	a5,80002294 <mlfq_scheduler+0x2d4>
    80002234:	0404a423          	sw	zero,72(s1)
    80002238:	00279713          	sll	a4,a5,0x2
    8000223c:	9752                	add	a4,a4,s4
    8000223e:	7f072683          	lw	a3,2032(a4)
    80002242:	0016861b          	addw	a2,a3,1
    80002246:	7ec72823          	sw	a2,2032(a4)
    8000224a:	079a                	sll	a5,a5,0x6
    8000224c:	97b6                	add	a5,a5,a3
    8000224e:	078e                	sll	a5,a5,0x3
    80002250:	fa078793          	add	a5,a5,-96
    80002254:	97a2                	add	a5,a5,s0
    80002256:	8097b023          	sd	s1,-2048(a5)
    8000225a:	a82d                	j	80002294 <mlfq_scheduler+0x2d4>
    8000225c:	01774a63          	blt	a4,s7,80002270 <mlfq_scheduler+0x2b0>
    80002260:	0404a423          	sw	zero,72(s1)
    80002264:	40fc                	lw	a5,68(s1)
    80002266:	4709                	li	a4,2
    80002268:	00f74463          	blt	a4,a5,80002270 <mlfq_scheduler+0x2b0>
    8000226c:	2785                	addw	a5,a5,1
    8000226e:	c0fc                	sw	a5,68(s1)
    80002270:	40fc                	lw	a5,68(s1)
    80002272:	00279713          	sll	a4,a5,0x2
    80002276:	9752                	add	a4,a4,s4
    80002278:	7f072683          	lw	a3,2032(a4)
    8000227c:	0016861b          	addw	a2,a3,1
    80002280:	7ec72823          	sw	a2,2032(a4)
    80002284:	079a                	sll	a5,a5,0x6
    80002286:	97b6                	add	a5,a5,a3
    80002288:	078e                	sll	a5,a5,0x3
    8000228a:	fa078793          	add	a5,a5,-96
    8000228e:	97a2                	add	a5,a5,s0
    80002290:	8097b023          	sd	s1,-2048(a5)
    80002294:	8526                	mv	a0,s1
    80002296:	fffff097          	auipc	ra,0xfffff
    8000229a:	a56080e7          	jalr	-1450(ra) # 80000cec <release>
    8000229e:	b5cd                	j	80002180 <mlfq_scheduler+0x1c0>

00000000800022a0 <random_at_most>:
    800022a0:	1141                	add	sp,sp,-16
    800022a2:	e422                	sd	s0,8(sp)
    800022a4:	0800                	add	s0,sp,16
    800022a6:	00009697          	auipc	a3,0x9
    800022aa:	16e68693          	add	a3,a3,366 # 8000b414 <seed.2>
    800022ae:	4298                	lw	a4,0(a3)
    800022b0:	41c657b7          	lui	a5,0x41c65
    800022b4:	e6d7879b          	addw	a5,a5,-403 # 41c64e6d <_entry-0x3e39b193>
    800022b8:	02e787bb          	mulw	a5,a5,a4
    800022bc:	670d                	lui	a4,0x3
    800022be:	0397071b          	addw	a4,a4,57 # 3039 <_entry-0x7fffcfc7>
    800022c2:	9fb9                	addw	a5,a5,a4
    800022c4:	80000737          	lui	a4,0x80000
    800022c8:	377d                	addw	a4,a4,-1 # 7fffffff <_entry-0x1>
    800022ca:	02e7e7bb          	remw	a5,a5,a4
    800022ce:	c29c                	sw	a5,0(a3)
    800022d0:	02a7e53b          	remw	a0,a5,a0
    800022d4:	6422                	ld	s0,8(sp)
    800022d6:	0141                	add	sp,sp,16
    800022d8:	8082                	ret

00000000800022da <lbs_scheduler>:
    800022da:	715d                	add	sp,sp,-80
    800022dc:	e486                	sd	ra,72(sp)
    800022de:	e0a2                	sd	s0,64(sp)
    800022e0:	fc26                	sd	s1,56(sp)
    800022e2:	f84a                	sd	s2,48(sp)
    800022e4:	f44e                	sd	s3,40(sp)
    800022e6:	f052                	sd	s4,32(sp)
    800022e8:	ec56                	sd	s5,24(sp)
    800022ea:	e85a                	sd	s6,16(sp)
    800022ec:	e45e                	sd	s7,8(sp)
    800022ee:	e062                	sd	s8,0(sp)
    800022f0:	0880                	add	s0,sp,80
    800022f2:	00006517          	auipc	a0,0x6
    800022f6:	f5650513          	add	a0,a0,-170 # 80008248 <digits+0x218>
    800022fa:	ffffe097          	auipc	ra,0xffffe
    800022fe:	2b0080e7          	jalr	688(ra) # 800005aa <printf>
    80002302:	8792                	mv	a5,tp
    80002304:	2781                	sext.w	a5,a5
    80002306:	00779693          	sll	a3,a5,0x7
    8000230a:	00011717          	auipc	a4,0x11
    8000230e:	40670713          	add	a4,a4,1030 # 80013710 <pid_lock>
    80002312:	9736                	add	a4,a4,a3
    80002314:	02073823          	sd	zero,48(a4)
    80002318:	00011717          	auipc	a4,0x11
    8000231c:	43070713          	add	a4,a4,1072 # 80013748 <cpus+0x8>
    80002320:	00e68c33          	add	s8,a3,a4
    80002324:	4a81                	li	s5,0
    80002326:	490d                	li	s2,3
    80002328:	00018997          	auipc	s3,0x18
    8000232c:	21898993          	add	s3,s3,536 # 8001a540 <tickslock>
    80002330:	00011b17          	auipc	s6,0x11
    80002334:	3e0b0b13          	add	s6,s6,992 # 80013710 <pid_lock>
    80002338:	9b36                	add	s6,s6,a3
    8000233a:	a805                	j	8000236a <lbs_scheduler+0x90>
    8000233c:	8526                	mv	a0,s1
    8000233e:	fffff097          	auipc	ra,0xfffff
    80002342:	9ae080e7          	jalr	-1618(ra) # 80000cec <release>
    80002346:	1a848493          	add	s1,s1,424
    8000234a:	01348e63          	beq	s1,s3,80002366 <lbs_scheduler+0x8c>
    8000234e:	8526                	mv	a0,s1
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	8e8080e7          	jalr	-1816(ra) # 80000c38 <acquire>
    80002358:	44fc                	lw	a5,76(s1)
    8000235a:	ff2791e3          	bne	a5,s2,8000233c <lbs_scheduler+0x62>
    8000235e:	5cdc                	lw	a5,60(s1)
    80002360:	01478a3b          	addw	s4,a5,s4
    80002364:	bfe1                	j	8000233c <lbs_scheduler+0x62>
    80002366:	000a1e63          	bnez	s4,80002382 <lbs_scheduler+0xa8>
    8000236a:	100027f3          	csrr	a5,sstatus
    8000236e:	0027e793          	or	a5,a5,2
    80002372:	10079073          	csrw	sstatus,a5
    80002376:	8a56                	mv	s4,s5
    80002378:	00011497          	auipc	s1,0x11
    8000237c:	7c848493          	add	s1,s1,1992 # 80013b40 <proc>
    80002380:	b7f9                	j	8000234e <lbs_scheduler+0x74>
    80002382:	fffa051b          	addw	a0,s4,-1
    80002386:	00000097          	auipc	ra,0x0
    8000238a:	f1a080e7          	jalr	-230(ra) # 800022a0 <random_at_most>
    8000238e:	8baa                	mv	s7,a0
    80002390:	8a56                	mv	s4,s5
    80002392:	00011497          	auipc	s1,0x11
    80002396:	7ae48493          	add	s1,s1,1966 # 80013b40 <proc>
    8000239a:	a811                	j	800023ae <lbs_scheduler+0xd4>
    8000239c:	8526                	mv	a0,s1
    8000239e:	fffff097          	auipc	ra,0xfffff
    800023a2:	94e080e7          	jalr	-1714(ra) # 80000cec <release>
    800023a6:	1a848493          	add	s1,s1,424
    800023aa:	fd3480e3          	beq	s1,s3,8000236a <lbs_scheduler+0x90>
    800023ae:	8526                	mv	a0,s1
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	888080e7          	jalr	-1912(ra) # 80000c38 <acquire>
    800023b8:	44fc                	lw	a5,76(s1)
    800023ba:	ff2791e3          	bne	a5,s2,8000239c <lbs_scheduler+0xc2>
    800023be:	5cdc                	lw	a5,60(s1)
    800023c0:	01478a3b          	addw	s4,a5,s4
    800023c4:	fd4bdce3          	bge	s7,s4,8000239c <lbs_scheduler+0xc2>
    800023c8:	4791                	li	a5,4
    800023ca:	c4fc                	sw	a5,76(s1)
    800023cc:	029b3823          	sd	s1,48(s6)
    800023d0:	09048593          	add	a1,s1,144
    800023d4:	8562                	mv	a0,s8
    800023d6:	00001097          	auipc	ra,0x1
    800023da:	97a080e7          	jalr	-1670(ra) # 80002d50 <swtch>
    800023de:	020b3823          	sd	zero,48(s6)
    800023e2:	8526                	mv	a0,s1
    800023e4:	fffff097          	auipc	ra,0xfffff
    800023e8:	908080e7          	jalr	-1784(ra) # 80000cec <release>
    800023ec:	bfbd                	j	8000236a <lbs_scheduler+0x90>

00000000800023ee <rr_scheduler>:
    800023ee:	7139                	add	sp,sp,-64
    800023f0:	fc06                	sd	ra,56(sp)
    800023f2:	f822                	sd	s0,48(sp)
    800023f4:	f426                	sd	s1,40(sp)
    800023f6:	f04a                	sd	s2,32(sp)
    800023f8:	ec4e                	sd	s3,24(sp)
    800023fa:	e852                	sd	s4,16(sp)
    800023fc:	e456                	sd	s5,8(sp)
    800023fe:	e05a                	sd	s6,0(sp)
    80002400:	0080                	add	s0,sp,64
    80002402:	00006517          	auipc	a0,0x6
    80002406:	e5e50513          	add	a0,a0,-418 # 80008260 <digits+0x230>
    8000240a:	ffffe097          	auipc	ra,0xffffe
    8000240e:	1a0080e7          	jalr	416(ra) # 800005aa <printf>
    80002412:	8792                	mv	a5,tp
    80002414:	2781                	sext.w	a5,a5
    80002416:	00779a93          	sll	s5,a5,0x7
    8000241a:	00011717          	auipc	a4,0x11
    8000241e:	2f670713          	add	a4,a4,758 # 80013710 <pid_lock>
    80002422:	9756                	add	a4,a4,s5
    80002424:	02073823          	sd	zero,48(a4)
    80002428:	00011717          	auipc	a4,0x11
    8000242c:	32070713          	add	a4,a4,800 # 80013748 <cpus+0x8>
    80002430:	9aba                	add	s5,s5,a4
    80002432:	498d                	li	s3,3
    80002434:	4b11                	li	s6,4
    80002436:	079e                	sll	a5,a5,0x7
    80002438:	00011a17          	auipc	s4,0x11
    8000243c:	2d8a0a13          	add	s4,s4,728 # 80013710 <pid_lock>
    80002440:	9a3e                	add	s4,s4,a5
    80002442:	00018917          	auipc	s2,0x18
    80002446:	0fe90913          	add	s2,s2,254 # 8001a540 <tickslock>
    8000244a:	100027f3          	csrr	a5,sstatus
    8000244e:	0027e793          	or	a5,a5,2
    80002452:	10079073          	csrw	sstatus,a5
    80002456:	00011497          	auipc	s1,0x11
    8000245a:	6ea48493          	add	s1,s1,1770 # 80013b40 <proc>
    8000245e:	a811                	j	80002472 <rr_scheduler+0x84>
    80002460:	8526                	mv	a0,s1
    80002462:	fffff097          	auipc	ra,0xfffff
    80002466:	88a080e7          	jalr	-1910(ra) # 80000cec <release>
    8000246a:	1a848493          	add	s1,s1,424
    8000246e:	fd248ee3          	beq	s1,s2,8000244a <rr_scheduler+0x5c>
    80002472:	8526                	mv	a0,s1
    80002474:	ffffe097          	auipc	ra,0xffffe
    80002478:	7c4080e7          	jalr	1988(ra) # 80000c38 <acquire>
    8000247c:	44fc                	lw	a5,76(s1)
    8000247e:	ff3791e3          	bne	a5,s3,80002460 <rr_scheduler+0x72>
    80002482:	0564a623          	sw	s6,76(s1)
    80002486:	029a3823          	sd	s1,48(s4)
    8000248a:	09048593          	add	a1,s1,144
    8000248e:	8556                	mv	a0,s5
    80002490:	00001097          	auipc	ra,0x1
    80002494:	8c0080e7          	jalr	-1856(ra) # 80002d50 <swtch>
    80002498:	020a3823          	sd	zero,48(s4)
    8000249c:	b7d1                	j	80002460 <rr_scheduler+0x72>

000000008000249e <scheduler>:
    8000249e:	1141                	add	sp,sp,-16
    800024a0:	e406                	sd	ra,8(sp)
    800024a2:	e022                	sd	s0,0(sp)
    800024a4:	0800                	add	s0,sp,16
    800024a6:	00000097          	auipc	ra,0x0
    800024aa:	b1a080e7          	jalr	-1254(ra) # 80001fc0 <mlfq_scheduler>

00000000800024ae <sched>:
    800024ae:	7179                	add	sp,sp,-48
    800024b0:	f406                	sd	ra,40(sp)
    800024b2:	f022                	sd	s0,32(sp)
    800024b4:	ec26                	sd	s1,24(sp)
    800024b6:	e84a                	sd	s2,16(sp)
    800024b8:	e44e                	sd	s3,8(sp)
    800024ba:	1800                	add	s0,sp,48
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	5e2080e7          	jalr	1506(ra) # 80001a9e <myproc>
    800024c4:	84aa                	mv	s1,a0
    800024c6:	ffffe097          	auipc	ra,0xffffe
    800024ca:	6f8080e7          	jalr	1784(ra) # 80000bbe <holding>
    800024ce:	c93d                	beqz	a0,80002544 <sched+0x96>
    800024d0:	8792                	mv	a5,tp
    800024d2:	2781                	sext.w	a5,a5
    800024d4:	079e                	sll	a5,a5,0x7
    800024d6:	00011717          	auipc	a4,0x11
    800024da:	23a70713          	add	a4,a4,570 # 80013710 <pid_lock>
    800024de:	97ba                	add	a5,a5,a4
    800024e0:	0a87a703          	lw	a4,168(a5)
    800024e4:	4785                	li	a5,1
    800024e6:	06f71763          	bne	a4,a5,80002554 <sched+0xa6>
    800024ea:	44f8                	lw	a4,76(s1)
    800024ec:	4791                	li	a5,4
    800024ee:	06f70b63          	beq	a4,a5,80002564 <sched+0xb6>
    800024f2:	100027f3          	csrr	a5,sstatus
    800024f6:	8b89                	and	a5,a5,2
    800024f8:	efb5                	bnez	a5,80002574 <sched+0xc6>
    800024fa:	8792                	mv	a5,tp
    800024fc:	00011917          	auipc	s2,0x11
    80002500:	21490913          	add	s2,s2,532 # 80013710 <pid_lock>
    80002504:	2781                	sext.w	a5,a5
    80002506:	079e                	sll	a5,a5,0x7
    80002508:	97ca                	add	a5,a5,s2
    8000250a:	0ac7a983          	lw	s3,172(a5)
    8000250e:	8792                	mv	a5,tp
    80002510:	2781                	sext.w	a5,a5
    80002512:	079e                	sll	a5,a5,0x7
    80002514:	00011597          	auipc	a1,0x11
    80002518:	23458593          	add	a1,a1,564 # 80013748 <cpus+0x8>
    8000251c:	95be                	add	a1,a1,a5
    8000251e:	09048513          	add	a0,s1,144
    80002522:	00001097          	auipc	ra,0x1
    80002526:	82e080e7          	jalr	-2002(ra) # 80002d50 <swtch>
    8000252a:	8792                	mv	a5,tp
    8000252c:	2781                	sext.w	a5,a5
    8000252e:	079e                	sll	a5,a5,0x7
    80002530:	993e                	add	s2,s2,a5
    80002532:	0b392623          	sw	s3,172(s2)
    80002536:	70a2                	ld	ra,40(sp)
    80002538:	7402                	ld	s0,32(sp)
    8000253a:	64e2                	ld	s1,24(sp)
    8000253c:	6942                	ld	s2,16(sp)
    8000253e:	69a2                	ld	s3,8(sp)
    80002540:	6145                	add	sp,sp,48
    80002542:	8082                	ret
    80002544:	00006517          	auipc	a0,0x6
    80002548:	d2c50513          	add	a0,a0,-724 # 80008270 <digits+0x240>
    8000254c:	ffffe097          	auipc	ra,0xffffe
    80002550:	014080e7          	jalr	20(ra) # 80000560 <panic>
    80002554:	00006517          	auipc	a0,0x6
    80002558:	d2c50513          	add	a0,a0,-724 # 80008280 <digits+0x250>
    8000255c:	ffffe097          	auipc	ra,0xffffe
    80002560:	004080e7          	jalr	4(ra) # 80000560 <panic>
    80002564:	00006517          	auipc	a0,0x6
    80002568:	d2c50513          	add	a0,a0,-724 # 80008290 <digits+0x260>
    8000256c:	ffffe097          	auipc	ra,0xffffe
    80002570:	ff4080e7          	jalr	-12(ra) # 80000560 <panic>
    80002574:	00006517          	auipc	a0,0x6
    80002578:	d2c50513          	add	a0,a0,-724 # 800082a0 <digits+0x270>
    8000257c:	ffffe097          	auipc	ra,0xffffe
    80002580:	fe4080e7          	jalr	-28(ra) # 80000560 <panic>

0000000080002584 <yield>:
    80002584:	1101                	add	sp,sp,-32
    80002586:	ec06                	sd	ra,24(sp)
    80002588:	e822                	sd	s0,16(sp)
    8000258a:	e426                	sd	s1,8(sp)
    8000258c:	1000                	add	s0,sp,32
    8000258e:	fffff097          	auipc	ra,0xfffff
    80002592:	510080e7          	jalr	1296(ra) # 80001a9e <myproc>
    80002596:	84aa                	mv	s1,a0
    80002598:	ffffe097          	auipc	ra,0xffffe
    8000259c:	6a0080e7          	jalr	1696(ra) # 80000c38 <acquire>
    800025a0:	478d                	li	a5,3
    800025a2:	c4fc                	sw	a5,76(s1)
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	f0a080e7          	jalr	-246(ra) # 800024ae <sched>
    800025ac:	8526                	mv	a0,s1
    800025ae:	ffffe097          	auipc	ra,0xffffe
    800025b2:	73e080e7          	jalr	1854(ra) # 80000cec <release>
    800025b6:	60e2                	ld	ra,24(sp)
    800025b8:	6442                	ld	s0,16(sp)
    800025ba:	64a2                	ld	s1,8(sp)
    800025bc:	6105                	add	sp,sp,32
    800025be:	8082                	ret

00000000800025c0 <sleep>:
    800025c0:	7179                	add	sp,sp,-48
    800025c2:	f406                	sd	ra,40(sp)
    800025c4:	f022                	sd	s0,32(sp)
    800025c6:	ec26                	sd	s1,24(sp)
    800025c8:	e84a                	sd	s2,16(sp)
    800025ca:	e44e                	sd	s3,8(sp)
    800025cc:	1800                	add	s0,sp,48
    800025ce:	89aa                	mv	s3,a0
    800025d0:	892e                	mv	s2,a1
    800025d2:	fffff097          	auipc	ra,0xfffff
    800025d6:	4cc080e7          	jalr	1228(ra) # 80001a9e <myproc>
    800025da:	84aa                	mv	s1,a0
    800025dc:	ffffe097          	auipc	ra,0xffffe
    800025e0:	65c080e7          	jalr	1628(ra) # 80000c38 <acquire>
    800025e4:	854a                	mv	a0,s2
    800025e6:	ffffe097          	auipc	ra,0xffffe
    800025ea:	706080e7          	jalr	1798(ra) # 80000cec <release>
    800025ee:	0534b823          	sd	s3,80(s1)
    800025f2:	4789                	li	a5,2
    800025f4:	c4fc                	sw	a5,76(s1)
    800025f6:	00000097          	auipc	ra,0x0
    800025fa:	eb8080e7          	jalr	-328(ra) # 800024ae <sched>
    800025fe:	0404b823          	sd	zero,80(s1)
    80002602:	8526                	mv	a0,s1
    80002604:	ffffe097          	auipc	ra,0xffffe
    80002608:	6e8080e7          	jalr	1768(ra) # 80000cec <release>
    8000260c:	854a                	mv	a0,s2
    8000260e:	ffffe097          	auipc	ra,0xffffe
    80002612:	62a080e7          	jalr	1578(ra) # 80000c38 <acquire>
    80002616:	70a2                	ld	ra,40(sp)
    80002618:	7402                	ld	s0,32(sp)
    8000261a:	64e2                	ld	s1,24(sp)
    8000261c:	6942                	ld	s2,16(sp)
    8000261e:	69a2                	ld	s3,8(sp)
    80002620:	6145                	add	sp,sp,48
    80002622:	8082                	ret

0000000080002624 <wakeup>:
    80002624:	7139                	add	sp,sp,-64
    80002626:	fc06                	sd	ra,56(sp)
    80002628:	f822                	sd	s0,48(sp)
    8000262a:	f426                	sd	s1,40(sp)
    8000262c:	f04a                	sd	s2,32(sp)
    8000262e:	ec4e                	sd	s3,24(sp)
    80002630:	e852                	sd	s4,16(sp)
    80002632:	e456                	sd	s5,8(sp)
    80002634:	0080                	add	s0,sp,64
    80002636:	8a2a                	mv	s4,a0
    80002638:	00011497          	auipc	s1,0x11
    8000263c:	50848493          	add	s1,s1,1288 # 80013b40 <proc>
    80002640:	4989                	li	s3,2
    80002642:	4a8d                	li	s5,3
    80002644:	00018917          	auipc	s2,0x18
    80002648:	efc90913          	add	s2,s2,-260 # 8001a540 <tickslock>
    8000264c:	a811                	j	80002660 <wakeup+0x3c>
    8000264e:	8526                	mv	a0,s1
    80002650:	ffffe097          	auipc	ra,0xffffe
    80002654:	69c080e7          	jalr	1692(ra) # 80000cec <release>
    80002658:	1a848493          	add	s1,s1,424
    8000265c:	03248663          	beq	s1,s2,80002688 <wakeup+0x64>
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	43e080e7          	jalr	1086(ra) # 80001a9e <myproc>
    80002668:	fea488e3          	beq	s1,a0,80002658 <wakeup+0x34>
    8000266c:	8526                	mv	a0,s1
    8000266e:	ffffe097          	auipc	ra,0xffffe
    80002672:	5ca080e7          	jalr	1482(ra) # 80000c38 <acquire>
    80002676:	44fc                	lw	a5,76(s1)
    80002678:	fd379be3          	bne	a5,s3,8000264e <wakeup+0x2a>
    8000267c:	68bc                	ld	a5,80(s1)
    8000267e:	fd4798e3          	bne	a5,s4,8000264e <wakeup+0x2a>
    80002682:	0554a623          	sw	s5,76(s1)
    80002686:	b7e1                	j	8000264e <wakeup+0x2a>
    80002688:	70e2                	ld	ra,56(sp)
    8000268a:	7442                	ld	s0,48(sp)
    8000268c:	74a2                	ld	s1,40(sp)
    8000268e:	7902                	ld	s2,32(sp)
    80002690:	69e2                	ld	s3,24(sp)
    80002692:	6a42                	ld	s4,16(sp)
    80002694:	6aa2                	ld	s5,8(sp)
    80002696:	6121                	add	sp,sp,64
    80002698:	8082                	ret

000000008000269a <reparent>:
    8000269a:	7179                	add	sp,sp,-48
    8000269c:	f406                	sd	ra,40(sp)
    8000269e:	f022                	sd	s0,32(sp)
    800026a0:	ec26                	sd	s1,24(sp)
    800026a2:	e84a                	sd	s2,16(sp)
    800026a4:	e44e                	sd	s3,8(sp)
    800026a6:	e052                	sd	s4,0(sp)
    800026a8:	1800                	add	s0,sp,48
    800026aa:	892a                	mv	s2,a0
    800026ac:	00011497          	auipc	s1,0x11
    800026b0:	49448493          	add	s1,s1,1172 # 80013b40 <proc>
    800026b4:	00009a17          	auipc	s4,0x9
    800026b8:	de4a0a13          	add	s4,s4,-540 # 8000b498 <initproc>
    800026bc:	00018997          	auipc	s3,0x18
    800026c0:	e8498993          	add	s3,s3,-380 # 8001a540 <tickslock>
    800026c4:	a029                	j	800026ce <reparent+0x34>
    800026c6:	1a848493          	add	s1,s1,424
    800026ca:	01348d63          	beq	s1,s3,800026e4 <reparent+0x4a>
    800026ce:	74bc                	ld	a5,104(s1)
    800026d0:	ff279be3          	bne	a5,s2,800026c6 <reparent+0x2c>
    800026d4:	000a3503          	ld	a0,0(s4)
    800026d8:	f4a8                	sd	a0,104(s1)
    800026da:	00000097          	auipc	ra,0x0
    800026de:	f4a080e7          	jalr	-182(ra) # 80002624 <wakeup>
    800026e2:	b7d5                	j	800026c6 <reparent+0x2c>
    800026e4:	70a2                	ld	ra,40(sp)
    800026e6:	7402                	ld	s0,32(sp)
    800026e8:	64e2                	ld	s1,24(sp)
    800026ea:	6942                	ld	s2,16(sp)
    800026ec:	69a2                	ld	s3,8(sp)
    800026ee:	6a02                	ld	s4,0(sp)
    800026f0:	6145                	add	sp,sp,48
    800026f2:	8082                	ret

00000000800026f4 <exit>:
    800026f4:	7179                	add	sp,sp,-48
    800026f6:	f406                	sd	ra,40(sp)
    800026f8:	f022                	sd	s0,32(sp)
    800026fa:	ec26                	sd	s1,24(sp)
    800026fc:	e84a                	sd	s2,16(sp)
    800026fe:	e44e                	sd	s3,8(sp)
    80002700:	e052                	sd	s4,0(sp)
    80002702:	1800                	add	s0,sp,48
    80002704:	8a2a                	mv	s4,a0
    80002706:	fffff097          	auipc	ra,0xfffff
    8000270a:	398080e7          	jalr	920(ra) # 80001a9e <myproc>
    8000270e:	89aa                	mv	s3,a0
    80002710:	00009797          	auipc	a5,0x9
    80002714:	d887b783          	ld	a5,-632(a5) # 8000b498 <initproc>
    80002718:	10050493          	add	s1,a0,256
    8000271c:	18050913          	add	s2,a0,384
    80002720:	02a79363          	bne	a5,a0,80002746 <exit+0x52>
    80002724:	00006517          	auipc	a0,0x6
    80002728:	b9450513          	add	a0,a0,-1132 # 800082b8 <digits+0x288>
    8000272c:	ffffe097          	auipc	ra,0xffffe
    80002730:	e34080e7          	jalr	-460(ra) # 80000560 <panic>
    80002734:	00002097          	auipc	ra,0x2
    80002738:	752080e7          	jalr	1874(ra) # 80004e86 <fileclose>
    8000273c:	0004b023          	sd	zero,0(s1)
    80002740:	04a1                	add	s1,s1,8
    80002742:	01248563          	beq	s1,s2,8000274c <exit+0x58>
    80002746:	6088                	ld	a0,0(s1)
    80002748:	f575                	bnez	a0,80002734 <exit+0x40>
    8000274a:	bfdd                	j	80002740 <exit+0x4c>
    8000274c:	00002097          	auipc	ra,0x2
    80002750:	270080e7          	jalr	624(ra) # 800049bc <begin_op>
    80002754:	1809b503          	ld	a0,384(s3)
    80002758:	00002097          	auipc	ra,0x2
    8000275c:	a54080e7          	jalr	-1452(ra) # 800041ac <iput>
    80002760:	00002097          	auipc	ra,0x2
    80002764:	2d6080e7          	jalr	726(ra) # 80004a36 <end_op>
    80002768:	1809b023          	sd	zero,384(s3)
    8000276c:	00011497          	auipc	s1,0x11
    80002770:	fbc48493          	add	s1,s1,-68 # 80013728 <wait_lock>
    80002774:	8526                	mv	a0,s1
    80002776:	ffffe097          	auipc	ra,0xffffe
    8000277a:	4c2080e7          	jalr	1218(ra) # 80000c38 <acquire>
    8000277e:	854e                	mv	a0,s3
    80002780:	00000097          	auipc	ra,0x0
    80002784:	f1a080e7          	jalr	-230(ra) # 8000269a <reparent>
    80002788:	0689b503          	ld	a0,104(s3)
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	e98080e7          	jalr	-360(ra) # 80002624 <wakeup>
    80002794:	854e                	mv	a0,s3
    80002796:	ffffe097          	auipc	ra,0xffffe
    8000279a:	4a2080e7          	jalr	1186(ra) # 80000c38 <acquire>
    8000279e:	0549ae23          	sw	s4,92(s3)
    800027a2:	4795                	li	a5,5
    800027a4:	04f9a623          	sw	a5,76(s3)
    800027a8:	00009797          	auipc	a5,0x9
    800027ac:	cf87a783          	lw	a5,-776(a5) # 8000b4a0 <ticks>
    800027b0:	1af9a023          	sw	a5,416(s3)
    800027b4:	8526                	mv	a0,s1
    800027b6:	ffffe097          	auipc	ra,0xffffe
    800027ba:	536080e7          	jalr	1334(ra) # 80000cec <release>
    800027be:	00000097          	auipc	ra,0x0
    800027c2:	cf0080e7          	jalr	-784(ra) # 800024ae <sched>
    800027c6:	00006517          	auipc	a0,0x6
    800027ca:	b0250513          	add	a0,a0,-1278 # 800082c8 <digits+0x298>
    800027ce:	ffffe097          	auipc	ra,0xffffe
    800027d2:	d92080e7          	jalr	-622(ra) # 80000560 <panic>

00000000800027d6 <kill>:
    800027d6:	7179                	add	sp,sp,-48
    800027d8:	f406                	sd	ra,40(sp)
    800027da:	f022                	sd	s0,32(sp)
    800027dc:	ec26                	sd	s1,24(sp)
    800027de:	e84a                	sd	s2,16(sp)
    800027e0:	e44e                	sd	s3,8(sp)
    800027e2:	1800                	add	s0,sp,48
    800027e4:	892a                	mv	s2,a0
    800027e6:	00011497          	auipc	s1,0x11
    800027ea:	35a48493          	add	s1,s1,858 # 80013b40 <proc>
    800027ee:	00018997          	auipc	s3,0x18
    800027f2:	d5298993          	add	s3,s3,-686 # 8001a540 <tickslock>
    800027f6:	8526                	mv	a0,s1
    800027f8:	ffffe097          	auipc	ra,0xffffe
    800027fc:	440080e7          	jalr	1088(ra) # 80000c38 <acquire>
    80002800:	50bc                	lw	a5,96(s1)
    80002802:	01278d63          	beq	a5,s2,8000281c <kill+0x46>
    80002806:	8526                	mv	a0,s1
    80002808:	ffffe097          	auipc	ra,0xffffe
    8000280c:	4e4080e7          	jalr	1252(ra) # 80000cec <release>
    80002810:	1a848493          	add	s1,s1,424
    80002814:	ff3491e3          	bne	s1,s3,800027f6 <kill+0x20>
    80002818:	557d                	li	a0,-1
    8000281a:	a829                	j	80002834 <kill+0x5e>
    8000281c:	4785                	li	a5,1
    8000281e:	ccbc                	sw	a5,88(s1)
    80002820:	44f8                	lw	a4,76(s1)
    80002822:	4789                	li	a5,2
    80002824:	00f70f63          	beq	a4,a5,80002842 <kill+0x6c>
    80002828:	8526                	mv	a0,s1
    8000282a:	ffffe097          	auipc	ra,0xffffe
    8000282e:	4c2080e7          	jalr	1218(ra) # 80000cec <release>
    80002832:	4501                	li	a0,0
    80002834:	70a2                	ld	ra,40(sp)
    80002836:	7402                	ld	s0,32(sp)
    80002838:	64e2                	ld	s1,24(sp)
    8000283a:	6942                	ld	s2,16(sp)
    8000283c:	69a2                	ld	s3,8(sp)
    8000283e:	6145                	add	sp,sp,48
    80002840:	8082                	ret
    80002842:	478d                	li	a5,3
    80002844:	c4fc                	sw	a5,76(s1)
    80002846:	b7cd                	j	80002828 <kill+0x52>

0000000080002848 <setkilled>:
    80002848:	1101                	add	sp,sp,-32
    8000284a:	ec06                	sd	ra,24(sp)
    8000284c:	e822                	sd	s0,16(sp)
    8000284e:	e426                	sd	s1,8(sp)
    80002850:	1000                	add	s0,sp,32
    80002852:	84aa                	mv	s1,a0
    80002854:	ffffe097          	auipc	ra,0xffffe
    80002858:	3e4080e7          	jalr	996(ra) # 80000c38 <acquire>
    8000285c:	4785                	li	a5,1
    8000285e:	ccbc                	sw	a5,88(s1)
    80002860:	8526                	mv	a0,s1
    80002862:	ffffe097          	auipc	ra,0xffffe
    80002866:	48a080e7          	jalr	1162(ra) # 80000cec <release>
    8000286a:	60e2                	ld	ra,24(sp)
    8000286c:	6442                	ld	s0,16(sp)
    8000286e:	64a2                	ld	s1,8(sp)
    80002870:	6105                	add	sp,sp,32
    80002872:	8082                	ret

0000000080002874 <killed>:
    80002874:	1101                	add	sp,sp,-32
    80002876:	ec06                	sd	ra,24(sp)
    80002878:	e822                	sd	s0,16(sp)
    8000287a:	e426                	sd	s1,8(sp)
    8000287c:	e04a                	sd	s2,0(sp)
    8000287e:	1000                	add	s0,sp,32
    80002880:	84aa                	mv	s1,a0
    80002882:	ffffe097          	auipc	ra,0xffffe
    80002886:	3b6080e7          	jalr	950(ra) # 80000c38 <acquire>
    8000288a:	0584a903          	lw	s2,88(s1)
    8000288e:	8526                	mv	a0,s1
    80002890:	ffffe097          	auipc	ra,0xffffe
    80002894:	45c080e7          	jalr	1116(ra) # 80000cec <release>
    80002898:	854a                	mv	a0,s2
    8000289a:	60e2                	ld	ra,24(sp)
    8000289c:	6442                	ld	s0,16(sp)
    8000289e:	64a2                	ld	s1,8(sp)
    800028a0:	6902                	ld	s2,0(sp)
    800028a2:	6105                	add	sp,sp,32
    800028a4:	8082                	ret

00000000800028a6 <wait>:
    800028a6:	715d                	add	sp,sp,-80
    800028a8:	e486                	sd	ra,72(sp)
    800028aa:	e0a2                	sd	s0,64(sp)
    800028ac:	fc26                	sd	s1,56(sp)
    800028ae:	f84a                	sd	s2,48(sp)
    800028b0:	f44e                	sd	s3,40(sp)
    800028b2:	f052                	sd	s4,32(sp)
    800028b4:	ec56                	sd	s5,24(sp)
    800028b6:	e85a                	sd	s6,16(sp)
    800028b8:	e45e                	sd	s7,8(sp)
    800028ba:	e062                	sd	s8,0(sp)
    800028bc:	0880                	add	s0,sp,80
    800028be:	8b2a                	mv	s6,a0
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	1de080e7          	jalr	478(ra) # 80001a9e <myproc>
    800028c8:	892a                	mv	s2,a0
    800028ca:	00011517          	auipc	a0,0x11
    800028ce:	e5e50513          	add	a0,a0,-418 # 80013728 <wait_lock>
    800028d2:	ffffe097          	auipc	ra,0xffffe
    800028d6:	366080e7          	jalr	870(ra) # 80000c38 <acquire>
    800028da:	4b81                	li	s7,0
    800028dc:	4a15                	li	s4,5
    800028de:	4a85                	li	s5,1
    800028e0:	00018997          	auipc	s3,0x18
    800028e4:	c6098993          	add	s3,s3,-928 # 8001a540 <tickslock>
    800028e8:	00011c17          	auipc	s8,0x11
    800028ec:	e40c0c13          	add	s8,s8,-448 # 80013728 <wait_lock>
    800028f0:	a0d1                	j	800029b4 <wait+0x10e>
    800028f2:	0604a983          	lw	s3,96(s1)
    800028f6:	000b0e63          	beqz	s6,80002912 <wait+0x6c>
    800028fa:	4691                	li	a3,4
    800028fc:	05c48613          	add	a2,s1,92
    80002900:	85da                	mv	a1,s6
    80002902:	08093503          	ld	a0,128(s2)
    80002906:	fffff097          	auipc	ra,0xfffff
    8000290a:	ddc080e7          	jalr	-548(ra) # 800016e2 <copyout>
    8000290e:	04054163          	bltz	a0,80002950 <wait+0xaa>
    80002912:	8526                	mv	a0,s1
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	33c080e7          	jalr	828(ra) # 80001c50 <freeproc>
    8000291c:	8526                	mv	a0,s1
    8000291e:	ffffe097          	auipc	ra,0xffffe
    80002922:	3ce080e7          	jalr	974(ra) # 80000cec <release>
    80002926:	00011517          	auipc	a0,0x11
    8000292a:	e0250513          	add	a0,a0,-510 # 80013728 <wait_lock>
    8000292e:	ffffe097          	auipc	ra,0xffffe
    80002932:	3be080e7          	jalr	958(ra) # 80000cec <release>
    80002936:	854e                	mv	a0,s3
    80002938:	60a6                	ld	ra,72(sp)
    8000293a:	6406                	ld	s0,64(sp)
    8000293c:	74e2                	ld	s1,56(sp)
    8000293e:	7942                	ld	s2,48(sp)
    80002940:	79a2                	ld	s3,40(sp)
    80002942:	7a02                	ld	s4,32(sp)
    80002944:	6ae2                	ld	s5,24(sp)
    80002946:	6b42                	ld	s6,16(sp)
    80002948:	6ba2                	ld	s7,8(sp)
    8000294a:	6c02                	ld	s8,0(sp)
    8000294c:	6161                	add	sp,sp,80
    8000294e:	8082                	ret
    80002950:	8526                	mv	a0,s1
    80002952:	ffffe097          	auipc	ra,0xffffe
    80002956:	39a080e7          	jalr	922(ra) # 80000cec <release>
    8000295a:	00011517          	auipc	a0,0x11
    8000295e:	dce50513          	add	a0,a0,-562 # 80013728 <wait_lock>
    80002962:	ffffe097          	auipc	ra,0xffffe
    80002966:	38a080e7          	jalr	906(ra) # 80000cec <release>
    8000296a:	59fd                	li	s3,-1
    8000296c:	b7e9                	j	80002936 <wait+0x90>
    8000296e:	1a848493          	add	s1,s1,424
    80002972:	03348463          	beq	s1,s3,8000299a <wait+0xf4>
    80002976:	74bc                	ld	a5,104(s1)
    80002978:	ff279be3          	bne	a5,s2,8000296e <wait+0xc8>
    8000297c:	8526                	mv	a0,s1
    8000297e:	ffffe097          	auipc	ra,0xffffe
    80002982:	2ba080e7          	jalr	698(ra) # 80000c38 <acquire>
    80002986:	44fc                	lw	a5,76(s1)
    80002988:	f74785e3          	beq	a5,s4,800028f2 <wait+0x4c>
    8000298c:	8526                	mv	a0,s1
    8000298e:	ffffe097          	auipc	ra,0xffffe
    80002992:	35e080e7          	jalr	862(ra) # 80000cec <release>
    80002996:	8756                	mv	a4,s5
    80002998:	bfd9                	j	8000296e <wait+0xc8>
    8000299a:	c31d                	beqz	a4,800029c0 <wait+0x11a>
    8000299c:	854a                	mv	a0,s2
    8000299e:	00000097          	auipc	ra,0x0
    800029a2:	ed6080e7          	jalr	-298(ra) # 80002874 <killed>
    800029a6:	ed09                	bnez	a0,800029c0 <wait+0x11a>
    800029a8:	85e2                	mv	a1,s8
    800029aa:	854a                	mv	a0,s2
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	c14080e7          	jalr	-1004(ra) # 800025c0 <sleep>
    800029b4:	875e                	mv	a4,s7
    800029b6:	00011497          	auipc	s1,0x11
    800029ba:	18a48493          	add	s1,s1,394 # 80013b40 <proc>
    800029be:	bf65                	j	80002976 <wait+0xd0>
    800029c0:	00011517          	auipc	a0,0x11
    800029c4:	d6850513          	add	a0,a0,-664 # 80013728 <wait_lock>
    800029c8:	ffffe097          	auipc	ra,0xffffe
    800029cc:	324080e7          	jalr	804(ra) # 80000cec <release>
    800029d0:	59fd                	li	s3,-1
    800029d2:	b795                	j	80002936 <wait+0x90>

00000000800029d4 <either_copyout>:
    800029d4:	7179                	add	sp,sp,-48
    800029d6:	f406                	sd	ra,40(sp)
    800029d8:	f022                	sd	s0,32(sp)
    800029da:	ec26                	sd	s1,24(sp)
    800029dc:	e84a                	sd	s2,16(sp)
    800029de:	e44e                	sd	s3,8(sp)
    800029e0:	e052                	sd	s4,0(sp)
    800029e2:	1800                	add	s0,sp,48
    800029e4:	84aa                	mv	s1,a0
    800029e6:	892e                	mv	s2,a1
    800029e8:	89b2                	mv	s3,a2
    800029ea:	8a36                	mv	s4,a3
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	0b2080e7          	jalr	178(ra) # 80001a9e <myproc>
    800029f4:	c08d                	beqz	s1,80002a16 <either_copyout+0x42>
    800029f6:	86d2                	mv	a3,s4
    800029f8:	864e                	mv	a2,s3
    800029fa:	85ca                	mv	a1,s2
    800029fc:	6148                	ld	a0,128(a0)
    800029fe:	fffff097          	auipc	ra,0xfffff
    80002a02:	ce4080e7          	jalr	-796(ra) # 800016e2 <copyout>
    80002a06:	70a2                	ld	ra,40(sp)
    80002a08:	7402                	ld	s0,32(sp)
    80002a0a:	64e2                	ld	s1,24(sp)
    80002a0c:	6942                	ld	s2,16(sp)
    80002a0e:	69a2                	ld	s3,8(sp)
    80002a10:	6a02                	ld	s4,0(sp)
    80002a12:	6145                	add	sp,sp,48
    80002a14:	8082                	ret
    80002a16:	000a061b          	sext.w	a2,s4
    80002a1a:	85ce                	mv	a1,s3
    80002a1c:	854a                	mv	a0,s2
    80002a1e:	ffffe097          	auipc	ra,0xffffe
    80002a22:	372080e7          	jalr	882(ra) # 80000d90 <memmove>
    80002a26:	8526                	mv	a0,s1
    80002a28:	bff9                	j	80002a06 <either_copyout+0x32>

0000000080002a2a <either_copyin>:
    80002a2a:	7179                	add	sp,sp,-48
    80002a2c:	f406                	sd	ra,40(sp)
    80002a2e:	f022                	sd	s0,32(sp)
    80002a30:	ec26                	sd	s1,24(sp)
    80002a32:	e84a                	sd	s2,16(sp)
    80002a34:	e44e                	sd	s3,8(sp)
    80002a36:	e052                	sd	s4,0(sp)
    80002a38:	1800                	add	s0,sp,48
    80002a3a:	892a                	mv	s2,a0
    80002a3c:	84ae                	mv	s1,a1
    80002a3e:	89b2                	mv	s3,a2
    80002a40:	8a36                	mv	s4,a3
    80002a42:	fffff097          	auipc	ra,0xfffff
    80002a46:	05c080e7          	jalr	92(ra) # 80001a9e <myproc>
    80002a4a:	c08d                	beqz	s1,80002a6c <either_copyin+0x42>
    80002a4c:	86d2                	mv	a3,s4
    80002a4e:	864e                	mv	a2,s3
    80002a50:	85ca                	mv	a1,s2
    80002a52:	6148                	ld	a0,128(a0)
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	d1a080e7          	jalr	-742(ra) # 8000176e <copyin>
    80002a5c:	70a2                	ld	ra,40(sp)
    80002a5e:	7402                	ld	s0,32(sp)
    80002a60:	64e2                	ld	s1,24(sp)
    80002a62:	6942                	ld	s2,16(sp)
    80002a64:	69a2                	ld	s3,8(sp)
    80002a66:	6a02                	ld	s4,0(sp)
    80002a68:	6145                	add	sp,sp,48
    80002a6a:	8082                	ret
    80002a6c:	000a061b          	sext.w	a2,s4
    80002a70:	85ce                	mv	a1,s3
    80002a72:	854a                	mv	a0,s2
    80002a74:	ffffe097          	auipc	ra,0xffffe
    80002a78:	31c080e7          	jalr	796(ra) # 80000d90 <memmove>
    80002a7c:	8526                	mv	a0,s1
    80002a7e:	bff9                	j	80002a5c <either_copyin+0x32>

0000000080002a80 <procdump>:
    80002a80:	711d                	add	sp,sp,-96
    80002a82:	ec86                	sd	ra,88(sp)
    80002a84:	e8a2                	sd	s0,80(sp)
    80002a86:	e4a6                	sd	s1,72(sp)
    80002a88:	e0ca                	sd	s2,64(sp)
    80002a8a:	fc4e                	sd	s3,56(sp)
    80002a8c:	f852                	sd	s4,48(sp)
    80002a8e:	f456                	sd	s5,40(sp)
    80002a90:	f05a                	sd	s6,32(sp)
    80002a92:	ec5e                	sd	s7,24(sp)
    80002a94:	e862                	sd	s8,16(sp)
    80002a96:	e466                	sd	s9,8(sp)
    80002a98:	1080                	add	s0,sp,96
    80002a9a:	00005517          	auipc	a0,0x5
    80002a9e:	61e50513          	add	a0,a0,1566 # 800080b8 <digits+0x88>
    80002aa2:	ffffe097          	auipc	ra,0xffffe
    80002aa6:	b08080e7          	jalr	-1272(ra) # 800005aa <printf>
    80002aaa:	00011497          	auipc	s1,0x11
    80002aae:	21e48493          	add	s1,s1,542 # 80013cc8 <proc+0x188>
    80002ab2:	00018997          	auipc	s3,0x18
    80002ab6:	c1698993          	add	s3,s3,-1002 # 8001a6c8 <bcache+0x70>
    80002aba:	4c15                	li	s8,5
    80002abc:	00006a17          	auipc	s4,0x6
    80002ac0:	81ca0a13          	add	s4,s4,-2020 # 800082d8 <digits+0x2a8>
    80002ac4:	00006b97          	auipc	s7,0x6
    80002ac8:	81cb8b93          	add	s7,s7,-2020 # 800082e0 <digits+0x2b0>
    80002acc:	00006b17          	auipc	s6,0x6
    80002ad0:	824b0b13          	add	s6,s6,-2012 # 800082f0 <digits+0x2c0>
    80002ad4:	00005a97          	auipc	s5,0x5
    80002ad8:	5e4a8a93          	add	s5,s5,1508 # 800080b8 <digits+0x88>
    80002adc:	00006c97          	auipc	s9,0x6
    80002ae0:	864c8c93          	add	s9,s9,-1948 # 80008340 <states.0>
    80002ae4:	a81d                	j	80002b1a <procdump+0x9a>
    80002ae6:	86ca                	mv	a3,s2
    80002ae8:	ed892583          	lw	a1,-296(s2)
    80002aec:	855e                	mv	a0,s7
    80002aee:	ffffe097          	auipc	ra,0xffffe
    80002af2:	abc080e7          	jalr	-1348(ra) # 800005aa <printf>
    80002af6:	ebc92603          	lw	a2,-324(s2)
    80002afa:	eb492583          	lw	a1,-332(s2)
    80002afe:	855a                	mv	a0,s6
    80002b00:	ffffe097          	auipc	ra,0xffffe
    80002b04:	aaa080e7          	jalr	-1366(ra) # 800005aa <printf>
    80002b08:	8556                	mv	a0,s5
    80002b0a:	ffffe097          	auipc	ra,0xffffe
    80002b0e:	aa0080e7          	jalr	-1376(ra) # 800005aa <printf>
    80002b12:	1a848493          	add	s1,s1,424
    80002b16:	03348263          	beq	s1,s3,80002b3a <procdump+0xba>
    80002b1a:	8926                	mv	s2,s1
    80002b1c:	ec44a783          	lw	a5,-316(s1)
    80002b20:	dbed                	beqz	a5,80002b12 <procdump+0x92>
    80002b22:	8652                	mv	a2,s4
    80002b24:	fcfc61e3          	bltu	s8,a5,80002ae6 <procdump+0x66>
    80002b28:	02079713          	sll	a4,a5,0x20
    80002b2c:	01d75793          	srl	a5,a4,0x1d
    80002b30:	97e6                	add	a5,a5,s9
    80002b32:	6390                	ld	a2,0(a5)
    80002b34:	fa4d                	bnez	a2,80002ae6 <procdump+0x66>
    80002b36:	8652                	mv	a2,s4
    80002b38:	b77d                	j	80002ae6 <procdump+0x66>
    80002b3a:	60e6                	ld	ra,88(sp)
    80002b3c:	6446                	ld	s0,80(sp)
    80002b3e:	64a6                	ld	s1,72(sp)
    80002b40:	6906                	ld	s2,64(sp)
    80002b42:	79e2                	ld	s3,56(sp)
    80002b44:	7a42                	ld	s4,48(sp)
    80002b46:	7aa2                	ld	s5,40(sp)
    80002b48:	7b02                	ld	s6,32(sp)
    80002b4a:	6be2                	ld	s7,24(sp)
    80002b4c:	6c42                	ld	s8,16(sp)
    80002b4e:	6ca2                	ld	s9,8(sp)
    80002b50:	6125                	add	sp,sp,96
    80002b52:	8082                	ret

0000000080002b54 <waitx>:
    80002b54:	711d                	add	sp,sp,-96
    80002b56:	ec86                	sd	ra,88(sp)
    80002b58:	e8a2                	sd	s0,80(sp)
    80002b5a:	e4a6                	sd	s1,72(sp)
    80002b5c:	e0ca                	sd	s2,64(sp)
    80002b5e:	fc4e                	sd	s3,56(sp)
    80002b60:	f852                	sd	s4,48(sp)
    80002b62:	f456                	sd	s5,40(sp)
    80002b64:	f05a                	sd	s6,32(sp)
    80002b66:	ec5e                	sd	s7,24(sp)
    80002b68:	e862                	sd	s8,16(sp)
    80002b6a:	e466                	sd	s9,8(sp)
    80002b6c:	e06a                	sd	s10,0(sp)
    80002b6e:	1080                	add	s0,sp,96
    80002b70:	8b2a                	mv	s6,a0
    80002b72:	8bae                	mv	s7,a1
    80002b74:	8c32                	mv	s8,a2
    80002b76:	fffff097          	auipc	ra,0xfffff
    80002b7a:	f28080e7          	jalr	-216(ra) # 80001a9e <myproc>
    80002b7e:	892a                	mv	s2,a0
    80002b80:	00011517          	auipc	a0,0x11
    80002b84:	ba850513          	add	a0,a0,-1112 # 80013728 <wait_lock>
    80002b88:	ffffe097          	auipc	ra,0xffffe
    80002b8c:	0b0080e7          	jalr	176(ra) # 80000c38 <acquire>
    80002b90:	4c81                	li	s9,0
    80002b92:	4a15                	li	s4,5
    80002b94:	4a85                	li	s5,1
    80002b96:	00018997          	auipc	s3,0x18
    80002b9a:	9aa98993          	add	s3,s3,-1622 # 8001a540 <tickslock>
    80002b9e:	00011d17          	auipc	s10,0x11
    80002ba2:	b8ad0d13          	add	s10,s10,-1142 # 80013728 <wait_lock>
    80002ba6:	a8e9                	j	80002c80 <waitx+0x12c>
    80002ba8:	0604a983          	lw	s3,96(s1)
    80002bac:	1984a783          	lw	a5,408(s1)
    80002bb0:	00fc2023          	sw	a5,0(s8)
    80002bb4:	19c4a703          	lw	a4,412(s1)
    80002bb8:	9f3d                	addw	a4,a4,a5
    80002bba:	1a04a783          	lw	a5,416(s1)
    80002bbe:	9f99                	subw	a5,a5,a4
    80002bc0:	00fba023          	sw	a5,0(s7)
    80002bc4:	000b0e63          	beqz	s6,80002be0 <waitx+0x8c>
    80002bc8:	4691                	li	a3,4
    80002bca:	05c48613          	add	a2,s1,92
    80002bce:	85da                	mv	a1,s6
    80002bd0:	08093503          	ld	a0,128(s2)
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	b0e080e7          	jalr	-1266(ra) # 800016e2 <copyout>
    80002bdc:	04054363          	bltz	a0,80002c22 <waitx+0xce>
    80002be0:	8526                	mv	a0,s1
    80002be2:	fffff097          	auipc	ra,0xfffff
    80002be6:	06e080e7          	jalr	110(ra) # 80001c50 <freeproc>
    80002bea:	8526                	mv	a0,s1
    80002bec:	ffffe097          	auipc	ra,0xffffe
    80002bf0:	100080e7          	jalr	256(ra) # 80000cec <release>
    80002bf4:	00011517          	auipc	a0,0x11
    80002bf8:	b3450513          	add	a0,a0,-1228 # 80013728 <wait_lock>
    80002bfc:	ffffe097          	auipc	ra,0xffffe
    80002c00:	0f0080e7          	jalr	240(ra) # 80000cec <release>
    80002c04:	854e                	mv	a0,s3
    80002c06:	60e6                	ld	ra,88(sp)
    80002c08:	6446                	ld	s0,80(sp)
    80002c0a:	64a6                	ld	s1,72(sp)
    80002c0c:	6906                	ld	s2,64(sp)
    80002c0e:	79e2                	ld	s3,56(sp)
    80002c10:	7a42                	ld	s4,48(sp)
    80002c12:	7aa2                	ld	s5,40(sp)
    80002c14:	7b02                	ld	s6,32(sp)
    80002c16:	6be2                	ld	s7,24(sp)
    80002c18:	6c42                	ld	s8,16(sp)
    80002c1a:	6ca2                	ld	s9,8(sp)
    80002c1c:	6d02                	ld	s10,0(sp)
    80002c1e:	6125                	add	sp,sp,96
    80002c20:	8082                	ret
    80002c22:	8526                	mv	a0,s1
    80002c24:	ffffe097          	auipc	ra,0xffffe
    80002c28:	0c8080e7          	jalr	200(ra) # 80000cec <release>
    80002c2c:	00011517          	auipc	a0,0x11
    80002c30:	afc50513          	add	a0,a0,-1284 # 80013728 <wait_lock>
    80002c34:	ffffe097          	auipc	ra,0xffffe
    80002c38:	0b8080e7          	jalr	184(ra) # 80000cec <release>
    80002c3c:	59fd                	li	s3,-1
    80002c3e:	b7d9                	j	80002c04 <waitx+0xb0>
    80002c40:	1a848493          	add	s1,s1,424
    80002c44:	03348463          	beq	s1,s3,80002c6c <waitx+0x118>
    80002c48:	74bc                	ld	a5,104(s1)
    80002c4a:	ff279be3          	bne	a5,s2,80002c40 <waitx+0xec>
    80002c4e:	8526                	mv	a0,s1
    80002c50:	ffffe097          	auipc	ra,0xffffe
    80002c54:	fe8080e7          	jalr	-24(ra) # 80000c38 <acquire>
    80002c58:	44fc                	lw	a5,76(s1)
    80002c5a:	f54787e3          	beq	a5,s4,80002ba8 <waitx+0x54>
    80002c5e:	8526                	mv	a0,s1
    80002c60:	ffffe097          	auipc	ra,0xffffe
    80002c64:	08c080e7          	jalr	140(ra) # 80000cec <release>
    80002c68:	8756                	mv	a4,s5
    80002c6a:	bfd9                	j	80002c40 <waitx+0xec>
    80002c6c:	c305                	beqz	a4,80002c8c <waitx+0x138>
    80002c6e:	05892783          	lw	a5,88(s2)
    80002c72:	ef89                	bnez	a5,80002c8c <waitx+0x138>
    80002c74:	85ea                	mv	a1,s10
    80002c76:	854a                	mv	a0,s2
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	948080e7          	jalr	-1720(ra) # 800025c0 <sleep>
    80002c80:	8766                	mv	a4,s9
    80002c82:	00011497          	auipc	s1,0x11
    80002c86:	ebe48493          	add	s1,s1,-322 # 80013b40 <proc>
    80002c8a:	bf7d                	j	80002c48 <waitx+0xf4>
    80002c8c:	00011517          	auipc	a0,0x11
    80002c90:	a9c50513          	add	a0,a0,-1380 # 80013728 <wait_lock>
    80002c94:	ffffe097          	auipc	ra,0xffffe
    80002c98:	058080e7          	jalr	88(ra) # 80000cec <release>
    80002c9c:	59fd                	li	s3,-1
    80002c9e:	b79d                	j	80002c04 <waitx+0xb0>

0000000080002ca0 <update_time>:
    80002ca0:	7179                	add	sp,sp,-48
    80002ca2:	f406                	sd	ra,40(sp)
    80002ca4:	f022                	sd	s0,32(sp)
    80002ca6:	ec26                	sd	s1,24(sp)
    80002ca8:	e84a                	sd	s2,16(sp)
    80002caa:	e44e                	sd	s3,8(sp)
    80002cac:	1800                	add	s0,sp,48
    80002cae:	00011497          	auipc	s1,0x11
    80002cb2:	e9248493          	add	s1,s1,-366 # 80013b40 <proc>
    80002cb6:	4991                	li	s3,4
    80002cb8:	00018917          	auipc	s2,0x18
    80002cbc:	88890913          	add	s2,s2,-1912 # 8001a540 <tickslock>
    80002cc0:	a811                	j	80002cd4 <update_time+0x34>
    80002cc2:	8526                	mv	a0,s1
    80002cc4:	ffffe097          	auipc	ra,0xffffe
    80002cc8:	028080e7          	jalr	40(ra) # 80000cec <release>
    80002ccc:	1a848493          	add	s1,s1,424
    80002cd0:	03248063          	beq	s1,s2,80002cf0 <update_time+0x50>
    80002cd4:	8526                	mv	a0,s1
    80002cd6:	ffffe097          	auipc	ra,0xffffe
    80002cda:	f62080e7          	jalr	-158(ra) # 80000c38 <acquire>
    80002cde:	44fc                	lw	a5,76(s1)
    80002ce0:	ff3791e3          	bne	a5,s3,80002cc2 <update_time+0x22>
    80002ce4:	1984a783          	lw	a5,408(s1)
    80002ce8:	2785                	addw	a5,a5,1
    80002cea:	18f4ac23          	sw	a5,408(s1)
    80002cee:	bfd1                	j	80002cc2 <update_time+0x22>
    80002cf0:	70a2                	ld	ra,40(sp)
    80002cf2:	7402                	ld	s0,32(sp)
    80002cf4:	64e2                	ld	s1,24(sp)
    80002cf6:	6942                	ld	s2,16(sp)
    80002cf8:	69a2                	ld	s3,8(sp)
    80002cfa:	6145                	add	sp,sp,48
    80002cfc:	8082                	ret

0000000080002cfe <getSysCount>:
    80002cfe:	1141                	add	sp,sp,-16
    80002d00:	e422                	sd	s0,8(sp)
    80002d02:	0800                	add	s0,sp,16
    80002d04:	86aa                	mv	a3,a0
    80002d06:	8909                	and	a0,a0,2
    80002d08:	e131                	bnez	a0,80002d4c <getSysCount+0x4e>
    80002d0a:	4785                	li	a5,1
    80002d0c:	02000613          	li	a2,32
    80002d10:	2785                	addw	a5,a5,1
    80002d12:	00c78d63          	beq	a5,a2,80002d2c <getSysCount+0x2e>
    80002d16:	40f6d73b          	sraw	a4,a3,a5
    80002d1a:	8b05                	and	a4,a4,1
    80002d1c:	db75                	beqz	a4,80002d10 <getSysCount+0x12>
    80002d1e:	078e                	sll	a5,a5,0x3
    80002d20:	00018717          	auipc	a4,0x18
    80002d24:	83870713          	add	a4,a4,-1992 # 8001a558 <syscall_count>
    80002d28:	97ba                	add	a5,a5,a4
    80002d2a:	4388                	lw	a0,0(a5)
    80002d2c:	00018797          	auipc	a5,0x18
    80002d30:	83478793          	add	a5,a5,-1996 # 8001a560 <syscall_count+0x8>
    80002d34:	00018717          	auipc	a4,0x18
    80002d38:	92470713          	add	a4,a4,-1756 # 8001a658 <bcache>
    80002d3c:	0007b023          	sd	zero,0(a5)
    80002d40:	07a1                	add	a5,a5,8
    80002d42:	fee79de3          	bne	a5,a4,80002d3c <getSysCount+0x3e>
    80002d46:	6422                	ld	s0,8(sp)
    80002d48:	0141                	add	sp,sp,16
    80002d4a:	8082                	ret
    80002d4c:	4785                	li	a5,1
    80002d4e:	bfc1                	j	80002d1e <getSysCount+0x20>

0000000080002d50 <swtch>:
    80002d50:	00153023          	sd	ra,0(a0)
    80002d54:	00253423          	sd	sp,8(a0)
    80002d58:	e900                	sd	s0,16(a0)
    80002d5a:	ed04                	sd	s1,24(a0)
    80002d5c:	03253023          	sd	s2,32(a0)
    80002d60:	03353423          	sd	s3,40(a0)
    80002d64:	03453823          	sd	s4,48(a0)
    80002d68:	03553c23          	sd	s5,56(a0)
    80002d6c:	05653023          	sd	s6,64(a0)
    80002d70:	05753423          	sd	s7,72(a0)
    80002d74:	05853823          	sd	s8,80(a0)
    80002d78:	05953c23          	sd	s9,88(a0)
    80002d7c:	07a53023          	sd	s10,96(a0)
    80002d80:	07b53423          	sd	s11,104(a0)
    80002d84:	0005b083          	ld	ra,0(a1)
    80002d88:	0085b103          	ld	sp,8(a1)
    80002d8c:	6980                	ld	s0,16(a1)
    80002d8e:	6d84                	ld	s1,24(a1)
    80002d90:	0205b903          	ld	s2,32(a1)
    80002d94:	0285b983          	ld	s3,40(a1)
    80002d98:	0305ba03          	ld	s4,48(a1)
    80002d9c:	0385ba83          	ld	s5,56(a1)
    80002da0:	0405bb03          	ld	s6,64(a1)
    80002da4:	0485bb83          	ld	s7,72(a1)
    80002da8:	0505bc03          	ld	s8,80(a1)
    80002dac:	0585bc83          	ld	s9,88(a1)
    80002db0:	0605bd03          	ld	s10,96(a1)
    80002db4:	0685bd83          	ld	s11,104(a1)
    80002db8:	8082                	ret

0000000080002dba <trapinit>:
    80002dba:	1141                	add	sp,sp,-16
    80002dbc:	e406                	sd	ra,8(sp)
    80002dbe:	e022                	sd	s0,0(sp)
    80002dc0:	0800                	add	s0,sp,16
    80002dc2:	00005597          	auipc	a1,0x5
    80002dc6:	5ae58593          	add	a1,a1,1454 # 80008370 <states.0+0x30>
    80002dca:	00017517          	auipc	a0,0x17
    80002dce:	77650513          	add	a0,a0,1910 # 8001a540 <tickslock>
    80002dd2:	ffffe097          	auipc	ra,0xffffe
    80002dd6:	dd6080e7          	jalr	-554(ra) # 80000ba8 <initlock>
    80002dda:	60a2                	ld	ra,8(sp)
    80002ddc:	6402                	ld	s0,0(sp)
    80002dde:	0141                	add	sp,sp,16
    80002de0:	8082                	ret

0000000080002de2 <trapinithart>:
    80002de2:	1141                	add	sp,sp,-16
    80002de4:	e422                	sd	s0,8(sp)
    80002de6:	0800                	add	s0,sp,16
    80002de8:	00003797          	auipc	a5,0x3
    80002dec:	7a878793          	add	a5,a5,1960 # 80006590 <kernelvec>
    80002df0:	10579073          	csrw	stvec,a5
    80002df4:	6422                	ld	s0,8(sp)
    80002df6:	0141                	add	sp,sp,16
    80002df8:	8082                	ret

0000000080002dfa <usertrapret>:
    80002dfa:	1141                	add	sp,sp,-16
    80002dfc:	e406                	sd	ra,8(sp)
    80002dfe:	e022                	sd	s0,0(sp)
    80002e00:	0800                	add	s0,sp,16
    80002e02:	fffff097          	auipc	ra,0xfffff
    80002e06:	c9c080e7          	jalr	-868(ra) # 80001a9e <myproc>
    80002e0a:	100027f3          	csrr	a5,sstatus
    80002e0e:	9bf5                	and	a5,a5,-3
    80002e10:	10079073          	csrw	sstatus,a5
    80002e14:	00004697          	auipc	a3,0x4
    80002e18:	1ec68693          	add	a3,a3,492 # 80007000 <_trampoline>
    80002e1c:	00004717          	auipc	a4,0x4
    80002e20:	1e470713          	add	a4,a4,484 # 80007000 <_trampoline>
    80002e24:	8f15                	sub	a4,a4,a3
    80002e26:	040007b7          	lui	a5,0x4000
    80002e2a:	17fd                	add	a5,a5,-1 # 3ffffff <_entry-0x7c000001>
    80002e2c:	07b2                	sll	a5,a5,0xc
    80002e2e:	973e                	add	a4,a4,a5
    80002e30:	10571073          	csrw	stvec,a4
    80002e34:	6558                	ld	a4,136(a0)
    80002e36:	18002673          	csrr	a2,satp
    80002e3a:	e310                	sd	a2,0(a4)
    80002e3c:	6550                	ld	a2,136(a0)
    80002e3e:	7938                	ld	a4,112(a0)
    80002e40:	6585                	lui	a1,0x1
    80002e42:	972e                	add	a4,a4,a1
    80002e44:	e618                	sd	a4,8(a2)
    80002e46:	6558                	ld	a4,136(a0)
    80002e48:	00000617          	auipc	a2,0x0
    80002e4c:	14660613          	add	a2,a2,326 # 80002f8e <usertrap>
    80002e50:	eb10                	sd	a2,16(a4)
    80002e52:	6558                	ld	a4,136(a0)
    80002e54:	8612                	mv	a2,tp
    80002e56:	f310                	sd	a2,32(a4)
    80002e58:	10002773          	csrr	a4,sstatus
    80002e5c:	eff77713          	and	a4,a4,-257
    80002e60:	02076713          	or	a4,a4,32
    80002e64:	10071073          	csrw	sstatus,a4
    80002e68:	6558                	ld	a4,136(a0)
    80002e6a:	6f18                	ld	a4,24(a4)
    80002e6c:	14171073          	csrw	sepc,a4
    80002e70:	6148                	ld	a0,128(a0)
    80002e72:	8131                	srl	a0,a0,0xc
    80002e74:	00004717          	auipc	a4,0x4
    80002e78:	22870713          	add	a4,a4,552 # 8000709c <userret>
    80002e7c:	8f15                	sub	a4,a4,a3
    80002e7e:	97ba                	add	a5,a5,a4
    80002e80:	577d                	li	a4,-1
    80002e82:	177e                	sll	a4,a4,0x3f
    80002e84:	8d59                	or	a0,a0,a4
    80002e86:	9782                	jalr	a5
    80002e88:	60a2                	ld	ra,8(sp)
    80002e8a:	6402                	ld	s0,0(sp)
    80002e8c:	0141                	add	sp,sp,16
    80002e8e:	8082                	ret

0000000080002e90 <clockintr>:
    80002e90:	1101                	add	sp,sp,-32
    80002e92:	ec06                	sd	ra,24(sp)
    80002e94:	e822                	sd	s0,16(sp)
    80002e96:	e426                	sd	s1,8(sp)
    80002e98:	e04a                	sd	s2,0(sp)
    80002e9a:	1000                	add	s0,sp,32
    80002e9c:	00017917          	auipc	s2,0x17
    80002ea0:	6a490913          	add	s2,s2,1700 # 8001a540 <tickslock>
    80002ea4:	854a                	mv	a0,s2
    80002ea6:	ffffe097          	auipc	ra,0xffffe
    80002eaa:	d92080e7          	jalr	-622(ra) # 80000c38 <acquire>
    80002eae:	00008497          	auipc	s1,0x8
    80002eb2:	5f248493          	add	s1,s1,1522 # 8000b4a0 <ticks>
    80002eb6:	409c                	lw	a5,0(s1)
    80002eb8:	2785                	addw	a5,a5,1
    80002eba:	c09c                	sw	a5,0(s1)
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	de4080e7          	jalr	-540(ra) # 80002ca0 <update_time>
    80002ec4:	8526                	mv	a0,s1
    80002ec6:	fffff097          	auipc	ra,0xfffff
    80002eca:	75e080e7          	jalr	1886(ra) # 80002624 <wakeup>
    80002ece:	854a                	mv	a0,s2
    80002ed0:	ffffe097          	auipc	ra,0xffffe
    80002ed4:	e1c080e7          	jalr	-484(ra) # 80000cec <release>
    80002ed8:	60e2                	ld	ra,24(sp)
    80002eda:	6442                	ld	s0,16(sp)
    80002edc:	64a2                	ld	s1,8(sp)
    80002ede:	6902                	ld	s2,0(sp)
    80002ee0:	6105                	add	sp,sp,32
    80002ee2:	8082                	ret

0000000080002ee4 <devintr>:
    80002ee4:	142027f3          	csrr	a5,scause
    80002ee8:	4501                	li	a0,0
    80002eea:	0a07d163          	bgez	a5,80002f8c <devintr+0xa8>
    80002eee:	1101                	add	sp,sp,-32
    80002ef0:	ec06                	sd	ra,24(sp)
    80002ef2:	e822                	sd	s0,16(sp)
    80002ef4:	1000                	add	s0,sp,32
    80002ef6:	0ff7f713          	zext.b	a4,a5
    80002efa:	46a5                	li	a3,9
    80002efc:	00d70c63          	beq	a4,a3,80002f14 <devintr+0x30>
    80002f00:	577d                	li	a4,-1
    80002f02:	177e                	sll	a4,a4,0x3f
    80002f04:	0705                	add	a4,a4,1
    80002f06:	4501                	li	a0,0
    80002f08:	06e78163          	beq	a5,a4,80002f6a <devintr+0x86>
    80002f0c:	60e2                	ld	ra,24(sp)
    80002f0e:	6442                	ld	s0,16(sp)
    80002f10:	6105                	add	sp,sp,32
    80002f12:	8082                	ret
    80002f14:	e426                	sd	s1,8(sp)
    80002f16:	00003097          	auipc	ra,0x3
    80002f1a:	786080e7          	jalr	1926(ra) # 8000669c <plic_claim>
    80002f1e:	84aa                	mv	s1,a0
    80002f20:	47a9                	li	a5,10
    80002f22:	00f50963          	beq	a0,a5,80002f34 <devintr+0x50>
    80002f26:	4785                	li	a5,1
    80002f28:	00f50b63          	beq	a0,a5,80002f3e <devintr+0x5a>
    80002f2c:	4505                	li	a0,1
    80002f2e:	ec89                	bnez	s1,80002f48 <devintr+0x64>
    80002f30:	64a2                	ld	s1,8(sp)
    80002f32:	bfe9                	j	80002f0c <devintr+0x28>
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	ac6080e7          	jalr	-1338(ra) # 800009fa <uartintr>
    80002f3c:	a839                	j	80002f5a <devintr+0x76>
    80002f3e:	00004097          	auipc	ra,0x4
    80002f42:	c88080e7          	jalr	-888(ra) # 80006bc6 <virtio_disk_intr>
    80002f46:	a811                	j	80002f5a <devintr+0x76>
    80002f48:	85a6                	mv	a1,s1
    80002f4a:	00005517          	auipc	a0,0x5
    80002f4e:	42e50513          	add	a0,a0,1070 # 80008378 <states.0+0x38>
    80002f52:	ffffd097          	auipc	ra,0xffffd
    80002f56:	658080e7          	jalr	1624(ra) # 800005aa <printf>
    80002f5a:	8526                	mv	a0,s1
    80002f5c:	00003097          	auipc	ra,0x3
    80002f60:	764080e7          	jalr	1892(ra) # 800066c0 <plic_complete>
    80002f64:	4505                	li	a0,1
    80002f66:	64a2                	ld	s1,8(sp)
    80002f68:	b755                	j	80002f0c <devintr+0x28>
    80002f6a:	fffff097          	auipc	ra,0xfffff
    80002f6e:	b08080e7          	jalr	-1272(ra) # 80001a72 <cpuid>
    80002f72:	c901                	beqz	a0,80002f82 <devintr+0x9e>
    80002f74:	144027f3          	csrr	a5,sip
    80002f78:	9bf5                	and	a5,a5,-3
    80002f7a:	14479073          	csrw	sip,a5
    80002f7e:	4509                	li	a0,2
    80002f80:	b771                	j	80002f0c <devintr+0x28>
    80002f82:	00000097          	auipc	ra,0x0
    80002f86:	f0e080e7          	jalr	-242(ra) # 80002e90 <clockintr>
    80002f8a:	b7ed                	j	80002f74 <devintr+0x90>
    80002f8c:	8082                	ret

0000000080002f8e <usertrap>:
    80002f8e:	1101                	add	sp,sp,-32
    80002f90:	ec06                	sd	ra,24(sp)
    80002f92:	e822                	sd	s0,16(sp)
    80002f94:	e426                	sd	s1,8(sp)
    80002f96:	e04a                	sd	s2,0(sp)
    80002f98:	1000                	add	s0,sp,32
    80002f9a:	100027f3          	csrr	a5,sstatus
    80002f9e:	1007f793          	and	a5,a5,256
    80002fa2:	efa5                	bnez	a5,8000301a <usertrap+0x8c>
    80002fa4:	00003797          	auipc	a5,0x3
    80002fa8:	5ec78793          	add	a5,a5,1516 # 80006590 <kernelvec>
    80002fac:	10579073          	csrw	stvec,a5
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	aee080e7          	jalr	-1298(ra) # 80001a9e <myproc>
    80002fb8:	84aa                	mv	s1,a0
    80002fba:	655c                	ld	a5,136(a0)
    80002fbc:	14102773          	csrr	a4,sepc
    80002fc0:	ef98                	sd	a4,24(a5)
    80002fc2:	14202773          	csrr	a4,scause
    80002fc6:	47a1                	li	a5,8
    80002fc8:	06f70163          	beq	a4,a5,8000302a <usertrap+0x9c>
    80002fcc:	00000097          	auipc	ra,0x0
    80002fd0:	f18080e7          	jalr	-232(ra) # 80002ee4 <devintr>
    80002fd4:	892a                	mv	s2,a0
    80002fd6:	c549                	beqz	a0,80003060 <usertrap+0xd2>
    80002fd8:	509c                	lw	a5,32(s1)
    80002fda:	00f05d63          	blez	a5,80002ff4 <usertrap+0x66>
    80002fde:	00008697          	auipc	a3,0x8
    80002fe2:	4c26a683          	lw	a3,1218(a3) # 8000b4a0 <ticks>
    80002fe6:	50d8                	lw	a4,36(s1)
    80002fe8:	9fb9                	addw	a5,a5,a4
    80002fea:	00f6e563          	bltu	a3,a5,80002ff4 <usertrap+0x66>
    80002fee:	d0d4                	sw	a3,36(s1)
    80002ff0:	549c                	lw	a5,40(s1)
    80002ff2:	c7c5                	beqz	a5,8000309a <usertrap+0x10c>
    80002ff4:	8526                	mv	a0,s1
    80002ff6:	00000097          	auipc	ra,0x0
    80002ffa:	87e080e7          	jalr	-1922(ra) # 80002874 <killed>
    80002ffe:	ed45                	bnez	a0,800030b6 <usertrap+0x128>
    80003000:	4789                	li	a5,2
    80003002:	0cf90063          	beq	s2,a5,800030c2 <usertrap+0x134>
    80003006:	00000097          	auipc	ra,0x0
    8000300a:	df4080e7          	jalr	-524(ra) # 80002dfa <usertrapret>
    8000300e:	60e2                	ld	ra,24(sp)
    80003010:	6442                	ld	s0,16(sp)
    80003012:	64a2                	ld	s1,8(sp)
    80003014:	6902                	ld	s2,0(sp)
    80003016:	6105                	add	sp,sp,32
    80003018:	8082                	ret
    8000301a:	00005517          	auipc	a0,0x5
    8000301e:	37e50513          	add	a0,a0,894 # 80008398 <states.0+0x58>
    80003022:	ffffd097          	auipc	ra,0xffffd
    80003026:	53e080e7          	jalr	1342(ra) # 80000560 <panic>
    8000302a:	00000097          	auipc	ra,0x0
    8000302e:	84a080e7          	jalr	-1974(ra) # 80002874 <killed>
    80003032:	e10d                	bnez	a0,80003054 <usertrap+0xc6>
    80003034:	64d8                	ld	a4,136(s1)
    80003036:	6f1c                	ld	a5,24(a4)
    80003038:	0791                	add	a5,a5,4
    8000303a:	ef1c                	sd	a5,24(a4)
    8000303c:	100027f3          	csrr	a5,sstatus
    80003040:	0027e793          	or	a5,a5,2
    80003044:	10079073          	csrw	sstatus,a5
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	2da080e7          	jalr	730(ra) # 80003322 <syscall>
    80003050:	4901                	li	s2,0
    80003052:	b759                	j	80002fd8 <usertrap+0x4a>
    80003054:	557d                	li	a0,-1
    80003056:	fffff097          	auipc	ra,0xfffff
    8000305a:	69e080e7          	jalr	1694(ra) # 800026f4 <exit>
    8000305e:	bfd9                	j	80003034 <usertrap+0xa6>
    80003060:	142025f3          	csrr	a1,scause
    80003064:	50b0                	lw	a2,96(s1)
    80003066:	00005517          	auipc	a0,0x5
    8000306a:	35250513          	add	a0,a0,850 # 800083b8 <states.0+0x78>
    8000306e:	ffffd097          	auipc	ra,0xffffd
    80003072:	53c080e7          	jalr	1340(ra) # 800005aa <printf>
    80003076:	141025f3          	csrr	a1,sepc
    8000307a:	14302673          	csrr	a2,stval
    8000307e:	00005517          	auipc	a0,0x5
    80003082:	36a50513          	add	a0,a0,874 # 800083e8 <states.0+0xa8>
    80003086:	ffffd097          	auipc	ra,0xffffd
    8000308a:	524080e7          	jalr	1316(ra) # 800005aa <printf>
    8000308e:	8526                	mv	a0,s1
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	7b8080e7          	jalr	1976(ra) # 80002848 <setkilled>
    80003098:	b781                	j	80002fd8 <usertrap+0x4a>
    8000309a:	4785                	li	a5,1
    8000309c:	d49c                	sw	a5,40(s1)
    8000309e:	12000613          	li	a2,288
    800030a2:	64cc                	ld	a1,136(s1)
    800030a4:	7888                	ld	a0,48(s1)
    800030a6:	ffffe097          	auipc	ra,0xffffe
    800030aa:	cea080e7          	jalr	-790(ra) # 80000d90 <memmove>
    800030ae:	64dc                	ld	a5,136(s1)
    800030b0:	6c98                	ld	a4,24(s1)
    800030b2:	ef98                	sd	a4,24(a5)
    800030b4:	b781                	j	80002ff4 <usertrap+0x66>
    800030b6:	557d                	li	a0,-1
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	63c080e7          	jalr	1596(ra) # 800026f4 <exit>
    800030c0:	b781                	j	80003000 <usertrap+0x72>
    800030c2:	fffff097          	auipc	ra,0xfffff
    800030c6:	4c2080e7          	jalr	1218(ra) # 80002584 <yield>
    800030ca:	bf35                	j	80003006 <usertrap+0x78>

00000000800030cc <kerneltrap>:
    800030cc:	7179                	add	sp,sp,-48
    800030ce:	f406                	sd	ra,40(sp)
    800030d0:	f022                	sd	s0,32(sp)
    800030d2:	ec26                	sd	s1,24(sp)
    800030d4:	e84a                	sd	s2,16(sp)
    800030d6:	e44e                	sd	s3,8(sp)
    800030d8:	1800                	add	s0,sp,48
    800030da:	14102973          	csrr	s2,sepc
    800030de:	100024f3          	csrr	s1,sstatus
    800030e2:	142029f3          	csrr	s3,scause
    800030e6:	1004f793          	and	a5,s1,256
    800030ea:	cb85                	beqz	a5,8000311a <kerneltrap+0x4e>
    800030ec:	100027f3          	csrr	a5,sstatus
    800030f0:	8b89                	and	a5,a5,2
    800030f2:	ef85                	bnez	a5,8000312a <kerneltrap+0x5e>
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	df0080e7          	jalr	-528(ra) # 80002ee4 <devintr>
    800030fc:	cd1d                	beqz	a0,8000313a <kerneltrap+0x6e>
    800030fe:	4789                	li	a5,2
    80003100:	06f50a63          	beq	a0,a5,80003174 <kerneltrap+0xa8>
    80003104:	14191073          	csrw	sepc,s2
    80003108:	10049073          	csrw	sstatus,s1
    8000310c:	70a2                	ld	ra,40(sp)
    8000310e:	7402                	ld	s0,32(sp)
    80003110:	64e2                	ld	s1,24(sp)
    80003112:	6942                	ld	s2,16(sp)
    80003114:	69a2                	ld	s3,8(sp)
    80003116:	6145                	add	sp,sp,48
    80003118:	8082                	ret
    8000311a:	00005517          	auipc	a0,0x5
    8000311e:	2ee50513          	add	a0,a0,750 # 80008408 <states.0+0xc8>
    80003122:	ffffd097          	auipc	ra,0xffffd
    80003126:	43e080e7          	jalr	1086(ra) # 80000560 <panic>
    8000312a:	00005517          	auipc	a0,0x5
    8000312e:	30650513          	add	a0,a0,774 # 80008430 <states.0+0xf0>
    80003132:	ffffd097          	auipc	ra,0xffffd
    80003136:	42e080e7          	jalr	1070(ra) # 80000560 <panic>
    8000313a:	85ce                	mv	a1,s3
    8000313c:	00005517          	auipc	a0,0x5
    80003140:	31450513          	add	a0,a0,788 # 80008450 <states.0+0x110>
    80003144:	ffffd097          	auipc	ra,0xffffd
    80003148:	466080e7          	jalr	1126(ra) # 800005aa <printf>
    8000314c:	141025f3          	csrr	a1,sepc
    80003150:	14302673          	csrr	a2,stval
    80003154:	00005517          	auipc	a0,0x5
    80003158:	30c50513          	add	a0,a0,780 # 80008460 <states.0+0x120>
    8000315c:	ffffd097          	auipc	ra,0xffffd
    80003160:	44e080e7          	jalr	1102(ra) # 800005aa <printf>
    80003164:	00005517          	auipc	a0,0x5
    80003168:	31450513          	add	a0,a0,788 # 80008478 <states.0+0x138>
    8000316c:	ffffd097          	auipc	ra,0xffffd
    80003170:	3f4080e7          	jalr	1012(ra) # 80000560 <panic>
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	92a080e7          	jalr	-1750(ra) # 80001a9e <myproc>
    8000317c:	d541                	beqz	a0,80003104 <kerneltrap+0x38>
    8000317e:	fffff097          	auipc	ra,0xfffff
    80003182:	920080e7          	jalr	-1760(ra) # 80001a9e <myproc>
    80003186:	4578                	lw	a4,76(a0)
    80003188:	4791                	li	a5,4
    8000318a:	f6f71de3          	bne	a4,a5,80003104 <kerneltrap+0x38>
    8000318e:	fffff097          	auipc	ra,0xfffff
    80003192:	3f6080e7          	jalr	1014(ra) # 80002584 <yield>
    80003196:	b7bd                	j	80003104 <kerneltrap+0x38>

0000000080003198 <argraw>:
    80003198:	1101                	add	sp,sp,-32
    8000319a:	ec06                	sd	ra,24(sp)
    8000319c:	e822                	sd	s0,16(sp)
    8000319e:	e426                	sd	s1,8(sp)
    800031a0:	1000                	add	s0,sp,32
    800031a2:	84aa                	mv	s1,a0
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	8fa080e7          	jalr	-1798(ra) # 80001a9e <myproc>
    800031ac:	479d                	li	a5,7
    800031ae:	0497e763          	bltu	a5,s1,800031fc <argraw+0x64>
    800031b2:	048a                	sll	s1,s1,0x2
    800031b4:	00005717          	auipc	a4,0x5
    800031b8:	2fc70713          	add	a4,a4,764 # 800084b0 <states.0+0x170>
    800031bc:	94ba                	add	s1,s1,a4
    800031be:	409c                	lw	a5,0(s1)
    800031c0:	97ba                	add	a5,a5,a4
    800031c2:	8782                	jr	a5
    800031c4:	655c                	ld	a5,136(a0)
    800031c6:	7ba8                	ld	a0,112(a5)
    800031c8:	60e2                	ld	ra,24(sp)
    800031ca:	6442                	ld	s0,16(sp)
    800031cc:	64a2                	ld	s1,8(sp)
    800031ce:	6105                	add	sp,sp,32
    800031d0:	8082                	ret
    800031d2:	655c                	ld	a5,136(a0)
    800031d4:	7fa8                	ld	a0,120(a5)
    800031d6:	bfcd                	j	800031c8 <argraw+0x30>
    800031d8:	655c                	ld	a5,136(a0)
    800031da:	63c8                	ld	a0,128(a5)
    800031dc:	b7f5                	j	800031c8 <argraw+0x30>
    800031de:	655c                	ld	a5,136(a0)
    800031e0:	67c8                	ld	a0,136(a5)
    800031e2:	b7dd                	j	800031c8 <argraw+0x30>
    800031e4:	655c                	ld	a5,136(a0)
    800031e6:	6bc8                	ld	a0,144(a5)
    800031e8:	b7c5                	j	800031c8 <argraw+0x30>
    800031ea:	655c                	ld	a5,136(a0)
    800031ec:	6fc8                	ld	a0,152(a5)
    800031ee:	bfe9                	j	800031c8 <argraw+0x30>
    800031f0:	655c                	ld	a5,136(a0)
    800031f2:	73c8                	ld	a0,160(a5)
    800031f4:	bfd1                	j	800031c8 <argraw+0x30>
    800031f6:	655c                	ld	a5,136(a0)
    800031f8:	77c8                	ld	a0,168(a5)
    800031fa:	b7f9                	j	800031c8 <argraw+0x30>
    800031fc:	00005517          	auipc	a0,0x5
    80003200:	28c50513          	add	a0,a0,652 # 80008488 <states.0+0x148>
    80003204:	ffffd097          	auipc	ra,0xffffd
    80003208:	35c080e7          	jalr	860(ra) # 80000560 <panic>

000000008000320c <fetchaddr>:
    8000320c:	1101                	add	sp,sp,-32
    8000320e:	ec06                	sd	ra,24(sp)
    80003210:	e822                	sd	s0,16(sp)
    80003212:	e426                	sd	s1,8(sp)
    80003214:	e04a                	sd	s2,0(sp)
    80003216:	1000                	add	s0,sp,32
    80003218:	84aa                	mv	s1,a0
    8000321a:	892e                	mv	s2,a1
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	882080e7          	jalr	-1918(ra) # 80001a9e <myproc>
    80003224:	7d3c                	ld	a5,120(a0)
    80003226:	02f4f863          	bgeu	s1,a5,80003256 <fetchaddr+0x4a>
    8000322a:	00848713          	add	a4,s1,8
    8000322e:	02e7e663          	bltu	a5,a4,8000325a <fetchaddr+0x4e>
    80003232:	46a1                	li	a3,8
    80003234:	8626                	mv	a2,s1
    80003236:	85ca                	mv	a1,s2
    80003238:	6148                	ld	a0,128(a0)
    8000323a:	ffffe097          	auipc	ra,0xffffe
    8000323e:	534080e7          	jalr	1332(ra) # 8000176e <copyin>
    80003242:	00a03533          	snez	a0,a0
    80003246:	40a00533          	neg	a0,a0
    8000324a:	60e2                	ld	ra,24(sp)
    8000324c:	6442                	ld	s0,16(sp)
    8000324e:	64a2                	ld	s1,8(sp)
    80003250:	6902                	ld	s2,0(sp)
    80003252:	6105                	add	sp,sp,32
    80003254:	8082                	ret
    80003256:	557d                	li	a0,-1
    80003258:	bfcd                	j	8000324a <fetchaddr+0x3e>
    8000325a:	557d                	li	a0,-1
    8000325c:	b7fd                	j	8000324a <fetchaddr+0x3e>

000000008000325e <fetchstr>:
    8000325e:	7179                	add	sp,sp,-48
    80003260:	f406                	sd	ra,40(sp)
    80003262:	f022                	sd	s0,32(sp)
    80003264:	ec26                	sd	s1,24(sp)
    80003266:	e84a                	sd	s2,16(sp)
    80003268:	e44e                	sd	s3,8(sp)
    8000326a:	1800                	add	s0,sp,48
    8000326c:	892a                	mv	s2,a0
    8000326e:	84ae                	mv	s1,a1
    80003270:	89b2                	mv	s3,a2
    80003272:	fffff097          	auipc	ra,0xfffff
    80003276:	82c080e7          	jalr	-2004(ra) # 80001a9e <myproc>
    8000327a:	86ce                	mv	a3,s3
    8000327c:	864a                	mv	a2,s2
    8000327e:	85a6                	mv	a1,s1
    80003280:	6148                	ld	a0,128(a0)
    80003282:	ffffe097          	auipc	ra,0xffffe
    80003286:	57a080e7          	jalr	1402(ra) # 800017fc <copyinstr>
    8000328a:	00054e63          	bltz	a0,800032a6 <fetchstr+0x48>
    8000328e:	8526                	mv	a0,s1
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	c18080e7          	jalr	-1000(ra) # 80000ea8 <strlen>
    80003298:	70a2                	ld	ra,40(sp)
    8000329a:	7402                	ld	s0,32(sp)
    8000329c:	64e2                	ld	s1,24(sp)
    8000329e:	6942                	ld	s2,16(sp)
    800032a0:	69a2                	ld	s3,8(sp)
    800032a2:	6145                	add	sp,sp,48
    800032a4:	8082                	ret
    800032a6:	557d                	li	a0,-1
    800032a8:	bfc5                	j	80003298 <fetchstr+0x3a>

00000000800032aa <argint>:
    800032aa:	1101                	add	sp,sp,-32
    800032ac:	ec06                	sd	ra,24(sp)
    800032ae:	e822                	sd	s0,16(sp)
    800032b0:	e426                	sd	s1,8(sp)
    800032b2:	1000                	add	s0,sp,32
    800032b4:	84ae                	mv	s1,a1
    800032b6:	00000097          	auipc	ra,0x0
    800032ba:	ee2080e7          	jalr	-286(ra) # 80003198 <argraw>
    800032be:	c088                	sw	a0,0(s1)
    800032c0:	60e2                	ld	ra,24(sp)
    800032c2:	6442                	ld	s0,16(sp)
    800032c4:	64a2                	ld	s1,8(sp)
    800032c6:	6105                	add	sp,sp,32
    800032c8:	8082                	ret

00000000800032ca <argaddr>:
    800032ca:	1101                	add	sp,sp,-32
    800032cc:	ec06                	sd	ra,24(sp)
    800032ce:	e822                	sd	s0,16(sp)
    800032d0:	e426                	sd	s1,8(sp)
    800032d2:	1000                	add	s0,sp,32
    800032d4:	84ae                	mv	s1,a1
    800032d6:	00000097          	auipc	ra,0x0
    800032da:	ec2080e7          	jalr	-318(ra) # 80003198 <argraw>
    800032de:	e088                	sd	a0,0(s1)
    800032e0:	60e2                	ld	ra,24(sp)
    800032e2:	6442                	ld	s0,16(sp)
    800032e4:	64a2                	ld	s1,8(sp)
    800032e6:	6105                	add	sp,sp,32
    800032e8:	8082                	ret

00000000800032ea <argstr>:
    800032ea:	7179                	add	sp,sp,-48
    800032ec:	f406                	sd	ra,40(sp)
    800032ee:	f022                	sd	s0,32(sp)
    800032f0:	ec26                	sd	s1,24(sp)
    800032f2:	e84a                	sd	s2,16(sp)
    800032f4:	1800                	add	s0,sp,48
    800032f6:	84ae                	mv	s1,a1
    800032f8:	8932                	mv	s2,a2
    800032fa:	fd840593          	add	a1,s0,-40
    800032fe:	00000097          	auipc	ra,0x0
    80003302:	fcc080e7          	jalr	-52(ra) # 800032ca <argaddr>
    80003306:	864a                	mv	a2,s2
    80003308:	85a6                	mv	a1,s1
    8000330a:	fd843503          	ld	a0,-40(s0)
    8000330e:	00000097          	auipc	ra,0x0
    80003312:	f50080e7          	jalr	-176(ra) # 8000325e <fetchstr>
    80003316:	70a2                	ld	ra,40(sp)
    80003318:	7402                	ld	s0,32(sp)
    8000331a:	64e2                	ld	s1,24(sp)
    8000331c:	6942                	ld	s2,16(sp)
    8000331e:	6145                	add	sp,sp,48
    80003320:	8082                	ret

0000000080003322 <syscall>:
    80003322:	7179                	add	sp,sp,-48
    80003324:	f406                	sd	ra,40(sp)
    80003326:	f022                	sd	s0,32(sp)
    80003328:	ec26                	sd	s1,24(sp)
    8000332a:	e84a                	sd	s2,16(sp)
    8000332c:	e44e                	sd	s3,8(sp)
    8000332e:	1800                	add	s0,sp,48
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	76e080e7          	jalr	1902(ra) # 80001a9e <myproc>
    80003338:	84aa                	mv	s1,a0
    8000333a:	08853983          	ld	s3,136(a0)
    8000333e:	0a89b783          	ld	a5,168(s3)
    80003342:	0007891b          	sext.w	s2,a5
    80003346:	37fd                	addw	a5,a5,-1
    80003348:	4765                	li	a4,25
    8000334a:	02f76863          	bltu	a4,a5,8000337a <syscall+0x58>
    8000334e:	00391713          	sll	a4,s2,0x3
    80003352:	00005797          	auipc	a5,0x5
    80003356:	17e78793          	add	a5,a5,382 # 800084d0 <syscalls>
    8000335a:	97ba                	add	a5,a5,a4
    8000335c:	639c                	ld	a5,0(a5)
    8000335e:	cf91                	beqz	a5,8000337a <syscall+0x58>
    80003360:	9782                	jalr	a5
    80003362:	06a9b823          	sd	a0,112(s3)
    80003366:	090e                	sll	s2,s2,0x3
    80003368:	00017797          	auipc	a5,0x17
    8000336c:	1f078793          	add	a5,a5,496 # 8001a558 <syscall_count>
    80003370:	97ca                	add	a5,a5,s2
    80003372:	6398                	ld	a4,0(a5)
    80003374:	0705                	add	a4,a4,1
    80003376:	e398                	sd	a4,0(a5)
    80003378:	a005                	j	80003398 <syscall+0x76>
    8000337a:	86ca                	mv	a3,s2
    8000337c:	18848613          	add	a2,s1,392
    80003380:	50ac                	lw	a1,96(s1)
    80003382:	00005517          	auipc	a0,0x5
    80003386:	10e50513          	add	a0,a0,270 # 80008490 <states.0+0x150>
    8000338a:	ffffd097          	auipc	ra,0xffffd
    8000338e:	220080e7          	jalr	544(ra) # 800005aa <printf>
    80003392:	64dc                	ld	a5,136(s1)
    80003394:	577d                	li	a4,-1
    80003396:	fbb8                	sd	a4,112(a5)
    80003398:	70a2                	ld	ra,40(sp)
    8000339a:	7402                	ld	s0,32(sp)
    8000339c:	64e2                	ld	s1,24(sp)
    8000339e:	6942                	ld	s2,16(sp)
    800033a0:	69a2                	ld	s3,8(sp)
    800033a2:	6145                	add	sp,sp,48
    800033a4:	8082                	ret

00000000800033a6 <sys_exit>:
    800033a6:	1101                	add	sp,sp,-32
    800033a8:	ec06                	sd	ra,24(sp)
    800033aa:	e822                	sd	s0,16(sp)
    800033ac:	1000                	add	s0,sp,32
    800033ae:	fec40593          	add	a1,s0,-20
    800033b2:	4501                	li	a0,0
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	ef6080e7          	jalr	-266(ra) # 800032aa <argint>
    800033bc:	fec42503          	lw	a0,-20(s0)
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	334080e7          	jalr	820(ra) # 800026f4 <exit>
    800033c8:	4501                	li	a0,0
    800033ca:	60e2                	ld	ra,24(sp)
    800033cc:	6442                	ld	s0,16(sp)
    800033ce:	6105                	add	sp,sp,32
    800033d0:	8082                	ret

00000000800033d2 <sys_getpid>:
    800033d2:	1141                	add	sp,sp,-16
    800033d4:	e406                	sd	ra,8(sp)
    800033d6:	e022                	sd	s0,0(sp)
    800033d8:	0800                	add	s0,sp,16
    800033da:	ffffe097          	auipc	ra,0xffffe
    800033de:	6c4080e7          	jalr	1732(ra) # 80001a9e <myproc>
    800033e2:	5128                	lw	a0,96(a0)
    800033e4:	60a2                	ld	ra,8(sp)
    800033e6:	6402                	ld	s0,0(sp)
    800033e8:	0141                	add	sp,sp,16
    800033ea:	8082                	ret

00000000800033ec <sys_fork>:
    800033ec:	1141                	add	sp,sp,-16
    800033ee:	e406                	sd	ra,8(sp)
    800033f0:	e022                	sd	s0,0(sp)
    800033f2:	0800                	add	s0,sp,16
    800033f4:	fffff097          	auipc	ra,0xfffff
    800033f8:	a8a080e7          	jalr	-1398(ra) # 80001e7e <fork>
    800033fc:	60a2                	ld	ra,8(sp)
    800033fe:	6402                	ld	s0,0(sp)
    80003400:	0141                	add	sp,sp,16
    80003402:	8082                	ret

0000000080003404 <sys_wait>:
    80003404:	1101                	add	sp,sp,-32
    80003406:	ec06                	sd	ra,24(sp)
    80003408:	e822                	sd	s0,16(sp)
    8000340a:	1000                	add	s0,sp,32
    8000340c:	fe840593          	add	a1,s0,-24
    80003410:	4501                	li	a0,0
    80003412:	00000097          	auipc	ra,0x0
    80003416:	eb8080e7          	jalr	-328(ra) # 800032ca <argaddr>
    8000341a:	fe843503          	ld	a0,-24(s0)
    8000341e:	fffff097          	auipc	ra,0xfffff
    80003422:	488080e7          	jalr	1160(ra) # 800028a6 <wait>
    80003426:	60e2                	ld	ra,24(sp)
    80003428:	6442                	ld	s0,16(sp)
    8000342a:	6105                	add	sp,sp,32
    8000342c:	8082                	ret

000000008000342e <sys_sbrk>:
    8000342e:	7179                	add	sp,sp,-48
    80003430:	f406                	sd	ra,40(sp)
    80003432:	f022                	sd	s0,32(sp)
    80003434:	ec26                	sd	s1,24(sp)
    80003436:	1800                	add	s0,sp,48
    80003438:	fdc40593          	add	a1,s0,-36
    8000343c:	4501                	li	a0,0
    8000343e:	00000097          	auipc	ra,0x0
    80003442:	e6c080e7          	jalr	-404(ra) # 800032aa <argint>
    80003446:	ffffe097          	auipc	ra,0xffffe
    8000344a:	658080e7          	jalr	1624(ra) # 80001a9e <myproc>
    8000344e:	7d24                	ld	s1,120(a0)
    80003450:	fdc42503          	lw	a0,-36(s0)
    80003454:	fffff097          	auipc	ra,0xfffff
    80003458:	9ce080e7          	jalr	-1586(ra) # 80001e22 <growproc>
    8000345c:	00054863          	bltz	a0,8000346c <sys_sbrk+0x3e>
    80003460:	8526                	mv	a0,s1
    80003462:	70a2                	ld	ra,40(sp)
    80003464:	7402                	ld	s0,32(sp)
    80003466:	64e2                	ld	s1,24(sp)
    80003468:	6145                	add	sp,sp,48
    8000346a:	8082                	ret
    8000346c:	54fd                	li	s1,-1
    8000346e:	bfcd                	j	80003460 <sys_sbrk+0x32>

0000000080003470 <sys_sleep>:
    80003470:	7139                	add	sp,sp,-64
    80003472:	fc06                	sd	ra,56(sp)
    80003474:	f822                	sd	s0,48(sp)
    80003476:	f04a                	sd	s2,32(sp)
    80003478:	0080                	add	s0,sp,64
    8000347a:	fcc40593          	add	a1,s0,-52
    8000347e:	4501                	li	a0,0
    80003480:	00000097          	auipc	ra,0x0
    80003484:	e2a080e7          	jalr	-470(ra) # 800032aa <argint>
    80003488:	00017517          	auipc	a0,0x17
    8000348c:	0b850513          	add	a0,a0,184 # 8001a540 <tickslock>
    80003490:	ffffd097          	auipc	ra,0xffffd
    80003494:	7a8080e7          	jalr	1960(ra) # 80000c38 <acquire>
    80003498:	00008917          	auipc	s2,0x8
    8000349c:	00892903          	lw	s2,8(s2) # 8000b4a0 <ticks>
    800034a0:	fcc42783          	lw	a5,-52(s0)
    800034a4:	c3b9                	beqz	a5,800034ea <sys_sleep+0x7a>
    800034a6:	f426                	sd	s1,40(sp)
    800034a8:	ec4e                	sd	s3,24(sp)
    800034aa:	00017997          	auipc	s3,0x17
    800034ae:	09698993          	add	s3,s3,150 # 8001a540 <tickslock>
    800034b2:	00008497          	auipc	s1,0x8
    800034b6:	fee48493          	add	s1,s1,-18 # 8000b4a0 <ticks>
    800034ba:	ffffe097          	auipc	ra,0xffffe
    800034be:	5e4080e7          	jalr	1508(ra) # 80001a9e <myproc>
    800034c2:	fffff097          	auipc	ra,0xfffff
    800034c6:	3b2080e7          	jalr	946(ra) # 80002874 <killed>
    800034ca:	ed15                	bnez	a0,80003506 <sys_sleep+0x96>
    800034cc:	85ce                	mv	a1,s3
    800034ce:	8526                	mv	a0,s1
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	0f0080e7          	jalr	240(ra) # 800025c0 <sleep>
    800034d8:	409c                	lw	a5,0(s1)
    800034da:	412787bb          	subw	a5,a5,s2
    800034de:	fcc42703          	lw	a4,-52(s0)
    800034e2:	fce7ece3          	bltu	a5,a4,800034ba <sys_sleep+0x4a>
    800034e6:	74a2                	ld	s1,40(sp)
    800034e8:	69e2                	ld	s3,24(sp)
    800034ea:	00017517          	auipc	a0,0x17
    800034ee:	05650513          	add	a0,a0,86 # 8001a540 <tickslock>
    800034f2:	ffffd097          	auipc	ra,0xffffd
    800034f6:	7fa080e7          	jalr	2042(ra) # 80000cec <release>
    800034fa:	4501                	li	a0,0
    800034fc:	70e2                	ld	ra,56(sp)
    800034fe:	7442                	ld	s0,48(sp)
    80003500:	7902                	ld	s2,32(sp)
    80003502:	6121                	add	sp,sp,64
    80003504:	8082                	ret
    80003506:	00017517          	auipc	a0,0x17
    8000350a:	03a50513          	add	a0,a0,58 # 8001a540 <tickslock>
    8000350e:	ffffd097          	auipc	ra,0xffffd
    80003512:	7de080e7          	jalr	2014(ra) # 80000cec <release>
    80003516:	557d                	li	a0,-1
    80003518:	74a2                	ld	s1,40(sp)
    8000351a:	69e2                	ld	s3,24(sp)
    8000351c:	b7c5                	j	800034fc <sys_sleep+0x8c>

000000008000351e <sys_kill>:
    8000351e:	1101                	add	sp,sp,-32
    80003520:	ec06                	sd	ra,24(sp)
    80003522:	e822                	sd	s0,16(sp)
    80003524:	1000                	add	s0,sp,32
    80003526:	fec40593          	add	a1,s0,-20
    8000352a:	4501                	li	a0,0
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	d7e080e7          	jalr	-642(ra) # 800032aa <argint>
    80003534:	fec42503          	lw	a0,-20(s0)
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	29e080e7          	jalr	670(ra) # 800027d6 <kill>
    80003540:	60e2                	ld	ra,24(sp)
    80003542:	6442                	ld	s0,16(sp)
    80003544:	6105                	add	sp,sp,32
    80003546:	8082                	ret

0000000080003548 <sys_uptime>:
    80003548:	1101                	add	sp,sp,-32
    8000354a:	ec06                	sd	ra,24(sp)
    8000354c:	e822                	sd	s0,16(sp)
    8000354e:	e426                	sd	s1,8(sp)
    80003550:	1000                	add	s0,sp,32
    80003552:	00017517          	auipc	a0,0x17
    80003556:	fee50513          	add	a0,a0,-18 # 8001a540 <tickslock>
    8000355a:	ffffd097          	auipc	ra,0xffffd
    8000355e:	6de080e7          	jalr	1758(ra) # 80000c38 <acquire>
    80003562:	00008497          	auipc	s1,0x8
    80003566:	f3e4a483          	lw	s1,-194(s1) # 8000b4a0 <ticks>
    8000356a:	00017517          	auipc	a0,0x17
    8000356e:	fd650513          	add	a0,a0,-42 # 8001a540 <tickslock>
    80003572:	ffffd097          	auipc	ra,0xffffd
    80003576:	77a080e7          	jalr	1914(ra) # 80000cec <release>
    8000357a:	02049513          	sll	a0,s1,0x20
    8000357e:	9101                	srl	a0,a0,0x20
    80003580:	60e2                	ld	ra,24(sp)
    80003582:	6442                	ld	s0,16(sp)
    80003584:	64a2                	ld	s1,8(sp)
    80003586:	6105                	add	sp,sp,32
    80003588:	8082                	ret

000000008000358a <sys_waitx>:
    8000358a:	7139                	add	sp,sp,-64
    8000358c:	fc06                	sd	ra,56(sp)
    8000358e:	f822                	sd	s0,48(sp)
    80003590:	f426                	sd	s1,40(sp)
    80003592:	f04a                	sd	s2,32(sp)
    80003594:	0080                	add	s0,sp,64
    80003596:	fd840593          	add	a1,s0,-40
    8000359a:	4501                	li	a0,0
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	d2e080e7          	jalr	-722(ra) # 800032ca <argaddr>
    800035a4:	fd040593          	add	a1,s0,-48
    800035a8:	4505                	li	a0,1
    800035aa:	00000097          	auipc	ra,0x0
    800035ae:	d20080e7          	jalr	-736(ra) # 800032ca <argaddr>
    800035b2:	fc840593          	add	a1,s0,-56
    800035b6:	4509                	li	a0,2
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	d12080e7          	jalr	-750(ra) # 800032ca <argaddr>
    800035c0:	fc040613          	add	a2,s0,-64
    800035c4:	fc440593          	add	a1,s0,-60
    800035c8:	fd843503          	ld	a0,-40(s0)
    800035cc:	fffff097          	auipc	ra,0xfffff
    800035d0:	588080e7          	jalr	1416(ra) # 80002b54 <waitx>
    800035d4:	892a                	mv	s2,a0
    800035d6:	ffffe097          	auipc	ra,0xffffe
    800035da:	4c8080e7          	jalr	1224(ra) # 80001a9e <myproc>
    800035de:	84aa                	mv	s1,a0
    800035e0:	4691                	li	a3,4
    800035e2:	fc440613          	add	a2,s0,-60
    800035e6:	fd043583          	ld	a1,-48(s0)
    800035ea:	6148                	ld	a0,128(a0)
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	0f6080e7          	jalr	246(ra) # 800016e2 <copyout>
    800035f4:	57fd                	li	a5,-1
    800035f6:	00054f63          	bltz	a0,80003614 <sys_waitx+0x8a>
    800035fa:	4691                	li	a3,4
    800035fc:	fc040613          	add	a2,s0,-64
    80003600:	fc843583          	ld	a1,-56(s0)
    80003604:	60c8                	ld	a0,128(s1)
    80003606:	ffffe097          	auipc	ra,0xffffe
    8000360a:	0dc080e7          	jalr	220(ra) # 800016e2 <copyout>
    8000360e:	00054a63          	bltz	a0,80003622 <sys_waitx+0x98>
    80003612:	87ca                	mv	a5,s2
    80003614:	853e                	mv	a0,a5
    80003616:	70e2                	ld	ra,56(sp)
    80003618:	7442                	ld	s0,48(sp)
    8000361a:	74a2                	ld	s1,40(sp)
    8000361c:	7902                	ld	s2,32(sp)
    8000361e:	6121                	add	sp,sp,64
    80003620:	8082                	ret
    80003622:	57fd                	li	a5,-1
    80003624:	bfc5                	j	80003614 <sys_waitx+0x8a>

0000000080003626 <sys_getSysCount>:
    80003626:	1101                	add	sp,sp,-32
    80003628:	ec06                	sd	ra,24(sp)
    8000362a:	e822                	sd	s0,16(sp)
    8000362c:	1000                	add	s0,sp,32
    8000362e:	fec40593          	add	a1,s0,-20
    80003632:	4501                	li	a0,0
    80003634:	00000097          	auipc	ra,0x0
    80003638:	c76080e7          	jalr	-906(ra) # 800032aa <argint>
    8000363c:	fec42503          	lw	a0,-20(s0)
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	6be080e7          	jalr	1726(ra) # 80002cfe <getSysCount>
    80003648:	60e2                	ld	ra,24(sp)
    8000364a:	6442                	ld	s0,16(sp)
    8000364c:	6105                	add	sp,sp,32
    8000364e:	8082                	ret

0000000080003650 <sys_sigalarm>:
    80003650:	7179                	add	sp,sp,-48
    80003652:	f406                	sd	ra,40(sp)
    80003654:	f022                	sd	s0,32(sp)
    80003656:	ec26                	sd	s1,24(sp)
    80003658:	1800                	add	s0,sp,48
    8000365a:	ffffe097          	auipc	ra,0xffffe
    8000365e:	444080e7          	jalr	1092(ra) # 80001a9e <myproc>
    80003662:	84aa                	mv	s1,a0
    80003664:	fdc40593          	add	a1,s0,-36
    80003668:	4501                	li	a0,0
    8000366a:	00000097          	auipc	ra,0x0
    8000366e:	c40080e7          	jalr	-960(ra) # 800032aa <argint>
    80003672:	fd040593          	add	a1,s0,-48
    80003676:	4505                	li	a0,1
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	c52080e7          	jalr	-942(ra) # 800032ca <argaddr>
    80003680:	fd043783          	ld	a5,-48(s0)
    80003684:	ec9c                	sd	a5,24(s1)
    80003686:	fdc42783          	lw	a5,-36(s0)
    8000368a:	d09c                	sw	a5,32(s1)
    8000368c:	00008797          	auipc	a5,0x8
    80003690:	e147a783          	lw	a5,-492(a5) # 8000b4a0 <ticks>
    80003694:	d0dc                	sw	a5,36(s1)
    80003696:	789c                	ld	a5,48(s1)
    80003698:	c799                	beqz	a5,800036a6 <sys_sigalarm+0x56>
    8000369a:	4501                	li	a0,0
    8000369c:	70a2                	ld	ra,40(sp)
    8000369e:	7402                	ld	s0,32(sp)
    800036a0:	64e2                	ld	s1,24(sp)
    800036a2:	6145                	add	sp,sp,48
    800036a4:	8082                	ret
    800036a6:	ffffd097          	auipc	ra,0xffffd
    800036aa:	4a2080e7          	jalr	1186(ra) # 80000b48 <kalloc>
    800036ae:	f888                	sd	a0,48(s1)
    800036b0:	b7ed                	j	8000369a <sys_sigalarm+0x4a>

00000000800036b2 <sys_sigreturn>:
    800036b2:	1101                	add	sp,sp,-32
    800036b4:	ec06                	sd	ra,24(sp)
    800036b6:	e822                	sd	s0,16(sp)
    800036b8:	1000                	add	s0,sp,32
    800036ba:	ffffe097          	auipc	ra,0xffffe
    800036be:	3e4080e7          	jalr	996(ra) # 80001a9e <myproc>
    800036c2:	790c                	ld	a1,48(a0)
    800036c4:	c595                	beqz	a1,800036f0 <sys_sigreturn+0x3e>
    800036c6:	e426                	sd	s1,8(sp)
    800036c8:	84aa                	mv	s1,a0
    800036ca:	12000613          	li	a2,288
    800036ce:	6548                	ld	a0,136(a0)
    800036d0:	ffffd097          	auipc	ra,0xffffd
    800036d4:	6c0080e7          	jalr	1728(ra) # 80000d90 <memmove>
    800036d8:	0204a423          	sw	zero,40(s1)
    800036dc:	fffff097          	auipc	ra,0xfffff
    800036e0:	71e080e7          	jalr	1822(ra) # 80002dfa <usertrapret>
    800036e4:	4501                	li	a0,0
    800036e6:	64a2                	ld	s1,8(sp)
    800036e8:	60e2                	ld	ra,24(sp)
    800036ea:	6442                	ld	s0,16(sp)
    800036ec:	6105                	add	sp,sp,32
    800036ee:	8082                	ret
    800036f0:	557d                	li	a0,-1
    800036f2:	bfdd                	j	800036e8 <sys_sigreturn+0x36>

00000000800036f4 <sys_settickets>:
    800036f4:	1101                	add	sp,sp,-32
    800036f6:	ec06                	sd	ra,24(sp)
    800036f8:	e822                	sd	s0,16(sp)
    800036fa:	1000                	add	s0,sp,32
    800036fc:	fec40593          	add	a1,s0,-20
    80003700:	4501                	li	a0,0
    80003702:	00000097          	auipc	ra,0x0
    80003706:	ba8080e7          	jalr	-1112(ra) # 800032aa <argint>
    8000370a:	fec42783          	lw	a5,-20(s0)
    8000370e:	557d                	li	a0,-1
    80003710:	00f05a63          	blez	a5,80003724 <sys_settickets+0x30>
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	38a080e7          	jalr	906(ra) # 80001a9e <myproc>
    8000371c:	fec42783          	lw	a5,-20(s0)
    80003720:	dd5c                	sw	a5,60(a0)
    80003722:	4501                	li	a0,0
    80003724:	60e2                	ld	ra,24(sp)
    80003726:	6442                	ld	s0,16(sp)
    80003728:	6105                	add	sp,sp,32
    8000372a:	8082                	ret

000000008000372c <binit>:
    8000372c:	7179                	add	sp,sp,-48
    8000372e:	f406                	sd	ra,40(sp)
    80003730:	f022                	sd	s0,32(sp)
    80003732:	ec26                	sd	s1,24(sp)
    80003734:	e84a                	sd	s2,16(sp)
    80003736:	e44e                	sd	s3,8(sp)
    80003738:	e052                	sd	s4,0(sp)
    8000373a:	1800                	add	s0,sp,48
    8000373c:	00005597          	auipc	a1,0x5
    80003740:	e6c58593          	add	a1,a1,-404 # 800085a8 <syscalls+0xd8>
    80003744:	00017517          	auipc	a0,0x17
    80003748:	f1450513          	add	a0,a0,-236 # 8001a658 <bcache>
    8000374c:	ffffd097          	auipc	ra,0xffffd
    80003750:	45c080e7          	jalr	1116(ra) # 80000ba8 <initlock>
    80003754:	0001f797          	auipc	a5,0x1f
    80003758:	f0478793          	add	a5,a5,-252 # 80022658 <bcache+0x8000>
    8000375c:	0001f717          	auipc	a4,0x1f
    80003760:	16470713          	add	a4,a4,356 # 800228c0 <bcache+0x8268>
    80003764:	2ae7b823          	sd	a4,688(a5)
    80003768:	2ae7bc23          	sd	a4,696(a5)
    8000376c:	00017497          	auipc	s1,0x17
    80003770:	f0448493          	add	s1,s1,-252 # 8001a670 <bcache+0x18>
    80003774:	893e                	mv	s2,a5
    80003776:	89ba                	mv	s3,a4
    80003778:	00005a17          	auipc	s4,0x5
    8000377c:	e38a0a13          	add	s4,s4,-456 # 800085b0 <syscalls+0xe0>
    80003780:	2b893783          	ld	a5,696(s2)
    80003784:	e8bc                	sd	a5,80(s1)
    80003786:	0534b423          	sd	s3,72(s1)
    8000378a:	85d2                	mv	a1,s4
    8000378c:	01048513          	add	a0,s1,16
    80003790:	00001097          	auipc	ra,0x1
    80003794:	4e8080e7          	jalr	1256(ra) # 80004c78 <initsleeplock>
    80003798:	2b893783          	ld	a5,696(s2)
    8000379c:	e7a4                	sd	s1,72(a5)
    8000379e:	2a993c23          	sd	s1,696(s2)
    800037a2:	45848493          	add	s1,s1,1112
    800037a6:	fd349de3          	bne	s1,s3,80003780 <binit+0x54>
    800037aa:	70a2                	ld	ra,40(sp)
    800037ac:	7402                	ld	s0,32(sp)
    800037ae:	64e2                	ld	s1,24(sp)
    800037b0:	6942                	ld	s2,16(sp)
    800037b2:	69a2                	ld	s3,8(sp)
    800037b4:	6a02                	ld	s4,0(sp)
    800037b6:	6145                	add	sp,sp,48
    800037b8:	8082                	ret

00000000800037ba <bread>:
    800037ba:	7179                	add	sp,sp,-48
    800037bc:	f406                	sd	ra,40(sp)
    800037be:	f022                	sd	s0,32(sp)
    800037c0:	ec26                	sd	s1,24(sp)
    800037c2:	e84a                	sd	s2,16(sp)
    800037c4:	e44e                	sd	s3,8(sp)
    800037c6:	1800                	add	s0,sp,48
    800037c8:	892a                	mv	s2,a0
    800037ca:	89ae                	mv	s3,a1
    800037cc:	00017517          	auipc	a0,0x17
    800037d0:	e8c50513          	add	a0,a0,-372 # 8001a658 <bcache>
    800037d4:	ffffd097          	auipc	ra,0xffffd
    800037d8:	464080e7          	jalr	1124(ra) # 80000c38 <acquire>
    800037dc:	0001f497          	auipc	s1,0x1f
    800037e0:	1344b483          	ld	s1,308(s1) # 80022910 <bcache+0x82b8>
    800037e4:	0001f797          	auipc	a5,0x1f
    800037e8:	0dc78793          	add	a5,a5,220 # 800228c0 <bcache+0x8268>
    800037ec:	02f48f63          	beq	s1,a5,8000382a <bread+0x70>
    800037f0:	873e                	mv	a4,a5
    800037f2:	a021                	j	800037fa <bread+0x40>
    800037f4:	68a4                	ld	s1,80(s1)
    800037f6:	02e48a63          	beq	s1,a4,8000382a <bread+0x70>
    800037fa:	449c                	lw	a5,8(s1)
    800037fc:	ff279ce3          	bne	a5,s2,800037f4 <bread+0x3a>
    80003800:	44dc                	lw	a5,12(s1)
    80003802:	ff3799e3          	bne	a5,s3,800037f4 <bread+0x3a>
    80003806:	40bc                	lw	a5,64(s1)
    80003808:	2785                	addw	a5,a5,1
    8000380a:	c0bc                	sw	a5,64(s1)
    8000380c:	00017517          	auipc	a0,0x17
    80003810:	e4c50513          	add	a0,a0,-436 # 8001a658 <bcache>
    80003814:	ffffd097          	auipc	ra,0xffffd
    80003818:	4d8080e7          	jalr	1240(ra) # 80000cec <release>
    8000381c:	01048513          	add	a0,s1,16
    80003820:	00001097          	auipc	ra,0x1
    80003824:	492080e7          	jalr	1170(ra) # 80004cb2 <acquiresleep>
    80003828:	a8b9                	j	80003886 <bread+0xcc>
    8000382a:	0001f497          	auipc	s1,0x1f
    8000382e:	0de4b483          	ld	s1,222(s1) # 80022908 <bcache+0x82b0>
    80003832:	0001f797          	auipc	a5,0x1f
    80003836:	08e78793          	add	a5,a5,142 # 800228c0 <bcache+0x8268>
    8000383a:	00f48863          	beq	s1,a5,8000384a <bread+0x90>
    8000383e:	873e                	mv	a4,a5
    80003840:	40bc                	lw	a5,64(s1)
    80003842:	cf81                	beqz	a5,8000385a <bread+0xa0>
    80003844:	64a4                	ld	s1,72(s1)
    80003846:	fee49de3          	bne	s1,a4,80003840 <bread+0x86>
    8000384a:	00005517          	auipc	a0,0x5
    8000384e:	d6e50513          	add	a0,a0,-658 # 800085b8 <syscalls+0xe8>
    80003852:	ffffd097          	auipc	ra,0xffffd
    80003856:	d0e080e7          	jalr	-754(ra) # 80000560 <panic>
    8000385a:	0124a423          	sw	s2,8(s1)
    8000385e:	0134a623          	sw	s3,12(s1)
    80003862:	0004a023          	sw	zero,0(s1)
    80003866:	4785                	li	a5,1
    80003868:	c0bc                	sw	a5,64(s1)
    8000386a:	00017517          	auipc	a0,0x17
    8000386e:	dee50513          	add	a0,a0,-530 # 8001a658 <bcache>
    80003872:	ffffd097          	auipc	ra,0xffffd
    80003876:	47a080e7          	jalr	1146(ra) # 80000cec <release>
    8000387a:	01048513          	add	a0,s1,16
    8000387e:	00001097          	auipc	ra,0x1
    80003882:	434080e7          	jalr	1076(ra) # 80004cb2 <acquiresleep>
    80003886:	409c                	lw	a5,0(s1)
    80003888:	cb89                	beqz	a5,8000389a <bread+0xe0>
    8000388a:	8526                	mv	a0,s1
    8000388c:	70a2                	ld	ra,40(sp)
    8000388e:	7402                	ld	s0,32(sp)
    80003890:	64e2                	ld	s1,24(sp)
    80003892:	6942                	ld	s2,16(sp)
    80003894:	69a2                	ld	s3,8(sp)
    80003896:	6145                	add	sp,sp,48
    80003898:	8082                	ret
    8000389a:	4581                	li	a1,0
    8000389c:	8526                	mv	a0,s1
    8000389e:	00003097          	auipc	ra,0x3
    800038a2:	0fa080e7          	jalr	250(ra) # 80006998 <virtio_disk_rw>
    800038a6:	4785                	li	a5,1
    800038a8:	c09c                	sw	a5,0(s1)
    800038aa:	b7c5                	j	8000388a <bread+0xd0>

00000000800038ac <bwrite>:
    800038ac:	1101                	add	sp,sp,-32
    800038ae:	ec06                	sd	ra,24(sp)
    800038b0:	e822                	sd	s0,16(sp)
    800038b2:	e426                	sd	s1,8(sp)
    800038b4:	1000                	add	s0,sp,32
    800038b6:	84aa                	mv	s1,a0
    800038b8:	0541                	add	a0,a0,16
    800038ba:	00001097          	auipc	ra,0x1
    800038be:	492080e7          	jalr	1170(ra) # 80004d4c <holdingsleep>
    800038c2:	cd01                	beqz	a0,800038da <bwrite+0x2e>
    800038c4:	4585                	li	a1,1
    800038c6:	8526                	mv	a0,s1
    800038c8:	00003097          	auipc	ra,0x3
    800038cc:	0d0080e7          	jalr	208(ra) # 80006998 <virtio_disk_rw>
    800038d0:	60e2                	ld	ra,24(sp)
    800038d2:	6442                	ld	s0,16(sp)
    800038d4:	64a2                	ld	s1,8(sp)
    800038d6:	6105                	add	sp,sp,32
    800038d8:	8082                	ret
    800038da:	00005517          	auipc	a0,0x5
    800038de:	cf650513          	add	a0,a0,-778 # 800085d0 <syscalls+0x100>
    800038e2:	ffffd097          	auipc	ra,0xffffd
    800038e6:	c7e080e7          	jalr	-898(ra) # 80000560 <panic>

00000000800038ea <brelse>:
    800038ea:	1101                	add	sp,sp,-32
    800038ec:	ec06                	sd	ra,24(sp)
    800038ee:	e822                	sd	s0,16(sp)
    800038f0:	e426                	sd	s1,8(sp)
    800038f2:	e04a                	sd	s2,0(sp)
    800038f4:	1000                	add	s0,sp,32
    800038f6:	84aa                	mv	s1,a0
    800038f8:	01050913          	add	s2,a0,16
    800038fc:	854a                	mv	a0,s2
    800038fe:	00001097          	auipc	ra,0x1
    80003902:	44e080e7          	jalr	1102(ra) # 80004d4c <holdingsleep>
    80003906:	c925                	beqz	a0,80003976 <brelse+0x8c>
    80003908:	854a                	mv	a0,s2
    8000390a:	00001097          	auipc	ra,0x1
    8000390e:	3fe080e7          	jalr	1022(ra) # 80004d08 <releasesleep>
    80003912:	00017517          	auipc	a0,0x17
    80003916:	d4650513          	add	a0,a0,-698 # 8001a658 <bcache>
    8000391a:	ffffd097          	auipc	ra,0xffffd
    8000391e:	31e080e7          	jalr	798(ra) # 80000c38 <acquire>
    80003922:	40bc                	lw	a5,64(s1)
    80003924:	37fd                	addw	a5,a5,-1
    80003926:	0007871b          	sext.w	a4,a5
    8000392a:	c0bc                	sw	a5,64(s1)
    8000392c:	e71d                	bnez	a4,8000395a <brelse+0x70>
    8000392e:	68b8                	ld	a4,80(s1)
    80003930:	64bc                	ld	a5,72(s1)
    80003932:	e73c                	sd	a5,72(a4)
    80003934:	68b8                	ld	a4,80(s1)
    80003936:	ebb8                	sd	a4,80(a5)
    80003938:	0001f797          	auipc	a5,0x1f
    8000393c:	d2078793          	add	a5,a5,-736 # 80022658 <bcache+0x8000>
    80003940:	2b87b703          	ld	a4,696(a5)
    80003944:	e8b8                	sd	a4,80(s1)
    80003946:	0001f717          	auipc	a4,0x1f
    8000394a:	f7a70713          	add	a4,a4,-134 # 800228c0 <bcache+0x8268>
    8000394e:	e4b8                	sd	a4,72(s1)
    80003950:	2b87b703          	ld	a4,696(a5)
    80003954:	e724                	sd	s1,72(a4)
    80003956:	2a97bc23          	sd	s1,696(a5)
    8000395a:	00017517          	auipc	a0,0x17
    8000395e:	cfe50513          	add	a0,a0,-770 # 8001a658 <bcache>
    80003962:	ffffd097          	auipc	ra,0xffffd
    80003966:	38a080e7          	jalr	906(ra) # 80000cec <release>
    8000396a:	60e2                	ld	ra,24(sp)
    8000396c:	6442                	ld	s0,16(sp)
    8000396e:	64a2                	ld	s1,8(sp)
    80003970:	6902                	ld	s2,0(sp)
    80003972:	6105                	add	sp,sp,32
    80003974:	8082                	ret
    80003976:	00005517          	auipc	a0,0x5
    8000397a:	c6250513          	add	a0,a0,-926 # 800085d8 <syscalls+0x108>
    8000397e:	ffffd097          	auipc	ra,0xffffd
    80003982:	be2080e7          	jalr	-1054(ra) # 80000560 <panic>

0000000080003986 <bpin>:
    80003986:	1101                	add	sp,sp,-32
    80003988:	ec06                	sd	ra,24(sp)
    8000398a:	e822                	sd	s0,16(sp)
    8000398c:	e426                	sd	s1,8(sp)
    8000398e:	1000                	add	s0,sp,32
    80003990:	84aa                	mv	s1,a0
    80003992:	00017517          	auipc	a0,0x17
    80003996:	cc650513          	add	a0,a0,-826 # 8001a658 <bcache>
    8000399a:	ffffd097          	auipc	ra,0xffffd
    8000399e:	29e080e7          	jalr	670(ra) # 80000c38 <acquire>
    800039a2:	40bc                	lw	a5,64(s1)
    800039a4:	2785                	addw	a5,a5,1
    800039a6:	c0bc                	sw	a5,64(s1)
    800039a8:	00017517          	auipc	a0,0x17
    800039ac:	cb050513          	add	a0,a0,-848 # 8001a658 <bcache>
    800039b0:	ffffd097          	auipc	ra,0xffffd
    800039b4:	33c080e7          	jalr	828(ra) # 80000cec <release>
    800039b8:	60e2                	ld	ra,24(sp)
    800039ba:	6442                	ld	s0,16(sp)
    800039bc:	64a2                	ld	s1,8(sp)
    800039be:	6105                	add	sp,sp,32
    800039c0:	8082                	ret

00000000800039c2 <bunpin>:
    800039c2:	1101                	add	sp,sp,-32
    800039c4:	ec06                	sd	ra,24(sp)
    800039c6:	e822                	sd	s0,16(sp)
    800039c8:	e426                	sd	s1,8(sp)
    800039ca:	1000                	add	s0,sp,32
    800039cc:	84aa                	mv	s1,a0
    800039ce:	00017517          	auipc	a0,0x17
    800039d2:	c8a50513          	add	a0,a0,-886 # 8001a658 <bcache>
    800039d6:	ffffd097          	auipc	ra,0xffffd
    800039da:	262080e7          	jalr	610(ra) # 80000c38 <acquire>
    800039de:	40bc                	lw	a5,64(s1)
    800039e0:	37fd                	addw	a5,a5,-1
    800039e2:	c0bc                	sw	a5,64(s1)
    800039e4:	00017517          	auipc	a0,0x17
    800039e8:	c7450513          	add	a0,a0,-908 # 8001a658 <bcache>
    800039ec:	ffffd097          	auipc	ra,0xffffd
    800039f0:	300080e7          	jalr	768(ra) # 80000cec <release>
    800039f4:	60e2                	ld	ra,24(sp)
    800039f6:	6442                	ld	s0,16(sp)
    800039f8:	64a2                	ld	s1,8(sp)
    800039fa:	6105                	add	sp,sp,32
    800039fc:	8082                	ret

00000000800039fe <bfree>:
    800039fe:	1101                	add	sp,sp,-32
    80003a00:	ec06                	sd	ra,24(sp)
    80003a02:	e822                	sd	s0,16(sp)
    80003a04:	e426                	sd	s1,8(sp)
    80003a06:	e04a                	sd	s2,0(sp)
    80003a08:	1000                	add	s0,sp,32
    80003a0a:	84ae                	mv	s1,a1
    80003a0c:	00d5d59b          	srlw	a1,a1,0xd
    80003a10:	0001f797          	auipc	a5,0x1f
    80003a14:	3247a783          	lw	a5,804(a5) # 80022d34 <sb+0x1c>
    80003a18:	9dbd                	addw	a1,a1,a5
    80003a1a:	00000097          	auipc	ra,0x0
    80003a1e:	da0080e7          	jalr	-608(ra) # 800037ba <bread>
    80003a22:	0074f713          	and	a4,s1,7
    80003a26:	4785                	li	a5,1
    80003a28:	00e797bb          	sllw	a5,a5,a4
    80003a2c:	14ce                	sll	s1,s1,0x33
    80003a2e:	90d9                	srl	s1,s1,0x36
    80003a30:	00950733          	add	a4,a0,s1
    80003a34:	05874703          	lbu	a4,88(a4)
    80003a38:	00e7f6b3          	and	a3,a5,a4
    80003a3c:	c69d                	beqz	a3,80003a6a <bfree+0x6c>
    80003a3e:	892a                	mv	s2,a0
    80003a40:	94aa                	add	s1,s1,a0
    80003a42:	fff7c793          	not	a5,a5
    80003a46:	8f7d                	and	a4,a4,a5
    80003a48:	04e48c23          	sb	a4,88(s1)
    80003a4c:	00001097          	auipc	ra,0x1
    80003a50:	148080e7          	jalr	328(ra) # 80004b94 <log_write>
    80003a54:	854a                	mv	a0,s2
    80003a56:	00000097          	auipc	ra,0x0
    80003a5a:	e94080e7          	jalr	-364(ra) # 800038ea <brelse>
    80003a5e:	60e2                	ld	ra,24(sp)
    80003a60:	6442                	ld	s0,16(sp)
    80003a62:	64a2                	ld	s1,8(sp)
    80003a64:	6902                	ld	s2,0(sp)
    80003a66:	6105                	add	sp,sp,32
    80003a68:	8082                	ret
    80003a6a:	00005517          	auipc	a0,0x5
    80003a6e:	b7650513          	add	a0,a0,-1162 # 800085e0 <syscalls+0x110>
    80003a72:	ffffd097          	auipc	ra,0xffffd
    80003a76:	aee080e7          	jalr	-1298(ra) # 80000560 <panic>

0000000080003a7a <balloc>:
    80003a7a:	711d                	add	sp,sp,-96
    80003a7c:	ec86                	sd	ra,88(sp)
    80003a7e:	e8a2                	sd	s0,80(sp)
    80003a80:	e4a6                	sd	s1,72(sp)
    80003a82:	1080                	add	s0,sp,96
    80003a84:	0001f797          	auipc	a5,0x1f
    80003a88:	2987a783          	lw	a5,664(a5) # 80022d1c <sb+0x4>
    80003a8c:	10078f63          	beqz	a5,80003baa <balloc+0x130>
    80003a90:	e0ca                	sd	s2,64(sp)
    80003a92:	fc4e                	sd	s3,56(sp)
    80003a94:	f852                	sd	s4,48(sp)
    80003a96:	f456                	sd	s5,40(sp)
    80003a98:	f05a                	sd	s6,32(sp)
    80003a9a:	ec5e                	sd	s7,24(sp)
    80003a9c:	e862                	sd	s8,16(sp)
    80003a9e:	e466                	sd	s9,8(sp)
    80003aa0:	8baa                	mv	s7,a0
    80003aa2:	4a81                	li	s5,0
    80003aa4:	0001fb17          	auipc	s6,0x1f
    80003aa8:	274b0b13          	add	s6,s6,628 # 80022d18 <sb>
    80003aac:	4c01                	li	s8,0
    80003aae:	4985                	li	s3,1
    80003ab0:	6a09                	lui	s4,0x2
    80003ab2:	6c89                	lui	s9,0x2
    80003ab4:	a061                	j	80003b3c <balloc+0xc2>
    80003ab6:	97ca                	add	a5,a5,s2
    80003ab8:	8e55                	or	a2,a2,a3
    80003aba:	04c78c23          	sb	a2,88(a5)
    80003abe:	854a                	mv	a0,s2
    80003ac0:	00001097          	auipc	ra,0x1
    80003ac4:	0d4080e7          	jalr	212(ra) # 80004b94 <log_write>
    80003ac8:	854a                	mv	a0,s2
    80003aca:	00000097          	auipc	ra,0x0
    80003ace:	e20080e7          	jalr	-480(ra) # 800038ea <brelse>
    80003ad2:	85a6                	mv	a1,s1
    80003ad4:	855e                	mv	a0,s7
    80003ad6:	00000097          	auipc	ra,0x0
    80003ada:	ce4080e7          	jalr	-796(ra) # 800037ba <bread>
    80003ade:	892a                	mv	s2,a0
    80003ae0:	40000613          	li	a2,1024
    80003ae4:	4581                	li	a1,0
    80003ae6:	05850513          	add	a0,a0,88
    80003aea:	ffffd097          	auipc	ra,0xffffd
    80003aee:	24a080e7          	jalr	586(ra) # 80000d34 <memset>
    80003af2:	854a                	mv	a0,s2
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	0a0080e7          	jalr	160(ra) # 80004b94 <log_write>
    80003afc:	854a                	mv	a0,s2
    80003afe:	00000097          	auipc	ra,0x0
    80003b02:	dec080e7          	jalr	-532(ra) # 800038ea <brelse>
    80003b06:	6906                	ld	s2,64(sp)
    80003b08:	79e2                	ld	s3,56(sp)
    80003b0a:	7a42                	ld	s4,48(sp)
    80003b0c:	7aa2                	ld	s5,40(sp)
    80003b0e:	7b02                	ld	s6,32(sp)
    80003b10:	6be2                	ld	s7,24(sp)
    80003b12:	6c42                	ld	s8,16(sp)
    80003b14:	6ca2                	ld	s9,8(sp)
    80003b16:	8526                	mv	a0,s1
    80003b18:	60e6                	ld	ra,88(sp)
    80003b1a:	6446                	ld	s0,80(sp)
    80003b1c:	64a6                	ld	s1,72(sp)
    80003b1e:	6125                	add	sp,sp,96
    80003b20:	8082                	ret
    80003b22:	854a                	mv	a0,s2
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	dc6080e7          	jalr	-570(ra) # 800038ea <brelse>
    80003b2c:	015c87bb          	addw	a5,s9,s5
    80003b30:	00078a9b          	sext.w	s5,a5
    80003b34:	004b2703          	lw	a4,4(s6)
    80003b38:	06eaf163          	bgeu	s5,a4,80003b9a <balloc+0x120>
    80003b3c:	41fad79b          	sraw	a5,s5,0x1f
    80003b40:	0137d79b          	srlw	a5,a5,0x13
    80003b44:	015787bb          	addw	a5,a5,s5
    80003b48:	40d7d79b          	sraw	a5,a5,0xd
    80003b4c:	01cb2583          	lw	a1,28(s6)
    80003b50:	9dbd                	addw	a1,a1,a5
    80003b52:	855e                	mv	a0,s7
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	c66080e7          	jalr	-922(ra) # 800037ba <bread>
    80003b5c:	892a                	mv	s2,a0
    80003b5e:	004b2503          	lw	a0,4(s6)
    80003b62:	000a849b          	sext.w	s1,s5
    80003b66:	8762                	mv	a4,s8
    80003b68:	faa4fde3          	bgeu	s1,a0,80003b22 <balloc+0xa8>
    80003b6c:	00777693          	and	a3,a4,7
    80003b70:	00d996bb          	sllw	a3,s3,a3
    80003b74:	41f7579b          	sraw	a5,a4,0x1f
    80003b78:	01d7d79b          	srlw	a5,a5,0x1d
    80003b7c:	9fb9                	addw	a5,a5,a4
    80003b7e:	4037d79b          	sraw	a5,a5,0x3
    80003b82:	00f90633          	add	a2,s2,a5
    80003b86:	05864603          	lbu	a2,88(a2)
    80003b8a:	00c6f5b3          	and	a1,a3,a2
    80003b8e:	d585                	beqz	a1,80003ab6 <balloc+0x3c>
    80003b90:	2705                	addw	a4,a4,1
    80003b92:	2485                	addw	s1,s1,1
    80003b94:	fd471ae3          	bne	a4,s4,80003b68 <balloc+0xee>
    80003b98:	b769                	j	80003b22 <balloc+0xa8>
    80003b9a:	6906                	ld	s2,64(sp)
    80003b9c:	79e2                	ld	s3,56(sp)
    80003b9e:	7a42                	ld	s4,48(sp)
    80003ba0:	7aa2                	ld	s5,40(sp)
    80003ba2:	7b02                	ld	s6,32(sp)
    80003ba4:	6be2                	ld	s7,24(sp)
    80003ba6:	6c42                	ld	s8,16(sp)
    80003ba8:	6ca2                	ld	s9,8(sp)
    80003baa:	00005517          	auipc	a0,0x5
    80003bae:	a4e50513          	add	a0,a0,-1458 # 800085f8 <syscalls+0x128>
    80003bb2:	ffffd097          	auipc	ra,0xffffd
    80003bb6:	9f8080e7          	jalr	-1544(ra) # 800005aa <printf>
    80003bba:	4481                	li	s1,0
    80003bbc:	bfa9                	j	80003b16 <balloc+0x9c>

0000000080003bbe <bmap>:
    80003bbe:	7179                	add	sp,sp,-48
    80003bc0:	f406                	sd	ra,40(sp)
    80003bc2:	f022                	sd	s0,32(sp)
    80003bc4:	ec26                	sd	s1,24(sp)
    80003bc6:	e84a                	sd	s2,16(sp)
    80003bc8:	e44e                	sd	s3,8(sp)
    80003bca:	1800                	add	s0,sp,48
    80003bcc:	89aa                	mv	s3,a0
    80003bce:	47ad                	li	a5,11
    80003bd0:	02b7e863          	bltu	a5,a1,80003c00 <bmap+0x42>
    80003bd4:	02059793          	sll	a5,a1,0x20
    80003bd8:	01e7d593          	srl	a1,a5,0x1e
    80003bdc:	00b504b3          	add	s1,a0,a1
    80003be0:	0504a903          	lw	s2,80(s1)
    80003be4:	08091263          	bnez	s2,80003c68 <bmap+0xaa>
    80003be8:	4108                	lw	a0,0(a0)
    80003bea:	00000097          	auipc	ra,0x0
    80003bee:	e90080e7          	jalr	-368(ra) # 80003a7a <balloc>
    80003bf2:	0005091b          	sext.w	s2,a0
    80003bf6:	06090963          	beqz	s2,80003c68 <bmap+0xaa>
    80003bfa:	0524a823          	sw	s2,80(s1)
    80003bfe:	a0ad                	j	80003c68 <bmap+0xaa>
    80003c00:	ff45849b          	addw	s1,a1,-12
    80003c04:	0004871b          	sext.w	a4,s1
    80003c08:	0ff00793          	li	a5,255
    80003c0c:	08e7e863          	bltu	a5,a4,80003c9c <bmap+0xde>
    80003c10:	08052903          	lw	s2,128(a0)
    80003c14:	00091f63          	bnez	s2,80003c32 <bmap+0x74>
    80003c18:	4108                	lw	a0,0(a0)
    80003c1a:	00000097          	auipc	ra,0x0
    80003c1e:	e60080e7          	jalr	-416(ra) # 80003a7a <balloc>
    80003c22:	0005091b          	sext.w	s2,a0
    80003c26:	04090163          	beqz	s2,80003c68 <bmap+0xaa>
    80003c2a:	e052                	sd	s4,0(sp)
    80003c2c:	0929a023          	sw	s2,128(s3)
    80003c30:	a011                	j	80003c34 <bmap+0x76>
    80003c32:	e052                	sd	s4,0(sp)
    80003c34:	85ca                	mv	a1,s2
    80003c36:	0009a503          	lw	a0,0(s3)
    80003c3a:	00000097          	auipc	ra,0x0
    80003c3e:	b80080e7          	jalr	-1152(ra) # 800037ba <bread>
    80003c42:	8a2a                	mv	s4,a0
    80003c44:	05850793          	add	a5,a0,88
    80003c48:	02049713          	sll	a4,s1,0x20
    80003c4c:	01e75593          	srl	a1,a4,0x1e
    80003c50:	00b784b3          	add	s1,a5,a1
    80003c54:	0004a903          	lw	s2,0(s1)
    80003c58:	02090063          	beqz	s2,80003c78 <bmap+0xba>
    80003c5c:	8552                	mv	a0,s4
    80003c5e:	00000097          	auipc	ra,0x0
    80003c62:	c8c080e7          	jalr	-884(ra) # 800038ea <brelse>
    80003c66:	6a02                	ld	s4,0(sp)
    80003c68:	854a                	mv	a0,s2
    80003c6a:	70a2                	ld	ra,40(sp)
    80003c6c:	7402                	ld	s0,32(sp)
    80003c6e:	64e2                	ld	s1,24(sp)
    80003c70:	6942                	ld	s2,16(sp)
    80003c72:	69a2                	ld	s3,8(sp)
    80003c74:	6145                	add	sp,sp,48
    80003c76:	8082                	ret
    80003c78:	0009a503          	lw	a0,0(s3)
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	dfe080e7          	jalr	-514(ra) # 80003a7a <balloc>
    80003c84:	0005091b          	sext.w	s2,a0
    80003c88:	fc090ae3          	beqz	s2,80003c5c <bmap+0x9e>
    80003c8c:	0124a023          	sw	s2,0(s1)
    80003c90:	8552                	mv	a0,s4
    80003c92:	00001097          	auipc	ra,0x1
    80003c96:	f02080e7          	jalr	-254(ra) # 80004b94 <log_write>
    80003c9a:	b7c9                	j	80003c5c <bmap+0x9e>
    80003c9c:	e052                	sd	s4,0(sp)
    80003c9e:	00005517          	auipc	a0,0x5
    80003ca2:	97250513          	add	a0,a0,-1678 # 80008610 <syscalls+0x140>
    80003ca6:	ffffd097          	auipc	ra,0xffffd
    80003caa:	8ba080e7          	jalr	-1862(ra) # 80000560 <panic>

0000000080003cae <iget>:
    80003cae:	7179                	add	sp,sp,-48
    80003cb0:	f406                	sd	ra,40(sp)
    80003cb2:	f022                	sd	s0,32(sp)
    80003cb4:	ec26                	sd	s1,24(sp)
    80003cb6:	e84a                	sd	s2,16(sp)
    80003cb8:	e44e                	sd	s3,8(sp)
    80003cba:	e052                	sd	s4,0(sp)
    80003cbc:	1800                	add	s0,sp,48
    80003cbe:	89aa                	mv	s3,a0
    80003cc0:	8a2e                	mv	s4,a1
    80003cc2:	0001f517          	auipc	a0,0x1f
    80003cc6:	07650513          	add	a0,a0,118 # 80022d38 <itable>
    80003cca:	ffffd097          	auipc	ra,0xffffd
    80003cce:	f6e080e7          	jalr	-146(ra) # 80000c38 <acquire>
    80003cd2:	4901                	li	s2,0
    80003cd4:	0001f497          	auipc	s1,0x1f
    80003cd8:	07c48493          	add	s1,s1,124 # 80022d50 <itable+0x18>
    80003cdc:	00021697          	auipc	a3,0x21
    80003ce0:	b0468693          	add	a3,a3,-1276 # 800247e0 <log>
    80003ce4:	a039                	j	80003cf2 <iget+0x44>
    80003ce6:	02090b63          	beqz	s2,80003d1c <iget+0x6e>
    80003cea:	08848493          	add	s1,s1,136
    80003cee:	02d48a63          	beq	s1,a3,80003d22 <iget+0x74>
    80003cf2:	449c                	lw	a5,8(s1)
    80003cf4:	fef059e3          	blez	a5,80003ce6 <iget+0x38>
    80003cf8:	4098                	lw	a4,0(s1)
    80003cfa:	ff3716e3          	bne	a4,s3,80003ce6 <iget+0x38>
    80003cfe:	40d8                	lw	a4,4(s1)
    80003d00:	ff4713e3          	bne	a4,s4,80003ce6 <iget+0x38>
    80003d04:	2785                	addw	a5,a5,1
    80003d06:	c49c                	sw	a5,8(s1)
    80003d08:	0001f517          	auipc	a0,0x1f
    80003d0c:	03050513          	add	a0,a0,48 # 80022d38 <itable>
    80003d10:	ffffd097          	auipc	ra,0xffffd
    80003d14:	fdc080e7          	jalr	-36(ra) # 80000cec <release>
    80003d18:	8926                	mv	s2,s1
    80003d1a:	a03d                	j	80003d48 <iget+0x9a>
    80003d1c:	f7f9                	bnez	a5,80003cea <iget+0x3c>
    80003d1e:	8926                	mv	s2,s1
    80003d20:	b7e9                	j	80003cea <iget+0x3c>
    80003d22:	02090c63          	beqz	s2,80003d5a <iget+0xac>
    80003d26:	01392023          	sw	s3,0(s2)
    80003d2a:	01492223          	sw	s4,4(s2)
    80003d2e:	4785                	li	a5,1
    80003d30:	00f92423          	sw	a5,8(s2)
    80003d34:	04092023          	sw	zero,64(s2)
    80003d38:	0001f517          	auipc	a0,0x1f
    80003d3c:	00050513          	mv	a0,a0
    80003d40:	ffffd097          	auipc	ra,0xffffd
    80003d44:	fac080e7          	jalr	-84(ra) # 80000cec <release>
    80003d48:	854a                	mv	a0,s2
    80003d4a:	70a2                	ld	ra,40(sp)
    80003d4c:	7402                	ld	s0,32(sp)
    80003d4e:	64e2                	ld	s1,24(sp)
    80003d50:	6942                	ld	s2,16(sp)
    80003d52:	69a2                	ld	s3,8(sp)
    80003d54:	6a02                	ld	s4,0(sp)
    80003d56:	6145                	add	sp,sp,48
    80003d58:	8082                	ret
    80003d5a:	00005517          	auipc	a0,0x5
    80003d5e:	8ce50513          	add	a0,a0,-1842 # 80008628 <syscalls+0x158>
    80003d62:	ffffc097          	auipc	ra,0xffffc
    80003d66:	7fe080e7          	jalr	2046(ra) # 80000560 <panic>

0000000080003d6a <fsinit>:
    80003d6a:	7179                	add	sp,sp,-48
    80003d6c:	f406                	sd	ra,40(sp)
    80003d6e:	f022                	sd	s0,32(sp)
    80003d70:	ec26                	sd	s1,24(sp)
    80003d72:	e84a                	sd	s2,16(sp)
    80003d74:	e44e                	sd	s3,8(sp)
    80003d76:	1800                	add	s0,sp,48
    80003d78:	892a                	mv	s2,a0
    80003d7a:	4585                	li	a1,1
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	a3e080e7          	jalr	-1474(ra) # 800037ba <bread>
    80003d84:	84aa                	mv	s1,a0
    80003d86:	0001f997          	auipc	s3,0x1f
    80003d8a:	f9298993          	add	s3,s3,-110 # 80022d18 <sb>
    80003d8e:	02000613          	li	a2,32
    80003d92:	05850593          	add	a1,a0,88
    80003d96:	854e                	mv	a0,s3
    80003d98:	ffffd097          	auipc	ra,0xffffd
    80003d9c:	ff8080e7          	jalr	-8(ra) # 80000d90 <memmove>
    80003da0:	8526                	mv	a0,s1
    80003da2:	00000097          	auipc	ra,0x0
    80003da6:	b48080e7          	jalr	-1208(ra) # 800038ea <brelse>
    80003daa:	0009a703          	lw	a4,0(s3)
    80003dae:	102037b7          	lui	a5,0x10203
    80003db2:	04078793          	add	a5,a5,64 # 10203040 <_entry-0x6fdfcfc0>
    80003db6:	02f71263          	bne	a4,a5,80003dda <fsinit+0x70>
    80003dba:	0001f597          	auipc	a1,0x1f
    80003dbe:	f5e58593          	add	a1,a1,-162 # 80022d18 <sb>
    80003dc2:	854a                	mv	a0,s2
    80003dc4:	00001097          	auipc	ra,0x1
    80003dc8:	b60080e7          	jalr	-1184(ra) # 80004924 <initlog>
    80003dcc:	70a2                	ld	ra,40(sp)
    80003dce:	7402                	ld	s0,32(sp)
    80003dd0:	64e2                	ld	s1,24(sp)
    80003dd2:	6942                	ld	s2,16(sp)
    80003dd4:	69a2                	ld	s3,8(sp)
    80003dd6:	6145                	add	sp,sp,48
    80003dd8:	8082                	ret
    80003dda:	00005517          	auipc	a0,0x5
    80003dde:	85e50513          	add	a0,a0,-1954 # 80008638 <syscalls+0x168>
    80003de2:	ffffc097          	auipc	ra,0xffffc
    80003de6:	77e080e7          	jalr	1918(ra) # 80000560 <panic>

0000000080003dea <iinit>:
    80003dea:	7179                	add	sp,sp,-48
    80003dec:	f406                	sd	ra,40(sp)
    80003dee:	f022                	sd	s0,32(sp)
    80003df0:	ec26                	sd	s1,24(sp)
    80003df2:	e84a                	sd	s2,16(sp)
    80003df4:	e44e                	sd	s3,8(sp)
    80003df6:	1800                	add	s0,sp,48
    80003df8:	00005597          	auipc	a1,0x5
    80003dfc:	85858593          	add	a1,a1,-1960 # 80008650 <syscalls+0x180>
    80003e00:	0001f517          	auipc	a0,0x1f
    80003e04:	f3850513          	add	a0,a0,-200 # 80022d38 <itable>
    80003e08:	ffffd097          	auipc	ra,0xffffd
    80003e0c:	da0080e7          	jalr	-608(ra) # 80000ba8 <initlock>
    80003e10:	0001f497          	auipc	s1,0x1f
    80003e14:	f5048493          	add	s1,s1,-176 # 80022d60 <itable+0x28>
    80003e18:	00021997          	auipc	s3,0x21
    80003e1c:	9d898993          	add	s3,s3,-1576 # 800247f0 <log+0x10>
    80003e20:	00005917          	auipc	s2,0x5
    80003e24:	83890913          	add	s2,s2,-1992 # 80008658 <syscalls+0x188>
    80003e28:	85ca                	mv	a1,s2
    80003e2a:	8526                	mv	a0,s1
    80003e2c:	00001097          	auipc	ra,0x1
    80003e30:	e4c080e7          	jalr	-436(ra) # 80004c78 <initsleeplock>
    80003e34:	08848493          	add	s1,s1,136
    80003e38:	ff3498e3          	bne	s1,s3,80003e28 <iinit+0x3e>
    80003e3c:	70a2                	ld	ra,40(sp)
    80003e3e:	7402                	ld	s0,32(sp)
    80003e40:	64e2                	ld	s1,24(sp)
    80003e42:	6942                	ld	s2,16(sp)
    80003e44:	69a2                	ld	s3,8(sp)
    80003e46:	6145                	add	sp,sp,48
    80003e48:	8082                	ret

0000000080003e4a <ialloc>:
    80003e4a:	7139                	add	sp,sp,-64
    80003e4c:	fc06                	sd	ra,56(sp)
    80003e4e:	f822                	sd	s0,48(sp)
    80003e50:	0080                	add	s0,sp,64
    80003e52:	0001f717          	auipc	a4,0x1f
    80003e56:	ed272703          	lw	a4,-302(a4) # 80022d24 <sb+0xc>
    80003e5a:	4785                	li	a5,1
    80003e5c:	06e7f463          	bgeu	a5,a4,80003ec4 <ialloc+0x7a>
    80003e60:	f426                	sd	s1,40(sp)
    80003e62:	f04a                	sd	s2,32(sp)
    80003e64:	ec4e                	sd	s3,24(sp)
    80003e66:	e852                	sd	s4,16(sp)
    80003e68:	e456                	sd	s5,8(sp)
    80003e6a:	e05a                	sd	s6,0(sp)
    80003e6c:	8aaa                	mv	s5,a0
    80003e6e:	8b2e                	mv	s6,a1
    80003e70:	4905                	li	s2,1
    80003e72:	0001fa17          	auipc	s4,0x1f
    80003e76:	ea6a0a13          	add	s4,s4,-346 # 80022d18 <sb>
    80003e7a:	00495593          	srl	a1,s2,0x4
    80003e7e:	018a2783          	lw	a5,24(s4)
    80003e82:	9dbd                	addw	a1,a1,a5
    80003e84:	8556                	mv	a0,s5
    80003e86:	00000097          	auipc	ra,0x0
    80003e8a:	934080e7          	jalr	-1740(ra) # 800037ba <bread>
    80003e8e:	84aa                	mv	s1,a0
    80003e90:	05850993          	add	s3,a0,88
    80003e94:	00f97793          	and	a5,s2,15
    80003e98:	079a                	sll	a5,a5,0x6
    80003e9a:	99be                	add	s3,s3,a5
    80003e9c:	00099783          	lh	a5,0(s3)
    80003ea0:	cf9d                	beqz	a5,80003ede <ialloc+0x94>
    80003ea2:	00000097          	auipc	ra,0x0
    80003ea6:	a48080e7          	jalr	-1464(ra) # 800038ea <brelse>
    80003eaa:	0905                	add	s2,s2,1
    80003eac:	00ca2703          	lw	a4,12(s4)
    80003eb0:	0009079b          	sext.w	a5,s2
    80003eb4:	fce7e3e3          	bltu	a5,a4,80003e7a <ialloc+0x30>
    80003eb8:	74a2                	ld	s1,40(sp)
    80003eba:	7902                	ld	s2,32(sp)
    80003ebc:	69e2                	ld	s3,24(sp)
    80003ebe:	6a42                	ld	s4,16(sp)
    80003ec0:	6aa2                	ld	s5,8(sp)
    80003ec2:	6b02                	ld	s6,0(sp)
    80003ec4:	00004517          	auipc	a0,0x4
    80003ec8:	79c50513          	add	a0,a0,1948 # 80008660 <syscalls+0x190>
    80003ecc:	ffffc097          	auipc	ra,0xffffc
    80003ed0:	6de080e7          	jalr	1758(ra) # 800005aa <printf>
    80003ed4:	4501                	li	a0,0
    80003ed6:	70e2                	ld	ra,56(sp)
    80003ed8:	7442                	ld	s0,48(sp)
    80003eda:	6121                	add	sp,sp,64
    80003edc:	8082                	ret
    80003ede:	04000613          	li	a2,64
    80003ee2:	4581                	li	a1,0
    80003ee4:	854e                	mv	a0,s3
    80003ee6:	ffffd097          	auipc	ra,0xffffd
    80003eea:	e4e080e7          	jalr	-434(ra) # 80000d34 <memset>
    80003eee:	01699023          	sh	s6,0(s3)
    80003ef2:	8526                	mv	a0,s1
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	ca0080e7          	jalr	-864(ra) # 80004b94 <log_write>
    80003efc:	8526                	mv	a0,s1
    80003efe:	00000097          	auipc	ra,0x0
    80003f02:	9ec080e7          	jalr	-1556(ra) # 800038ea <brelse>
    80003f06:	0009059b          	sext.w	a1,s2
    80003f0a:	8556                	mv	a0,s5
    80003f0c:	00000097          	auipc	ra,0x0
    80003f10:	da2080e7          	jalr	-606(ra) # 80003cae <iget>
    80003f14:	74a2                	ld	s1,40(sp)
    80003f16:	7902                	ld	s2,32(sp)
    80003f18:	69e2                	ld	s3,24(sp)
    80003f1a:	6a42                	ld	s4,16(sp)
    80003f1c:	6aa2                	ld	s5,8(sp)
    80003f1e:	6b02                	ld	s6,0(sp)
    80003f20:	bf5d                	j	80003ed6 <ialloc+0x8c>

0000000080003f22 <iupdate>:
    80003f22:	1101                	add	sp,sp,-32
    80003f24:	ec06                	sd	ra,24(sp)
    80003f26:	e822                	sd	s0,16(sp)
    80003f28:	e426                	sd	s1,8(sp)
    80003f2a:	e04a                	sd	s2,0(sp)
    80003f2c:	1000                	add	s0,sp,32
    80003f2e:	84aa                	mv	s1,a0
    80003f30:	415c                	lw	a5,4(a0)
    80003f32:	0047d79b          	srlw	a5,a5,0x4
    80003f36:	0001f597          	auipc	a1,0x1f
    80003f3a:	dfa5a583          	lw	a1,-518(a1) # 80022d30 <sb+0x18>
    80003f3e:	9dbd                	addw	a1,a1,a5
    80003f40:	4108                	lw	a0,0(a0)
    80003f42:	00000097          	auipc	ra,0x0
    80003f46:	878080e7          	jalr	-1928(ra) # 800037ba <bread>
    80003f4a:	892a                	mv	s2,a0
    80003f4c:	05850793          	add	a5,a0,88
    80003f50:	40d8                	lw	a4,4(s1)
    80003f52:	8b3d                	and	a4,a4,15
    80003f54:	071a                	sll	a4,a4,0x6
    80003f56:	97ba                	add	a5,a5,a4
    80003f58:	04449703          	lh	a4,68(s1)
    80003f5c:	00e79023          	sh	a4,0(a5)
    80003f60:	04649703          	lh	a4,70(s1)
    80003f64:	00e79123          	sh	a4,2(a5)
    80003f68:	04849703          	lh	a4,72(s1)
    80003f6c:	00e79223          	sh	a4,4(a5)
    80003f70:	04a49703          	lh	a4,74(s1)
    80003f74:	00e79323          	sh	a4,6(a5)
    80003f78:	44f8                	lw	a4,76(s1)
    80003f7a:	c798                	sw	a4,8(a5)
    80003f7c:	03400613          	li	a2,52
    80003f80:	05048593          	add	a1,s1,80
    80003f84:	00c78513          	add	a0,a5,12
    80003f88:	ffffd097          	auipc	ra,0xffffd
    80003f8c:	e08080e7          	jalr	-504(ra) # 80000d90 <memmove>
    80003f90:	854a                	mv	a0,s2
    80003f92:	00001097          	auipc	ra,0x1
    80003f96:	c02080e7          	jalr	-1022(ra) # 80004b94 <log_write>
    80003f9a:	854a                	mv	a0,s2
    80003f9c:	00000097          	auipc	ra,0x0
    80003fa0:	94e080e7          	jalr	-1714(ra) # 800038ea <brelse>
    80003fa4:	60e2                	ld	ra,24(sp)
    80003fa6:	6442                	ld	s0,16(sp)
    80003fa8:	64a2                	ld	s1,8(sp)
    80003faa:	6902                	ld	s2,0(sp)
    80003fac:	6105                	add	sp,sp,32
    80003fae:	8082                	ret

0000000080003fb0 <idup>:
    80003fb0:	1101                	add	sp,sp,-32
    80003fb2:	ec06                	sd	ra,24(sp)
    80003fb4:	e822                	sd	s0,16(sp)
    80003fb6:	e426                	sd	s1,8(sp)
    80003fb8:	1000                	add	s0,sp,32
    80003fba:	84aa                	mv	s1,a0
    80003fbc:	0001f517          	auipc	a0,0x1f
    80003fc0:	d7c50513          	add	a0,a0,-644 # 80022d38 <itable>
    80003fc4:	ffffd097          	auipc	ra,0xffffd
    80003fc8:	c74080e7          	jalr	-908(ra) # 80000c38 <acquire>
    80003fcc:	449c                	lw	a5,8(s1)
    80003fce:	2785                	addw	a5,a5,1
    80003fd0:	c49c                	sw	a5,8(s1)
    80003fd2:	0001f517          	auipc	a0,0x1f
    80003fd6:	d6650513          	add	a0,a0,-666 # 80022d38 <itable>
    80003fda:	ffffd097          	auipc	ra,0xffffd
    80003fde:	d12080e7          	jalr	-750(ra) # 80000cec <release>
    80003fe2:	8526                	mv	a0,s1
    80003fe4:	60e2                	ld	ra,24(sp)
    80003fe6:	6442                	ld	s0,16(sp)
    80003fe8:	64a2                	ld	s1,8(sp)
    80003fea:	6105                	add	sp,sp,32
    80003fec:	8082                	ret

0000000080003fee <ilock>:
    80003fee:	1101                	add	sp,sp,-32
    80003ff0:	ec06                	sd	ra,24(sp)
    80003ff2:	e822                	sd	s0,16(sp)
    80003ff4:	e426                	sd	s1,8(sp)
    80003ff6:	1000                	add	s0,sp,32
    80003ff8:	c10d                	beqz	a0,8000401a <ilock+0x2c>
    80003ffa:	84aa                	mv	s1,a0
    80003ffc:	451c                	lw	a5,8(a0)
    80003ffe:	00f05e63          	blez	a5,8000401a <ilock+0x2c>
    80004002:	0541                	add	a0,a0,16
    80004004:	00001097          	auipc	ra,0x1
    80004008:	cae080e7          	jalr	-850(ra) # 80004cb2 <acquiresleep>
    8000400c:	40bc                	lw	a5,64(s1)
    8000400e:	cf99                	beqz	a5,8000402c <ilock+0x3e>
    80004010:	60e2                	ld	ra,24(sp)
    80004012:	6442                	ld	s0,16(sp)
    80004014:	64a2                	ld	s1,8(sp)
    80004016:	6105                	add	sp,sp,32
    80004018:	8082                	ret
    8000401a:	e04a                	sd	s2,0(sp)
    8000401c:	00004517          	auipc	a0,0x4
    80004020:	65c50513          	add	a0,a0,1628 # 80008678 <syscalls+0x1a8>
    80004024:	ffffc097          	auipc	ra,0xffffc
    80004028:	53c080e7          	jalr	1340(ra) # 80000560 <panic>
    8000402c:	e04a                	sd	s2,0(sp)
    8000402e:	40dc                	lw	a5,4(s1)
    80004030:	0047d79b          	srlw	a5,a5,0x4
    80004034:	0001f597          	auipc	a1,0x1f
    80004038:	cfc5a583          	lw	a1,-772(a1) # 80022d30 <sb+0x18>
    8000403c:	9dbd                	addw	a1,a1,a5
    8000403e:	4088                	lw	a0,0(s1)
    80004040:	fffff097          	auipc	ra,0xfffff
    80004044:	77a080e7          	jalr	1914(ra) # 800037ba <bread>
    80004048:	892a                	mv	s2,a0
    8000404a:	05850593          	add	a1,a0,88
    8000404e:	40dc                	lw	a5,4(s1)
    80004050:	8bbd                	and	a5,a5,15
    80004052:	079a                	sll	a5,a5,0x6
    80004054:	95be                	add	a1,a1,a5
    80004056:	00059783          	lh	a5,0(a1)
    8000405a:	04f49223          	sh	a5,68(s1)
    8000405e:	00259783          	lh	a5,2(a1)
    80004062:	04f49323          	sh	a5,70(s1)
    80004066:	00459783          	lh	a5,4(a1)
    8000406a:	04f49423          	sh	a5,72(s1)
    8000406e:	00659783          	lh	a5,6(a1)
    80004072:	04f49523          	sh	a5,74(s1)
    80004076:	459c                	lw	a5,8(a1)
    80004078:	c4fc                	sw	a5,76(s1)
    8000407a:	03400613          	li	a2,52
    8000407e:	05b1                	add	a1,a1,12
    80004080:	05048513          	add	a0,s1,80
    80004084:	ffffd097          	auipc	ra,0xffffd
    80004088:	d0c080e7          	jalr	-756(ra) # 80000d90 <memmove>
    8000408c:	854a                	mv	a0,s2
    8000408e:	00000097          	auipc	ra,0x0
    80004092:	85c080e7          	jalr	-1956(ra) # 800038ea <brelse>
    80004096:	4785                	li	a5,1
    80004098:	c0bc                	sw	a5,64(s1)
    8000409a:	04449783          	lh	a5,68(s1)
    8000409e:	c399                	beqz	a5,800040a4 <ilock+0xb6>
    800040a0:	6902                	ld	s2,0(sp)
    800040a2:	b7bd                	j	80004010 <ilock+0x22>
    800040a4:	00004517          	auipc	a0,0x4
    800040a8:	5dc50513          	add	a0,a0,1500 # 80008680 <syscalls+0x1b0>
    800040ac:	ffffc097          	auipc	ra,0xffffc
    800040b0:	4b4080e7          	jalr	1204(ra) # 80000560 <panic>

00000000800040b4 <iunlock>:
    800040b4:	1101                	add	sp,sp,-32
    800040b6:	ec06                	sd	ra,24(sp)
    800040b8:	e822                	sd	s0,16(sp)
    800040ba:	e426                	sd	s1,8(sp)
    800040bc:	e04a                	sd	s2,0(sp)
    800040be:	1000                	add	s0,sp,32
    800040c0:	c905                	beqz	a0,800040f0 <iunlock+0x3c>
    800040c2:	84aa                	mv	s1,a0
    800040c4:	01050913          	add	s2,a0,16
    800040c8:	854a                	mv	a0,s2
    800040ca:	00001097          	auipc	ra,0x1
    800040ce:	c82080e7          	jalr	-894(ra) # 80004d4c <holdingsleep>
    800040d2:	cd19                	beqz	a0,800040f0 <iunlock+0x3c>
    800040d4:	449c                	lw	a5,8(s1)
    800040d6:	00f05d63          	blez	a5,800040f0 <iunlock+0x3c>
    800040da:	854a                	mv	a0,s2
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	c2c080e7          	jalr	-980(ra) # 80004d08 <releasesleep>
    800040e4:	60e2                	ld	ra,24(sp)
    800040e6:	6442                	ld	s0,16(sp)
    800040e8:	64a2                	ld	s1,8(sp)
    800040ea:	6902                	ld	s2,0(sp)
    800040ec:	6105                	add	sp,sp,32
    800040ee:	8082                	ret
    800040f0:	00004517          	auipc	a0,0x4
    800040f4:	5a050513          	add	a0,a0,1440 # 80008690 <syscalls+0x1c0>
    800040f8:	ffffc097          	auipc	ra,0xffffc
    800040fc:	468080e7          	jalr	1128(ra) # 80000560 <panic>

0000000080004100 <itrunc>:
    80004100:	7179                	add	sp,sp,-48
    80004102:	f406                	sd	ra,40(sp)
    80004104:	f022                	sd	s0,32(sp)
    80004106:	ec26                	sd	s1,24(sp)
    80004108:	e84a                	sd	s2,16(sp)
    8000410a:	e44e                	sd	s3,8(sp)
    8000410c:	1800                	add	s0,sp,48
    8000410e:	89aa                	mv	s3,a0
    80004110:	05050493          	add	s1,a0,80
    80004114:	08050913          	add	s2,a0,128
    80004118:	a021                	j	80004120 <itrunc+0x20>
    8000411a:	0491                	add	s1,s1,4
    8000411c:	01248d63          	beq	s1,s2,80004136 <itrunc+0x36>
    80004120:	408c                	lw	a1,0(s1)
    80004122:	dde5                	beqz	a1,8000411a <itrunc+0x1a>
    80004124:	0009a503          	lw	a0,0(s3)
    80004128:	00000097          	auipc	ra,0x0
    8000412c:	8d6080e7          	jalr	-1834(ra) # 800039fe <bfree>
    80004130:	0004a023          	sw	zero,0(s1)
    80004134:	b7dd                	j	8000411a <itrunc+0x1a>
    80004136:	0809a583          	lw	a1,128(s3)
    8000413a:	ed99                	bnez	a1,80004158 <itrunc+0x58>
    8000413c:	0409a623          	sw	zero,76(s3)
    80004140:	854e                	mv	a0,s3
    80004142:	00000097          	auipc	ra,0x0
    80004146:	de0080e7          	jalr	-544(ra) # 80003f22 <iupdate>
    8000414a:	70a2                	ld	ra,40(sp)
    8000414c:	7402                	ld	s0,32(sp)
    8000414e:	64e2                	ld	s1,24(sp)
    80004150:	6942                	ld	s2,16(sp)
    80004152:	69a2                	ld	s3,8(sp)
    80004154:	6145                	add	sp,sp,48
    80004156:	8082                	ret
    80004158:	e052                	sd	s4,0(sp)
    8000415a:	0009a503          	lw	a0,0(s3)
    8000415e:	fffff097          	auipc	ra,0xfffff
    80004162:	65c080e7          	jalr	1628(ra) # 800037ba <bread>
    80004166:	8a2a                	mv	s4,a0
    80004168:	05850493          	add	s1,a0,88
    8000416c:	45850913          	add	s2,a0,1112
    80004170:	a021                	j	80004178 <itrunc+0x78>
    80004172:	0491                	add	s1,s1,4
    80004174:	01248b63          	beq	s1,s2,8000418a <itrunc+0x8a>
    80004178:	408c                	lw	a1,0(s1)
    8000417a:	dde5                	beqz	a1,80004172 <itrunc+0x72>
    8000417c:	0009a503          	lw	a0,0(s3)
    80004180:	00000097          	auipc	ra,0x0
    80004184:	87e080e7          	jalr	-1922(ra) # 800039fe <bfree>
    80004188:	b7ed                	j	80004172 <itrunc+0x72>
    8000418a:	8552                	mv	a0,s4
    8000418c:	fffff097          	auipc	ra,0xfffff
    80004190:	75e080e7          	jalr	1886(ra) # 800038ea <brelse>
    80004194:	0809a583          	lw	a1,128(s3)
    80004198:	0009a503          	lw	a0,0(s3)
    8000419c:	00000097          	auipc	ra,0x0
    800041a0:	862080e7          	jalr	-1950(ra) # 800039fe <bfree>
    800041a4:	0809a023          	sw	zero,128(s3)
    800041a8:	6a02                	ld	s4,0(sp)
    800041aa:	bf49                	j	8000413c <itrunc+0x3c>

00000000800041ac <iput>:
    800041ac:	1101                	add	sp,sp,-32
    800041ae:	ec06                	sd	ra,24(sp)
    800041b0:	e822                	sd	s0,16(sp)
    800041b2:	e426                	sd	s1,8(sp)
    800041b4:	1000                	add	s0,sp,32
    800041b6:	84aa                	mv	s1,a0
    800041b8:	0001f517          	auipc	a0,0x1f
    800041bc:	b8050513          	add	a0,a0,-1152 # 80022d38 <itable>
    800041c0:	ffffd097          	auipc	ra,0xffffd
    800041c4:	a78080e7          	jalr	-1416(ra) # 80000c38 <acquire>
    800041c8:	4498                	lw	a4,8(s1)
    800041ca:	4785                	li	a5,1
    800041cc:	02f70263          	beq	a4,a5,800041f0 <iput+0x44>
    800041d0:	449c                	lw	a5,8(s1)
    800041d2:	37fd                	addw	a5,a5,-1
    800041d4:	c49c                	sw	a5,8(s1)
    800041d6:	0001f517          	auipc	a0,0x1f
    800041da:	b6250513          	add	a0,a0,-1182 # 80022d38 <itable>
    800041de:	ffffd097          	auipc	ra,0xffffd
    800041e2:	b0e080e7          	jalr	-1266(ra) # 80000cec <release>
    800041e6:	60e2                	ld	ra,24(sp)
    800041e8:	6442                	ld	s0,16(sp)
    800041ea:	64a2                	ld	s1,8(sp)
    800041ec:	6105                	add	sp,sp,32
    800041ee:	8082                	ret
    800041f0:	40bc                	lw	a5,64(s1)
    800041f2:	dff9                	beqz	a5,800041d0 <iput+0x24>
    800041f4:	04a49783          	lh	a5,74(s1)
    800041f8:	ffe1                	bnez	a5,800041d0 <iput+0x24>
    800041fa:	e04a                	sd	s2,0(sp)
    800041fc:	01048913          	add	s2,s1,16
    80004200:	854a                	mv	a0,s2
    80004202:	00001097          	auipc	ra,0x1
    80004206:	ab0080e7          	jalr	-1360(ra) # 80004cb2 <acquiresleep>
    8000420a:	0001f517          	auipc	a0,0x1f
    8000420e:	b2e50513          	add	a0,a0,-1234 # 80022d38 <itable>
    80004212:	ffffd097          	auipc	ra,0xffffd
    80004216:	ada080e7          	jalr	-1318(ra) # 80000cec <release>
    8000421a:	8526                	mv	a0,s1
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	ee4080e7          	jalr	-284(ra) # 80004100 <itrunc>
    80004224:	04049223          	sh	zero,68(s1)
    80004228:	8526                	mv	a0,s1
    8000422a:	00000097          	auipc	ra,0x0
    8000422e:	cf8080e7          	jalr	-776(ra) # 80003f22 <iupdate>
    80004232:	0404a023          	sw	zero,64(s1)
    80004236:	854a                	mv	a0,s2
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	ad0080e7          	jalr	-1328(ra) # 80004d08 <releasesleep>
    80004240:	0001f517          	auipc	a0,0x1f
    80004244:	af850513          	add	a0,a0,-1288 # 80022d38 <itable>
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	9f0080e7          	jalr	-1552(ra) # 80000c38 <acquire>
    80004250:	6902                	ld	s2,0(sp)
    80004252:	bfbd                	j	800041d0 <iput+0x24>

0000000080004254 <iunlockput>:
    80004254:	1101                	add	sp,sp,-32
    80004256:	ec06                	sd	ra,24(sp)
    80004258:	e822                	sd	s0,16(sp)
    8000425a:	e426                	sd	s1,8(sp)
    8000425c:	1000                	add	s0,sp,32
    8000425e:	84aa                	mv	s1,a0
    80004260:	00000097          	auipc	ra,0x0
    80004264:	e54080e7          	jalr	-428(ra) # 800040b4 <iunlock>
    80004268:	8526                	mv	a0,s1
    8000426a:	00000097          	auipc	ra,0x0
    8000426e:	f42080e7          	jalr	-190(ra) # 800041ac <iput>
    80004272:	60e2                	ld	ra,24(sp)
    80004274:	6442                	ld	s0,16(sp)
    80004276:	64a2                	ld	s1,8(sp)
    80004278:	6105                	add	sp,sp,32
    8000427a:	8082                	ret

000000008000427c <stati>:
    8000427c:	1141                	add	sp,sp,-16
    8000427e:	e422                	sd	s0,8(sp)
    80004280:	0800                	add	s0,sp,16
    80004282:	411c                	lw	a5,0(a0)
    80004284:	c19c                	sw	a5,0(a1)
    80004286:	415c                	lw	a5,4(a0)
    80004288:	c1dc                	sw	a5,4(a1)
    8000428a:	04451783          	lh	a5,68(a0)
    8000428e:	00f59423          	sh	a5,8(a1)
    80004292:	04a51783          	lh	a5,74(a0)
    80004296:	00f59523          	sh	a5,10(a1)
    8000429a:	04c56783          	lwu	a5,76(a0)
    8000429e:	e99c                	sd	a5,16(a1)
    800042a0:	6422                	ld	s0,8(sp)
    800042a2:	0141                	add	sp,sp,16
    800042a4:	8082                	ret

00000000800042a6 <readi>:
    800042a6:	457c                	lw	a5,76(a0)
    800042a8:	10d7e563          	bltu	a5,a3,800043b2 <readi+0x10c>
    800042ac:	7159                	add	sp,sp,-112
    800042ae:	f486                	sd	ra,104(sp)
    800042b0:	f0a2                	sd	s0,96(sp)
    800042b2:	eca6                	sd	s1,88(sp)
    800042b4:	e0d2                	sd	s4,64(sp)
    800042b6:	fc56                	sd	s5,56(sp)
    800042b8:	f85a                	sd	s6,48(sp)
    800042ba:	f45e                	sd	s7,40(sp)
    800042bc:	1880                	add	s0,sp,112
    800042be:	8b2a                	mv	s6,a0
    800042c0:	8bae                	mv	s7,a1
    800042c2:	8a32                	mv	s4,a2
    800042c4:	84b6                	mv	s1,a3
    800042c6:	8aba                	mv	s5,a4
    800042c8:	9f35                	addw	a4,a4,a3
    800042ca:	4501                	li	a0,0
    800042cc:	0cd76a63          	bltu	a4,a3,800043a0 <readi+0xfa>
    800042d0:	e4ce                	sd	s3,72(sp)
    800042d2:	00e7f463          	bgeu	a5,a4,800042da <readi+0x34>
    800042d6:	40d78abb          	subw	s5,a5,a3
    800042da:	0a0a8963          	beqz	s5,8000438c <readi+0xe6>
    800042de:	e8ca                	sd	s2,80(sp)
    800042e0:	f062                	sd	s8,32(sp)
    800042e2:	ec66                	sd	s9,24(sp)
    800042e4:	e86a                	sd	s10,16(sp)
    800042e6:	e46e                	sd	s11,8(sp)
    800042e8:	4981                	li	s3,0
    800042ea:	40000c93          	li	s9,1024
    800042ee:	5c7d                	li	s8,-1
    800042f0:	a82d                	j	8000432a <readi+0x84>
    800042f2:	020d1d93          	sll	s11,s10,0x20
    800042f6:	020ddd93          	srl	s11,s11,0x20
    800042fa:	05890613          	add	a2,s2,88
    800042fe:	86ee                	mv	a3,s11
    80004300:	963a                	add	a2,a2,a4
    80004302:	85d2                	mv	a1,s4
    80004304:	855e                	mv	a0,s7
    80004306:	ffffe097          	auipc	ra,0xffffe
    8000430a:	6ce080e7          	jalr	1742(ra) # 800029d4 <either_copyout>
    8000430e:	05850d63          	beq	a0,s8,80004368 <readi+0xc2>
    80004312:	854a                	mv	a0,s2
    80004314:	fffff097          	auipc	ra,0xfffff
    80004318:	5d6080e7          	jalr	1494(ra) # 800038ea <brelse>
    8000431c:	013d09bb          	addw	s3,s10,s3
    80004320:	009d04bb          	addw	s1,s10,s1
    80004324:	9a6e                	add	s4,s4,s11
    80004326:	0559fd63          	bgeu	s3,s5,80004380 <readi+0xda>
    8000432a:	00a4d59b          	srlw	a1,s1,0xa
    8000432e:	855a                	mv	a0,s6
    80004330:	00000097          	auipc	ra,0x0
    80004334:	88e080e7          	jalr	-1906(ra) # 80003bbe <bmap>
    80004338:	0005059b          	sext.w	a1,a0
    8000433c:	c9b1                	beqz	a1,80004390 <readi+0xea>
    8000433e:	000b2503          	lw	a0,0(s6)
    80004342:	fffff097          	auipc	ra,0xfffff
    80004346:	478080e7          	jalr	1144(ra) # 800037ba <bread>
    8000434a:	892a                	mv	s2,a0
    8000434c:	3ff4f713          	and	a4,s1,1023
    80004350:	40ec87bb          	subw	a5,s9,a4
    80004354:	413a86bb          	subw	a3,s5,s3
    80004358:	8d3e                	mv	s10,a5
    8000435a:	2781                	sext.w	a5,a5
    8000435c:	0006861b          	sext.w	a2,a3
    80004360:	f8f679e3          	bgeu	a2,a5,800042f2 <readi+0x4c>
    80004364:	8d36                	mv	s10,a3
    80004366:	b771                	j	800042f2 <readi+0x4c>
    80004368:	854a                	mv	a0,s2
    8000436a:	fffff097          	auipc	ra,0xfffff
    8000436e:	580080e7          	jalr	1408(ra) # 800038ea <brelse>
    80004372:	59fd                	li	s3,-1
    80004374:	6946                	ld	s2,80(sp)
    80004376:	7c02                	ld	s8,32(sp)
    80004378:	6ce2                	ld	s9,24(sp)
    8000437a:	6d42                	ld	s10,16(sp)
    8000437c:	6da2                	ld	s11,8(sp)
    8000437e:	a831                	j	8000439a <readi+0xf4>
    80004380:	6946                	ld	s2,80(sp)
    80004382:	7c02                	ld	s8,32(sp)
    80004384:	6ce2                	ld	s9,24(sp)
    80004386:	6d42                	ld	s10,16(sp)
    80004388:	6da2                	ld	s11,8(sp)
    8000438a:	a801                	j	8000439a <readi+0xf4>
    8000438c:	89d6                	mv	s3,s5
    8000438e:	a031                	j	8000439a <readi+0xf4>
    80004390:	6946                	ld	s2,80(sp)
    80004392:	7c02                	ld	s8,32(sp)
    80004394:	6ce2                	ld	s9,24(sp)
    80004396:	6d42                	ld	s10,16(sp)
    80004398:	6da2                	ld	s11,8(sp)
    8000439a:	0009851b          	sext.w	a0,s3
    8000439e:	69a6                	ld	s3,72(sp)
    800043a0:	70a6                	ld	ra,104(sp)
    800043a2:	7406                	ld	s0,96(sp)
    800043a4:	64e6                	ld	s1,88(sp)
    800043a6:	6a06                	ld	s4,64(sp)
    800043a8:	7ae2                	ld	s5,56(sp)
    800043aa:	7b42                	ld	s6,48(sp)
    800043ac:	7ba2                	ld	s7,40(sp)
    800043ae:	6165                	add	sp,sp,112
    800043b0:	8082                	ret
    800043b2:	4501                	li	a0,0
    800043b4:	8082                	ret

00000000800043b6 <writei>:
    800043b6:	457c                	lw	a5,76(a0)
    800043b8:	10d7ee63          	bltu	a5,a3,800044d4 <writei+0x11e>
    800043bc:	7159                	add	sp,sp,-112
    800043be:	f486                	sd	ra,104(sp)
    800043c0:	f0a2                	sd	s0,96(sp)
    800043c2:	e8ca                	sd	s2,80(sp)
    800043c4:	e0d2                	sd	s4,64(sp)
    800043c6:	fc56                	sd	s5,56(sp)
    800043c8:	f85a                	sd	s6,48(sp)
    800043ca:	f45e                	sd	s7,40(sp)
    800043cc:	1880                	add	s0,sp,112
    800043ce:	8aaa                	mv	s5,a0
    800043d0:	8bae                	mv	s7,a1
    800043d2:	8a32                	mv	s4,a2
    800043d4:	8936                	mv	s2,a3
    800043d6:	8b3a                	mv	s6,a4
    800043d8:	00e687bb          	addw	a5,a3,a4
    800043dc:	0ed7ee63          	bltu	a5,a3,800044d8 <writei+0x122>
    800043e0:	00043737          	lui	a4,0x43
    800043e4:	0ef76c63          	bltu	a4,a5,800044dc <writei+0x126>
    800043e8:	e4ce                	sd	s3,72(sp)
    800043ea:	0c0b0d63          	beqz	s6,800044c4 <writei+0x10e>
    800043ee:	eca6                	sd	s1,88(sp)
    800043f0:	f062                	sd	s8,32(sp)
    800043f2:	ec66                	sd	s9,24(sp)
    800043f4:	e86a                	sd	s10,16(sp)
    800043f6:	e46e                	sd	s11,8(sp)
    800043f8:	4981                	li	s3,0
    800043fa:	40000c93          	li	s9,1024
    800043fe:	5c7d                	li	s8,-1
    80004400:	a091                	j	80004444 <writei+0x8e>
    80004402:	020d1d93          	sll	s11,s10,0x20
    80004406:	020ddd93          	srl	s11,s11,0x20
    8000440a:	05848513          	add	a0,s1,88
    8000440e:	86ee                	mv	a3,s11
    80004410:	8652                	mv	a2,s4
    80004412:	85de                	mv	a1,s7
    80004414:	953a                	add	a0,a0,a4
    80004416:	ffffe097          	auipc	ra,0xffffe
    8000441a:	614080e7          	jalr	1556(ra) # 80002a2a <either_copyin>
    8000441e:	07850263          	beq	a0,s8,80004482 <writei+0xcc>
    80004422:	8526                	mv	a0,s1
    80004424:	00000097          	auipc	ra,0x0
    80004428:	770080e7          	jalr	1904(ra) # 80004b94 <log_write>
    8000442c:	8526                	mv	a0,s1
    8000442e:	fffff097          	auipc	ra,0xfffff
    80004432:	4bc080e7          	jalr	1212(ra) # 800038ea <brelse>
    80004436:	013d09bb          	addw	s3,s10,s3
    8000443a:	012d093b          	addw	s2,s10,s2
    8000443e:	9a6e                	add	s4,s4,s11
    80004440:	0569f663          	bgeu	s3,s6,8000448c <writei+0xd6>
    80004444:	00a9559b          	srlw	a1,s2,0xa
    80004448:	8556                	mv	a0,s5
    8000444a:	fffff097          	auipc	ra,0xfffff
    8000444e:	774080e7          	jalr	1908(ra) # 80003bbe <bmap>
    80004452:	0005059b          	sext.w	a1,a0
    80004456:	c99d                	beqz	a1,8000448c <writei+0xd6>
    80004458:	000aa503          	lw	a0,0(s5)
    8000445c:	fffff097          	auipc	ra,0xfffff
    80004460:	35e080e7          	jalr	862(ra) # 800037ba <bread>
    80004464:	84aa                	mv	s1,a0
    80004466:	3ff97713          	and	a4,s2,1023
    8000446a:	40ec87bb          	subw	a5,s9,a4
    8000446e:	413b06bb          	subw	a3,s6,s3
    80004472:	8d3e                	mv	s10,a5
    80004474:	2781                	sext.w	a5,a5
    80004476:	0006861b          	sext.w	a2,a3
    8000447a:	f8f674e3          	bgeu	a2,a5,80004402 <writei+0x4c>
    8000447e:	8d36                	mv	s10,a3
    80004480:	b749                	j	80004402 <writei+0x4c>
    80004482:	8526                	mv	a0,s1
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	466080e7          	jalr	1126(ra) # 800038ea <brelse>
    8000448c:	04caa783          	lw	a5,76(s5)
    80004490:	0327fc63          	bgeu	a5,s2,800044c8 <writei+0x112>
    80004494:	052aa623          	sw	s2,76(s5)
    80004498:	64e6                	ld	s1,88(sp)
    8000449a:	7c02                	ld	s8,32(sp)
    8000449c:	6ce2                	ld	s9,24(sp)
    8000449e:	6d42                	ld	s10,16(sp)
    800044a0:	6da2                	ld	s11,8(sp)
    800044a2:	8556                	mv	a0,s5
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	a7e080e7          	jalr	-1410(ra) # 80003f22 <iupdate>
    800044ac:	0009851b          	sext.w	a0,s3
    800044b0:	69a6                	ld	s3,72(sp)
    800044b2:	70a6                	ld	ra,104(sp)
    800044b4:	7406                	ld	s0,96(sp)
    800044b6:	6946                	ld	s2,80(sp)
    800044b8:	6a06                	ld	s4,64(sp)
    800044ba:	7ae2                	ld	s5,56(sp)
    800044bc:	7b42                	ld	s6,48(sp)
    800044be:	7ba2                	ld	s7,40(sp)
    800044c0:	6165                	add	sp,sp,112
    800044c2:	8082                	ret
    800044c4:	89da                	mv	s3,s6
    800044c6:	bff1                	j	800044a2 <writei+0xec>
    800044c8:	64e6                	ld	s1,88(sp)
    800044ca:	7c02                	ld	s8,32(sp)
    800044cc:	6ce2                	ld	s9,24(sp)
    800044ce:	6d42                	ld	s10,16(sp)
    800044d0:	6da2                	ld	s11,8(sp)
    800044d2:	bfc1                	j	800044a2 <writei+0xec>
    800044d4:	557d                	li	a0,-1
    800044d6:	8082                	ret
    800044d8:	557d                	li	a0,-1
    800044da:	bfe1                	j	800044b2 <writei+0xfc>
    800044dc:	557d                	li	a0,-1
    800044de:	bfd1                	j	800044b2 <writei+0xfc>

00000000800044e0 <namecmp>:
    800044e0:	1141                	add	sp,sp,-16
    800044e2:	e406                	sd	ra,8(sp)
    800044e4:	e022                	sd	s0,0(sp)
    800044e6:	0800                	add	s0,sp,16
    800044e8:	4639                	li	a2,14
    800044ea:	ffffd097          	auipc	ra,0xffffd
    800044ee:	91a080e7          	jalr	-1766(ra) # 80000e04 <strncmp>
    800044f2:	60a2                	ld	ra,8(sp)
    800044f4:	6402                	ld	s0,0(sp)
    800044f6:	0141                	add	sp,sp,16
    800044f8:	8082                	ret

00000000800044fa <dirlookup>:
    800044fa:	7139                	add	sp,sp,-64
    800044fc:	fc06                	sd	ra,56(sp)
    800044fe:	f822                	sd	s0,48(sp)
    80004500:	f426                	sd	s1,40(sp)
    80004502:	f04a                	sd	s2,32(sp)
    80004504:	ec4e                	sd	s3,24(sp)
    80004506:	e852                	sd	s4,16(sp)
    80004508:	0080                	add	s0,sp,64
    8000450a:	04451703          	lh	a4,68(a0)
    8000450e:	4785                	li	a5,1
    80004510:	00f71a63          	bne	a4,a5,80004524 <dirlookup+0x2a>
    80004514:	892a                	mv	s2,a0
    80004516:	89ae                	mv	s3,a1
    80004518:	8a32                	mv	s4,a2
    8000451a:	457c                	lw	a5,76(a0)
    8000451c:	4481                	li	s1,0
    8000451e:	4501                	li	a0,0
    80004520:	e79d                	bnez	a5,8000454e <dirlookup+0x54>
    80004522:	a8a5                	j	8000459a <dirlookup+0xa0>
    80004524:	00004517          	auipc	a0,0x4
    80004528:	17450513          	add	a0,a0,372 # 80008698 <syscalls+0x1c8>
    8000452c:	ffffc097          	auipc	ra,0xffffc
    80004530:	034080e7          	jalr	52(ra) # 80000560 <panic>
    80004534:	00004517          	auipc	a0,0x4
    80004538:	17c50513          	add	a0,a0,380 # 800086b0 <syscalls+0x1e0>
    8000453c:	ffffc097          	auipc	ra,0xffffc
    80004540:	024080e7          	jalr	36(ra) # 80000560 <panic>
    80004544:	24c1                	addw	s1,s1,16
    80004546:	04c92783          	lw	a5,76(s2)
    8000454a:	04f4f763          	bgeu	s1,a5,80004598 <dirlookup+0x9e>
    8000454e:	4741                	li	a4,16
    80004550:	86a6                	mv	a3,s1
    80004552:	fc040613          	add	a2,s0,-64
    80004556:	4581                	li	a1,0
    80004558:	854a                	mv	a0,s2
    8000455a:	00000097          	auipc	ra,0x0
    8000455e:	d4c080e7          	jalr	-692(ra) # 800042a6 <readi>
    80004562:	47c1                	li	a5,16
    80004564:	fcf518e3          	bne	a0,a5,80004534 <dirlookup+0x3a>
    80004568:	fc045783          	lhu	a5,-64(s0)
    8000456c:	dfe1                	beqz	a5,80004544 <dirlookup+0x4a>
    8000456e:	fc240593          	add	a1,s0,-62
    80004572:	854e                	mv	a0,s3
    80004574:	00000097          	auipc	ra,0x0
    80004578:	f6c080e7          	jalr	-148(ra) # 800044e0 <namecmp>
    8000457c:	f561                	bnez	a0,80004544 <dirlookup+0x4a>
    8000457e:	000a0463          	beqz	s4,80004586 <dirlookup+0x8c>
    80004582:	009a2023          	sw	s1,0(s4)
    80004586:	fc045583          	lhu	a1,-64(s0)
    8000458a:	00092503          	lw	a0,0(s2)
    8000458e:	fffff097          	auipc	ra,0xfffff
    80004592:	720080e7          	jalr	1824(ra) # 80003cae <iget>
    80004596:	a011                	j	8000459a <dirlookup+0xa0>
    80004598:	4501                	li	a0,0
    8000459a:	70e2                	ld	ra,56(sp)
    8000459c:	7442                	ld	s0,48(sp)
    8000459e:	74a2                	ld	s1,40(sp)
    800045a0:	7902                	ld	s2,32(sp)
    800045a2:	69e2                	ld	s3,24(sp)
    800045a4:	6a42                	ld	s4,16(sp)
    800045a6:	6121                	add	sp,sp,64
    800045a8:	8082                	ret

00000000800045aa <namex>:
    800045aa:	711d                	add	sp,sp,-96
    800045ac:	ec86                	sd	ra,88(sp)
    800045ae:	e8a2                	sd	s0,80(sp)
    800045b0:	e4a6                	sd	s1,72(sp)
    800045b2:	e0ca                	sd	s2,64(sp)
    800045b4:	fc4e                	sd	s3,56(sp)
    800045b6:	f852                	sd	s4,48(sp)
    800045b8:	f456                	sd	s5,40(sp)
    800045ba:	f05a                	sd	s6,32(sp)
    800045bc:	ec5e                	sd	s7,24(sp)
    800045be:	e862                	sd	s8,16(sp)
    800045c0:	e466                	sd	s9,8(sp)
    800045c2:	1080                	add	s0,sp,96
    800045c4:	84aa                	mv	s1,a0
    800045c6:	8b2e                	mv	s6,a1
    800045c8:	8ab2                	mv	s5,a2
    800045ca:	00054703          	lbu	a4,0(a0)
    800045ce:	02f00793          	li	a5,47
    800045d2:	02f70263          	beq	a4,a5,800045f6 <namex+0x4c>
    800045d6:	ffffd097          	auipc	ra,0xffffd
    800045da:	4c8080e7          	jalr	1224(ra) # 80001a9e <myproc>
    800045de:	18053503          	ld	a0,384(a0)
    800045e2:	00000097          	auipc	ra,0x0
    800045e6:	9ce080e7          	jalr	-1586(ra) # 80003fb0 <idup>
    800045ea:	8a2a                	mv	s4,a0
    800045ec:	02f00913          	li	s2,47
    800045f0:	4c35                	li	s8,13
    800045f2:	4b85                	li	s7,1
    800045f4:	a875                	j	800046b0 <namex+0x106>
    800045f6:	4585                	li	a1,1
    800045f8:	4505                	li	a0,1
    800045fa:	fffff097          	auipc	ra,0xfffff
    800045fe:	6b4080e7          	jalr	1716(ra) # 80003cae <iget>
    80004602:	8a2a                	mv	s4,a0
    80004604:	b7e5                	j	800045ec <namex+0x42>
    80004606:	8552                	mv	a0,s4
    80004608:	00000097          	auipc	ra,0x0
    8000460c:	c4c080e7          	jalr	-948(ra) # 80004254 <iunlockput>
    80004610:	4a01                	li	s4,0
    80004612:	8552                	mv	a0,s4
    80004614:	60e6                	ld	ra,88(sp)
    80004616:	6446                	ld	s0,80(sp)
    80004618:	64a6                	ld	s1,72(sp)
    8000461a:	6906                	ld	s2,64(sp)
    8000461c:	79e2                	ld	s3,56(sp)
    8000461e:	7a42                	ld	s4,48(sp)
    80004620:	7aa2                	ld	s5,40(sp)
    80004622:	7b02                	ld	s6,32(sp)
    80004624:	6be2                	ld	s7,24(sp)
    80004626:	6c42                	ld	s8,16(sp)
    80004628:	6ca2                	ld	s9,8(sp)
    8000462a:	6125                	add	sp,sp,96
    8000462c:	8082                	ret
    8000462e:	8552                	mv	a0,s4
    80004630:	00000097          	auipc	ra,0x0
    80004634:	a84080e7          	jalr	-1404(ra) # 800040b4 <iunlock>
    80004638:	bfe9                	j	80004612 <namex+0x68>
    8000463a:	8552                	mv	a0,s4
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	c18080e7          	jalr	-1000(ra) # 80004254 <iunlockput>
    80004644:	8a4e                	mv	s4,s3
    80004646:	b7f1                	j	80004612 <namex+0x68>
    80004648:	40998633          	sub	a2,s3,s1
    8000464c:	00060c9b          	sext.w	s9,a2
    80004650:	099c5863          	bge	s8,s9,800046e0 <namex+0x136>
    80004654:	4639                	li	a2,14
    80004656:	85a6                	mv	a1,s1
    80004658:	8556                	mv	a0,s5
    8000465a:	ffffc097          	auipc	ra,0xffffc
    8000465e:	736080e7          	jalr	1846(ra) # 80000d90 <memmove>
    80004662:	84ce                	mv	s1,s3
    80004664:	0004c783          	lbu	a5,0(s1)
    80004668:	01279763          	bne	a5,s2,80004676 <namex+0xcc>
    8000466c:	0485                	add	s1,s1,1
    8000466e:	0004c783          	lbu	a5,0(s1)
    80004672:	ff278de3          	beq	a5,s2,8000466c <namex+0xc2>
    80004676:	8552                	mv	a0,s4
    80004678:	00000097          	auipc	ra,0x0
    8000467c:	976080e7          	jalr	-1674(ra) # 80003fee <ilock>
    80004680:	044a1783          	lh	a5,68(s4)
    80004684:	f97791e3          	bne	a5,s7,80004606 <namex+0x5c>
    80004688:	000b0563          	beqz	s6,80004692 <namex+0xe8>
    8000468c:	0004c783          	lbu	a5,0(s1)
    80004690:	dfd9                	beqz	a5,8000462e <namex+0x84>
    80004692:	4601                	li	a2,0
    80004694:	85d6                	mv	a1,s5
    80004696:	8552                	mv	a0,s4
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	e62080e7          	jalr	-414(ra) # 800044fa <dirlookup>
    800046a0:	89aa                	mv	s3,a0
    800046a2:	dd41                	beqz	a0,8000463a <namex+0x90>
    800046a4:	8552                	mv	a0,s4
    800046a6:	00000097          	auipc	ra,0x0
    800046aa:	bae080e7          	jalr	-1106(ra) # 80004254 <iunlockput>
    800046ae:	8a4e                	mv	s4,s3
    800046b0:	0004c783          	lbu	a5,0(s1)
    800046b4:	01279763          	bne	a5,s2,800046c2 <namex+0x118>
    800046b8:	0485                	add	s1,s1,1
    800046ba:	0004c783          	lbu	a5,0(s1)
    800046be:	ff278de3          	beq	a5,s2,800046b8 <namex+0x10e>
    800046c2:	cb9d                	beqz	a5,800046f8 <namex+0x14e>
    800046c4:	0004c783          	lbu	a5,0(s1)
    800046c8:	89a6                	mv	s3,s1
    800046ca:	4c81                	li	s9,0
    800046cc:	4601                	li	a2,0
    800046ce:	01278963          	beq	a5,s2,800046e0 <namex+0x136>
    800046d2:	dbbd                	beqz	a5,80004648 <namex+0x9e>
    800046d4:	0985                	add	s3,s3,1
    800046d6:	0009c783          	lbu	a5,0(s3)
    800046da:	ff279ce3          	bne	a5,s2,800046d2 <namex+0x128>
    800046de:	b7ad                	j	80004648 <namex+0x9e>
    800046e0:	2601                	sext.w	a2,a2
    800046e2:	85a6                	mv	a1,s1
    800046e4:	8556                	mv	a0,s5
    800046e6:	ffffc097          	auipc	ra,0xffffc
    800046ea:	6aa080e7          	jalr	1706(ra) # 80000d90 <memmove>
    800046ee:	9cd6                	add	s9,s9,s5
    800046f0:	000c8023          	sb	zero,0(s9) # 2000 <_entry-0x7fffe000>
    800046f4:	84ce                	mv	s1,s3
    800046f6:	b7bd                	j	80004664 <namex+0xba>
    800046f8:	f00b0de3          	beqz	s6,80004612 <namex+0x68>
    800046fc:	8552                	mv	a0,s4
    800046fe:	00000097          	auipc	ra,0x0
    80004702:	aae080e7          	jalr	-1362(ra) # 800041ac <iput>
    80004706:	4a01                	li	s4,0
    80004708:	b729                	j	80004612 <namex+0x68>

000000008000470a <dirlink>:
    8000470a:	7139                	add	sp,sp,-64
    8000470c:	fc06                	sd	ra,56(sp)
    8000470e:	f822                	sd	s0,48(sp)
    80004710:	f04a                	sd	s2,32(sp)
    80004712:	ec4e                	sd	s3,24(sp)
    80004714:	e852                	sd	s4,16(sp)
    80004716:	0080                	add	s0,sp,64
    80004718:	892a                	mv	s2,a0
    8000471a:	8a2e                	mv	s4,a1
    8000471c:	89b2                	mv	s3,a2
    8000471e:	4601                	li	a2,0
    80004720:	00000097          	auipc	ra,0x0
    80004724:	dda080e7          	jalr	-550(ra) # 800044fa <dirlookup>
    80004728:	ed25                	bnez	a0,800047a0 <dirlink+0x96>
    8000472a:	f426                	sd	s1,40(sp)
    8000472c:	04c92483          	lw	s1,76(s2)
    80004730:	c49d                	beqz	s1,8000475e <dirlink+0x54>
    80004732:	4481                	li	s1,0
    80004734:	4741                	li	a4,16
    80004736:	86a6                	mv	a3,s1
    80004738:	fc040613          	add	a2,s0,-64
    8000473c:	4581                	li	a1,0
    8000473e:	854a                	mv	a0,s2
    80004740:	00000097          	auipc	ra,0x0
    80004744:	b66080e7          	jalr	-1178(ra) # 800042a6 <readi>
    80004748:	47c1                	li	a5,16
    8000474a:	06f51163          	bne	a0,a5,800047ac <dirlink+0xa2>
    8000474e:	fc045783          	lhu	a5,-64(s0)
    80004752:	c791                	beqz	a5,8000475e <dirlink+0x54>
    80004754:	24c1                	addw	s1,s1,16
    80004756:	04c92783          	lw	a5,76(s2)
    8000475a:	fcf4ede3          	bltu	s1,a5,80004734 <dirlink+0x2a>
    8000475e:	4639                	li	a2,14
    80004760:	85d2                	mv	a1,s4
    80004762:	fc240513          	add	a0,s0,-62
    80004766:	ffffc097          	auipc	ra,0xffffc
    8000476a:	6d4080e7          	jalr	1748(ra) # 80000e3a <strncpy>
    8000476e:	fd341023          	sh	s3,-64(s0)
    80004772:	4741                	li	a4,16
    80004774:	86a6                	mv	a3,s1
    80004776:	fc040613          	add	a2,s0,-64
    8000477a:	4581                	li	a1,0
    8000477c:	854a                	mv	a0,s2
    8000477e:	00000097          	auipc	ra,0x0
    80004782:	c38080e7          	jalr	-968(ra) # 800043b6 <writei>
    80004786:	1541                	add	a0,a0,-16
    80004788:	00a03533          	snez	a0,a0
    8000478c:	40a00533          	neg	a0,a0
    80004790:	74a2                	ld	s1,40(sp)
    80004792:	70e2                	ld	ra,56(sp)
    80004794:	7442                	ld	s0,48(sp)
    80004796:	7902                	ld	s2,32(sp)
    80004798:	69e2                	ld	s3,24(sp)
    8000479a:	6a42                	ld	s4,16(sp)
    8000479c:	6121                	add	sp,sp,64
    8000479e:	8082                	ret
    800047a0:	00000097          	auipc	ra,0x0
    800047a4:	a0c080e7          	jalr	-1524(ra) # 800041ac <iput>
    800047a8:	557d                	li	a0,-1
    800047aa:	b7e5                	j	80004792 <dirlink+0x88>
    800047ac:	00004517          	auipc	a0,0x4
    800047b0:	f1450513          	add	a0,a0,-236 # 800086c0 <syscalls+0x1f0>
    800047b4:	ffffc097          	auipc	ra,0xffffc
    800047b8:	dac080e7          	jalr	-596(ra) # 80000560 <panic>

00000000800047bc <namei>:
    800047bc:	1101                	add	sp,sp,-32
    800047be:	ec06                	sd	ra,24(sp)
    800047c0:	e822                	sd	s0,16(sp)
    800047c2:	1000                	add	s0,sp,32
    800047c4:	fe040613          	add	a2,s0,-32
    800047c8:	4581                	li	a1,0
    800047ca:	00000097          	auipc	ra,0x0
    800047ce:	de0080e7          	jalr	-544(ra) # 800045aa <namex>
    800047d2:	60e2                	ld	ra,24(sp)
    800047d4:	6442                	ld	s0,16(sp)
    800047d6:	6105                	add	sp,sp,32
    800047d8:	8082                	ret

00000000800047da <nameiparent>:
    800047da:	1141                	add	sp,sp,-16
    800047dc:	e406                	sd	ra,8(sp)
    800047de:	e022                	sd	s0,0(sp)
    800047e0:	0800                	add	s0,sp,16
    800047e2:	862e                	mv	a2,a1
    800047e4:	4585                	li	a1,1
    800047e6:	00000097          	auipc	ra,0x0
    800047ea:	dc4080e7          	jalr	-572(ra) # 800045aa <namex>
    800047ee:	60a2                	ld	ra,8(sp)
    800047f0:	6402                	ld	s0,0(sp)
    800047f2:	0141                	add	sp,sp,16
    800047f4:	8082                	ret

00000000800047f6 <write_head>:
    800047f6:	1101                	add	sp,sp,-32
    800047f8:	ec06                	sd	ra,24(sp)
    800047fa:	e822                	sd	s0,16(sp)
    800047fc:	e426                	sd	s1,8(sp)
    800047fe:	e04a                	sd	s2,0(sp)
    80004800:	1000                	add	s0,sp,32
    80004802:	00020917          	auipc	s2,0x20
    80004806:	fde90913          	add	s2,s2,-34 # 800247e0 <log>
    8000480a:	01892583          	lw	a1,24(s2)
    8000480e:	02892503          	lw	a0,40(s2)
    80004812:	fffff097          	auipc	ra,0xfffff
    80004816:	fa8080e7          	jalr	-88(ra) # 800037ba <bread>
    8000481a:	84aa                	mv	s1,a0
    8000481c:	02c92603          	lw	a2,44(s2)
    80004820:	cd30                	sw	a2,88(a0)
    80004822:	00c05f63          	blez	a2,80004840 <write_head+0x4a>
    80004826:	00020717          	auipc	a4,0x20
    8000482a:	fea70713          	add	a4,a4,-22 # 80024810 <log+0x30>
    8000482e:	87aa                	mv	a5,a0
    80004830:	060a                	sll	a2,a2,0x2
    80004832:	962a                	add	a2,a2,a0
    80004834:	4314                	lw	a3,0(a4)
    80004836:	cff4                	sw	a3,92(a5)
    80004838:	0711                	add	a4,a4,4
    8000483a:	0791                	add	a5,a5,4
    8000483c:	fec79ce3          	bne	a5,a2,80004834 <write_head+0x3e>
    80004840:	8526                	mv	a0,s1
    80004842:	fffff097          	auipc	ra,0xfffff
    80004846:	06a080e7          	jalr	106(ra) # 800038ac <bwrite>
    8000484a:	8526                	mv	a0,s1
    8000484c:	fffff097          	auipc	ra,0xfffff
    80004850:	09e080e7          	jalr	158(ra) # 800038ea <brelse>
    80004854:	60e2                	ld	ra,24(sp)
    80004856:	6442                	ld	s0,16(sp)
    80004858:	64a2                	ld	s1,8(sp)
    8000485a:	6902                	ld	s2,0(sp)
    8000485c:	6105                	add	sp,sp,32
    8000485e:	8082                	ret

0000000080004860 <install_trans>:
    80004860:	00020797          	auipc	a5,0x20
    80004864:	fac7a783          	lw	a5,-84(a5) # 8002480c <log+0x2c>
    80004868:	0af05d63          	blez	a5,80004922 <install_trans+0xc2>
    8000486c:	7139                	add	sp,sp,-64
    8000486e:	fc06                	sd	ra,56(sp)
    80004870:	f822                	sd	s0,48(sp)
    80004872:	f426                	sd	s1,40(sp)
    80004874:	f04a                	sd	s2,32(sp)
    80004876:	ec4e                	sd	s3,24(sp)
    80004878:	e852                	sd	s4,16(sp)
    8000487a:	e456                	sd	s5,8(sp)
    8000487c:	e05a                	sd	s6,0(sp)
    8000487e:	0080                	add	s0,sp,64
    80004880:	8b2a                	mv	s6,a0
    80004882:	00020a97          	auipc	s5,0x20
    80004886:	f8ea8a93          	add	s5,s5,-114 # 80024810 <log+0x30>
    8000488a:	4a01                	li	s4,0
    8000488c:	00020997          	auipc	s3,0x20
    80004890:	f5498993          	add	s3,s3,-172 # 800247e0 <log>
    80004894:	a00d                	j	800048b6 <install_trans+0x56>
    80004896:	854a                	mv	a0,s2
    80004898:	fffff097          	auipc	ra,0xfffff
    8000489c:	052080e7          	jalr	82(ra) # 800038ea <brelse>
    800048a0:	8526                	mv	a0,s1
    800048a2:	fffff097          	auipc	ra,0xfffff
    800048a6:	048080e7          	jalr	72(ra) # 800038ea <brelse>
    800048aa:	2a05                	addw	s4,s4,1
    800048ac:	0a91                	add	s5,s5,4
    800048ae:	02c9a783          	lw	a5,44(s3)
    800048b2:	04fa5e63          	bge	s4,a5,8000490e <install_trans+0xae>
    800048b6:	0189a583          	lw	a1,24(s3)
    800048ba:	014585bb          	addw	a1,a1,s4
    800048be:	2585                	addw	a1,a1,1
    800048c0:	0289a503          	lw	a0,40(s3)
    800048c4:	fffff097          	auipc	ra,0xfffff
    800048c8:	ef6080e7          	jalr	-266(ra) # 800037ba <bread>
    800048cc:	892a                	mv	s2,a0
    800048ce:	000aa583          	lw	a1,0(s5)
    800048d2:	0289a503          	lw	a0,40(s3)
    800048d6:	fffff097          	auipc	ra,0xfffff
    800048da:	ee4080e7          	jalr	-284(ra) # 800037ba <bread>
    800048de:	84aa                	mv	s1,a0
    800048e0:	40000613          	li	a2,1024
    800048e4:	05890593          	add	a1,s2,88
    800048e8:	05850513          	add	a0,a0,88
    800048ec:	ffffc097          	auipc	ra,0xffffc
    800048f0:	4a4080e7          	jalr	1188(ra) # 80000d90 <memmove>
    800048f4:	8526                	mv	a0,s1
    800048f6:	fffff097          	auipc	ra,0xfffff
    800048fa:	fb6080e7          	jalr	-74(ra) # 800038ac <bwrite>
    800048fe:	f80b1ce3          	bnez	s6,80004896 <install_trans+0x36>
    80004902:	8526                	mv	a0,s1
    80004904:	fffff097          	auipc	ra,0xfffff
    80004908:	0be080e7          	jalr	190(ra) # 800039c2 <bunpin>
    8000490c:	b769                	j	80004896 <install_trans+0x36>
    8000490e:	70e2                	ld	ra,56(sp)
    80004910:	7442                	ld	s0,48(sp)
    80004912:	74a2                	ld	s1,40(sp)
    80004914:	7902                	ld	s2,32(sp)
    80004916:	69e2                	ld	s3,24(sp)
    80004918:	6a42                	ld	s4,16(sp)
    8000491a:	6aa2                	ld	s5,8(sp)
    8000491c:	6b02                	ld	s6,0(sp)
    8000491e:	6121                	add	sp,sp,64
    80004920:	8082                	ret
    80004922:	8082                	ret

0000000080004924 <initlog>:
    80004924:	7179                	add	sp,sp,-48
    80004926:	f406                	sd	ra,40(sp)
    80004928:	f022                	sd	s0,32(sp)
    8000492a:	ec26                	sd	s1,24(sp)
    8000492c:	e84a                	sd	s2,16(sp)
    8000492e:	e44e                	sd	s3,8(sp)
    80004930:	1800                	add	s0,sp,48
    80004932:	892a                	mv	s2,a0
    80004934:	89ae                	mv	s3,a1
    80004936:	00020497          	auipc	s1,0x20
    8000493a:	eaa48493          	add	s1,s1,-342 # 800247e0 <log>
    8000493e:	00004597          	auipc	a1,0x4
    80004942:	d9258593          	add	a1,a1,-622 # 800086d0 <syscalls+0x200>
    80004946:	8526                	mv	a0,s1
    80004948:	ffffc097          	auipc	ra,0xffffc
    8000494c:	260080e7          	jalr	608(ra) # 80000ba8 <initlock>
    80004950:	0149a583          	lw	a1,20(s3)
    80004954:	cc8c                	sw	a1,24(s1)
    80004956:	0109a783          	lw	a5,16(s3)
    8000495a:	ccdc                	sw	a5,28(s1)
    8000495c:	0324a423          	sw	s2,40(s1)
    80004960:	854a                	mv	a0,s2
    80004962:	fffff097          	auipc	ra,0xfffff
    80004966:	e58080e7          	jalr	-424(ra) # 800037ba <bread>
    8000496a:	4d30                	lw	a2,88(a0)
    8000496c:	d4d0                	sw	a2,44(s1)
    8000496e:	00c05f63          	blez	a2,8000498c <initlog+0x68>
    80004972:	87aa                	mv	a5,a0
    80004974:	00020717          	auipc	a4,0x20
    80004978:	e9c70713          	add	a4,a4,-356 # 80024810 <log+0x30>
    8000497c:	060a                	sll	a2,a2,0x2
    8000497e:	962a                	add	a2,a2,a0
    80004980:	4ff4                	lw	a3,92(a5)
    80004982:	c314                	sw	a3,0(a4)
    80004984:	0791                	add	a5,a5,4
    80004986:	0711                	add	a4,a4,4
    80004988:	fec79ce3          	bne	a5,a2,80004980 <initlog+0x5c>
    8000498c:	fffff097          	auipc	ra,0xfffff
    80004990:	f5e080e7          	jalr	-162(ra) # 800038ea <brelse>
    80004994:	4505                	li	a0,1
    80004996:	00000097          	auipc	ra,0x0
    8000499a:	eca080e7          	jalr	-310(ra) # 80004860 <install_trans>
    8000499e:	00020797          	auipc	a5,0x20
    800049a2:	e607a723          	sw	zero,-402(a5) # 8002480c <log+0x2c>
    800049a6:	00000097          	auipc	ra,0x0
    800049aa:	e50080e7          	jalr	-432(ra) # 800047f6 <write_head>
    800049ae:	70a2                	ld	ra,40(sp)
    800049b0:	7402                	ld	s0,32(sp)
    800049b2:	64e2                	ld	s1,24(sp)
    800049b4:	6942                	ld	s2,16(sp)
    800049b6:	69a2                	ld	s3,8(sp)
    800049b8:	6145                	add	sp,sp,48
    800049ba:	8082                	ret

00000000800049bc <begin_op>:
    800049bc:	1101                	add	sp,sp,-32
    800049be:	ec06                	sd	ra,24(sp)
    800049c0:	e822                	sd	s0,16(sp)
    800049c2:	e426                	sd	s1,8(sp)
    800049c4:	e04a                	sd	s2,0(sp)
    800049c6:	1000                	add	s0,sp,32
    800049c8:	00020517          	auipc	a0,0x20
    800049cc:	e1850513          	add	a0,a0,-488 # 800247e0 <log>
    800049d0:	ffffc097          	auipc	ra,0xffffc
    800049d4:	268080e7          	jalr	616(ra) # 80000c38 <acquire>
    800049d8:	00020497          	auipc	s1,0x20
    800049dc:	e0848493          	add	s1,s1,-504 # 800247e0 <log>
    800049e0:	4979                	li	s2,30
    800049e2:	a039                	j	800049f0 <begin_op+0x34>
    800049e4:	85a6                	mv	a1,s1
    800049e6:	8526                	mv	a0,s1
    800049e8:	ffffe097          	auipc	ra,0xffffe
    800049ec:	bd8080e7          	jalr	-1064(ra) # 800025c0 <sleep>
    800049f0:	50dc                	lw	a5,36(s1)
    800049f2:	fbed                	bnez	a5,800049e4 <begin_op+0x28>
    800049f4:	5098                	lw	a4,32(s1)
    800049f6:	2705                	addw	a4,a4,1
    800049f8:	0027179b          	sllw	a5,a4,0x2
    800049fc:	9fb9                	addw	a5,a5,a4
    800049fe:	0017979b          	sllw	a5,a5,0x1
    80004a02:	54d4                	lw	a3,44(s1)
    80004a04:	9fb5                	addw	a5,a5,a3
    80004a06:	00f95963          	bge	s2,a5,80004a18 <begin_op+0x5c>
    80004a0a:	85a6                	mv	a1,s1
    80004a0c:	8526                	mv	a0,s1
    80004a0e:	ffffe097          	auipc	ra,0xffffe
    80004a12:	bb2080e7          	jalr	-1102(ra) # 800025c0 <sleep>
    80004a16:	bfe9                	j	800049f0 <begin_op+0x34>
    80004a18:	00020517          	auipc	a0,0x20
    80004a1c:	dc850513          	add	a0,a0,-568 # 800247e0 <log>
    80004a20:	d118                	sw	a4,32(a0)
    80004a22:	ffffc097          	auipc	ra,0xffffc
    80004a26:	2ca080e7          	jalr	714(ra) # 80000cec <release>
    80004a2a:	60e2                	ld	ra,24(sp)
    80004a2c:	6442                	ld	s0,16(sp)
    80004a2e:	64a2                	ld	s1,8(sp)
    80004a30:	6902                	ld	s2,0(sp)
    80004a32:	6105                	add	sp,sp,32
    80004a34:	8082                	ret

0000000080004a36 <end_op>:
    80004a36:	7139                	add	sp,sp,-64
    80004a38:	fc06                	sd	ra,56(sp)
    80004a3a:	f822                	sd	s0,48(sp)
    80004a3c:	f426                	sd	s1,40(sp)
    80004a3e:	f04a                	sd	s2,32(sp)
    80004a40:	0080                	add	s0,sp,64
    80004a42:	00020497          	auipc	s1,0x20
    80004a46:	d9e48493          	add	s1,s1,-610 # 800247e0 <log>
    80004a4a:	8526                	mv	a0,s1
    80004a4c:	ffffc097          	auipc	ra,0xffffc
    80004a50:	1ec080e7          	jalr	492(ra) # 80000c38 <acquire>
    80004a54:	509c                	lw	a5,32(s1)
    80004a56:	37fd                	addw	a5,a5,-1
    80004a58:	0007891b          	sext.w	s2,a5
    80004a5c:	d09c                	sw	a5,32(s1)
    80004a5e:	50dc                	lw	a5,36(s1)
    80004a60:	e7b9                	bnez	a5,80004aae <end_op+0x78>
    80004a62:	06091163          	bnez	s2,80004ac4 <end_op+0x8e>
    80004a66:	00020497          	auipc	s1,0x20
    80004a6a:	d7a48493          	add	s1,s1,-646 # 800247e0 <log>
    80004a6e:	4785                	li	a5,1
    80004a70:	d0dc                	sw	a5,36(s1)
    80004a72:	8526                	mv	a0,s1
    80004a74:	ffffc097          	auipc	ra,0xffffc
    80004a78:	278080e7          	jalr	632(ra) # 80000cec <release>
    80004a7c:	54dc                	lw	a5,44(s1)
    80004a7e:	06f04763          	bgtz	a5,80004aec <end_op+0xb6>
    80004a82:	00020497          	auipc	s1,0x20
    80004a86:	d5e48493          	add	s1,s1,-674 # 800247e0 <log>
    80004a8a:	8526                	mv	a0,s1
    80004a8c:	ffffc097          	auipc	ra,0xffffc
    80004a90:	1ac080e7          	jalr	428(ra) # 80000c38 <acquire>
    80004a94:	0204a223          	sw	zero,36(s1)
    80004a98:	8526                	mv	a0,s1
    80004a9a:	ffffe097          	auipc	ra,0xffffe
    80004a9e:	b8a080e7          	jalr	-1142(ra) # 80002624 <wakeup>
    80004aa2:	8526                	mv	a0,s1
    80004aa4:	ffffc097          	auipc	ra,0xffffc
    80004aa8:	248080e7          	jalr	584(ra) # 80000cec <release>
    80004aac:	a815                	j	80004ae0 <end_op+0xaa>
    80004aae:	ec4e                	sd	s3,24(sp)
    80004ab0:	e852                	sd	s4,16(sp)
    80004ab2:	e456                	sd	s5,8(sp)
    80004ab4:	00004517          	auipc	a0,0x4
    80004ab8:	c2450513          	add	a0,a0,-988 # 800086d8 <syscalls+0x208>
    80004abc:	ffffc097          	auipc	ra,0xffffc
    80004ac0:	aa4080e7          	jalr	-1372(ra) # 80000560 <panic>
    80004ac4:	00020497          	auipc	s1,0x20
    80004ac8:	d1c48493          	add	s1,s1,-740 # 800247e0 <log>
    80004acc:	8526                	mv	a0,s1
    80004ace:	ffffe097          	auipc	ra,0xffffe
    80004ad2:	b56080e7          	jalr	-1194(ra) # 80002624 <wakeup>
    80004ad6:	8526                	mv	a0,s1
    80004ad8:	ffffc097          	auipc	ra,0xffffc
    80004adc:	214080e7          	jalr	532(ra) # 80000cec <release>
    80004ae0:	70e2                	ld	ra,56(sp)
    80004ae2:	7442                	ld	s0,48(sp)
    80004ae4:	74a2                	ld	s1,40(sp)
    80004ae6:	7902                	ld	s2,32(sp)
    80004ae8:	6121                	add	sp,sp,64
    80004aea:	8082                	ret
    80004aec:	ec4e                	sd	s3,24(sp)
    80004aee:	e852                	sd	s4,16(sp)
    80004af0:	e456                	sd	s5,8(sp)
    80004af2:	00020a97          	auipc	s5,0x20
    80004af6:	d1ea8a93          	add	s5,s5,-738 # 80024810 <log+0x30>
    80004afa:	00020a17          	auipc	s4,0x20
    80004afe:	ce6a0a13          	add	s4,s4,-794 # 800247e0 <log>
    80004b02:	018a2583          	lw	a1,24(s4)
    80004b06:	012585bb          	addw	a1,a1,s2
    80004b0a:	2585                	addw	a1,a1,1
    80004b0c:	028a2503          	lw	a0,40(s4)
    80004b10:	fffff097          	auipc	ra,0xfffff
    80004b14:	caa080e7          	jalr	-854(ra) # 800037ba <bread>
    80004b18:	84aa                	mv	s1,a0
    80004b1a:	000aa583          	lw	a1,0(s5)
    80004b1e:	028a2503          	lw	a0,40(s4)
    80004b22:	fffff097          	auipc	ra,0xfffff
    80004b26:	c98080e7          	jalr	-872(ra) # 800037ba <bread>
    80004b2a:	89aa                	mv	s3,a0
    80004b2c:	40000613          	li	a2,1024
    80004b30:	05850593          	add	a1,a0,88
    80004b34:	05848513          	add	a0,s1,88
    80004b38:	ffffc097          	auipc	ra,0xffffc
    80004b3c:	258080e7          	jalr	600(ra) # 80000d90 <memmove>
    80004b40:	8526                	mv	a0,s1
    80004b42:	fffff097          	auipc	ra,0xfffff
    80004b46:	d6a080e7          	jalr	-662(ra) # 800038ac <bwrite>
    80004b4a:	854e                	mv	a0,s3
    80004b4c:	fffff097          	auipc	ra,0xfffff
    80004b50:	d9e080e7          	jalr	-610(ra) # 800038ea <brelse>
    80004b54:	8526                	mv	a0,s1
    80004b56:	fffff097          	auipc	ra,0xfffff
    80004b5a:	d94080e7          	jalr	-620(ra) # 800038ea <brelse>
    80004b5e:	2905                	addw	s2,s2,1
    80004b60:	0a91                	add	s5,s5,4
    80004b62:	02ca2783          	lw	a5,44(s4)
    80004b66:	f8f94ee3          	blt	s2,a5,80004b02 <end_op+0xcc>
    80004b6a:	00000097          	auipc	ra,0x0
    80004b6e:	c8c080e7          	jalr	-884(ra) # 800047f6 <write_head>
    80004b72:	4501                	li	a0,0
    80004b74:	00000097          	auipc	ra,0x0
    80004b78:	cec080e7          	jalr	-788(ra) # 80004860 <install_trans>
    80004b7c:	00020797          	auipc	a5,0x20
    80004b80:	c807a823          	sw	zero,-880(a5) # 8002480c <log+0x2c>
    80004b84:	00000097          	auipc	ra,0x0
    80004b88:	c72080e7          	jalr	-910(ra) # 800047f6 <write_head>
    80004b8c:	69e2                	ld	s3,24(sp)
    80004b8e:	6a42                	ld	s4,16(sp)
    80004b90:	6aa2                	ld	s5,8(sp)
    80004b92:	bdc5                	j	80004a82 <end_op+0x4c>

0000000080004b94 <log_write>:
    80004b94:	1101                	add	sp,sp,-32
    80004b96:	ec06                	sd	ra,24(sp)
    80004b98:	e822                	sd	s0,16(sp)
    80004b9a:	e426                	sd	s1,8(sp)
    80004b9c:	e04a                	sd	s2,0(sp)
    80004b9e:	1000                	add	s0,sp,32
    80004ba0:	84aa                	mv	s1,a0
    80004ba2:	00020917          	auipc	s2,0x20
    80004ba6:	c3e90913          	add	s2,s2,-962 # 800247e0 <log>
    80004baa:	854a                	mv	a0,s2
    80004bac:	ffffc097          	auipc	ra,0xffffc
    80004bb0:	08c080e7          	jalr	140(ra) # 80000c38 <acquire>
    80004bb4:	02c92603          	lw	a2,44(s2)
    80004bb8:	47f5                	li	a5,29
    80004bba:	06c7c563          	blt	a5,a2,80004c24 <log_write+0x90>
    80004bbe:	00020797          	auipc	a5,0x20
    80004bc2:	c3e7a783          	lw	a5,-962(a5) # 800247fc <log+0x1c>
    80004bc6:	37fd                	addw	a5,a5,-1
    80004bc8:	04f65e63          	bge	a2,a5,80004c24 <log_write+0x90>
    80004bcc:	00020797          	auipc	a5,0x20
    80004bd0:	c347a783          	lw	a5,-972(a5) # 80024800 <log+0x20>
    80004bd4:	06f05063          	blez	a5,80004c34 <log_write+0xa0>
    80004bd8:	4781                	li	a5,0
    80004bda:	06c05563          	blez	a2,80004c44 <log_write+0xb0>
    80004bde:	44cc                	lw	a1,12(s1)
    80004be0:	00020717          	auipc	a4,0x20
    80004be4:	c3070713          	add	a4,a4,-976 # 80024810 <log+0x30>
    80004be8:	4781                	li	a5,0
    80004bea:	4314                	lw	a3,0(a4)
    80004bec:	04b68c63          	beq	a3,a1,80004c44 <log_write+0xb0>
    80004bf0:	2785                	addw	a5,a5,1
    80004bf2:	0711                	add	a4,a4,4
    80004bf4:	fef61be3          	bne	a2,a5,80004bea <log_write+0x56>
    80004bf8:	0621                	add	a2,a2,8
    80004bfa:	060a                	sll	a2,a2,0x2
    80004bfc:	00020797          	auipc	a5,0x20
    80004c00:	be478793          	add	a5,a5,-1052 # 800247e0 <log>
    80004c04:	97b2                	add	a5,a5,a2
    80004c06:	44d8                	lw	a4,12(s1)
    80004c08:	cb98                	sw	a4,16(a5)
    80004c0a:	8526                	mv	a0,s1
    80004c0c:	fffff097          	auipc	ra,0xfffff
    80004c10:	d7a080e7          	jalr	-646(ra) # 80003986 <bpin>
    80004c14:	00020717          	auipc	a4,0x20
    80004c18:	bcc70713          	add	a4,a4,-1076 # 800247e0 <log>
    80004c1c:	575c                	lw	a5,44(a4)
    80004c1e:	2785                	addw	a5,a5,1
    80004c20:	d75c                	sw	a5,44(a4)
    80004c22:	a82d                	j	80004c5c <log_write+0xc8>
    80004c24:	00004517          	auipc	a0,0x4
    80004c28:	ac450513          	add	a0,a0,-1340 # 800086e8 <syscalls+0x218>
    80004c2c:	ffffc097          	auipc	ra,0xffffc
    80004c30:	934080e7          	jalr	-1740(ra) # 80000560 <panic>
    80004c34:	00004517          	auipc	a0,0x4
    80004c38:	acc50513          	add	a0,a0,-1332 # 80008700 <syscalls+0x230>
    80004c3c:	ffffc097          	auipc	ra,0xffffc
    80004c40:	924080e7          	jalr	-1756(ra) # 80000560 <panic>
    80004c44:	00878693          	add	a3,a5,8
    80004c48:	068a                	sll	a3,a3,0x2
    80004c4a:	00020717          	auipc	a4,0x20
    80004c4e:	b9670713          	add	a4,a4,-1130 # 800247e0 <log>
    80004c52:	9736                	add	a4,a4,a3
    80004c54:	44d4                	lw	a3,12(s1)
    80004c56:	cb14                	sw	a3,16(a4)
    80004c58:	faf609e3          	beq	a2,a5,80004c0a <log_write+0x76>
    80004c5c:	00020517          	auipc	a0,0x20
    80004c60:	b8450513          	add	a0,a0,-1148 # 800247e0 <log>
    80004c64:	ffffc097          	auipc	ra,0xffffc
    80004c68:	088080e7          	jalr	136(ra) # 80000cec <release>
    80004c6c:	60e2                	ld	ra,24(sp)
    80004c6e:	6442                	ld	s0,16(sp)
    80004c70:	64a2                	ld	s1,8(sp)
    80004c72:	6902                	ld	s2,0(sp)
    80004c74:	6105                	add	sp,sp,32
    80004c76:	8082                	ret

0000000080004c78 <initsleeplock>:
    80004c78:	1101                	add	sp,sp,-32
    80004c7a:	ec06                	sd	ra,24(sp)
    80004c7c:	e822                	sd	s0,16(sp)
    80004c7e:	e426                	sd	s1,8(sp)
    80004c80:	e04a                	sd	s2,0(sp)
    80004c82:	1000                	add	s0,sp,32
    80004c84:	84aa                	mv	s1,a0
    80004c86:	892e                	mv	s2,a1
    80004c88:	00004597          	auipc	a1,0x4
    80004c8c:	a9858593          	add	a1,a1,-1384 # 80008720 <syscalls+0x250>
    80004c90:	0521                	add	a0,a0,8
    80004c92:	ffffc097          	auipc	ra,0xffffc
    80004c96:	f16080e7          	jalr	-234(ra) # 80000ba8 <initlock>
    80004c9a:	0324b023          	sd	s2,32(s1)
    80004c9e:	0004a023          	sw	zero,0(s1)
    80004ca2:	0204a423          	sw	zero,40(s1)
    80004ca6:	60e2                	ld	ra,24(sp)
    80004ca8:	6442                	ld	s0,16(sp)
    80004caa:	64a2                	ld	s1,8(sp)
    80004cac:	6902                	ld	s2,0(sp)
    80004cae:	6105                	add	sp,sp,32
    80004cb0:	8082                	ret

0000000080004cb2 <acquiresleep>:
    80004cb2:	1101                	add	sp,sp,-32
    80004cb4:	ec06                	sd	ra,24(sp)
    80004cb6:	e822                	sd	s0,16(sp)
    80004cb8:	e426                	sd	s1,8(sp)
    80004cba:	e04a                	sd	s2,0(sp)
    80004cbc:	1000                	add	s0,sp,32
    80004cbe:	84aa                	mv	s1,a0
    80004cc0:	00850913          	add	s2,a0,8
    80004cc4:	854a                	mv	a0,s2
    80004cc6:	ffffc097          	auipc	ra,0xffffc
    80004cca:	f72080e7          	jalr	-142(ra) # 80000c38 <acquire>
    80004cce:	409c                	lw	a5,0(s1)
    80004cd0:	cb89                	beqz	a5,80004ce2 <acquiresleep+0x30>
    80004cd2:	85ca                	mv	a1,s2
    80004cd4:	8526                	mv	a0,s1
    80004cd6:	ffffe097          	auipc	ra,0xffffe
    80004cda:	8ea080e7          	jalr	-1814(ra) # 800025c0 <sleep>
    80004cde:	409c                	lw	a5,0(s1)
    80004ce0:	fbed                	bnez	a5,80004cd2 <acquiresleep+0x20>
    80004ce2:	4785                	li	a5,1
    80004ce4:	c09c                	sw	a5,0(s1)
    80004ce6:	ffffd097          	auipc	ra,0xffffd
    80004cea:	db8080e7          	jalr	-584(ra) # 80001a9e <myproc>
    80004cee:	513c                	lw	a5,96(a0)
    80004cf0:	d49c                	sw	a5,40(s1)
    80004cf2:	854a                	mv	a0,s2
    80004cf4:	ffffc097          	auipc	ra,0xffffc
    80004cf8:	ff8080e7          	jalr	-8(ra) # 80000cec <release>
    80004cfc:	60e2                	ld	ra,24(sp)
    80004cfe:	6442                	ld	s0,16(sp)
    80004d00:	64a2                	ld	s1,8(sp)
    80004d02:	6902                	ld	s2,0(sp)
    80004d04:	6105                	add	sp,sp,32
    80004d06:	8082                	ret

0000000080004d08 <releasesleep>:
    80004d08:	1101                	add	sp,sp,-32
    80004d0a:	ec06                	sd	ra,24(sp)
    80004d0c:	e822                	sd	s0,16(sp)
    80004d0e:	e426                	sd	s1,8(sp)
    80004d10:	e04a                	sd	s2,0(sp)
    80004d12:	1000                	add	s0,sp,32
    80004d14:	84aa                	mv	s1,a0
    80004d16:	00850913          	add	s2,a0,8
    80004d1a:	854a                	mv	a0,s2
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	f1c080e7          	jalr	-228(ra) # 80000c38 <acquire>
    80004d24:	0004a023          	sw	zero,0(s1)
    80004d28:	0204a423          	sw	zero,40(s1)
    80004d2c:	8526                	mv	a0,s1
    80004d2e:	ffffe097          	auipc	ra,0xffffe
    80004d32:	8f6080e7          	jalr	-1802(ra) # 80002624 <wakeup>
    80004d36:	854a                	mv	a0,s2
    80004d38:	ffffc097          	auipc	ra,0xffffc
    80004d3c:	fb4080e7          	jalr	-76(ra) # 80000cec <release>
    80004d40:	60e2                	ld	ra,24(sp)
    80004d42:	6442                	ld	s0,16(sp)
    80004d44:	64a2                	ld	s1,8(sp)
    80004d46:	6902                	ld	s2,0(sp)
    80004d48:	6105                	add	sp,sp,32
    80004d4a:	8082                	ret

0000000080004d4c <holdingsleep>:
    80004d4c:	7179                	add	sp,sp,-48
    80004d4e:	f406                	sd	ra,40(sp)
    80004d50:	f022                	sd	s0,32(sp)
    80004d52:	ec26                	sd	s1,24(sp)
    80004d54:	e84a                	sd	s2,16(sp)
    80004d56:	1800                	add	s0,sp,48
    80004d58:	84aa                	mv	s1,a0
    80004d5a:	00850913          	add	s2,a0,8
    80004d5e:	854a                	mv	a0,s2
    80004d60:	ffffc097          	auipc	ra,0xffffc
    80004d64:	ed8080e7          	jalr	-296(ra) # 80000c38 <acquire>
    80004d68:	409c                	lw	a5,0(s1)
    80004d6a:	ef91                	bnez	a5,80004d86 <holdingsleep+0x3a>
    80004d6c:	4481                	li	s1,0
    80004d6e:	854a                	mv	a0,s2
    80004d70:	ffffc097          	auipc	ra,0xffffc
    80004d74:	f7c080e7          	jalr	-132(ra) # 80000cec <release>
    80004d78:	8526                	mv	a0,s1
    80004d7a:	70a2                	ld	ra,40(sp)
    80004d7c:	7402                	ld	s0,32(sp)
    80004d7e:	64e2                	ld	s1,24(sp)
    80004d80:	6942                	ld	s2,16(sp)
    80004d82:	6145                	add	sp,sp,48
    80004d84:	8082                	ret
    80004d86:	e44e                	sd	s3,8(sp)
    80004d88:	0284a983          	lw	s3,40(s1)
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	d12080e7          	jalr	-750(ra) # 80001a9e <myproc>
    80004d94:	5124                	lw	s1,96(a0)
    80004d96:	413484b3          	sub	s1,s1,s3
    80004d9a:	0014b493          	seqz	s1,s1
    80004d9e:	69a2                	ld	s3,8(sp)
    80004da0:	b7f9                	j	80004d6e <holdingsleep+0x22>

0000000080004da2 <fileinit>:
    80004da2:	1141                	add	sp,sp,-16
    80004da4:	e406                	sd	ra,8(sp)
    80004da6:	e022                	sd	s0,0(sp)
    80004da8:	0800                	add	s0,sp,16
    80004daa:	00004597          	auipc	a1,0x4
    80004dae:	98658593          	add	a1,a1,-1658 # 80008730 <syscalls+0x260>
    80004db2:	00020517          	auipc	a0,0x20
    80004db6:	b7650513          	add	a0,a0,-1162 # 80024928 <ftable>
    80004dba:	ffffc097          	auipc	ra,0xffffc
    80004dbe:	dee080e7          	jalr	-530(ra) # 80000ba8 <initlock>
    80004dc2:	60a2                	ld	ra,8(sp)
    80004dc4:	6402                	ld	s0,0(sp)
    80004dc6:	0141                	add	sp,sp,16
    80004dc8:	8082                	ret

0000000080004dca <filealloc>:
    80004dca:	1101                	add	sp,sp,-32
    80004dcc:	ec06                	sd	ra,24(sp)
    80004dce:	e822                	sd	s0,16(sp)
    80004dd0:	e426                	sd	s1,8(sp)
    80004dd2:	1000                	add	s0,sp,32
    80004dd4:	00020517          	auipc	a0,0x20
    80004dd8:	b5450513          	add	a0,a0,-1196 # 80024928 <ftable>
    80004ddc:	ffffc097          	auipc	ra,0xffffc
    80004de0:	e5c080e7          	jalr	-420(ra) # 80000c38 <acquire>
    80004de4:	00020497          	auipc	s1,0x20
    80004de8:	b5c48493          	add	s1,s1,-1188 # 80024940 <ftable+0x18>
    80004dec:	00021717          	auipc	a4,0x21
    80004df0:	af470713          	add	a4,a4,-1292 # 800258e0 <disk>
    80004df4:	40dc                	lw	a5,4(s1)
    80004df6:	cf99                	beqz	a5,80004e14 <filealloc+0x4a>
    80004df8:	02848493          	add	s1,s1,40
    80004dfc:	fee49ce3          	bne	s1,a4,80004df4 <filealloc+0x2a>
    80004e00:	00020517          	auipc	a0,0x20
    80004e04:	b2850513          	add	a0,a0,-1240 # 80024928 <ftable>
    80004e08:	ffffc097          	auipc	ra,0xffffc
    80004e0c:	ee4080e7          	jalr	-284(ra) # 80000cec <release>
    80004e10:	4481                	li	s1,0
    80004e12:	a819                	j	80004e28 <filealloc+0x5e>
    80004e14:	4785                	li	a5,1
    80004e16:	c0dc                	sw	a5,4(s1)
    80004e18:	00020517          	auipc	a0,0x20
    80004e1c:	b1050513          	add	a0,a0,-1264 # 80024928 <ftable>
    80004e20:	ffffc097          	auipc	ra,0xffffc
    80004e24:	ecc080e7          	jalr	-308(ra) # 80000cec <release>
    80004e28:	8526                	mv	a0,s1
    80004e2a:	60e2                	ld	ra,24(sp)
    80004e2c:	6442                	ld	s0,16(sp)
    80004e2e:	64a2                	ld	s1,8(sp)
    80004e30:	6105                	add	sp,sp,32
    80004e32:	8082                	ret

0000000080004e34 <filedup>:
    80004e34:	1101                	add	sp,sp,-32
    80004e36:	ec06                	sd	ra,24(sp)
    80004e38:	e822                	sd	s0,16(sp)
    80004e3a:	e426                	sd	s1,8(sp)
    80004e3c:	1000                	add	s0,sp,32
    80004e3e:	84aa                	mv	s1,a0
    80004e40:	00020517          	auipc	a0,0x20
    80004e44:	ae850513          	add	a0,a0,-1304 # 80024928 <ftable>
    80004e48:	ffffc097          	auipc	ra,0xffffc
    80004e4c:	df0080e7          	jalr	-528(ra) # 80000c38 <acquire>
    80004e50:	40dc                	lw	a5,4(s1)
    80004e52:	02f05263          	blez	a5,80004e76 <filedup+0x42>
    80004e56:	2785                	addw	a5,a5,1
    80004e58:	c0dc                	sw	a5,4(s1)
    80004e5a:	00020517          	auipc	a0,0x20
    80004e5e:	ace50513          	add	a0,a0,-1330 # 80024928 <ftable>
    80004e62:	ffffc097          	auipc	ra,0xffffc
    80004e66:	e8a080e7          	jalr	-374(ra) # 80000cec <release>
    80004e6a:	8526                	mv	a0,s1
    80004e6c:	60e2                	ld	ra,24(sp)
    80004e6e:	6442                	ld	s0,16(sp)
    80004e70:	64a2                	ld	s1,8(sp)
    80004e72:	6105                	add	sp,sp,32
    80004e74:	8082                	ret
    80004e76:	00004517          	auipc	a0,0x4
    80004e7a:	8c250513          	add	a0,a0,-1854 # 80008738 <syscalls+0x268>
    80004e7e:	ffffb097          	auipc	ra,0xffffb
    80004e82:	6e2080e7          	jalr	1762(ra) # 80000560 <panic>

0000000080004e86 <fileclose>:
    80004e86:	7139                	add	sp,sp,-64
    80004e88:	fc06                	sd	ra,56(sp)
    80004e8a:	f822                	sd	s0,48(sp)
    80004e8c:	f426                	sd	s1,40(sp)
    80004e8e:	0080                	add	s0,sp,64
    80004e90:	84aa                	mv	s1,a0
    80004e92:	00020517          	auipc	a0,0x20
    80004e96:	a9650513          	add	a0,a0,-1386 # 80024928 <ftable>
    80004e9a:	ffffc097          	auipc	ra,0xffffc
    80004e9e:	d9e080e7          	jalr	-610(ra) # 80000c38 <acquire>
    80004ea2:	40dc                	lw	a5,4(s1)
    80004ea4:	04f05c63          	blez	a5,80004efc <fileclose+0x76>
    80004ea8:	37fd                	addw	a5,a5,-1
    80004eaa:	0007871b          	sext.w	a4,a5
    80004eae:	c0dc                	sw	a5,4(s1)
    80004eb0:	06e04263          	bgtz	a4,80004f14 <fileclose+0x8e>
    80004eb4:	f04a                	sd	s2,32(sp)
    80004eb6:	ec4e                	sd	s3,24(sp)
    80004eb8:	e852                	sd	s4,16(sp)
    80004eba:	e456                	sd	s5,8(sp)
    80004ebc:	0004a903          	lw	s2,0(s1)
    80004ec0:	0094ca83          	lbu	s5,9(s1)
    80004ec4:	0104ba03          	ld	s4,16(s1)
    80004ec8:	0184b983          	ld	s3,24(s1)
    80004ecc:	0004a223          	sw	zero,4(s1)
    80004ed0:	0004a023          	sw	zero,0(s1)
    80004ed4:	00020517          	auipc	a0,0x20
    80004ed8:	a5450513          	add	a0,a0,-1452 # 80024928 <ftable>
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	e10080e7          	jalr	-496(ra) # 80000cec <release>
    80004ee4:	4785                	li	a5,1
    80004ee6:	04f90463          	beq	s2,a5,80004f2e <fileclose+0xa8>
    80004eea:	3979                	addw	s2,s2,-2
    80004eec:	4785                	li	a5,1
    80004eee:	0527fb63          	bgeu	a5,s2,80004f44 <fileclose+0xbe>
    80004ef2:	7902                	ld	s2,32(sp)
    80004ef4:	69e2                	ld	s3,24(sp)
    80004ef6:	6a42                	ld	s4,16(sp)
    80004ef8:	6aa2                	ld	s5,8(sp)
    80004efa:	a02d                	j	80004f24 <fileclose+0x9e>
    80004efc:	f04a                	sd	s2,32(sp)
    80004efe:	ec4e                	sd	s3,24(sp)
    80004f00:	e852                	sd	s4,16(sp)
    80004f02:	e456                	sd	s5,8(sp)
    80004f04:	00004517          	auipc	a0,0x4
    80004f08:	83c50513          	add	a0,a0,-1988 # 80008740 <syscalls+0x270>
    80004f0c:	ffffb097          	auipc	ra,0xffffb
    80004f10:	654080e7          	jalr	1620(ra) # 80000560 <panic>
    80004f14:	00020517          	auipc	a0,0x20
    80004f18:	a1450513          	add	a0,a0,-1516 # 80024928 <ftable>
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	dd0080e7          	jalr	-560(ra) # 80000cec <release>
    80004f24:	70e2                	ld	ra,56(sp)
    80004f26:	7442                	ld	s0,48(sp)
    80004f28:	74a2                	ld	s1,40(sp)
    80004f2a:	6121                	add	sp,sp,64
    80004f2c:	8082                	ret
    80004f2e:	85d6                	mv	a1,s5
    80004f30:	8552                	mv	a0,s4
    80004f32:	00000097          	auipc	ra,0x0
    80004f36:	3a2080e7          	jalr	930(ra) # 800052d4 <pipeclose>
    80004f3a:	7902                	ld	s2,32(sp)
    80004f3c:	69e2                	ld	s3,24(sp)
    80004f3e:	6a42                	ld	s4,16(sp)
    80004f40:	6aa2                	ld	s5,8(sp)
    80004f42:	b7cd                	j	80004f24 <fileclose+0x9e>
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	a78080e7          	jalr	-1416(ra) # 800049bc <begin_op>
    80004f4c:	854e                	mv	a0,s3
    80004f4e:	fffff097          	auipc	ra,0xfffff
    80004f52:	25e080e7          	jalr	606(ra) # 800041ac <iput>
    80004f56:	00000097          	auipc	ra,0x0
    80004f5a:	ae0080e7          	jalr	-1312(ra) # 80004a36 <end_op>
    80004f5e:	7902                	ld	s2,32(sp)
    80004f60:	69e2                	ld	s3,24(sp)
    80004f62:	6a42                	ld	s4,16(sp)
    80004f64:	6aa2                	ld	s5,8(sp)
    80004f66:	bf7d                	j	80004f24 <fileclose+0x9e>

0000000080004f68 <filestat>:
    80004f68:	715d                	add	sp,sp,-80
    80004f6a:	e486                	sd	ra,72(sp)
    80004f6c:	e0a2                	sd	s0,64(sp)
    80004f6e:	fc26                	sd	s1,56(sp)
    80004f70:	f44e                	sd	s3,40(sp)
    80004f72:	0880                	add	s0,sp,80
    80004f74:	84aa                	mv	s1,a0
    80004f76:	89ae                	mv	s3,a1
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	b26080e7          	jalr	-1242(ra) # 80001a9e <myproc>
    80004f80:	409c                	lw	a5,0(s1)
    80004f82:	37f9                	addw	a5,a5,-2
    80004f84:	4705                	li	a4,1
    80004f86:	04f76863          	bltu	a4,a5,80004fd6 <filestat+0x6e>
    80004f8a:	f84a                	sd	s2,48(sp)
    80004f8c:	892a                	mv	s2,a0
    80004f8e:	6c88                	ld	a0,24(s1)
    80004f90:	fffff097          	auipc	ra,0xfffff
    80004f94:	05e080e7          	jalr	94(ra) # 80003fee <ilock>
    80004f98:	fb840593          	add	a1,s0,-72
    80004f9c:	6c88                	ld	a0,24(s1)
    80004f9e:	fffff097          	auipc	ra,0xfffff
    80004fa2:	2de080e7          	jalr	734(ra) # 8000427c <stati>
    80004fa6:	6c88                	ld	a0,24(s1)
    80004fa8:	fffff097          	auipc	ra,0xfffff
    80004fac:	10c080e7          	jalr	268(ra) # 800040b4 <iunlock>
    80004fb0:	46e1                	li	a3,24
    80004fb2:	fb840613          	add	a2,s0,-72
    80004fb6:	85ce                	mv	a1,s3
    80004fb8:	08093503          	ld	a0,128(s2)
    80004fbc:	ffffc097          	auipc	ra,0xffffc
    80004fc0:	726080e7          	jalr	1830(ra) # 800016e2 <copyout>
    80004fc4:	41f5551b          	sraw	a0,a0,0x1f
    80004fc8:	7942                	ld	s2,48(sp)
    80004fca:	60a6                	ld	ra,72(sp)
    80004fcc:	6406                	ld	s0,64(sp)
    80004fce:	74e2                	ld	s1,56(sp)
    80004fd0:	79a2                	ld	s3,40(sp)
    80004fd2:	6161                	add	sp,sp,80
    80004fd4:	8082                	ret
    80004fd6:	557d                	li	a0,-1
    80004fd8:	bfcd                	j	80004fca <filestat+0x62>

0000000080004fda <fileread>:
    80004fda:	7179                	add	sp,sp,-48
    80004fdc:	f406                	sd	ra,40(sp)
    80004fde:	f022                	sd	s0,32(sp)
    80004fe0:	e84a                	sd	s2,16(sp)
    80004fe2:	1800                	add	s0,sp,48
    80004fe4:	00854783          	lbu	a5,8(a0)
    80004fe8:	cbc5                	beqz	a5,80005098 <fileread+0xbe>
    80004fea:	ec26                	sd	s1,24(sp)
    80004fec:	e44e                	sd	s3,8(sp)
    80004fee:	84aa                	mv	s1,a0
    80004ff0:	89ae                	mv	s3,a1
    80004ff2:	8932                	mv	s2,a2
    80004ff4:	411c                	lw	a5,0(a0)
    80004ff6:	4705                	li	a4,1
    80004ff8:	04e78963          	beq	a5,a4,8000504a <fileread+0x70>
    80004ffc:	470d                	li	a4,3
    80004ffe:	04e78f63          	beq	a5,a4,8000505c <fileread+0x82>
    80005002:	4709                	li	a4,2
    80005004:	08e79263          	bne	a5,a4,80005088 <fileread+0xae>
    80005008:	6d08                	ld	a0,24(a0)
    8000500a:	fffff097          	auipc	ra,0xfffff
    8000500e:	fe4080e7          	jalr	-28(ra) # 80003fee <ilock>
    80005012:	874a                	mv	a4,s2
    80005014:	5094                	lw	a3,32(s1)
    80005016:	864e                	mv	a2,s3
    80005018:	4585                	li	a1,1
    8000501a:	6c88                	ld	a0,24(s1)
    8000501c:	fffff097          	auipc	ra,0xfffff
    80005020:	28a080e7          	jalr	650(ra) # 800042a6 <readi>
    80005024:	892a                	mv	s2,a0
    80005026:	00a05563          	blez	a0,80005030 <fileread+0x56>
    8000502a:	509c                	lw	a5,32(s1)
    8000502c:	9fa9                	addw	a5,a5,a0
    8000502e:	d09c                	sw	a5,32(s1)
    80005030:	6c88                	ld	a0,24(s1)
    80005032:	fffff097          	auipc	ra,0xfffff
    80005036:	082080e7          	jalr	130(ra) # 800040b4 <iunlock>
    8000503a:	64e2                	ld	s1,24(sp)
    8000503c:	69a2                	ld	s3,8(sp)
    8000503e:	854a                	mv	a0,s2
    80005040:	70a2                	ld	ra,40(sp)
    80005042:	7402                	ld	s0,32(sp)
    80005044:	6942                	ld	s2,16(sp)
    80005046:	6145                	add	sp,sp,48
    80005048:	8082                	ret
    8000504a:	6908                	ld	a0,16(a0)
    8000504c:	00000097          	auipc	ra,0x0
    80005050:	400080e7          	jalr	1024(ra) # 8000544c <piperead>
    80005054:	892a                	mv	s2,a0
    80005056:	64e2                	ld	s1,24(sp)
    80005058:	69a2                	ld	s3,8(sp)
    8000505a:	b7d5                	j	8000503e <fileread+0x64>
    8000505c:	02451783          	lh	a5,36(a0)
    80005060:	03079693          	sll	a3,a5,0x30
    80005064:	92c1                	srl	a3,a3,0x30
    80005066:	4725                	li	a4,9
    80005068:	02d76a63          	bltu	a4,a3,8000509c <fileread+0xc2>
    8000506c:	0792                	sll	a5,a5,0x4
    8000506e:	00020717          	auipc	a4,0x20
    80005072:	81a70713          	add	a4,a4,-2022 # 80024888 <devsw>
    80005076:	97ba                	add	a5,a5,a4
    80005078:	639c                	ld	a5,0(a5)
    8000507a:	c78d                	beqz	a5,800050a4 <fileread+0xca>
    8000507c:	4505                	li	a0,1
    8000507e:	9782                	jalr	a5
    80005080:	892a                	mv	s2,a0
    80005082:	64e2                	ld	s1,24(sp)
    80005084:	69a2                	ld	s3,8(sp)
    80005086:	bf65                	j	8000503e <fileread+0x64>
    80005088:	00003517          	auipc	a0,0x3
    8000508c:	6c850513          	add	a0,a0,1736 # 80008750 <syscalls+0x280>
    80005090:	ffffb097          	auipc	ra,0xffffb
    80005094:	4d0080e7          	jalr	1232(ra) # 80000560 <panic>
    80005098:	597d                	li	s2,-1
    8000509a:	b755                	j	8000503e <fileread+0x64>
    8000509c:	597d                	li	s2,-1
    8000509e:	64e2                	ld	s1,24(sp)
    800050a0:	69a2                	ld	s3,8(sp)
    800050a2:	bf71                	j	8000503e <fileread+0x64>
    800050a4:	597d                	li	s2,-1
    800050a6:	64e2                	ld	s1,24(sp)
    800050a8:	69a2                	ld	s3,8(sp)
    800050aa:	bf51                	j	8000503e <fileread+0x64>

00000000800050ac <filewrite>:
    800050ac:	00954783          	lbu	a5,9(a0)
    800050b0:	12078963          	beqz	a5,800051e2 <filewrite+0x136>
    800050b4:	715d                	add	sp,sp,-80
    800050b6:	e486                	sd	ra,72(sp)
    800050b8:	e0a2                	sd	s0,64(sp)
    800050ba:	f84a                	sd	s2,48(sp)
    800050bc:	f052                	sd	s4,32(sp)
    800050be:	e85a                	sd	s6,16(sp)
    800050c0:	0880                	add	s0,sp,80
    800050c2:	892a                	mv	s2,a0
    800050c4:	8b2e                	mv	s6,a1
    800050c6:	8a32                	mv	s4,a2
    800050c8:	411c                	lw	a5,0(a0)
    800050ca:	4705                	li	a4,1
    800050cc:	02e78763          	beq	a5,a4,800050fa <filewrite+0x4e>
    800050d0:	470d                	li	a4,3
    800050d2:	02e78a63          	beq	a5,a4,80005106 <filewrite+0x5a>
    800050d6:	4709                	li	a4,2
    800050d8:	0ee79863          	bne	a5,a4,800051c8 <filewrite+0x11c>
    800050dc:	f44e                	sd	s3,40(sp)
    800050de:	0cc05463          	blez	a2,800051a6 <filewrite+0xfa>
    800050e2:	fc26                	sd	s1,56(sp)
    800050e4:	ec56                	sd	s5,24(sp)
    800050e6:	e45e                	sd	s7,8(sp)
    800050e8:	e062                	sd	s8,0(sp)
    800050ea:	4981                	li	s3,0
    800050ec:	6b85                	lui	s7,0x1
    800050ee:	c00b8b93          	add	s7,s7,-1024 # c00 <_entry-0x7ffff400>
    800050f2:	6c05                	lui	s8,0x1
    800050f4:	c00c0c1b          	addw	s8,s8,-1024 # c00 <_entry-0x7ffff400>
    800050f8:	a851                	j	8000518c <filewrite+0xe0>
    800050fa:	6908                	ld	a0,16(a0)
    800050fc:	00000097          	auipc	ra,0x0
    80005100:	248080e7          	jalr	584(ra) # 80005344 <pipewrite>
    80005104:	a85d                	j	800051ba <filewrite+0x10e>
    80005106:	02451783          	lh	a5,36(a0)
    8000510a:	03079693          	sll	a3,a5,0x30
    8000510e:	92c1                	srl	a3,a3,0x30
    80005110:	4725                	li	a4,9
    80005112:	0cd76a63          	bltu	a4,a3,800051e6 <filewrite+0x13a>
    80005116:	0792                	sll	a5,a5,0x4
    80005118:	0001f717          	auipc	a4,0x1f
    8000511c:	77070713          	add	a4,a4,1904 # 80024888 <devsw>
    80005120:	97ba                	add	a5,a5,a4
    80005122:	679c                	ld	a5,8(a5)
    80005124:	c3f9                	beqz	a5,800051ea <filewrite+0x13e>
    80005126:	4505                	li	a0,1
    80005128:	9782                	jalr	a5
    8000512a:	a841                	j	800051ba <filewrite+0x10e>
    8000512c:	00048a9b          	sext.w	s5,s1
    80005130:	00000097          	auipc	ra,0x0
    80005134:	88c080e7          	jalr	-1908(ra) # 800049bc <begin_op>
    80005138:	01893503          	ld	a0,24(s2)
    8000513c:	fffff097          	auipc	ra,0xfffff
    80005140:	eb2080e7          	jalr	-334(ra) # 80003fee <ilock>
    80005144:	8756                	mv	a4,s5
    80005146:	02092683          	lw	a3,32(s2)
    8000514a:	01698633          	add	a2,s3,s6
    8000514e:	4585                	li	a1,1
    80005150:	01893503          	ld	a0,24(s2)
    80005154:	fffff097          	auipc	ra,0xfffff
    80005158:	262080e7          	jalr	610(ra) # 800043b6 <writei>
    8000515c:	84aa                	mv	s1,a0
    8000515e:	00a05763          	blez	a0,8000516c <filewrite+0xc0>
    80005162:	02092783          	lw	a5,32(s2)
    80005166:	9fa9                	addw	a5,a5,a0
    80005168:	02f92023          	sw	a5,32(s2)
    8000516c:	01893503          	ld	a0,24(s2)
    80005170:	fffff097          	auipc	ra,0xfffff
    80005174:	f44080e7          	jalr	-188(ra) # 800040b4 <iunlock>
    80005178:	00000097          	auipc	ra,0x0
    8000517c:	8be080e7          	jalr	-1858(ra) # 80004a36 <end_op>
    80005180:	029a9563          	bne	s5,s1,800051aa <filewrite+0xfe>
    80005184:	013489bb          	addw	s3,s1,s3
    80005188:	0149da63          	bge	s3,s4,8000519c <filewrite+0xf0>
    8000518c:	413a04bb          	subw	s1,s4,s3
    80005190:	0004879b          	sext.w	a5,s1
    80005194:	f8fbdce3          	bge	s7,a5,8000512c <filewrite+0x80>
    80005198:	84e2                	mv	s1,s8
    8000519a:	bf49                	j	8000512c <filewrite+0x80>
    8000519c:	74e2                	ld	s1,56(sp)
    8000519e:	6ae2                	ld	s5,24(sp)
    800051a0:	6ba2                	ld	s7,8(sp)
    800051a2:	6c02                	ld	s8,0(sp)
    800051a4:	a039                	j	800051b2 <filewrite+0x106>
    800051a6:	4981                	li	s3,0
    800051a8:	a029                	j	800051b2 <filewrite+0x106>
    800051aa:	74e2                	ld	s1,56(sp)
    800051ac:	6ae2                	ld	s5,24(sp)
    800051ae:	6ba2                	ld	s7,8(sp)
    800051b0:	6c02                	ld	s8,0(sp)
    800051b2:	033a1e63          	bne	s4,s3,800051ee <filewrite+0x142>
    800051b6:	8552                	mv	a0,s4
    800051b8:	79a2                	ld	s3,40(sp)
    800051ba:	60a6                	ld	ra,72(sp)
    800051bc:	6406                	ld	s0,64(sp)
    800051be:	7942                	ld	s2,48(sp)
    800051c0:	7a02                	ld	s4,32(sp)
    800051c2:	6b42                	ld	s6,16(sp)
    800051c4:	6161                	add	sp,sp,80
    800051c6:	8082                	ret
    800051c8:	fc26                	sd	s1,56(sp)
    800051ca:	f44e                	sd	s3,40(sp)
    800051cc:	ec56                	sd	s5,24(sp)
    800051ce:	e45e                	sd	s7,8(sp)
    800051d0:	e062                	sd	s8,0(sp)
    800051d2:	00003517          	auipc	a0,0x3
    800051d6:	58e50513          	add	a0,a0,1422 # 80008760 <syscalls+0x290>
    800051da:	ffffb097          	auipc	ra,0xffffb
    800051de:	386080e7          	jalr	902(ra) # 80000560 <panic>
    800051e2:	557d                	li	a0,-1
    800051e4:	8082                	ret
    800051e6:	557d                	li	a0,-1
    800051e8:	bfc9                	j	800051ba <filewrite+0x10e>
    800051ea:	557d                	li	a0,-1
    800051ec:	b7f9                	j	800051ba <filewrite+0x10e>
    800051ee:	557d                	li	a0,-1
    800051f0:	79a2                	ld	s3,40(sp)
    800051f2:	b7e1                	j	800051ba <filewrite+0x10e>

00000000800051f4 <pipealloc>:
    800051f4:	7179                	add	sp,sp,-48
    800051f6:	f406                	sd	ra,40(sp)
    800051f8:	f022                	sd	s0,32(sp)
    800051fa:	ec26                	sd	s1,24(sp)
    800051fc:	e052                	sd	s4,0(sp)
    800051fe:	1800                	add	s0,sp,48
    80005200:	84aa                	mv	s1,a0
    80005202:	8a2e                	mv	s4,a1
    80005204:	0005b023          	sd	zero,0(a1)
    80005208:	00053023          	sd	zero,0(a0)
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	bbe080e7          	jalr	-1090(ra) # 80004dca <filealloc>
    80005214:	e088                	sd	a0,0(s1)
    80005216:	cd49                	beqz	a0,800052b0 <pipealloc+0xbc>
    80005218:	00000097          	auipc	ra,0x0
    8000521c:	bb2080e7          	jalr	-1102(ra) # 80004dca <filealloc>
    80005220:	00aa3023          	sd	a0,0(s4)
    80005224:	c141                	beqz	a0,800052a4 <pipealloc+0xb0>
    80005226:	e84a                	sd	s2,16(sp)
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	920080e7          	jalr	-1760(ra) # 80000b48 <kalloc>
    80005230:	892a                	mv	s2,a0
    80005232:	c13d                	beqz	a0,80005298 <pipealloc+0xa4>
    80005234:	e44e                	sd	s3,8(sp)
    80005236:	4985                	li	s3,1
    80005238:	23352023          	sw	s3,544(a0)
    8000523c:	23352223          	sw	s3,548(a0)
    80005240:	20052e23          	sw	zero,540(a0)
    80005244:	20052c23          	sw	zero,536(a0)
    80005248:	00003597          	auipc	a1,0x3
    8000524c:	52858593          	add	a1,a1,1320 # 80008770 <syscalls+0x2a0>
    80005250:	ffffc097          	auipc	ra,0xffffc
    80005254:	958080e7          	jalr	-1704(ra) # 80000ba8 <initlock>
    80005258:	609c                	ld	a5,0(s1)
    8000525a:	0137a023          	sw	s3,0(a5)
    8000525e:	609c                	ld	a5,0(s1)
    80005260:	01378423          	sb	s3,8(a5)
    80005264:	609c                	ld	a5,0(s1)
    80005266:	000784a3          	sb	zero,9(a5)
    8000526a:	609c                	ld	a5,0(s1)
    8000526c:	0127b823          	sd	s2,16(a5)
    80005270:	000a3783          	ld	a5,0(s4)
    80005274:	0137a023          	sw	s3,0(a5)
    80005278:	000a3783          	ld	a5,0(s4)
    8000527c:	00078423          	sb	zero,8(a5)
    80005280:	000a3783          	ld	a5,0(s4)
    80005284:	013784a3          	sb	s3,9(a5)
    80005288:	000a3783          	ld	a5,0(s4)
    8000528c:	0127b823          	sd	s2,16(a5)
    80005290:	4501                	li	a0,0
    80005292:	6942                	ld	s2,16(sp)
    80005294:	69a2                	ld	s3,8(sp)
    80005296:	a03d                	j	800052c4 <pipealloc+0xd0>
    80005298:	6088                	ld	a0,0(s1)
    8000529a:	c119                	beqz	a0,800052a0 <pipealloc+0xac>
    8000529c:	6942                	ld	s2,16(sp)
    8000529e:	a029                	j	800052a8 <pipealloc+0xb4>
    800052a0:	6942                	ld	s2,16(sp)
    800052a2:	a039                	j	800052b0 <pipealloc+0xbc>
    800052a4:	6088                	ld	a0,0(s1)
    800052a6:	c50d                	beqz	a0,800052d0 <pipealloc+0xdc>
    800052a8:	00000097          	auipc	ra,0x0
    800052ac:	bde080e7          	jalr	-1058(ra) # 80004e86 <fileclose>
    800052b0:	000a3783          	ld	a5,0(s4)
    800052b4:	557d                	li	a0,-1
    800052b6:	c799                	beqz	a5,800052c4 <pipealloc+0xd0>
    800052b8:	853e                	mv	a0,a5
    800052ba:	00000097          	auipc	ra,0x0
    800052be:	bcc080e7          	jalr	-1076(ra) # 80004e86 <fileclose>
    800052c2:	557d                	li	a0,-1
    800052c4:	70a2                	ld	ra,40(sp)
    800052c6:	7402                	ld	s0,32(sp)
    800052c8:	64e2                	ld	s1,24(sp)
    800052ca:	6a02                	ld	s4,0(sp)
    800052cc:	6145                	add	sp,sp,48
    800052ce:	8082                	ret
    800052d0:	557d                	li	a0,-1
    800052d2:	bfcd                	j	800052c4 <pipealloc+0xd0>

00000000800052d4 <pipeclose>:
    800052d4:	1101                	add	sp,sp,-32
    800052d6:	ec06                	sd	ra,24(sp)
    800052d8:	e822                	sd	s0,16(sp)
    800052da:	e426                	sd	s1,8(sp)
    800052dc:	e04a                	sd	s2,0(sp)
    800052de:	1000                	add	s0,sp,32
    800052e0:	84aa                	mv	s1,a0
    800052e2:	892e                	mv	s2,a1
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	954080e7          	jalr	-1708(ra) # 80000c38 <acquire>
    800052ec:	02090d63          	beqz	s2,80005326 <pipeclose+0x52>
    800052f0:	2204a223          	sw	zero,548(s1)
    800052f4:	21848513          	add	a0,s1,536
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	32c080e7          	jalr	812(ra) # 80002624 <wakeup>
    80005300:	2204b783          	ld	a5,544(s1)
    80005304:	eb95                	bnez	a5,80005338 <pipeclose+0x64>
    80005306:	8526                	mv	a0,s1
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	9e4080e7          	jalr	-1564(ra) # 80000cec <release>
    80005310:	8526                	mv	a0,s1
    80005312:	ffffb097          	auipc	ra,0xffffb
    80005316:	738080e7          	jalr	1848(ra) # 80000a4a <kfree>
    8000531a:	60e2                	ld	ra,24(sp)
    8000531c:	6442                	ld	s0,16(sp)
    8000531e:	64a2                	ld	s1,8(sp)
    80005320:	6902                	ld	s2,0(sp)
    80005322:	6105                	add	sp,sp,32
    80005324:	8082                	ret
    80005326:	2204a023          	sw	zero,544(s1)
    8000532a:	21c48513          	add	a0,s1,540
    8000532e:	ffffd097          	auipc	ra,0xffffd
    80005332:	2f6080e7          	jalr	758(ra) # 80002624 <wakeup>
    80005336:	b7e9                	j	80005300 <pipeclose+0x2c>
    80005338:	8526                	mv	a0,s1
    8000533a:	ffffc097          	auipc	ra,0xffffc
    8000533e:	9b2080e7          	jalr	-1614(ra) # 80000cec <release>
    80005342:	bfe1                	j	8000531a <pipeclose+0x46>

0000000080005344 <pipewrite>:
    80005344:	711d                	add	sp,sp,-96
    80005346:	ec86                	sd	ra,88(sp)
    80005348:	e8a2                	sd	s0,80(sp)
    8000534a:	e4a6                	sd	s1,72(sp)
    8000534c:	e0ca                	sd	s2,64(sp)
    8000534e:	fc4e                	sd	s3,56(sp)
    80005350:	f852                	sd	s4,48(sp)
    80005352:	f456                	sd	s5,40(sp)
    80005354:	1080                	add	s0,sp,96
    80005356:	84aa                	mv	s1,a0
    80005358:	8aae                	mv	s5,a1
    8000535a:	8a32                	mv	s4,a2
    8000535c:	ffffc097          	auipc	ra,0xffffc
    80005360:	742080e7          	jalr	1858(ra) # 80001a9e <myproc>
    80005364:	89aa                	mv	s3,a0
    80005366:	8526                	mv	a0,s1
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	8d0080e7          	jalr	-1840(ra) # 80000c38 <acquire>
    80005370:	0d405863          	blez	s4,80005440 <pipewrite+0xfc>
    80005374:	f05a                	sd	s6,32(sp)
    80005376:	ec5e                	sd	s7,24(sp)
    80005378:	e862                	sd	s8,16(sp)
    8000537a:	4901                	li	s2,0
    8000537c:	5b7d                	li	s6,-1
    8000537e:	21848c13          	add	s8,s1,536
    80005382:	21c48b93          	add	s7,s1,540
    80005386:	a089                	j	800053c8 <pipewrite+0x84>
    80005388:	8526                	mv	a0,s1
    8000538a:	ffffc097          	auipc	ra,0xffffc
    8000538e:	962080e7          	jalr	-1694(ra) # 80000cec <release>
    80005392:	597d                	li	s2,-1
    80005394:	7b02                	ld	s6,32(sp)
    80005396:	6be2                	ld	s7,24(sp)
    80005398:	6c42                	ld	s8,16(sp)
    8000539a:	854a                	mv	a0,s2
    8000539c:	60e6                	ld	ra,88(sp)
    8000539e:	6446                	ld	s0,80(sp)
    800053a0:	64a6                	ld	s1,72(sp)
    800053a2:	6906                	ld	s2,64(sp)
    800053a4:	79e2                	ld	s3,56(sp)
    800053a6:	7a42                	ld	s4,48(sp)
    800053a8:	7aa2                	ld	s5,40(sp)
    800053aa:	6125                	add	sp,sp,96
    800053ac:	8082                	ret
    800053ae:	8562                	mv	a0,s8
    800053b0:	ffffd097          	auipc	ra,0xffffd
    800053b4:	274080e7          	jalr	628(ra) # 80002624 <wakeup>
    800053b8:	85a6                	mv	a1,s1
    800053ba:	855e                	mv	a0,s7
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	204080e7          	jalr	516(ra) # 800025c0 <sleep>
    800053c4:	05495f63          	bge	s2,s4,80005422 <pipewrite+0xde>
    800053c8:	2204a783          	lw	a5,544(s1)
    800053cc:	dfd5                	beqz	a5,80005388 <pipewrite+0x44>
    800053ce:	854e                	mv	a0,s3
    800053d0:	ffffd097          	auipc	ra,0xffffd
    800053d4:	4a4080e7          	jalr	1188(ra) # 80002874 <killed>
    800053d8:	f945                	bnez	a0,80005388 <pipewrite+0x44>
    800053da:	2184a783          	lw	a5,536(s1)
    800053de:	21c4a703          	lw	a4,540(s1)
    800053e2:	2007879b          	addw	a5,a5,512
    800053e6:	fcf704e3          	beq	a4,a5,800053ae <pipewrite+0x6a>
    800053ea:	4685                	li	a3,1
    800053ec:	01590633          	add	a2,s2,s5
    800053f0:	faf40593          	add	a1,s0,-81
    800053f4:	0809b503          	ld	a0,128(s3)
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	376080e7          	jalr	886(ra) # 8000176e <copyin>
    80005400:	05650263          	beq	a0,s6,80005444 <pipewrite+0x100>
    80005404:	21c4a783          	lw	a5,540(s1)
    80005408:	0017871b          	addw	a4,a5,1
    8000540c:	20e4ae23          	sw	a4,540(s1)
    80005410:	1ff7f793          	and	a5,a5,511
    80005414:	97a6                	add	a5,a5,s1
    80005416:	faf44703          	lbu	a4,-81(s0)
    8000541a:	00e78c23          	sb	a4,24(a5)
    8000541e:	2905                	addw	s2,s2,1
    80005420:	b755                	j	800053c4 <pipewrite+0x80>
    80005422:	7b02                	ld	s6,32(sp)
    80005424:	6be2                	ld	s7,24(sp)
    80005426:	6c42                	ld	s8,16(sp)
    80005428:	21848513          	add	a0,s1,536
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	1f8080e7          	jalr	504(ra) # 80002624 <wakeup>
    80005434:	8526                	mv	a0,s1
    80005436:	ffffc097          	auipc	ra,0xffffc
    8000543a:	8b6080e7          	jalr	-1866(ra) # 80000cec <release>
    8000543e:	bfb1                	j	8000539a <pipewrite+0x56>
    80005440:	4901                	li	s2,0
    80005442:	b7dd                	j	80005428 <pipewrite+0xe4>
    80005444:	7b02                	ld	s6,32(sp)
    80005446:	6be2                	ld	s7,24(sp)
    80005448:	6c42                	ld	s8,16(sp)
    8000544a:	bff9                	j	80005428 <pipewrite+0xe4>

000000008000544c <piperead>:
    8000544c:	715d                	add	sp,sp,-80
    8000544e:	e486                	sd	ra,72(sp)
    80005450:	e0a2                	sd	s0,64(sp)
    80005452:	fc26                	sd	s1,56(sp)
    80005454:	f84a                	sd	s2,48(sp)
    80005456:	f44e                	sd	s3,40(sp)
    80005458:	f052                	sd	s4,32(sp)
    8000545a:	ec56                	sd	s5,24(sp)
    8000545c:	0880                	add	s0,sp,80
    8000545e:	84aa                	mv	s1,a0
    80005460:	892e                	mv	s2,a1
    80005462:	8ab2                	mv	s5,a2
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	63a080e7          	jalr	1594(ra) # 80001a9e <myproc>
    8000546c:	8a2a                	mv	s4,a0
    8000546e:	8526                	mv	a0,s1
    80005470:	ffffb097          	auipc	ra,0xffffb
    80005474:	7c8080e7          	jalr	1992(ra) # 80000c38 <acquire>
    80005478:	2184a703          	lw	a4,536(s1)
    8000547c:	21c4a783          	lw	a5,540(s1)
    80005480:	21848993          	add	s3,s1,536
    80005484:	02f71963          	bne	a4,a5,800054b6 <piperead+0x6a>
    80005488:	2244a783          	lw	a5,548(s1)
    8000548c:	cf95                	beqz	a5,800054c8 <piperead+0x7c>
    8000548e:	8552                	mv	a0,s4
    80005490:	ffffd097          	auipc	ra,0xffffd
    80005494:	3e4080e7          	jalr	996(ra) # 80002874 <killed>
    80005498:	e10d                	bnez	a0,800054ba <piperead+0x6e>
    8000549a:	85a6                	mv	a1,s1
    8000549c:	854e                	mv	a0,s3
    8000549e:	ffffd097          	auipc	ra,0xffffd
    800054a2:	122080e7          	jalr	290(ra) # 800025c0 <sleep>
    800054a6:	2184a703          	lw	a4,536(s1)
    800054aa:	21c4a783          	lw	a5,540(s1)
    800054ae:	fcf70de3          	beq	a4,a5,80005488 <piperead+0x3c>
    800054b2:	e85a                	sd	s6,16(sp)
    800054b4:	a819                	j	800054ca <piperead+0x7e>
    800054b6:	e85a                	sd	s6,16(sp)
    800054b8:	a809                	j	800054ca <piperead+0x7e>
    800054ba:	8526                	mv	a0,s1
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	830080e7          	jalr	-2000(ra) # 80000cec <release>
    800054c4:	59fd                	li	s3,-1
    800054c6:	a0a5                	j	8000552e <piperead+0xe2>
    800054c8:	e85a                	sd	s6,16(sp)
    800054ca:	4981                	li	s3,0
    800054cc:	5b7d                	li	s6,-1
    800054ce:	05505463          	blez	s5,80005516 <piperead+0xca>
    800054d2:	2184a783          	lw	a5,536(s1)
    800054d6:	21c4a703          	lw	a4,540(s1)
    800054da:	02f70e63          	beq	a4,a5,80005516 <piperead+0xca>
    800054de:	0017871b          	addw	a4,a5,1
    800054e2:	20e4ac23          	sw	a4,536(s1)
    800054e6:	1ff7f793          	and	a5,a5,511
    800054ea:	97a6                	add	a5,a5,s1
    800054ec:	0187c783          	lbu	a5,24(a5)
    800054f0:	faf40fa3          	sb	a5,-65(s0)
    800054f4:	4685                	li	a3,1
    800054f6:	fbf40613          	add	a2,s0,-65
    800054fa:	85ca                	mv	a1,s2
    800054fc:	080a3503          	ld	a0,128(s4)
    80005500:	ffffc097          	auipc	ra,0xffffc
    80005504:	1e2080e7          	jalr	482(ra) # 800016e2 <copyout>
    80005508:	01650763          	beq	a0,s6,80005516 <piperead+0xca>
    8000550c:	2985                	addw	s3,s3,1
    8000550e:	0905                	add	s2,s2,1
    80005510:	fd3a91e3          	bne	s5,s3,800054d2 <piperead+0x86>
    80005514:	89d6                	mv	s3,s5
    80005516:	21c48513          	add	a0,s1,540
    8000551a:	ffffd097          	auipc	ra,0xffffd
    8000551e:	10a080e7          	jalr	266(ra) # 80002624 <wakeup>
    80005522:	8526                	mv	a0,s1
    80005524:	ffffb097          	auipc	ra,0xffffb
    80005528:	7c8080e7          	jalr	1992(ra) # 80000cec <release>
    8000552c:	6b42                	ld	s6,16(sp)
    8000552e:	854e                	mv	a0,s3
    80005530:	60a6                	ld	ra,72(sp)
    80005532:	6406                	ld	s0,64(sp)
    80005534:	74e2                	ld	s1,56(sp)
    80005536:	7942                	ld	s2,48(sp)
    80005538:	79a2                	ld	s3,40(sp)
    8000553a:	7a02                	ld	s4,32(sp)
    8000553c:	6ae2                	ld	s5,24(sp)
    8000553e:	6161                	add	sp,sp,80
    80005540:	8082                	ret

0000000080005542 <flags2perm>:
    80005542:	1141                	add	sp,sp,-16
    80005544:	e422                	sd	s0,8(sp)
    80005546:	0800                	add	s0,sp,16
    80005548:	87aa                	mv	a5,a0
    8000554a:	8905                	and	a0,a0,1
    8000554c:	050e                	sll	a0,a0,0x3
    8000554e:	8b89                	and	a5,a5,2
    80005550:	c399                	beqz	a5,80005556 <flags2perm+0x14>
    80005552:	00456513          	or	a0,a0,4
    80005556:	6422                	ld	s0,8(sp)
    80005558:	0141                	add	sp,sp,16
    8000555a:	8082                	ret

000000008000555c <exec>:
    8000555c:	df010113          	add	sp,sp,-528
    80005560:	20113423          	sd	ra,520(sp)
    80005564:	20813023          	sd	s0,512(sp)
    80005568:	ffa6                	sd	s1,504(sp)
    8000556a:	fbca                	sd	s2,496(sp)
    8000556c:	0c00                	add	s0,sp,528
    8000556e:	892a                	mv	s2,a0
    80005570:	dea43c23          	sd	a0,-520(s0)
    80005574:	e0b43023          	sd	a1,-512(s0)
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	526080e7          	jalr	1318(ra) # 80001a9e <myproc>
    80005580:	84aa                	mv	s1,a0
    80005582:	fffff097          	auipc	ra,0xfffff
    80005586:	43a080e7          	jalr	1082(ra) # 800049bc <begin_op>
    8000558a:	854a                	mv	a0,s2
    8000558c:	fffff097          	auipc	ra,0xfffff
    80005590:	230080e7          	jalr	560(ra) # 800047bc <namei>
    80005594:	c135                	beqz	a0,800055f8 <exec+0x9c>
    80005596:	f3d2                	sd	s4,480(sp)
    80005598:	8a2a                	mv	s4,a0
    8000559a:	fffff097          	auipc	ra,0xfffff
    8000559e:	a54080e7          	jalr	-1452(ra) # 80003fee <ilock>
    800055a2:	04000713          	li	a4,64
    800055a6:	4681                	li	a3,0
    800055a8:	e5040613          	add	a2,s0,-432
    800055ac:	4581                	li	a1,0
    800055ae:	8552                	mv	a0,s4
    800055b0:	fffff097          	auipc	ra,0xfffff
    800055b4:	cf6080e7          	jalr	-778(ra) # 800042a6 <readi>
    800055b8:	04000793          	li	a5,64
    800055bc:	00f51a63          	bne	a0,a5,800055d0 <exec+0x74>
    800055c0:	e5042703          	lw	a4,-432(s0)
    800055c4:	464c47b7          	lui	a5,0x464c4
    800055c8:	57f78793          	add	a5,a5,1407 # 464c457f <_entry-0x39b3ba81>
    800055cc:	02f70c63          	beq	a4,a5,80005604 <exec+0xa8>
    800055d0:	8552                	mv	a0,s4
    800055d2:	fffff097          	auipc	ra,0xfffff
    800055d6:	c82080e7          	jalr	-894(ra) # 80004254 <iunlockput>
    800055da:	fffff097          	auipc	ra,0xfffff
    800055de:	45c080e7          	jalr	1116(ra) # 80004a36 <end_op>
    800055e2:	557d                	li	a0,-1
    800055e4:	7a1e                	ld	s4,480(sp)
    800055e6:	20813083          	ld	ra,520(sp)
    800055ea:	20013403          	ld	s0,512(sp)
    800055ee:	74fe                	ld	s1,504(sp)
    800055f0:	795e                	ld	s2,496(sp)
    800055f2:	21010113          	add	sp,sp,528
    800055f6:	8082                	ret
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	43e080e7          	jalr	1086(ra) # 80004a36 <end_op>
    80005600:	557d                	li	a0,-1
    80005602:	b7d5                	j	800055e6 <exec+0x8a>
    80005604:	ebda                	sd	s6,464(sp)
    80005606:	8526                	mv	a0,s1
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	55a080e7          	jalr	1370(ra) # 80001b62 <proc_pagetable>
    80005610:	8b2a                	mv	s6,a0
    80005612:	30050f63          	beqz	a0,80005930 <exec+0x3d4>
    80005616:	f7ce                	sd	s3,488(sp)
    80005618:	efd6                	sd	s5,472(sp)
    8000561a:	e7de                	sd	s7,456(sp)
    8000561c:	e3e2                	sd	s8,448(sp)
    8000561e:	ff66                	sd	s9,440(sp)
    80005620:	fb6a                	sd	s10,432(sp)
    80005622:	e7042d03          	lw	s10,-400(s0)
    80005626:	e8845783          	lhu	a5,-376(s0)
    8000562a:	14078d63          	beqz	a5,80005784 <exec+0x228>
    8000562e:	f76e                	sd	s11,424(sp)
    80005630:	4901                	li	s2,0
    80005632:	4d81                	li	s11,0
    80005634:	6c85                	lui	s9,0x1
    80005636:	fffc8793          	add	a5,s9,-1 # fff <_entry-0x7ffff001>
    8000563a:	def43823          	sd	a5,-528(s0)
    8000563e:	6a85                	lui	s5,0x1
    80005640:	a0b5                	j	800056ac <exec+0x150>
    80005642:	00003517          	auipc	a0,0x3
    80005646:	13650513          	add	a0,a0,310 # 80008778 <syscalls+0x2a8>
    8000564a:	ffffb097          	auipc	ra,0xffffb
    8000564e:	f16080e7          	jalr	-234(ra) # 80000560 <panic>
    80005652:	2481                	sext.w	s1,s1
    80005654:	8726                	mv	a4,s1
    80005656:	012c06bb          	addw	a3,s8,s2
    8000565a:	4581                	li	a1,0
    8000565c:	8552                	mv	a0,s4
    8000565e:	fffff097          	auipc	ra,0xfffff
    80005662:	c48080e7          	jalr	-952(ra) # 800042a6 <readi>
    80005666:	2501                	sext.w	a0,a0
    80005668:	28a49863          	bne	s1,a0,800058f8 <exec+0x39c>
    8000566c:	012a893b          	addw	s2,s5,s2
    80005670:	03397563          	bgeu	s2,s3,8000569a <exec+0x13e>
    80005674:	02091593          	sll	a1,s2,0x20
    80005678:	9181                	srl	a1,a1,0x20
    8000567a:	95de                	add	a1,a1,s7
    8000567c:	855a                	mv	a0,s6
    8000567e:	ffffc097          	auipc	ra,0xffffc
    80005682:	a38080e7          	jalr	-1480(ra) # 800010b6 <walkaddr>
    80005686:	862a                	mv	a2,a0
    80005688:	dd4d                	beqz	a0,80005642 <exec+0xe6>
    8000568a:	412984bb          	subw	s1,s3,s2
    8000568e:	0004879b          	sext.w	a5,s1
    80005692:	fcfcf0e3          	bgeu	s9,a5,80005652 <exec+0xf6>
    80005696:	84d6                	mv	s1,s5
    80005698:	bf6d                	j	80005652 <exec+0xf6>
    8000569a:	e0843903          	ld	s2,-504(s0)
    8000569e:	2d85                	addw	s11,s11,1
    800056a0:	038d0d1b          	addw	s10,s10,56
    800056a4:	e8845783          	lhu	a5,-376(s0)
    800056a8:	08fdd663          	bge	s11,a5,80005734 <exec+0x1d8>
    800056ac:	2d01                	sext.w	s10,s10
    800056ae:	03800713          	li	a4,56
    800056b2:	86ea                	mv	a3,s10
    800056b4:	e1840613          	add	a2,s0,-488
    800056b8:	4581                	li	a1,0
    800056ba:	8552                	mv	a0,s4
    800056bc:	fffff097          	auipc	ra,0xfffff
    800056c0:	bea080e7          	jalr	-1046(ra) # 800042a6 <readi>
    800056c4:	03800793          	li	a5,56
    800056c8:	20f51063          	bne	a0,a5,800058c8 <exec+0x36c>
    800056cc:	e1842783          	lw	a5,-488(s0)
    800056d0:	4705                	li	a4,1
    800056d2:	fce796e3          	bne	a5,a4,8000569e <exec+0x142>
    800056d6:	e4043483          	ld	s1,-448(s0)
    800056da:	e3843783          	ld	a5,-456(s0)
    800056de:	1ef4e963          	bltu	s1,a5,800058d0 <exec+0x374>
    800056e2:	e2843783          	ld	a5,-472(s0)
    800056e6:	94be                	add	s1,s1,a5
    800056e8:	1ef4e863          	bltu	s1,a5,800058d8 <exec+0x37c>
    800056ec:	df043703          	ld	a4,-528(s0)
    800056f0:	8ff9                	and	a5,a5,a4
    800056f2:	1e079763          	bnez	a5,800058e0 <exec+0x384>
    800056f6:	e1c42503          	lw	a0,-484(s0)
    800056fa:	00000097          	auipc	ra,0x0
    800056fe:	e48080e7          	jalr	-440(ra) # 80005542 <flags2perm>
    80005702:	86aa                	mv	a3,a0
    80005704:	8626                	mv	a2,s1
    80005706:	85ca                	mv	a1,s2
    80005708:	855a                	mv	a0,s6
    8000570a:	ffffc097          	auipc	ra,0xffffc
    8000570e:	d70080e7          	jalr	-656(ra) # 8000147a <uvmalloc>
    80005712:	e0a43423          	sd	a0,-504(s0)
    80005716:	1c050963          	beqz	a0,800058e8 <exec+0x38c>
    8000571a:	e2843b83          	ld	s7,-472(s0)
    8000571e:	e2042c03          	lw	s8,-480(s0)
    80005722:	e3842983          	lw	s3,-456(s0)
    80005726:	00098463          	beqz	s3,8000572e <exec+0x1d2>
    8000572a:	4901                	li	s2,0
    8000572c:	b7a1                	j	80005674 <exec+0x118>
    8000572e:	e0843903          	ld	s2,-504(s0)
    80005732:	b7b5                	j	8000569e <exec+0x142>
    80005734:	7dba                	ld	s11,424(sp)
    80005736:	8552                	mv	a0,s4
    80005738:	fffff097          	auipc	ra,0xfffff
    8000573c:	b1c080e7          	jalr	-1252(ra) # 80004254 <iunlockput>
    80005740:	fffff097          	auipc	ra,0xfffff
    80005744:	2f6080e7          	jalr	758(ra) # 80004a36 <end_op>
    80005748:	ffffc097          	auipc	ra,0xffffc
    8000574c:	356080e7          	jalr	854(ra) # 80001a9e <myproc>
    80005750:	8aaa                	mv	s5,a0
    80005752:	07853c83          	ld	s9,120(a0)
    80005756:	6985                	lui	s3,0x1
    80005758:	19fd                	add	s3,s3,-1 # fff <_entry-0x7ffff001>
    8000575a:	99ca                	add	s3,s3,s2
    8000575c:	77fd                	lui	a5,0xfffff
    8000575e:	00f9f9b3          	and	s3,s3,a5
    80005762:	4691                	li	a3,4
    80005764:	6609                	lui	a2,0x2
    80005766:	964e                	add	a2,a2,s3
    80005768:	85ce                	mv	a1,s3
    8000576a:	855a                	mv	a0,s6
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	d0e080e7          	jalr	-754(ra) # 8000147a <uvmalloc>
    80005774:	892a                	mv	s2,a0
    80005776:	e0a43423          	sd	a0,-504(s0)
    8000577a:	e519                	bnez	a0,80005788 <exec+0x22c>
    8000577c:	e1343423          	sd	s3,-504(s0)
    80005780:	4a01                	li	s4,0
    80005782:	aaa5                	j	800058fa <exec+0x39e>
    80005784:	4901                	li	s2,0
    80005786:	bf45                	j	80005736 <exec+0x1da>
    80005788:	75f9                	lui	a1,0xffffe
    8000578a:	95aa                	add	a1,a1,a0
    8000578c:	855a                	mv	a0,s6
    8000578e:	ffffc097          	auipc	ra,0xffffc
    80005792:	f22080e7          	jalr	-222(ra) # 800016b0 <uvmclear>
    80005796:	7bfd                	lui	s7,0xfffff
    80005798:	9bca                	add	s7,s7,s2
    8000579a:	e0043783          	ld	a5,-512(s0)
    8000579e:	6388                	ld	a0,0(a5)
    800057a0:	c52d                	beqz	a0,8000580a <exec+0x2ae>
    800057a2:	e9040993          	add	s3,s0,-368
    800057a6:	f9040c13          	add	s8,s0,-112
    800057aa:	4481                	li	s1,0
    800057ac:	ffffb097          	auipc	ra,0xffffb
    800057b0:	6fc080e7          	jalr	1788(ra) # 80000ea8 <strlen>
    800057b4:	0015079b          	addw	a5,a0,1
    800057b8:	40f907b3          	sub	a5,s2,a5
    800057bc:	ff07f913          	and	s2,a5,-16
    800057c0:	13796863          	bltu	s2,s7,800058f0 <exec+0x394>
    800057c4:	e0043d03          	ld	s10,-512(s0)
    800057c8:	000d3a03          	ld	s4,0(s10)
    800057cc:	8552                	mv	a0,s4
    800057ce:	ffffb097          	auipc	ra,0xffffb
    800057d2:	6da080e7          	jalr	1754(ra) # 80000ea8 <strlen>
    800057d6:	0015069b          	addw	a3,a0,1
    800057da:	8652                	mv	a2,s4
    800057dc:	85ca                	mv	a1,s2
    800057de:	855a                	mv	a0,s6
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	f02080e7          	jalr	-254(ra) # 800016e2 <copyout>
    800057e8:	10054663          	bltz	a0,800058f4 <exec+0x398>
    800057ec:	0129b023          	sd	s2,0(s3)
    800057f0:	0485                	add	s1,s1,1
    800057f2:	008d0793          	add	a5,s10,8
    800057f6:	e0f43023          	sd	a5,-512(s0)
    800057fa:	008d3503          	ld	a0,8(s10)
    800057fe:	c909                	beqz	a0,80005810 <exec+0x2b4>
    80005800:	09a1                	add	s3,s3,8
    80005802:	fb8995e3          	bne	s3,s8,800057ac <exec+0x250>
    80005806:	4a01                	li	s4,0
    80005808:	a8cd                	j	800058fa <exec+0x39e>
    8000580a:	e0843903          	ld	s2,-504(s0)
    8000580e:	4481                	li	s1,0
    80005810:	00349793          	sll	a5,s1,0x3
    80005814:	f9078793          	add	a5,a5,-112 # ffffffffffffef90 <end+0xffffffff7ffd9570>
    80005818:	97a2                	add	a5,a5,s0
    8000581a:	f007b023          	sd	zero,-256(a5)
    8000581e:	00148693          	add	a3,s1,1
    80005822:	068e                	sll	a3,a3,0x3
    80005824:	40d90933          	sub	s2,s2,a3
    80005828:	ff097913          	and	s2,s2,-16
    8000582c:	e0843983          	ld	s3,-504(s0)
    80005830:	f57966e3          	bltu	s2,s7,8000577c <exec+0x220>
    80005834:	e9040613          	add	a2,s0,-368
    80005838:	85ca                	mv	a1,s2
    8000583a:	855a                	mv	a0,s6
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	ea6080e7          	jalr	-346(ra) # 800016e2 <copyout>
    80005844:	0e054863          	bltz	a0,80005934 <exec+0x3d8>
    80005848:	088ab783          	ld	a5,136(s5) # 1088 <_entry-0x7fffef78>
    8000584c:	0727bc23          	sd	s2,120(a5)
    80005850:	df843783          	ld	a5,-520(s0)
    80005854:	0007c703          	lbu	a4,0(a5)
    80005858:	cf11                	beqz	a4,80005874 <exec+0x318>
    8000585a:	0785                	add	a5,a5,1
    8000585c:	02f00693          	li	a3,47
    80005860:	a039                	j	8000586e <exec+0x312>
    80005862:	def43c23          	sd	a5,-520(s0)
    80005866:	0785                	add	a5,a5,1
    80005868:	fff7c703          	lbu	a4,-1(a5)
    8000586c:	c701                	beqz	a4,80005874 <exec+0x318>
    8000586e:	fed71ce3          	bne	a4,a3,80005866 <exec+0x30a>
    80005872:	bfc5                	j	80005862 <exec+0x306>
    80005874:	4641                	li	a2,16
    80005876:	df843583          	ld	a1,-520(s0)
    8000587a:	188a8513          	add	a0,s5,392
    8000587e:	ffffb097          	auipc	ra,0xffffb
    80005882:	5f8080e7          	jalr	1528(ra) # 80000e76 <safestrcpy>
    80005886:	080ab503          	ld	a0,128(s5)
    8000588a:	096ab023          	sd	s6,128(s5)
    8000588e:	e0843783          	ld	a5,-504(s0)
    80005892:	06fabc23          	sd	a5,120(s5)
    80005896:	088ab783          	ld	a5,136(s5)
    8000589a:	e6843703          	ld	a4,-408(s0)
    8000589e:	ef98                	sd	a4,24(a5)
    800058a0:	088ab783          	ld	a5,136(s5)
    800058a4:	0327b823          	sd	s2,48(a5)
    800058a8:	85e6                	mv	a1,s9
    800058aa:	ffffc097          	auipc	ra,0xffffc
    800058ae:	354080e7          	jalr	852(ra) # 80001bfe <proc_freepagetable>
    800058b2:	0004851b          	sext.w	a0,s1
    800058b6:	79be                	ld	s3,488(sp)
    800058b8:	7a1e                	ld	s4,480(sp)
    800058ba:	6afe                	ld	s5,472(sp)
    800058bc:	6b5e                	ld	s6,464(sp)
    800058be:	6bbe                	ld	s7,456(sp)
    800058c0:	6c1e                	ld	s8,448(sp)
    800058c2:	7cfa                	ld	s9,440(sp)
    800058c4:	7d5a                	ld	s10,432(sp)
    800058c6:	b305                	j	800055e6 <exec+0x8a>
    800058c8:	e1243423          	sd	s2,-504(s0)
    800058cc:	7dba                	ld	s11,424(sp)
    800058ce:	a035                	j	800058fa <exec+0x39e>
    800058d0:	e1243423          	sd	s2,-504(s0)
    800058d4:	7dba                	ld	s11,424(sp)
    800058d6:	a015                	j	800058fa <exec+0x39e>
    800058d8:	e1243423          	sd	s2,-504(s0)
    800058dc:	7dba                	ld	s11,424(sp)
    800058de:	a831                	j	800058fa <exec+0x39e>
    800058e0:	e1243423          	sd	s2,-504(s0)
    800058e4:	7dba                	ld	s11,424(sp)
    800058e6:	a811                	j	800058fa <exec+0x39e>
    800058e8:	e1243423          	sd	s2,-504(s0)
    800058ec:	7dba                	ld	s11,424(sp)
    800058ee:	a031                	j	800058fa <exec+0x39e>
    800058f0:	4a01                	li	s4,0
    800058f2:	a021                	j	800058fa <exec+0x39e>
    800058f4:	4a01                	li	s4,0
    800058f6:	a011                	j	800058fa <exec+0x39e>
    800058f8:	7dba                	ld	s11,424(sp)
    800058fa:	e0843583          	ld	a1,-504(s0)
    800058fe:	855a                	mv	a0,s6
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	2fe080e7          	jalr	766(ra) # 80001bfe <proc_freepagetable>
    80005908:	557d                	li	a0,-1
    8000590a:	000a1b63          	bnez	s4,80005920 <exec+0x3c4>
    8000590e:	79be                	ld	s3,488(sp)
    80005910:	7a1e                	ld	s4,480(sp)
    80005912:	6afe                	ld	s5,472(sp)
    80005914:	6b5e                	ld	s6,464(sp)
    80005916:	6bbe                	ld	s7,456(sp)
    80005918:	6c1e                	ld	s8,448(sp)
    8000591a:	7cfa                	ld	s9,440(sp)
    8000591c:	7d5a                	ld	s10,432(sp)
    8000591e:	b1e1                	j	800055e6 <exec+0x8a>
    80005920:	79be                	ld	s3,488(sp)
    80005922:	6afe                	ld	s5,472(sp)
    80005924:	6b5e                	ld	s6,464(sp)
    80005926:	6bbe                	ld	s7,456(sp)
    80005928:	6c1e                	ld	s8,448(sp)
    8000592a:	7cfa                	ld	s9,440(sp)
    8000592c:	7d5a                	ld	s10,432(sp)
    8000592e:	b14d                	j	800055d0 <exec+0x74>
    80005930:	6b5e                	ld	s6,464(sp)
    80005932:	b979                	j	800055d0 <exec+0x74>
    80005934:	e0843983          	ld	s3,-504(s0)
    80005938:	b591                	j	8000577c <exec+0x220>

000000008000593a <argfd>:
    8000593a:	7179                	add	sp,sp,-48
    8000593c:	f406                	sd	ra,40(sp)
    8000593e:	f022                	sd	s0,32(sp)
    80005940:	ec26                	sd	s1,24(sp)
    80005942:	e84a                	sd	s2,16(sp)
    80005944:	1800                	add	s0,sp,48
    80005946:	892e                	mv	s2,a1
    80005948:	84b2                	mv	s1,a2
    8000594a:	fdc40593          	add	a1,s0,-36
    8000594e:	ffffe097          	auipc	ra,0xffffe
    80005952:	95c080e7          	jalr	-1700(ra) # 800032aa <argint>
    80005956:	fdc42703          	lw	a4,-36(s0)
    8000595a:	47bd                	li	a5,15
    8000595c:	02e7eb63          	bltu	a5,a4,80005992 <argfd+0x58>
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	13e080e7          	jalr	318(ra) # 80001a9e <myproc>
    80005968:	fdc42703          	lw	a4,-36(s0)
    8000596c:	02070793          	add	a5,a4,32
    80005970:	078e                	sll	a5,a5,0x3
    80005972:	953e                	add	a0,a0,a5
    80005974:	611c                	ld	a5,0(a0)
    80005976:	c385                	beqz	a5,80005996 <argfd+0x5c>
    80005978:	00090463          	beqz	s2,80005980 <argfd+0x46>
    8000597c:	00e92023          	sw	a4,0(s2)
    80005980:	4501                	li	a0,0
    80005982:	c091                	beqz	s1,80005986 <argfd+0x4c>
    80005984:	e09c                	sd	a5,0(s1)
    80005986:	70a2                	ld	ra,40(sp)
    80005988:	7402                	ld	s0,32(sp)
    8000598a:	64e2                	ld	s1,24(sp)
    8000598c:	6942                	ld	s2,16(sp)
    8000598e:	6145                	add	sp,sp,48
    80005990:	8082                	ret
    80005992:	557d                	li	a0,-1
    80005994:	bfcd                	j	80005986 <argfd+0x4c>
    80005996:	557d                	li	a0,-1
    80005998:	b7fd                	j	80005986 <argfd+0x4c>

000000008000599a <fdalloc>:
    8000599a:	1101                	add	sp,sp,-32
    8000599c:	ec06                	sd	ra,24(sp)
    8000599e:	e822                	sd	s0,16(sp)
    800059a0:	e426                	sd	s1,8(sp)
    800059a2:	1000                	add	s0,sp,32
    800059a4:	84aa                	mv	s1,a0
    800059a6:	ffffc097          	auipc	ra,0xffffc
    800059aa:	0f8080e7          	jalr	248(ra) # 80001a9e <myproc>
    800059ae:	862a                	mv	a2,a0
    800059b0:	10050793          	add	a5,a0,256
    800059b4:	4501                	li	a0,0
    800059b6:	46c1                	li	a3,16
    800059b8:	6398                	ld	a4,0(a5)
    800059ba:	cb19                	beqz	a4,800059d0 <fdalloc+0x36>
    800059bc:	2505                	addw	a0,a0,1
    800059be:	07a1                	add	a5,a5,8
    800059c0:	fed51ce3          	bne	a0,a3,800059b8 <fdalloc+0x1e>
    800059c4:	557d                	li	a0,-1
    800059c6:	60e2                	ld	ra,24(sp)
    800059c8:	6442                	ld	s0,16(sp)
    800059ca:	64a2                	ld	s1,8(sp)
    800059cc:	6105                	add	sp,sp,32
    800059ce:	8082                	ret
    800059d0:	02050793          	add	a5,a0,32
    800059d4:	078e                	sll	a5,a5,0x3
    800059d6:	963e                	add	a2,a2,a5
    800059d8:	e204                	sd	s1,0(a2)
    800059da:	b7f5                	j	800059c6 <fdalloc+0x2c>

00000000800059dc <create>:
    800059dc:	715d                	add	sp,sp,-80
    800059de:	e486                	sd	ra,72(sp)
    800059e0:	e0a2                	sd	s0,64(sp)
    800059e2:	fc26                	sd	s1,56(sp)
    800059e4:	f84a                	sd	s2,48(sp)
    800059e6:	f44e                	sd	s3,40(sp)
    800059e8:	ec56                	sd	s5,24(sp)
    800059ea:	e85a                	sd	s6,16(sp)
    800059ec:	0880                	add	s0,sp,80
    800059ee:	8b2e                	mv	s6,a1
    800059f0:	89b2                	mv	s3,a2
    800059f2:	8936                	mv	s2,a3
    800059f4:	fb040593          	add	a1,s0,-80
    800059f8:	fffff097          	auipc	ra,0xfffff
    800059fc:	de2080e7          	jalr	-542(ra) # 800047da <nameiparent>
    80005a00:	84aa                	mv	s1,a0
    80005a02:	14050e63          	beqz	a0,80005b5e <create+0x182>
    80005a06:	ffffe097          	auipc	ra,0xffffe
    80005a0a:	5e8080e7          	jalr	1512(ra) # 80003fee <ilock>
    80005a0e:	4601                	li	a2,0
    80005a10:	fb040593          	add	a1,s0,-80
    80005a14:	8526                	mv	a0,s1
    80005a16:	fffff097          	auipc	ra,0xfffff
    80005a1a:	ae4080e7          	jalr	-1308(ra) # 800044fa <dirlookup>
    80005a1e:	8aaa                	mv	s5,a0
    80005a20:	c539                	beqz	a0,80005a6e <create+0x92>
    80005a22:	8526                	mv	a0,s1
    80005a24:	fffff097          	auipc	ra,0xfffff
    80005a28:	830080e7          	jalr	-2000(ra) # 80004254 <iunlockput>
    80005a2c:	8556                	mv	a0,s5
    80005a2e:	ffffe097          	auipc	ra,0xffffe
    80005a32:	5c0080e7          	jalr	1472(ra) # 80003fee <ilock>
    80005a36:	4789                	li	a5,2
    80005a38:	02fb1463          	bne	s6,a5,80005a60 <create+0x84>
    80005a3c:	044ad783          	lhu	a5,68(s5)
    80005a40:	37f9                	addw	a5,a5,-2
    80005a42:	17c2                	sll	a5,a5,0x30
    80005a44:	93c1                	srl	a5,a5,0x30
    80005a46:	4705                	li	a4,1
    80005a48:	00f76c63          	bltu	a4,a5,80005a60 <create+0x84>
    80005a4c:	8556                	mv	a0,s5
    80005a4e:	60a6                	ld	ra,72(sp)
    80005a50:	6406                	ld	s0,64(sp)
    80005a52:	74e2                	ld	s1,56(sp)
    80005a54:	7942                	ld	s2,48(sp)
    80005a56:	79a2                	ld	s3,40(sp)
    80005a58:	6ae2                	ld	s5,24(sp)
    80005a5a:	6b42                	ld	s6,16(sp)
    80005a5c:	6161                	add	sp,sp,80
    80005a5e:	8082                	ret
    80005a60:	8556                	mv	a0,s5
    80005a62:	ffffe097          	auipc	ra,0xffffe
    80005a66:	7f2080e7          	jalr	2034(ra) # 80004254 <iunlockput>
    80005a6a:	4a81                	li	s5,0
    80005a6c:	b7c5                	j	80005a4c <create+0x70>
    80005a6e:	f052                	sd	s4,32(sp)
    80005a70:	85da                	mv	a1,s6
    80005a72:	4088                	lw	a0,0(s1)
    80005a74:	ffffe097          	auipc	ra,0xffffe
    80005a78:	3d6080e7          	jalr	982(ra) # 80003e4a <ialloc>
    80005a7c:	8a2a                	mv	s4,a0
    80005a7e:	c531                	beqz	a0,80005aca <create+0xee>
    80005a80:	ffffe097          	auipc	ra,0xffffe
    80005a84:	56e080e7          	jalr	1390(ra) # 80003fee <ilock>
    80005a88:	053a1323          	sh	s3,70(s4)
    80005a8c:	052a1423          	sh	s2,72(s4)
    80005a90:	4905                	li	s2,1
    80005a92:	052a1523          	sh	s2,74(s4)
    80005a96:	8552                	mv	a0,s4
    80005a98:	ffffe097          	auipc	ra,0xffffe
    80005a9c:	48a080e7          	jalr	1162(ra) # 80003f22 <iupdate>
    80005aa0:	032b0d63          	beq	s6,s2,80005ada <create+0xfe>
    80005aa4:	004a2603          	lw	a2,4(s4)
    80005aa8:	fb040593          	add	a1,s0,-80
    80005aac:	8526                	mv	a0,s1
    80005aae:	fffff097          	auipc	ra,0xfffff
    80005ab2:	c5c080e7          	jalr	-932(ra) # 8000470a <dirlink>
    80005ab6:	08054163          	bltz	a0,80005b38 <create+0x15c>
    80005aba:	8526                	mv	a0,s1
    80005abc:	ffffe097          	auipc	ra,0xffffe
    80005ac0:	798080e7          	jalr	1944(ra) # 80004254 <iunlockput>
    80005ac4:	8ad2                	mv	s5,s4
    80005ac6:	7a02                	ld	s4,32(sp)
    80005ac8:	b751                	j	80005a4c <create+0x70>
    80005aca:	8526                	mv	a0,s1
    80005acc:	ffffe097          	auipc	ra,0xffffe
    80005ad0:	788080e7          	jalr	1928(ra) # 80004254 <iunlockput>
    80005ad4:	8ad2                	mv	s5,s4
    80005ad6:	7a02                	ld	s4,32(sp)
    80005ad8:	bf95                	j	80005a4c <create+0x70>
    80005ada:	004a2603          	lw	a2,4(s4)
    80005ade:	00003597          	auipc	a1,0x3
    80005ae2:	cba58593          	add	a1,a1,-838 # 80008798 <syscalls+0x2c8>
    80005ae6:	8552                	mv	a0,s4
    80005ae8:	fffff097          	auipc	ra,0xfffff
    80005aec:	c22080e7          	jalr	-990(ra) # 8000470a <dirlink>
    80005af0:	04054463          	bltz	a0,80005b38 <create+0x15c>
    80005af4:	40d0                	lw	a2,4(s1)
    80005af6:	00003597          	auipc	a1,0x3
    80005afa:	caa58593          	add	a1,a1,-854 # 800087a0 <syscalls+0x2d0>
    80005afe:	8552                	mv	a0,s4
    80005b00:	fffff097          	auipc	ra,0xfffff
    80005b04:	c0a080e7          	jalr	-1014(ra) # 8000470a <dirlink>
    80005b08:	02054863          	bltz	a0,80005b38 <create+0x15c>
    80005b0c:	004a2603          	lw	a2,4(s4)
    80005b10:	fb040593          	add	a1,s0,-80
    80005b14:	8526                	mv	a0,s1
    80005b16:	fffff097          	auipc	ra,0xfffff
    80005b1a:	bf4080e7          	jalr	-1036(ra) # 8000470a <dirlink>
    80005b1e:	00054d63          	bltz	a0,80005b38 <create+0x15c>
    80005b22:	04a4d783          	lhu	a5,74(s1)
    80005b26:	2785                	addw	a5,a5,1
    80005b28:	04f49523          	sh	a5,74(s1)
    80005b2c:	8526                	mv	a0,s1
    80005b2e:	ffffe097          	auipc	ra,0xffffe
    80005b32:	3f4080e7          	jalr	1012(ra) # 80003f22 <iupdate>
    80005b36:	b751                	j	80005aba <create+0xde>
    80005b38:	040a1523          	sh	zero,74(s4)
    80005b3c:	8552                	mv	a0,s4
    80005b3e:	ffffe097          	auipc	ra,0xffffe
    80005b42:	3e4080e7          	jalr	996(ra) # 80003f22 <iupdate>
    80005b46:	8552                	mv	a0,s4
    80005b48:	ffffe097          	auipc	ra,0xffffe
    80005b4c:	70c080e7          	jalr	1804(ra) # 80004254 <iunlockput>
    80005b50:	8526                	mv	a0,s1
    80005b52:	ffffe097          	auipc	ra,0xffffe
    80005b56:	702080e7          	jalr	1794(ra) # 80004254 <iunlockput>
    80005b5a:	7a02                	ld	s4,32(sp)
    80005b5c:	bdc5                	j	80005a4c <create+0x70>
    80005b5e:	8aaa                	mv	s5,a0
    80005b60:	b5f5                	j	80005a4c <create+0x70>

0000000080005b62 <sys_dup>:
    80005b62:	7179                	add	sp,sp,-48
    80005b64:	f406                	sd	ra,40(sp)
    80005b66:	f022                	sd	s0,32(sp)
    80005b68:	1800                	add	s0,sp,48
    80005b6a:	fd840613          	add	a2,s0,-40
    80005b6e:	4581                	li	a1,0
    80005b70:	4501                	li	a0,0
    80005b72:	00000097          	auipc	ra,0x0
    80005b76:	dc8080e7          	jalr	-568(ra) # 8000593a <argfd>
    80005b7a:	57fd                	li	a5,-1
    80005b7c:	02054763          	bltz	a0,80005baa <sys_dup+0x48>
    80005b80:	ec26                	sd	s1,24(sp)
    80005b82:	e84a                	sd	s2,16(sp)
    80005b84:	fd843903          	ld	s2,-40(s0)
    80005b88:	854a                	mv	a0,s2
    80005b8a:	00000097          	auipc	ra,0x0
    80005b8e:	e10080e7          	jalr	-496(ra) # 8000599a <fdalloc>
    80005b92:	84aa                	mv	s1,a0
    80005b94:	57fd                	li	a5,-1
    80005b96:	00054f63          	bltz	a0,80005bb4 <sys_dup+0x52>
    80005b9a:	854a                	mv	a0,s2
    80005b9c:	fffff097          	auipc	ra,0xfffff
    80005ba0:	298080e7          	jalr	664(ra) # 80004e34 <filedup>
    80005ba4:	87a6                	mv	a5,s1
    80005ba6:	64e2                	ld	s1,24(sp)
    80005ba8:	6942                	ld	s2,16(sp)
    80005baa:	853e                	mv	a0,a5
    80005bac:	70a2                	ld	ra,40(sp)
    80005bae:	7402                	ld	s0,32(sp)
    80005bb0:	6145                	add	sp,sp,48
    80005bb2:	8082                	ret
    80005bb4:	64e2                	ld	s1,24(sp)
    80005bb6:	6942                	ld	s2,16(sp)
    80005bb8:	bfcd                	j	80005baa <sys_dup+0x48>

0000000080005bba <sys_read>:
    80005bba:	7179                	add	sp,sp,-48
    80005bbc:	f406                	sd	ra,40(sp)
    80005bbe:	f022                	sd	s0,32(sp)
    80005bc0:	1800                	add	s0,sp,48
    80005bc2:	fd840593          	add	a1,s0,-40
    80005bc6:	4505                	li	a0,1
    80005bc8:	ffffd097          	auipc	ra,0xffffd
    80005bcc:	702080e7          	jalr	1794(ra) # 800032ca <argaddr>
    80005bd0:	fe440593          	add	a1,s0,-28
    80005bd4:	4509                	li	a0,2
    80005bd6:	ffffd097          	auipc	ra,0xffffd
    80005bda:	6d4080e7          	jalr	1748(ra) # 800032aa <argint>
    80005bde:	fe840613          	add	a2,s0,-24
    80005be2:	4581                	li	a1,0
    80005be4:	4501                	li	a0,0
    80005be6:	00000097          	auipc	ra,0x0
    80005bea:	d54080e7          	jalr	-684(ra) # 8000593a <argfd>
    80005bee:	87aa                	mv	a5,a0
    80005bf0:	557d                	li	a0,-1
    80005bf2:	0007cc63          	bltz	a5,80005c0a <sys_read+0x50>
    80005bf6:	fe442603          	lw	a2,-28(s0)
    80005bfa:	fd843583          	ld	a1,-40(s0)
    80005bfe:	fe843503          	ld	a0,-24(s0)
    80005c02:	fffff097          	auipc	ra,0xfffff
    80005c06:	3d8080e7          	jalr	984(ra) # 80004fda <fileread>
    80005c0a:	70a2                	ld	ra,40(sp)
    80005c0c:	7402                	ld	s0,32(sp)
    80005c0e:	6145                	add	sp,sp,48
    80005c10:	8082                	ret

0000000080005c12 <sys_write>:
    80005c12:	7179                	add	sp,sp,-48
    80005c14:	f406                	sd	ra,40(sp)
    80005c16:	f022                	sd	s0,32(sp)
    80005c18:	1800                	add	s0,sp,48
    80005c1a:	fd840593          	add	a1,s0,-40
    80005c1e:	4505                	li	a0,1
    80005c20:	ffffd097          	auipc	ra,0xffffd
    80005c24:	6aa080e7          	jalr	1706(ra) # 800032ca <argaddr>
    80005c28:	fe440593          	add	a1,s0,-28
    80005c2c:	4509                	li	a0,2
    80005c2e:	ffffd097          	auipc	ra,0xffffd
    80005c32:	67c080e7          	jalr	1660(ra) # 800032aa <argint>
    80005c36:	fe840613          	add	a2,s0,-24
    80005c3a:	4581                	li	a1,0
    80005c3c:	4501                	li	a0,0
    80005c3e:	00000097          	auipc	ra,0x0
    80005c42:	cfc080e7          	jalr	-772(ra) # 8000593a <argfd>
    80005c46:	87aa                	mv	a5,a0
    80005c48:	557d                	li	a0,-1
    80005c4a:	0007cc63          	bltz	a5,80005c62 <sys_write+0x50>
    80005c4e:	fe442603          	lw	a2,-28(s0)
    80005c52:	fd843583          	ld	a1,-40(s0)
    80005c56:	fe843503          	ld	a0,-24(s0)
    80005c5a:	fffff097          	auipc	ra,0xfffff
    80005c5e:	452080e7          	jalr	1106(ra) # 800050ac <filewrite>
    80005c62:	70a2                	ld	ra,40(sp)
    80005c64:	7402                	ld	s0,32(sp)
    80005c66:	6145                	add	sp,sp,48
    80005c68:	8082                	ret

0000000080005c6a <sys_close>:
    80005c6a:	1101                	add	sp,sp,-32
    80005c6c:	ec06                	sd	ra,24(sp)
    80005c6e:	e822                	sd	s0,16(sp)
    80005c70:	1000                	add	s0,sp,32
    80005c72:	fe040613          	add	a2,s0,-32
    80005c76:	fec40593          	add	a1,s0,-20
    80005c7a:	4501                	li	a0,0
    80005c7c:	00000097          	auipc	ra,0x0
    80005c80:	cbe080e7          	jalr	-834(ra) # 8000593a <argfd>
    80005c84:	57fd                	li	a5,-1
    80005c86:	02054563          	bltz	a0,80005cb0 <sys_close+0x46>
    80005c8a:	ffffc097          	auipc	ra,0xffffc
    80005c8e:	e14080e7          	jalr	-492(ra) # 80001a9e <myproc>
    80005c92:	fec42783          	lw	a5,-20(s0)
    80005c96:	02078793          	add	a5,a5,32
    80005c9a:	078e                	sll	a5,a5,0x3
    80005c9c:	953e                	add	a0,a0,a5
    80005c9e:	00053023          	sd	zero,0(a0)
    80005ca2:	fe043503          	ld	a0,-32(s0)
    80005ca6:	fffff097          	auipc	ra,0xfffff
    80005caa:	1e0080e7          	jalr	480(ra) # 80004e86 <fileclose>
    80005cae:	4781                	li	a5,0
    80005cb0:	853e                	mv	a0,a5
    80005cb2:	60e2                	ld	ra,24(sp)
    80005cb4:	6442                	ld	s0,16(sp)
    80005cb6:	6105                	add	sp,sp,32
    80005cb8:	8082                	ret

0000000080005cba <sys_fstat>:
    80005cba:	1101                	add	sp,sp,-32
    80005cbc:	ec06                	sd	ra,24(sp)
    80005cbe:	e822                	sd	s0,16(sp)
    80005cc0:	1000                	add	s0,sp,32
    80005cc2:	fe040593          	add	a1,s0,-32
    80005cc6:	4505                	li	a0,1
    80005cc8:	ffffd097          	auipc	ra,0xffffd
    80005ccc:	602080e7          	jalr	1538(ra) # 800032ca <argaddr>
    80005cd0:	fe840613          	add	a2,s0,-24
    80005cd4:	4581                	li	a1,0
    80005cd6:	4501                	li	a0,0
    80005cd8:	00000097          	auipc	ra,0x0
    80005cdc:	c62080e7          	jalr	-926(ra) # 8000593a <argfd>
    80005ce0:	87aa                	mv	a5,a0
    80005ce2:	557d                	li	a0,-1
    80005ce4:	0007ca63          	bltz	a5,80005cf8 <sys_fstat+0x3e>
    80005ce8:	fe043583          	ld	a1,-32(s0)
    80005cec:	fe843503          	ld	a0,-24(s0)
    80005cf0:	fffff097          	auipc	ra,0xfffff
    80005cf4:	278080e7          	jalr	632(ra) # 80004f68 <filestat>
    80005cf8:	60e2                	ld	ra,24(sp)
    80005cfa:	6442                	ld	s0,16(sp)
    80005cfc:	6105                	add	sp,sp,32
    80005cfe:	8082                	ret

0000000080005d00 <sys_link>:
    80005d00:	7169                	add	sp,sp,-304
    80005d02:	f606                	sd	ra,296(sp)
    80005d04:	f222                	sd	s0,288(sp)
    80005d06:	1a00                	add	s0,sp,304
    80005d08:	08000613          	li	a2,128
    80005d0c:	ed040593          	add	a1,s0,-304
    80005d10:	4501                	li	a0,0
    80005d12:	ffffd097          	auipc	ra,0xffffd
    80005d16:	5d8080e7          	jalr	1496(ra) # 800032ea <argstr>
    80005d1a:	57fd                	li	a5,-1
    80005d1c:	12054663          	bltz	a0,80005e48 <sys_link+0x148>
    80005d20:	08000613          	li	a2,128
    80005d24:	f5040593          	add	a1,s0,-176
    80005d28:	4505                	li	a0,1
    80005d2a:	ffffd097          	auipc	ra,0xffffd
    80005d2e:	5c0080e7          	jalr	1472(ra) # 800032ea <argstr>
    80005d32:	57fd                	li	a5,-1
    80005d34:	10054a63          	bltz	a0,80005e48 <sys_link+0x148>
    80005d38:	ee26                	sd	s1,280(sp)
    80005d3a:	fffff097          	auipc	ra,0xfffff
    80005d3e:	c82080e7          	jalr	-894(ra) # 800049bc <begin_op>
    80005d42:	ed040513          	add	a0,s0,-304
    80005d46:	fffff097          	auipc	ra,0xfffff
    80005d4a:	a76080e7          	jalr	-1418(ra) # 800047bc <namei>
    80005d4e:	84aa                	mv	s1,a0
    80005d50:	c949                	beqz	a0,80005de2 <sys_link+0xe2>
    80005d52:	ffffe097          	auipc	ra,0xffffe
    80005d56:	29c080e7          	jalr	668(ra) # 80003fee <ilock>
    80005d5a:	04449703          	lh	a4,68(s1)
    80005d5e:	4785                	li	a5,1
    80005d60:	08f70863          	beq	a4,a5,80005df0 <sys_link+0xf0>
    80005d64:	ea4a                	sd	s2,272(sp)
    80005d66:	04a4d783          	lhu	a5,74(s1)
    80005d6a:	2785                	addw	a5,a5,1
    80005d6c:	04f49523          	sh	a5,74(s1)
    80005d70:	8526                	mv	a0,s1
    80005d72:	ffffe097          	auipc	ra,0xffffe
    80005d76:	1b0080e7          	jalr	432(ra) # 80003f22 <iupdate>
    80005d7a:	8526                	mv	a0,s1
    80005d7c:	ffffe097          	auipc	ra,0xffffe
    80005d80:	338080e7          	jalr	824(ra) # 800040b4 <iunlock>
    80005d84:	fd040593          	add	a1,s0,-48
    80005d88:	f5040513          	add	a0,s0,-176
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	a4e080e7          	jalr	-1458(ra) # 800047da <nameiparent>
    80005d94:	892a                	mv	s2,a0
    80005d96:	cd35                	beqz	a0,80005e12 <sys_link+0x112>
    80005d98:	ffffe097          	auipc	ra,0xffffe
    80005d9c:	256080e7          	jalr	598(ra) # 80003fee <ilock>
    80005da0:	00092703          	lw	a4,0(s2)
    80005da4:	409c                	lw	a5,0(s1)
    80005da6:	06f71163          	bne	a4,a5,80005e08 <sys_link+0x108>
    80005daa:	40d0                	lw	a2,4(s1)
    80005dac:	fd040593          	add	a1,s0,-48
    80005db0:	854a                	mv	a0,s2
    80005db2:	fffff097          	auipc	ra,0xfffff
    80005db6:	958080e7          	jalr	-1704(ra) # 8000470a <dirlink>
    80005dba:	04054763          	bltz	a0,80005e08 <sys_link+0x108>
    80005dbe:	854a                	mv	a0,s2
    80005dc0:	ffffe097          	auipc	ra,0xffffe
    80005dc4:	494080e7          	jalr	1172(ra) # 80004254 <iunlockput>
    80005dc8:	8526                	mv	a0,s1
    80005dca:	ffffe097          	auipc	ra,0xffffe
    80005dce:	3e2080e7          	jalr	994(ra) # 800041ac <iput>
    80005dd2:	fffff097          	auipc	ra,0xfffff
    80005dd6:	c64080e7          	jalr	-924(ra) # 80004a36 <end_op>
    80005dda:	4781                	li	a5,0
    80005ddc:	64f2                	ld	s1,280(sp)
    80005dde:	6952                	ld	s2,272(sp)
    80005de0:	a0a5                	j	80005e48 <sys_link+0x148>
    80005de2:	fffff097          	auipc	ra,0xfffff
    80005de6:	c54080e7          	jalr	-940(ra) # 80004a36 <end_op>
    80005dea:	57fd                	li	a5,-1
    80005dec:	64f2                	ld	s1,280(sp)
    80005dee:	a8a9                	j	80005e48 <sys_link+0x148>
    80005df0:	8526                	mv	a0,s1
    80005df2:	ffffe097          	auipc	ra,0xffffe
    80005df6:	462080e7          	jalr	1122(ra) # 80004254 <iunlockput>
    80005dfa:	fffff097          	auipc	ra,0xfffff
    80005dfe:	c3c080e7          	jalr	-964(ra) # 80004a36 <end_op>
    80005e02:	57fd                	li	a5,-1
    80005e04:	64f2                	ld	s1,280(sp)
    80005e06:	a089                	j	80005e48 <sys_link+0x148>
    80005e08:	854a                	mv	a0,s2
    80005e0a:	ffffe097          	auipc	ra,0xffffe
    80005e0e:	44a080e7          	jalr	1098(ra) # 80004254 <iunlockput>
    80005e12:	8526                	mv	a0,s1
    80005e14:	ffffe097          	auipc	ra,0xffffe
    80005e18:	1da080e7          	jalr	474(ra) # 80003fee <ilock>
    80005e1c:	04a4d783          	lhu	a5,74(s1)
    80005e20:	37fd                	addw	a5,a5,-1
    80005e22:	04f49523          	sh	a5,74(s1)
    80005e26:	8526                	mv	a0,s1
    80005e28:	ffffe097          	auipc	ra,0xffffe
    80005e2c:	0fa080e7          	jalr	250(ra) # 80003f22 <iupdate>
    80005e30:	8526                	mv	a0,s1
    80005e32:	ffffe097          	auipc	ra,0xffffe
    80005e36:	422080e7          	jalr	1058(ra) # 80004254 <iunlockput>
    80005e3a:	fffff097          	auipc	ra,0xfffff
    80005e3e:	bfc080e7          	jalr	-1028(ra) # 80004a36 <end_op>
    80005e42:	57fd                	li	a5,-1
    80005e44:	64f2                	ld	s1,280(sp)
    80005e46:	6952                	ld	s2,272(sp)
    80005e48:	853e                	mv	a0,a5
    80005e4a:	70b2                	ld	ra,296(sp)
    80005e4c:	7412                	ld	s0,288(sp)
    80005e4e:	6155                	add	sp,sp,304
    80005e50:	8082                	ret

0000000080005e52 <sys_unlink>:
    80005e52:	7151                	add	sp,sp,-240
    80005e54:	f586                	sd	ra,232(sp)
    80005e56:	f1a2                	sd	s0,224(sp)
    80005e58:	1980                	add	s0,sp,240
    80005e5a:	08000613          	li	a2,128
    80005e5e:	f3040593          	add	a1,s0,-208
    80005e62:	4501                	li	a0,0
    80005e64:	ffffd097          	auipc	ra,0xffffd
    80005e68:	486080e7          	jalr	1158(ra) # 800032ea <argstr>
    80005e6c:	1a054a63          	bltz	a0,80006020 <sys_unlink+0x1ce>
    80005e70:	eda6                	sd	s1,216(sp)
    80005e72:	fffff097          	auipc	ra,0xfffff
    80005e76:	b4a080e7          	jalr	-1206(ra) # 800049bc <begin_op>
    80005e7a:	fb040593          	add	a1,s0,-80
    80005e7e:	f3040513          	add	a0,s0,-208
    80005e82:	fffff097          	auipc	ra,0xfffff
    80005e86:	958080e7          	jalr	-1704(ra) # 800047da <nameiparent>
    80005e8a:	84aa                	mv	s1,a0
    80005e8c:	cd71                	beqz	a0,80005f68 <sys_unlink+0x116>
    80005e8e:	ffffe097          	auipc	ra,0xffffe
    80005e92:	160080e7          	jalr	352(ra) # 80003fee <ilock>
    80005e96:	00003597          	auipc	a1,0x3
    80005e9a:	90258593          	add	a1,a1,-1790 # 80008798 <syscalls+0x2c8>
    80005e9e:	fb040513          	add	a0,s0,-80
    80005ea2:	ffffe097          	auipc	ra,0xffffe
    80005ea6:	63e080e7          	jalr	1598(ra) # 800044e0 <namecmp>
    80005eaa:	14050c63          	beqz	a0,80006002 <sys_unlink+0x1b0>
    80005eae:	00003597          	auipc	a1,0x3
    80005eb2:	8f258593          	add	a1,a1,-1806 # 800087a0 <syscalls+0x2d0>
    80005eb6:	fb040513          	add	a0,s0,-80
    80005eba:	ffffe097          	auipc	ra,0xffffe
    80005ebe:	626080e7          	jalr	1574(ra) # 800044e0 <namecmp>
    80005ec2:	14050063          	beqz	a0,80006002 <sys_unlink+0x1b0>
    80005ec6:	e9ca                	sd	s2,208(sp)
    80005ec8:	f2c40613          	add	a2,s0,-212
    80005ecc:	fb040593          	add	a1,s0,-80
    80005ed0:	8526                	mv	a0,s1
    80005ed2:	ffffe097          	auipc	ra,0xffffe
    80005ed6:	628080e7          	jalr	1576(ra) # 800044fa <dirlookup>
    80005eda:	892a                	mv	s2,a0
    80005edc:	12050263          	beqz	a0,80006000 <sys_unlink+0x1ae>
    80005ee0:	ffffe097          	auipc	ra,0xffffe
    80005ee4:	10e080e7          	jalr	270(ra) # 80003fee <ilock>
    80005ee8:	04a91783          	lh	a5,74(s2)
    80005eec:	08f05563          	blez	a5,80005f76 <sys_unlink+0x124>
    80005ef0:	04491703          	lh	a4,68(s2)
    80005ef4:	4785                	li	a5,1
    80005ef6:	08f70963          	beq	a4,a5,80005f88 <sys_unlink+0x136>
    80005efa:	4641                	li	a2,16
    80005efc:	4581                	li	a1,0
    80005efe:	fc040513          	add	a0,s0,-64
    80005f02:	ffffb097          	auipc	ra,0xffffb
    80005f06:	e32080e7          	jalr	-462(ra) # 80000d34 <memset>
    80005f0a:	4741                	li	a4,16
    80005f0c:	f2c42683          	lw	a3,-212(s0)
    80005f10:	fc040613          	add	a2,s0,-64
    80005f14:	4581                	li	a1,0
    80005f16:	8526                	mv	a0,s1
    80005f18:	ffffe097          	auipc	ra,0xffffe
    80005f1c:	49e080e7          	jalr	1182(ra) # 800043b6 <writei>
    80005f20:	47c1                	li	a5,16
    80005f22:	0af51b63          	bne	a0,a5,80005fd8 <sys_unlink+0x186>
    80005f26:	04491703          	lh	a4,68(s2)
    80005f2a:	4785                	li	a5,1
    80005f2c:	0af70f63          	beq	a4,a5,80005fea <sys_unlink+0x198>
    80005f30:	8526                	mv	a0,s1
    80005f32:	ffffe097          	auipc	ra,0xffffe
    80005f36:	322080e7          	jalr	802(ra) # 80004254 <iunlockput>
    80005f3a:	04a95783          	lhu	a5,74(s2)
    80005f3e:	37fd                	addw	a5,a5,-1
    80005f40:	04f91523          	sh	a5,74(s2)
    80005f44:	854a                	mv	a0,s2
    80005f46:	ffffe097          	auipc	ra,0xffffe
    80005f4a:	fdc080e7          	jalr	-36(ra) # 80003f22 <iupdate>
    80005f4e:	854a                	mv	a0,s2
    80005f50:	ffffe097          	auipc	ra,0xffffe
    80005f54:	304080e7          	jalr	772(ra) # 80004254 <iunlockput>
    80005f58:	fffff097          	auipc	ra,0xfffff
    80005f5c:	ade080e7          	jalr	-1314(ra) # 80004a36 <end_op>
    80005f60:	4501                	li	a0,0
    80005f62:	64ee                	ld	s1,216(sp)
    80005f64:	694e                	ld	s2,208(sp)
    80005f66:	a84d                	j	80006018 <sys_unlink+0x1c6>
    80005f68:	fffff097          	auipc	ra,0xfffff
    80005f6c:	ace080e7          	jalr	-1330(ra) # 80004a36 <end_op>
    80005f70:	557d                	li	a0,-1
    80005f72:	64ee                	ld	s1,216(sp)
    80005f74:	a055                	j	80006018 <sys_unlink+0x1c6>
    80005f76:	e5ce                	sd	s3,200(sp)
    80005f78:	00003517          	auipc	a0,0x3
    80005f7c:	83050513          	add	a0,a0,-2000 # 800087a8 <syscalls+0x2d8>
    80005f80:	ffffa097          	auipc	ra,0xffffa
    80005f84:	5e0080e7          	jalr	1504(ra) # 80000560 <panic>
    80005f88:	04c92703          	lw	a4,76(s2)
    80005f8c:	02000793          	li	a5,32
    80005f90:	f6e7f5e3          	bgeu	a5,a4,80005efa <sys_unlink+0xa8>
    80005f94:	e5ce                	sd	s3,200(sp)
    80005f96:	02000993          	li	s3,32
    80005f9a:	4741                	li	a4,16
    80005f9c:	86ce                	mv	a3,s3
    80005f9e:	f1840613          	add	a2,s0,-232
    80005fa2:	4581                	li	a1,0
    80005fa4:	854a                	mv	a0,s2
    80005fa6:	ffffe097          	auipc	ra,0xffffe
    80005faa:	300080e7          	jalr	768(ra) # 800042a6 <readi>
    80005fae:	47c1                	li	a5,16
    80005fb0:	00f51c63          	bne	a0,a5,80005fc8 <sys_unlink+0x176>
    80005fb4:	f1845783          	lhu	a5,-232(s0)
    80005fb8:	e7b5                	bnez	a5,80006024 <sys_unlink+0x1d2>
    80005fba:	29c1                	addw	s3,s3,16
    80005fbc:	04c92783          	lw	a5,76(s2)
    80005fc0:	fcf9ede3          	bltu	s3,a5,80005f9a <sys_unlink+0x148>
    80005fc4:	69ae                	ld	s3,200(sp)
    80005fc6:	bf15                	j	80005efa <sys_unlink+0xa8>
    80005fc8:	00002517          	auipc	a0,0x2
    80005fcc:	7f850513          	add	a0,a0,2040 # 800087c0 <syscalls+0x2f0>
    80005fd0:	ffffa097          	auipc	ra,0xffffa
    80005fd4:	590080e7          	jalr	1424(ra) # 80000560 <panic>
    80005fd8:	e5ce                	sd	s3,200(sp)
    80005fda:	00002517          	auipc	a0,0x2
    80005fde:	7fe50513          	add	a0,a0,2046 # 800087d8 <syscalls+0x308>
    80005fe2:	ffffa097          	auipc	ra,0xffffa
    80005fe6:	57e080e7          	jalr	1406(ra) # 80000560 <panic>
    80005fea:	04a4d783          	lhu	a5,74(s1)
    80005fee:	37fd                	addw	a5,a5,-1
    80005ff0:	04f49523          	sh	a5,74(s1)
    80005ff4:	8526                	mv	a0,s1
    80005ff6:	ffffe097          	auipc	ra,0xffffe
    80005ffa:	f2c080e7          	jalr	-212(ra) # 80003f22 <iupdate>
    80005ffe:	bf0d                	j	80005f30 <sys_unlink+0xde>
    80006000:	694e                	ld	s2,208(sp)
    80006002:	8526                	mv	a0,s1
    80006004:	ffffe097          	auipc	ra,0xffffe
    80006008:	250080e7          	jalr	592(ra) # 80004254 <iunlockput>
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	a2a080e7          	jalr	-1494(ra) # 80004a36 <end_op>
    80006014:	557d                	li	a0,-1
    80006016:	64ee                	ld	s1,216(sp)
    80006018:	70ae                	ld	ra,232(sp)
    8000601a:	740e                	ld	s0,224(sp)
    8000601c:	616d                	add	sp,sp,240
    8000601e:	8082                	ret
    80006020:	557d                	li	a0,-1
    80006022:	bfdd                	j	80006018 <sys_unlink+0x1c6>
    80006024:	854a                	mv	a0,s2
    80006026:	ffffe097          	auipc	ra,0xffffe
    8000602a:	22e080e7          	jalr	558(ra) # 80004254 <iunlockput>
    8000602e:	694e                	ld	s2,208(sp)
    80006030:	69ae                	ld	s3,200(sp)
    80006032:	bfc1                	j	80006002 <sys_unlink+0x1b0>

0000000080006034 <sys_open>:
    80006034:	7131                	add	sp,sp,-192
    80006036:	fd06                	sd	ra,184(sp)
    80006038:	f922                	sd	s0,176(sp)
    8000603a:	0180                	add	s0,sp,192
    8000603c:	f4c40593          	add	a1,s0,-180
    80006040:	4505                	li	a0,1
    80006042:	ffffd097          	auipc	ra,0xffffd
    80006046:	268080e7          	jalr	616(ra) # 800032aa <argint>
    8000604a:	08000613          	li	a2,128
    8000604e:	f5040593          	add	a1,s0,-176
    80006052:	4501                	li	a0,0
    80006054:	ffffd097          	auipc	ra,0xffffd
    80006058:	296080e7          	jalr	662(ra) # 800032ea <argstr>
    8000605c:	87aa                	mv	a5,a0
    8000605e:	557d                	li	a0,-1
    80006060:	0a07ce63          	bltz	a5,8000611c <sys_open+0xe8>
    80006064:	f526                	sd	s1,168(sp)
    80006066:	fffff097          	auipc	ra,0xfffff
    8000606a:	956080e7          	jalr	-1706(ra) # 800049bc <begin_op>
    8000606e:	f4c42783          	lw	a5,-180(s0)
    80006072:	2007f793          	and	a5,a5,512
    80006076:	cfd5                	beqz	a5,80006132 <sys_open+0xfe>
    80006078:	4681                	li	a3,0
    8000607a:	4601                	li	a2,0
    8000607c:	4589                	li	a1,2
    8000607e:	f5040513          	add	a0,s0,-176
    80006082:	00000097          	auipc	ra,0x0
    80006086:	95a080e7          	jalr	-1702(ra) # 800059dc <create>
    8000608a:	84aa                	mv	s1,a0
    8000608c:	cd41                	beqz	a0,80006124 <sys_open+0xf0>
    8000608e:	04449703          	lh	a4,68(s1)
    80006092:	478d                	li	a5,3
    80006094:	00f71763          	bne	a4,a5,800060a2 <sys_open+0x6e>
    80006098:	0464d703          	lhu	a4,70(s1)
    8000609c:	47a5                	li	a5,9
    8000609e:	0ee7e163          	bltu	a5,a4,80006180 <sys_open+0x14c>
    800060a2:	f14a                	sd	s2,160(sp)
    800060a4:	fffff097          	auipc	ra,0xfffff
    800060a8:	d26080e7          	jalr	-730(ra) # 80004dca <filealloc>
    800060ac:	892a                	mv	s2,a0
    800060ae:	c97d                	beqz	a0,800061a4 <sys_open+0x170>
    800060b0:	ed4e                	sd	s3,152(sp)
    800060b2:	00000097          	auipc	ra,0x0
    800060b6:	8e8080e7          	jalr	-1816(ra) # 8000599a <fdalloc>
    800060ba:	89aa                	mv	s3,a0
    800060bc:	0c054e63          	bltz	a0,80006198 <sys_open+0x164>
    800060c0:	04449703          	lh	a4,68(s1)
    800060c4:	478d                	li	a5,3
    800060c6:	0ef70c63          	beq	a4,a5,800061be <sys_open+0x18a>
    800060ca:	4789                	li	a5,2
    800060cc:	00f92023          	sw	a5,0(s2)
    800060d0:	02092023          	sw	zero,32(s2)
    800060d4:	00993c23          	sd	s1,24(s2)
    800060d8:	f4c42783          	lw	a5,-180(s0)
    800060dc:	0017c713          	xor	a4,a5,1
    800060e0:	8b05                	and	a4,a4,1
    800060e2:	00e90423          	sb	a4,8(s2)
    800060e6:	0037f713          	and	a4,a5,3
    800060ea:	00e03733          	snez	a4,a4
    800060ee:	00e904a3          	sb	a4,9(s2)
    800060f2:	4007f793          	and	a5,a5,1024
    800060f6:	c791                	beqz	a5,80006102 <sys_open+0xce>
    800060f8:	04449703          	lh	a4,68(s1)
    800060fc:	4789                	li	a5,2
    800060fe:	0cf70763          	beq	a4,a5,800061cc <sys_open+0x198>
    80006102:	8526                	mv	a0,s1
    80006104:	ffffe097          	auipc	ra,0xffffe
    80006108:	fb0080e7          	jalr	-80(ra) # 800040b4 <iunlock>
    8000610c:	fffff097          	auipc	ra,0xfffff
    80006110:	92a080e7          	jalr	-1750(ra) # 80004a36 <end_op>
    80006114:	854e                	mv	a0,s3
    80006116:	74aa                	ld	s1,168(sp)
    80006118:	790a                	ld	s2,160(sp)
    8000611a:	69ea                	ld	s3,152(sp)
    8000611c:	70ea                	ld	ra,184(sp)
    8000611e:	744a                	ld	s0,176(sp)
    80006120:	6129                	add	sp,sp,192
    80006122:	8082                	ret
    80006124:	fffff097          	auipc	ra,0xfffff
    80006128:	912080e7          	jalr	-1774(ra) # 80004a36 <end_op>
    8000612c:	557d                	li	a0,-1
    8000612e:	74aa                	ld	s1,168(sp)
    80006130:	b7f5                	j	8000611c <sys_open+0xe8>
    80006132:	f5040513          	add	a0,s0,-176
    80006136:	ffffe097          	auipc	ra,0xffffe
    8000613a:	686080e7          	jalr	1670(ra) # 800047bc <namei>
    8000613e:	84aa                	mv	s1,a0
    80006140:	c90d                	beqz	a0,80006172 <sys_open+0x13e>
    80006142:	ffffe097          	auipc	ra,0xffffe
    80006146:	eac080e7          	jalr	-340(ra) # 80003fee <ilock>
    8000614a:	04449703          	lh	a4,68(s1)
    8000614e:	4785                	li	a5,1
    80006150:	f2f71fe3          	bne	a4,a5,8000608e <sys_open+0x5a>
    80006154:	f4c42783          	lw	a5,-180(s0)
    80006158:	d7a9                	beqz	a5,800060a2 <sys_open+0x6e>
    8000615a:	8526                	mv	a0,s1
    8000615c:	ffffe097          	auipc	ra,0xffffe
    80006160:	0f8080e7          	jalr	248(ra) # 80004254 <iunlockput>
    80006164:	fffff097          	auipc	ra,0xfffff
    80006168:	8d2080e7          	jalr	-1838(ra) # 80004a36 <end_op>
    8000616c:	557d                	li	a0,-1
    8000616e:	74aa                	ld	s1,168(sp)
    80006170:	b775                	j	8000611c <sys_open+0xe8>
    80006172:	fffff097          	auipc	ra,0xfffff
    80006176:	8c4080e7          	jalr	-1852(ra) # 80004a36 <end_op>
    8000617a:	557d                	li	a0,-1
    8000617c:	74aa                	ld	s1,168(sp)
    8000617e:	bf79                	j	8000611c <sys_open+0xe8>
    80006180:	8526                	mv	a0,s1
    80006182:	ffffe097          	auipc	ra,0xffffe
    80006186:	0d2080e7          	jalr	210(ra) # 80004254 <iunlockput>
    8000618a:	fffff097          	auipc	ra,0xfffff
    8000618e:	8ac080e7          	jalr	-1876(ra) # 80004a36 <end_op>
    80006192:	557d                	li	a0,-1
    80006194:	74aa                	ld	s1,168(sp)
    80006196:	b759                	j	8000611c <sys_open+0xe8>
    80006198:	854a                	mv	a0,s2
    8000619a:	fffff097          	auipc	ra,0xfffff
    8000619e:	cec080e7          	jalr	-788(ra) # 80004e86 <fileclose>
    800061a2:	69ea                	ld	s3,152(sp)
    800061a4:	8526                	mv	a0,s1
    800061a6:	ffffe097          	auipc	ra,0xffffe
    800061aa:	0ae080e7          	jalr	174(ra) # 80004254 <iunlockput>
    800061ae:	fffff097          	auipc	ra,0xfffff
    800061b2:	888080e7          	jalr	-1912(ra) # 80004a36 <end_op>
    800061b6:	557d                	li	a0,-1
    800061b8:	74aa                	ld	s1,168(sp)
    800061ba:	790a                	ld	s2,160(sp)
    800061bc:	b785                	j	8000611c <sys_open+0xe8>
    800061be:	00f92023          	sw	a5,0(s2)
    800061c2:	04649783          	lh	a5,70(s1)
    800061c6:	02f91223          	sh	a5,36(s2)
    800061ca:	b729                	j	800060d4 <sys_open+0xa0>
    800061cc:	8526                	mv	a0,s1
    800061ce:	ffffe097          	auipc	ra,0xffffe
    800061d2:	f32080e7          	jalr	-206(ra) # 80004100 <itrunc>
    800061d6:	b735                	j	80006102 <sys_open+0xce>

00000000800061d8 <sys_mkdir>:
    800061d8:	7175                	add	sp,sp,-144
    800061da:	e506                	sd	ra,136(sp)
    800061dc:	e122                	sd	s0,128(sp)
    800061de:	0900                	add	s0,sp,144
    800061e0:	ffffe097          	auipc	ra,0xffffe
    800061e4:	7dc080e7          	jalr	2012(ra) # 800049bc <begin_op>
    800061e8:	08000613          	li	a2,128
    800061ec:	f7040593          	add	a1,s0,-144
    800061f0:	4501                	li	a0,0
    800061f2:	ffffd097          	auipc	ra,0xffffd
    800061f6:	0f8080e7          	jalr	248(ra) # 800032ea <argstr>
    800061fa:	02054963          	bltz	a0,8000622c <sys_mkdir+0x54>
    800061fe:	4681                	li	a3,0
    80006200:	4601                	li	a2,0
    80006202:	4585                	li	a1,1
    80006204:	f7040513          	add	a0,s0,-144
    80006208:	fffff097          	auipc	ra,0xfffff
    8000620c:	7d4080e7          	jalr	2004(ra) # 800059dc <create>
    80006210:	cd11                	beqz	a0,8000622c <sys_mkdir+0x54>
    80006212:	ffffe097          	auipc	ra,0xffffe
    80006216:	042080e7          	jalr	66(ra) # 80004254 <iunlockput>
    8000621a:	fffff097          	auipc	ra,0xfffff
    8000621e:	81c080e7          	jalr	-2020(ra) # 80004a36 <end_op>
    80006222:	4501                	li	a0,0
    80006224:	60aa                	ld	ra,136(sp)
    80006226:	640a                	ld	s0,128(sp)
    80006228:	6149                	add	sp,sp,144
    8000622a:	8082                	ret
    8000622c:	fffff097          	auipc	ra,0xfffff
    80006230:	80a080e7          	jalr	-2038(ra) # 80004a36 <end_op>
    80006234:	557d                	li	a0,-1
    80006236:	b7fd                	j	80006224 <sys_mkdir+0x4c>

0000000080006238 <sys_mknod>:
    80006238:	7135                	add	sp,sp,-160
    8000623a:	ed06                	sd	ra,152(sp)
    8000623c:	e922                	sd	s0,144(sp)
    8000623e:	1100                	add	s0,sp,160
    80006240:	ffffe097          	auipc	ra,0xffffe
    80006244:	77c080e7          	jalr	1916(ra) # 800049bc <begin_op>
    80006248:	f6c40593          	add	a1,s0,-148
    8000624c:	4505                	li	a0,1
    8000624e:	ffffd097          	auipc	ra,0xffffd
    80006252:	05c080e7          	jalr	92(ra) # 800032aa <argint>
    80006256:	f6840593          	add	a1,s0,-152
    8000625a:	4509                	li	a0,2
    8000625c:	ffffd097          	auipc	ra,0xffffd
    80006260:	04e080e7          	jalr	78(ra) # 800032aa <argint>
    80006264:	08000613          	li	a2,128
    80006268:	f7040593          	add	a1,s0,-144
    8000626c:	4501                	li	a0,0
    8000626e:	ffffd097          	auipc	ra,0xffffd
    80006272:	07c080e7          	jalr	124(ra) # 800032ea <argstr>
    80006276:	02054b63          	bltz	a0,800062ac <sys_mknod+0x74>
    8000627a:	f6841683          	lh	a3,-152(s0)
    8000627e:	f6c41603          	lh	a2,-148(s0)
    80006282:	458d                	li	a1,3
    80006284:	f7040513          	add	a0,s0,-144
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	754080e7          	jalr	1876(ra) # 800059dc <create>
    80006290:	cd11                	beqz	a0,800062ac <sys_mknod+0x74>
    80006292:	ffffe097          	auipc	ra,0xffffe
    80006296:	fc2080e7          	jalr	-62(ra) # 80004254 <iunlockput>
    8000629a:	ffffe097          	auipc	ra,0xffffe
    8000629e:	79c080e7          	jalr	1948(ra) # 80004a36 <end_op>
    800062a2:	4501                	li	a0,0
    800062a4:	60ea                	ld	ra,152(sp)
    800062a6:	644a                	ld	s0,144(sp)
    800062a8:	610d                	add	sp,sp,160
    800062aa:	8082                	ret
    800062ac:	ffffe097          	auipc	ra,0xffffe
    800062b0:	78a080e7          	jalr	1930(ra) # 80004a36 <end_op>
    800062b4:	557d                	li	a0,-1
    800062b6:	b7fd                	j	800062a4 <sys_mknod+0x6c>

00000000800062b8 <sys_chdir>:
    800062b8:	7135                	add	sp,sp,-160
    800062ba:	ed06                	sd	ra,152(sp)
    800062bc:	e922                	sd	s0,144(sp)
    800062be:	e14a                	sd	s2,128(sp)
    800062c0:	1100                	add	s0,sp,160
    800062c2:	ffffb097          	auipc	ra,0xffffb
    800062c6:	7dc080e7          	jalr	2012(ra) # 80001a9e <myproc>
    800062ca:	892a                	mv	s2,a0
    800062cc:	ffffe097          	auipc	ra,0xffffe
    800062d0:	6f0080e7          	jalr	1776(ra) # 800049bc <begin_op>
    800062d4:	08000613          	li	a2,128
    800062d8:	f6040593          	add	a1,s0,-160
    800062dc:	4501                	li	a0,0
    800062de:	ffffd097          	auipc	ra,0xffffd
    800062e2:	00c080e7          	jalr	12(ra) # 800032ea <argstr>
    800062e6:	04054d63          	bltz	a0,80006340 <sys_chdir+0x88>
    800062ea:	e526                	sd	s1,136(sp)
    800062ec:	f6040513          	add	a0,s0,-160
    800062f0:	ffffe097          	auipc	ra,0xffffe
    800062f4:	4cc080e7          	jalr	1228(ra) # 800047bc <namei>
    800062f8:	84aa                	mv	s1,a0
    800062fa:	c131                	beqz	a0,8000633e <sys_chdir+0x86>
    800062fc:	ffffe097          	auipc	ra,0xffffe
    80006300:	cf2080e7          	jalr	-782(ra) # 80003fee <ilock>
    80006304:	04449703          	lh	a4,68(s1)
    80006308:	4785                	li	a5,1
    8000630a:	04f71163          	bne	a4,a5,8000634c <sys_chdir+0x94>
    8000630e:	8526                	mv	a0,s1
    80006310:	ffffe097          	auipc	ra,0xffffe
    80006314:	da4080e7          	jalr	-604(ra) # 800040b4 <iunlock>
    80006318:	18093503          	ld	a0,384(s2)
    8000631c:	ffffe097          	auipc	ra,0xffffe
    80006320:	e90080e7          	jalr	-368(ra) # 800041ac <iput>
    80006324:	ffffe097          	auipc	ra,0xffffe
    80006328:	712080e7          	jalr	1810(ra) # 80004a36 <end_op>
    8000632c:	18993023          	sd	s1,384(s2)
    80006330:	4501                	li	a0,0
    80006332:	64aa                	ld	s1,136(sp)
    80006334:	60ea                	ld	ra,152(sp)
    80006336:	644a                	ld	s0,144(sp)
    80006338:	690a                	ld	s2,128(sp)
    8000633a:	610d                	add	sp,sp,160
    8000633c:	8082                	ret
    8000633e:	64aa                	ld	s1,136(sp)
    80006340:	ffffe097          	auipc	ra,0xffffe
    80006344:	6f6080e7          	jalr	1782(ra) # 80004a36 <end_op>
    80006348:	557d                	li	a0,-1
    8000634a:	b7ed                	j	80006334 <sys_chdir+0x7c>
    8000634c:	8526                	mv	a0,s1
    8000634e:	ffffe097          	auipc	ra,0xffffe
    80006352:	f06080e7          	jalr	-250(ra) # 80004254 <iunlockput>
    80006356:	ffffe097          	auipc	ra,0xffffe
    8000635a:	6e0080e7          	jalr	1760(ra) # 80004a36 <end_op>
    8000635e:	557d                	li	a0,-1
    80006360:	64aa                	ld	s1,136(sp)
    80006362:	bfc9                	j	80006334 <sys_chdir+0x7c>

0000000080006364 <sys_exec>:
    80006364:	7121                	add	sp,sp,-448
    80006366:	ff06                	sd	ra,440(sp)
    80006368:	fb22                	sd	s0,432(sp)
    8000636a:	0380                	add	s0,sp,448
    8000636c:	e4840593          	add	a1,s0,-440
    80006370:	4505                	li	a0,1
    80006372:	ffffd097          	auipc	ra,0xffffd
    80006376:	f58080e7          	jalr	-168(ra) # 800032ca <argaddr>
    8000637a:	08000613          	li	a2,128
    8000637e:	f5040593          	add	a1,s0,-176
    80006382:	4501                	li	a0,0
    80006384:	ffffd097          	auipc	ra,0xffffd
    80006388:	f66080e7          	jalr	-154(ra) # 800032ea <argstr>
    8000638c:	87aa                	mv	a5,a0
    8000638e:	557d                	li	a0,-1
    80006390:	0e07c263          	bltz	a5,80006474 <sys_exec+0x110>
    80006394:	f726                	sd	s1,424(sp)
    80006396:	f34a                	sd	s2,416(sp)
    80006398:	ef4e                	sd	s3,408(sp)
    8000639a:	eb52                	sd	s4,400(sp)
    8000639c:	10000613          	li	a2,256
    800063a0:	4581                	li	a1,0
    800063a2:	e5040513          	add	a0,s0,-432
    800063a6:	ffffb097          	auipc	ra,0xffffb
    800063aa:	98e080e7          	jalr	-1650(ra) # 80000d34 <memset>
    800063ae:	e5040493          	add	s1,s0,-432
    800063b2:	89a6                	mv	s3,s1
    800063b4:	4901                	li	s2,0
    800063b6:	02000a13          	li	s4,32
    800063ba:	00391513          	sll	a0,s2,0x3
    800063be:	e4040593          	add	a1,s0,-448
    800063c2:	e4843783          	ld	a5,-440(s0)
    800063c6:	953e                	add	a0,a0,a5
    800063c8:	ffffd097          	auipc	ra,0xffffd
    800063cc:	e44080e7          	jalr	-444(ra) # 8000320c <fetchaddr>
    800063d0:	02054a63          	bltz	a0,80006404 <sys_exec+0xa0>
    800063d4:	e4043783          	ld	a5,-448(s0)
    800063d8:	c7b9                	beqz	a5,80006426 <sys_exec+0xc2>
    800063da:	ffffa097          	auipc	ra,0xffffa
    800063de:	76e080e7          	jalr	1902(ra) # 80000b48 <kalloc>
    800063e2:	85aa                	mv	a1,a0
    800063e4:	00a9b023          	sd	a0,0(s3)
    800063e8:	cd11                	beqz	a0,80006404 <sys_exec+0xa0>
    800063ea:	6605                	lui	a2,0x1
    800063ec:	e4043503          	ld	a0,-448(s0)
    800063f0:	ffffd097          	auipc	ra,0xffffd
    800063f4:	e6e080e7          	jalr	-402(ra) # 8000325e <fetchstr>
    800063f8:	00054663          	bltz	a0,80006404 <sys_exec+0xa0>
    800063fc:	0905                	add	s2,s2,1
    800063fe:	09a1                	add	s3,s3,8
    80006400:	fb491de3          	bne	s2,s4,800063ba <sys_exec+0x56>
    80006404:	f5040913          	add	s2,s0,-176
    80006408:	6088                	ld	a0,0(s1)
    8000640a:	c125                	beqz	a0,8000646a <sys_exec+0x106>
    8000640c:	ffffa097          	auipc	ra,0xffffa
    80006410:	63e080e7          	jalr	1598(ra) # 80000a4a <kfree>
    80006414:	04a1                	add	s1,s1,8
    80006416:	ff2499e3          	bne	s1,s2,80006408 <sys_exec+0xa4>
    8000641a:	557d                	li	a0,-1
    8000641c:	74ba                	ld	s1,424(sp)
    8000641e:	791a                	ld	s2,416(sp)
    80006420:	69fa                	ld	s3,408(sp)
    80006422:	6a5a                	ld	s4,400(sp)
    80006424:	a881                	j	80006474 <sys_exec+0x110>
    80006426:	0009079b          	sext.w	a5,s2
    8000642a:	078e                	sll	a5,a5,0x3
    8000642c:	fd078793          	add	a5,a5,-48
    80006430:	97a2                	add	a5,a5,s0
    80006432:	e807b023          	sd	zero,-384(a5)
    80006436:	e5040593          	add	a1,s0,-432
    8000643a:	f5040513          	add	a0,s0,-176
    8000643e:	fffff097          	auipc	ra,0xfffff
    80006442:	11e080e7          	jalr	286(ra) # 8000555c <exec>
    80006446:	892a                	mv	s2,a0
    80006448:	f5040993          	add	s3,s0,-176
    8000644c:	6088                	ld	a0,0(s1)
    8000644e:	c901                	beqz	a0,8000645e <sys_exec+0xfa>
    80006450:	ffffa097          	auipc	ra,0xffffa
    80006454:	5fa080e7          	jalr	1530(ra) # 80000a4a <kfree>
    80006458:	04a1                	add	s1,s1,8
    8000645a:	ff3499e3          	bne	s1,s3,8000644c <sys_exec+0xe8>
    8000645e:	854a                	mv	a0,s2
    80006460:	74ba                	ld	s1,424(sp)
    80006462:	791a                	ld	s2,416(sp)
    80006464:	69fa                	ld	s3,408(sp)
    80006466:	6a5a                	ld	s4,400(sp)
    80006468:	a031                	j	80006474 <sys_exec+0x110>
    8000646a:	557d                	li	a0,-1
    8000646c:	74ba                	ld	s1,424(sp)
    8000646e:	791a                	ld	s2,416(sp)
    80006470:	69fa                	ld	s3,408(sp)
    80006472:	6a5a                	ld	s4,400(sp)
    80006474:	70fa                	ld	ra,440(sp)
    80006476:	745a                	ld	s0,432(sp)
    80006478:	6139                	add	sp,sp,448
    8000647a:	8082                	ret

000000008000647c <sys_pipe>:
    8000647c:	7139                	add	sp,sp,-64
    8000647e:	fc06                	sd	ra,56(sp)
    80006480:	f822                	sd	s0,48(sp)
    80006482:	f426                	sd	s1,40(sp)
    80006484:	0080                	add	s0,sp,64
    80006486:	ffffb097          	auipc	ra,0xffffb
    8000648a:	618080e7          	jalr	1560(ra) # 80001a9e <myproc>
    8000648e:	84aa                	mv	s1,a0
    80006490:	fd840593          	add	a1,s0,-40
    80006494:	4501                	li	a0,0
    80006496:	ffffd097          	auipc	ra,0xffffd
    8000649a:	e34080e7          	jalr	-460(ra) # 800032ca <argaddr>
    8000649e:	fc840593          	add	a1,s0,-56
    800064a2:	fd040513          	add	a0,s0,-48
    800064a6:	fffff097          	auipc	ra,0xfffff
    800064aa:	d4e080e7          	jalr	-690(ra) # 800051f4 <pipealloc>
    800064ae:	57fd                	li	a5,-1
    800064b0:	0c054763          	bltz	a0,8000657e <sys_pipe+0x102>
    800064b4:	fcf42223          	sw	a5,-60(s0)
    800064b8:	fd043503          	ld	a0,-48(s0)
    800064bc:	fffff097          	auipc	ra,0xfffff
    800064c0:	4de080e7          	jalr	1246(ra) # 8000599a <fdalloc>
    800064c4:	fca42223          	sw	a0,-60(s0)
    800064c8:	08054e63          	bltz	a0,80006564 <sys_pipe+0xe8>
    800064cc:	fc843503          	ld	a0,-56(s0)
    800064d0:	fffff097          	auipc	ra,0xfffff
    800064d4:	4ca080e7          	jalr	1226(ra) # 8000599a <fdalloc>
    800064d8:	fca42023          	sw	a0,-64(s0)
    800064dc:	06054a63          	bltz	a0,80006550 <sys_pipe+0xd4>
    800064e0:	4691                	li	a3,4
    800064e2:	fc440613          	add	a2,s0,-60
    800064e6:	fd843583          	ld	a1,-40(s0)
    800064ea:	60c8                	ld	a0,128(s1)
    800064ec:	ffffb097          	auipc	ra,0xffffb
    800064f0:	1f6080e7          	jalr	502(ra) # 800016e2 <copyout>
    800064f4:	02054063          	bltz	a0,80006514 <sys_pipe+0x98>
    800064f8:	4691                	li	a3,4
    800064fa:	fc040613          	add	a2,s0,-64
    800064fe:	fd843583          	ld	a1,-40(s0)
    80006502:	0591                	add	a1,a1,4
    80006504:	60c8                	ld	a0,128(s1)
    80006506:	ffffb097          	auipc	ra,0xffffb
    8000650a:	1dc080e7          	jalr	476(ra) # 800016e2 <copyout>
    8000650e:	4781                	li	a5,0
    80006510:	06055763          	bgez	a0,8000657e <sys_pipe+0x102>
    80006514:	fc442783          	lw	a5,-60(s0)
    80006518:	02078793          	add	a5,a5,32
    8000651c:	078e                	sll	a5,a5,0x3
    8000651e:	97a6                	add	a5,a5,s1
    80006520:	0007b023          	sd	zero,0(a5)
    80006524:	fc042783          	lw	a5,-64(s0)
    80006528:	02078793          	add	a5,a5,32
    8000652c:	078e                	sll	a5,a5,0x3
    8000652e:	94be                	add	s1,s1,a5
    80006530:	0004b023          	sd	zero,0(s1)
    80006534:	fd043503          	ld	a0,-48(s0)
    80006538:	fffff097          	auipc	ra,0xfffff
    8000653c:	94e080e7          	jalr	-1714(ra) # 80004e86 <fileclose>
    80006540:	fc843503          	ld	a0,-56(s0)
    80006544:	fffff097          	auipc	ra,0xfffff
    80006548:	942080e7          	jalr	-1726(ra) # 80004e86 <fileclose>
    8000654c:	57fd                	li	a5,-1
    8000654e:	a805                	j	8000657e <sys_pipe+0x102>
    80006550:	fc442783          	lw	a5,-60(s0)
    80006554:	0007c863          	bltz	a5,80006564 <sys_pipe+0xe8>
    80006558:	02078793          	add	a5,a5,32
    8000655c:	078e                	sll	a5,a5,0x3
    8000655e:	97a6                	add	a5,a5,s1
    80006560:	0007b023          	sd	zero,0(a5)
    80006564:	fd043503          	ld	a0,-48(s0)
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	91e080e7          	jalr	-1762(ra) # 80004e86 <fileclose>
    80006570:	fc843503          	ld	a0,-56(s0)
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	912080e7          	jalr	-1774(ra) # 80004e86 <fileclose>
    8000657c:	57fd                	li	a5,-1
    8000657e:	853e                	mv	a0,a5
    80006580:	70e2                	ld	ra,56(sp)
    80006582:	7442                	ld	s0,48(sp)
    80006584:	74a2                	ld	s1,40(sp)
    80006586:	6121                	add	sp,sp,64
    80006588:	8082                	ret
    8000658a:	0000                	unimp
    8000658c:	0000                	unimp
	...

0000000080006590 <kernelvec>:
    80006590:	7111                	add	sp,sp,-256
    80006592:	e006                	sd	ra,0(sp)
    80006594:	e40a                	sd	sp,8(sp)
    80006596:	e80e                	sd	gp,16(sp)
    80006598:	ec12                	sd	tp,24(sp)
    8000659a:	f016                	sd	t0,32(sp)
    8000659c:	f41a                	sd	t1,40(sp)
    8000659e:	f81e                	sd	t2,48(sp)
    800065a0:	fc22                	sd	s0,56(sp)
    800065a2:	e0a6                	sd	s1,64(sp)
    800065a4:	e4aa                	sd	a0,72(sp)
    800065a6:	e8ae                	sd	a1,80(sp)
    800065a8:	ecb2                	sd	a2,88(sp)
    800065aa:	f0b6                	sd	a3,96(sp)
    800065ac:	f4ba                	sd	a4,104(sp)
    800065ae:	f8be                	sd	a5,112(sp)
    800065b0:	fcc2                	sd	a6,120(sp)
    800065b2:	e146                	sd	a7,128(sp)
    800065b4:	e54a                	sd	s2,136(sp)
    800065b6:	e94e                	sd	s3,144(sp)
    800065b8:	ed52                	sd	s4,152(sp)
    800065ba:	f156                	sd	s5,160(sp)
    800065bc:	f55a                	sd	s6,168(sp)
    800065be:	f95e                	sd	s7,176(sp)
    800065c0:	fd62                	sd	s8,184(sp)
    800065c2:	e1e6                	sd	s9,192(sp)
    800065c4:	e5ea                	sd	s10,200(sp)
    800065c6:	e9ee                	sd	s11,208(sp)
    800065c8:	edf2                	sd	t3,216(sp)
    800065ca:	f1f6                	sd	t4,224(sp)
    800065cc:	f5fa                	sd	t5,232(sp)
    800065ce:	f9fe                	sd	t6,240(sp)
    800065d0:	afdfc0ef          	jal	800030cc <kerneltrap>
    800065d4:	6082                	ld	ra,0(sp)
    800065d6:	6122                	ld	sp,8(sp)
    800065d8:	61c2                	ld	gp,16(sp)
    800065da:	7282                	ld	t0,32(sp)
    800065dc:	7322                	ld	t1,40(sp)
    800065de:	73c2                	ld	t2,48(sp)
    800065e0:	7462                	ld	s0,56(sp)
    800065e2:	6486                	ld	s1,64(sp)
    800065e4:	6526                	ld	a0,72(sp)
    800065e6:	65c6                	ld	a1,80(sp)
    800065e8:	6666                	ld	a2,88(sp)
    800065ea:	7686                	ld	a3,96(sp)
    800065ec:	7726                	ld	a4,104(sp)
    800065ee:	77c6                	ld	a5,112(sp)
    800065f0:	7866                	ld	a6,120(sp)
    800065f2:	688a                	ld	a7,128(sp)
    800065f4:	692a                	ld	s2,136(sp)
    800065f6:	69ca                	ld	s3,144(sp)
    800065f8:	6a6a                	ld	s4,152(sp)
    800065fa:	7a8a                	ld	s5,160(sp)
    800065fc:	7b2a                	ld	s6,168(sp)
    800065fe:	7bca                	ld	s7,176(sp)
    80006600:	7c6a                	ld	s8,184(sp)
    80006602:	6c8e                	ld	s9,192(sp)
    80006604:	6d2e                	ld	s10,200(sp)
    80006606:	6dce                	ld	s11,208(sp)
    80006608:	6e6e                	ld	t3,216(sp)
    8000660a:	7e8e                	ld	t4,224(sp)
    8000660c:	7f2e                	ld	t5,232(sp)
    8000660e:	7fce                	ld	t6,240(sp)
    80006610:	6111                	add	sp,sp,256
    80006612:	10200073          	sret
    80006616:	00000013          	nop
    8000661a:	00000013          	nop
    8000661e:	0001                	nop

0000000080006620 <timervec>:
    80006620:	34051573          	csrrw	a0,mscratch,a0
    80006624:	e10c                	sd	a1,0(a0)
    80006626:	e510                	sd	a2,8(a0)
    80006628:	e914                	sd	a3,16(a0)
    8000662a:	6d0c                	ld	a1,24(a0)
    8000662c:	7110                	ld	a2,32(a0)
    8000662e:	6194                	ld	a3,0(a1)
    80006630:	96b2                	add	a3,a3,a2
    80006632:	e194                	sd	a3,0(a1)
    80006634:	4589                	li	a1,2
    80006636:	14459073          	csrw	sip,a1
    8000663a:	6914                	ld	a3,16(a0)
    8000663c:	6510                	ld	a2,8(a0)
    8000663e:	610c                	ld	a1,0(a0)
    80006640:	34051573          	csrrw	a0,mscratch,a0
    80006644:	30200073          	mret
	...

000000008000664a <plicinit>:
    8000664a:	1141                	add	sp,sp,-16
    8000664c:	e422                	sd	s0,8(sp)
    8000664e:	0800                	add	s0,sp,16
    80006650:	0c0007b7          	lui	a5,0xc000
    80006654:	4705                	li	a4,1
    80006656:	d798                	sw	a4,40(a5)
    80006658:	0c0007b7          	lui	a5,0xc000
    8000665c:	c3d8                	sw	a4,4(a5)
    8000665e:	6422                	ld	s0,8(sp)
    80006660:	0141                	add	sp,sp,16
    80006662:	8082                	ret

0000000080006664 <plicinithart>:
    80006664:	1141                	add	sp,sp,-16
    80006666:	e406                	sd	ra,8(sp)
    80006668:	e022                	sd	s0,0(sp)
    8000666a:	0800                	add	s0,sp,16
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	406080e7          	jalr	1030(ra) # 80001a72 <cpuid>
    80006674:	0085171b          	sllw	a4,a0,0x8
    80006678:	0c0027b7          	lui	a5,0xc002
    8000667c:	97ba                	add	a5,a5,a4
    8000667e:	40200713          	li	a4,1026
    80006682:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006686:	00d5151b          	sllw	a0,a0,0xd
    8000668a:	0c2017b7          	lui	a5,0xc201
    8000668e:	97aa                	add	a5,a5,a0
    80006690:	0007a023          	sw	zero,0(a5) # c201000 <_entry-0x73dff000>
    80006694:	60a2                	ld	ra,8(sp)
    80006696:	6402                	ld	s0,0(sp)
    80006698:	0141                	add	sp,sp,16
    8000669a:	8082                	ret

000000008000669c <plic_claim>:
    8000669c:	1141                	add	sp,sp,-16
    8000669e:	e406                	sd	ra,8(sp)
    800066a0:	e022                	sd	s0,0(sp)
    800066a2:	0800                	add	s0,sp,16
    800066a4:	ffffb097          	auipc	ra,0xffffb
    800066a8:	3ce080e7          	jalr	974(ra) # 80001a72 <cpuid>
    800066ac:	00d5151b          	sllw	a0,a0,0xd
    800066b0:	0c2017b7          	lui	a5,0xc201
    800066b4:	97aa                	add	a5,a5,a0
    800066b6:	43c8                	lw	a0,4(a5)
    800066b8:	60a2                	ld	ra,8(sp)
    800066ba:	6402                	ld	s0,0(sp)
    800066bc:	0141                	add	sp,sp,16
    800066be:	8082                	ret

00000000800066c0 <plic_complete>:
    800066c0:	1101                	add	sp,sp,-32
    800066c2:	ec06                	sd	ra,24(sp)
    800066c4:	e822                	sd	s0,16(sp)
    800066c6:	e426                	sd	s1,8(sp)
    800066c8:	1000                	add	s0,sp,32
    800066ca:	84aa                	mv	s1,a0
    800066cc:	ffffb097          	auipc	ra,0xffffb
    800066d0:	3a6080e7          	jalr	934(ra) # 80001a72 <cpuid>
    800066d4:	00d5151b          	sllw	a0,a0,0xd
    800066d8:	0c2017b7          	lui	a5,0xc201
    800066dc:	97aa                	add	a5,a5,a0
    800066de:	c3c4                	sw	s1,4(a5)
    800066e0:	60e2                	ld	ra,24(sp)
    800066e2:	6442                	ld	s0,16(sp)
    800066e4:	64a2                	ld	s1,8(sp)
    800066e6:	6105                	add	sp,sp,32
    800066e8:	8082                	ret

00000000800066ea <free_desc>:
    800066ea:	1141                	add	sp,sp,-16
    800066ec:	e406                	sd	ra,8(sp)
    800066ee:	e022                	sd	s0,0(sp)
    800066f0:	0800                	add	s0,sp,16
    800066f2:	479d                	li	a5,7
    800066f4:	04a7cc63          	blt	a5,a0,8000674c <free_desc+0x62>
    800066f8:	0001f797          	auipc	a5,0x1f
    800066fc:	1e878793          	add	a5,a5,488 # 800258e0 <disk>
    80006700:	97aa                	add	a5,a5,a0
    80006702:	0187c783          	lbu	a5,24(a5)
    80006706:	ebb9                	bnez	a5,8000675c <free_desc+0x72>
    80006708:	00451693          	sll	a3,a0,0x4
    8000670c:	0001f797          	auipc	a5,0x1f
    80006710:	1d478793          	add	a5,a5,468 # 800258e0 <disk>
    80006714:	6398                	ld	a4,0(a5)
    80006716:	9736                	add	a4,a4,a3
    80006718:	00073023          	sd	zero,0(a4)
    8000671c:	6398                	ld	a4,0(a5)
    8000671e:	9736                	add	a4,a4,a3
    80006720:	00072423          	sw	zero,8(a4)
    80006724:	00071623          	sh	zero,12(a4)
    80006728:	00071723          	sh	zero,14(a4)
    8000672c:	97aa                	add	a5,a5,a0
    8000672e:	4705                	li	a4,1
    80006730:	00e78c23          	sb	a4,24(a5)
    80006734:	0001f517          	auipc	a0,0x1f
    80006738:	1c450513          	add	a0,a0,452 # 800258f8 <disk+0x18>
    8000673c:	ffffc097          	auipc	ra,0xffffc
    80006740:	ee8080e7          	jalr	-280(ra) # 80002624 <wakeup>
    80006744:	60a2                	ld	ra,8(sp)
    80006746:	6402                	ld	s0,0(sp)
    80006748:	0141                	add	sp,sp,16
    8000674a:	8082                	ret
    8000674c:	00002517          	auipc	a0,0x2
    80006750:	09c50513          	add	a0,a0,156 # 800087e8 <syscalls+0x318>
    80006754:	ffffa097          	auipc	ra,0xffffa
    80006758:	e0c080e7          	jalr	-500(ra) # 80000560 <panic>
    8000675c:	00002517          	auipc	a0,0x2
    80006760:	09c50513          	add	a0,a0,156 # 800087f8 <syscalls+0x328>
    80006764:	ffffa097          	auipc	ra,0xffffa
    80006768:	dfc080e7          	jalr	-516(ra) # 80000560 <panic>

000000008000676c <virtio_disk_init>:
    8000676c:	1101                	add	sp,sp,-32
    8000676e:	ec06                	sd	ra,24(sp)
    80006770:	e822                	sd	s0,16(sp)
    80006772:	e426                	sd	s1,8(sp)
    80006774:	e04a                	sd	s2,0(sp)
    80006776:	1000                	add	s0,sp,32
    80006778:	00002597          	auipc	a1,0x2
    8000677c:	09058593          	add	a1,a1,144 # 80008808 <syscalls+0x338>
    80006780:	0001f517          	auipc	a0,0x1f
    80006784:	28850513          	add	a0,a0,648 # 80025a08 <disk+0x128>
    80006788:	ffffa097          	auipc	ra,0xffffa
    8000678c:	420080e7          	jalr	1056(ra) # 80000ba8 <initlock>
    80006790:	100017b7          	lui	a5,0x10001
    80006794:	4398                	lw	a4,0(a5)
    80006796:	2701                	sext.w	a4,a4
    80006798:	747277b7          	lui	a5,0x74727
    8000679c:	97678793          	add	a5,a5,-1674 # 74726976 <_entry-0xb8d968a>
    800067a0:	18f71c63          	bne	a4,a5,80006938 <virtio_disk_init+0x1cc>
    800067a4:	100017b7          	lui	a5,0x10001
    800067a8:	0791                	add	a5,a5,4 # 10001004 <_entry-0x6fffeffc>
    800067aa:	439c                	lw	a5,0(a5)
    800067ac:	2781                	sext.w	a5,a5
    800067ae:	4709                	li	a4,2
    800067b0:	18e79463          	bne	a5,a4,80006938 <virtio_disk_init+0x1cc>
    800067b4:	100017b7          	lui	a5,0x10001
    800067b8:	07a1                	add	a5,a5,8 # 10001008 <_entry-0x6fffeff8>
    800067ba:	439c                	lw	a5,0(a5)
    800067bc:	2781                	sext.w	a5,a5
    800067be:	16e79d63          	bne	a5,a4,80006938 <virtio_disk_init+0x1cc>
    800067c2:	100017b7          	lui	a5,0x10001
    800067c6:	47d8                	lw	a4,12(a5)
    800067c8:	2701                	sext.w	a4,a4
    800067ca:	554d47b7          	lui	a5,0x554d4
    800067ce:	55178793          	add	a5,a5,1361 # 554d4551 <_entry-0x2ab2baaf>
    800067d2:	16f71363          	bne	a4,a5,80006938 <virtio_disk_init+0x1cc>
    800067d6:	100017b7          	lui	a5,0x10001
    800067da:	0607a823          	sw	zero,112(a5) # 10001070 <_entry-0x6fffef90>
    800067de:	4705                	li	a4,1
    800067e0:	dbb8                	sw	a4,112(a5)
    800067e2:	470d                	li	a4,3
    800067e4:	dbb8                	sw	a4,112(a5)
    800067e6:	10001737          	lui	a4,0x10001
    800067ea:	4b14                	lw	a3,16(a4)
    800067ec:	c7ffe737          	lui	a4,0xc7ffe
    800067f0:	75f70713          	add	a4,a4,1887 # ffffffffc7ffe75f <end+0xffffffff47fd8d3f>
    800067f4:	8ef9                	and	a3,a3,a4
    800067f6:	10001737          	lui	a4,0x10001
    800067fa:	d314                	sw	a3,32(a4)
    800067fc:	472d                	li	a4,11
    800067fe:	dbb8                	sw	a4,112(a5)
    80006800:	07078793          	add	a5,a5,112
    80006804:	439c                	lw	a5,0(a5)
    80006806:	0007891b          	sext.w	s2,a5
    8000680a:	8ba1                	and	a5,a5,8
    8000680c:	12078e63          	beqz	a5,80006948 <virtio_disk_init+0x1dc>
    80006810:	100017b7          	lui	a5,0x10001
    80006814:	0207a823          	sw	zero,48(a5) # 10001030 <_entry-0x6fffefd0>
    80006818:	100017b7          	lui	a5,0x10001
    8000681c:	04478793          	add	a5,a5,68 # 10001044 <_entry-0x6fffefbc>
    80006820:	439c                	lw	a5,0(a5)
    80006822:	2781                	sext.w	a5,a5
    80006824:	12079a63          	bnez	a5,80006958 <virtio_disk_init+0x1ec>
    80006828:	100017b7          	lui	a5,0x10001
    8000682c:	03478793          	add	a5,a5,52 # 10001034 <_entry-0x6fffefcc>
    80006830:	439c                	lw	a5,0(a5)
    80006832:	2781                	sext.w	a5,a5
    80006834:	12078a63          	beqz	a5,80006968 <virtio_disk_init+0x1fc>
    80006838:	471d                	li	a4,7
    8000683a:	12f77f63          	bgeu	a4,a5,80006978 <virtio_disk_init+0x20c>
    8000683e:	ffffa097          	auipc	ra,0xffffa
    80006842:	30a080e7          	jalr	778(ra) # 80000b48 <kalloc>
    80006846:	0001f497          	auipc	s1,0x1f
    8000684a:	09a48493          	add	s1,s1,154 # 800258e0 <disk>
    8000684e:	e088                	sd	a0,0(s1)
    80006850:	ffffa097          	auipc	ra,0xffffa
    80006854:	2f8080e7          	jalr	760(ra) # 80000b48 <kalloc>
    80006858:	e488                	sd	a0,8(s1)
    8000685a:	ffffa097          	auipc	ra,0xffffa
    8000685e:	2ee080e7          	jalr	750(ra) # 80000b48 <kalloc>
    80006862:	87aa                	mv	a5,a0
    80006864:	e888                	sd	a0,16(s1)
    80006866:	6088                	ld	a0,0(s1)
    80006868:	12050063          	beqz	a0,80006988 <virtio_disk_init+0x21c>
    8000686c:	0001f717          	auipc	a4,0x1f
    80006870:	07c73703          	ld	a4,124(a4) # 800258e8 <disk+0x8>
    80006874:	10070a63          	beqz	a4,80006988 <virtio_disk_init+0x21c>
    80006878:	10078863          	beqz	a5,80006988 <virtio_disk_init+0x21c>
    8000687c:	6605                	lui	a2,0x1
    8000687e:	4581                	li	a1,0
    80006880:	ffffa097          	auipc	ra,0xffffa
    80006884:	4b4080e7          	jalr	1204(ra) # 80000d34 <memset>
    80006888:	0001f497          	auipc	s1,0x1f
    8000688c:	05848493          	add	s1,s1,88 # 800258e0 <disk>
    80006890:	6605                	lui	a2,0x1
    80006892:	4581                	li	a1,0
    80006894:	6488                	ld	a0,8(s1)
    80006896:	ffffa097          	auipc	ra,0xffffa
    8000689a:	49e080e7          	jalr	1182(ra) # 80000d34 <memset>
    8000689e:	6605                	lui	a2,0x1
    800068a0:	4581                	li	a1,0
    800068a2:	6888                	ld	a0,16(s1)
    800068a4:	ffffa097          	auipc	ra,0xffffa
    800068a8:	490080e7          	jalr	1168(ra) # 80000d34 <memset>
    800068ac:	100017b7          	lui	a5,0x10001
    800068b0:	4721                	li	a4,8
    800068b2:	df98                	sw	a4,56(a5)
    800068b4:	4098                	lw	a4,0(s1)
    800068b6:	100017b7          	lui	a5,0x10001
    800068ba:	08e7a023          	sw	a4,128(a5) # 10001080 <_entry-0x6fffef80>
    800068be:	40d8                	lw	a4,4(s1)
    800068c0:	100017b7          	lui	a5,0x10001
    800068c4:	08e7a223          	sw	a4,132(a5) # 10001084 <_entry-0x6fffef7c>
    800068c8:	649c                	ld	a5,8(s1)
    800068ca:	0007869b          	sext.w	a3,a5
    800068ce:	10001737          	lui	a4,0x10001
    800068d2:	08d72823          	sw	a3,144(a4) # 10001090 <_entry-0x6fffef70>
    800068d6:	9781                	sra	a5,a5,0x20
    800068d8:	10001737          	lui	a4,0x10001
    800068dc:	08f72a23          	sw	a5,148(a4) # 10001094 <_entry-0x6fffef6c>
    800068e0:	689c                	ld	a5,16(s1)
    800068e2:	0007869b          	sext.w	a3,a5
    800068e6:	10001737          	lui	a4,0x10001
    800068ea:	0ad72023          	sw	a3,160(a4) # 100010a0 <_entry-0x6fffef60>
    800068ee:	9781                	sra	a5,a5,0x20
    800068f0:	10001737          	lui	a4,0x10001
    800068f4:	0af72223          	sw	a5,164(a4) # 100010a4 <_entry-0x6fffef5c>
    800068f8:	10001737          	lui	a4,0x10001
    800068fc:	4785                	li	a5,1
    800068fe:	c37c                	sw	a5,68(a4)
    80006900:	00f48c23          	sb	a5,24(s1)
    80006904:	00f48ca3          	sb	a5,25(s1)
    80006908:	00f48d23          	sb	a5,26(s1)
    8000690c:	00f48da3          	sb	a5,27(s1)
    80006910:	00f48e23          	sb	a5,28(s1)
    80006914:	00f48ea3          	sb	a5,29(s1)
    80006918:	00f48f23          	sb	a5,30(s1)
    8000691c:	00f48fa3          	sb	a5,31(s1)
    80006920:	00496913          	or	s2,s2,4
    80006924:	100017b7          	lui	a5,0x10001
    80006928:	0727a823          	sw	s2,112(a5) # 10001070 <_entry-0x6fffef90>
    8000692c:	60e2                	ld	ra,24(sp)
    8000692e:	6442                	ld	s0,16(sp)
    80006930:	64a2                	ld	s1,8(sp)
    80006932:	6902                	ld	s2,0(sp)
    80006934:	6105                	add	sp,sp,32
    80006936:	8082                	ret
    80006938:	00002517          	auipc	a0,0x2
    8000693c:	ee050513          	add	a0,a0,-288 # 80008818 <syscalls+0x348>
    80006940:	ffffa097          	auipc	ra,0xffffa
    80006944:	c20080e7          	jalr	-992(ra) # 80000560 <panic>
    80006948:	00002517          	auipc	a0,0x2
    8000694c:	ef050513          	add	a0,a0,-272 # 80008838 <syscalls+0x368>
    80006950:	ffffa097          	auipc	ra,0xffffa
    80006954:	c10080e7          	jalr	-1008(ra) # 80000560 <panic>
    80006958:	00002517          	auipc	a0,0x2
    8000695c:	f0050513          	add	a0,a0,-256 # 80008858 <syscalls+0x388>
    80006960:	ffffa097          	auipc	ra,0xffffa
    80006964:	c00080e7          	jalr	-1024(ra) # 80000560 <panic>
    80006968:	00002517          	auipc	a0,0x2
    8000696c:	f1050513          	add	a0,a0,-240 # 80008878 <syscalls+0x3a8>
    80006970:	ffffa097          	auipc	ra,0xffffa
    80006974:	bf0080e7          	jalr	-1040(ra) # 80000560 <panic>
    80006978:	00002517          	auipc	a0,0x2
    8000697c:	f2050513          	add	a0,a0,-224 # 80008898 <syscalls+0x3c8>
    80006980:	ffffa097          	auipc	ra,0xffffa
    80006984:	be0080e7          	jalr	-1056(ra) # 80000560 <panic>
    80006988:	00002517          	auipc	a0,0x2
    8000698c:	f3050513          	add	a0,a0,-208 # 800088b8 <syscalls+0x3e8>
    80006990:	ffffa097          	auipc	ra,0xffffa
    80006994:	bd0080e7          	jalr	-1072(ra) # 80000560 <panic>

0000000080006998 <virtio_disk_rw>:
    80006998:	7159                	add	sp,sp,-112
    8000699a:	f486                	sd	ra,104(sp)
    8000699c:	f0a2                	sd	s0,96(sp)
    8000699e:	eca6                	sd	s1,88(sp)
    800069a0:	e8ca                	sd	s2,80(sp)
    800069a2:	e4ce                	sd	s3,72(sp)
    800069a4:	e0d2                	sd	s4,64(sp)
    800069a6:	fc56                	sd	s5,56(sp)
    800069a8:	f85a                	sd	s6,48(sp)
    800069aa:	f45e                	sd	s7,40(sp)
    800069ac:	f062                	sd	s8,32(sp)
    800069ae:	ec66                	sd	s9,24(sp)
    800069b0:	1880                	add	s0,sp,112
    800069b2:	8a2a                	mv	s4,a0
    800069b4:	8bae                	mv	s7,a1
    800069b6:	00c52c83          	lw	s9,12(a0)
    800069ba:	001c9c9b          	sllw	s9,s9,0x1
    800069be:	1c82                	sll	s9,s9,0x20
    800069c0:	020cdc93          	srl	s9,s9,0x20
    800069c4:	0001f517          	auipc	a0,0x1f
    800069c8:	04450513          	add	a0,a0,68 # 80025a08 <disk+0x128>
    800069cc:	ffffa097          	auipc	ra,0xffffa
    800069d0:	26c080e7          	jalr	620(ra) # 80000c38 <acquire>
    800069d4:	4981                	li	s3,0
    800069d6:	44a1                	li	s1,8
    800069d8:	0001fb17          	auipc	s6,0x1f
    800069dc:	f08b0b13          	add	s6,s6,-248 # 800258e0 <disk>
    800069e0:	4a8d                	li	s5,3
    800069e2:	0001fc17          	auipc	s8,0x1f
    800069e6:	026c0c13          	add	s8,s8,38 # 80025a08 <disk+0x128>
    800069ea:	a0ad                	j	80006a54 <virtio_disk_rw+0xbc>
    800069ec:	00fb0733          	add	a4,s6,a5
    800069f0:	00070c23          	sb	zero,24(a4) # 10001018 <_entry-0x6fffefe8>
    800069f4:	c19c                	sw	a5,0(a1)
    800069f6:	0207c563          	bltz	a5,80006a20 <virtio_disk_rw+0x88>
    800069fa:	2905                	addw	s2,s2,1
    800069fc:	0611                	add	a2,a2,4 # 1004 <_entry-0x7fffeffc>
    800069fe:	05590f63          	beq	s2,s5,80006a5c <virtio_disk_rw+0xc4>
    80006a02:	85b2                	mv	a1,a2
    80006a04:	0001f717          	auipc	a4,0x1f
    80006a08:	edc70713          	add	a4,a4,-292 # 800258e0 <disk>
    80006a0c:	87ce                	mv	a5,s3
    80006a0e:	01874683          	lbu	a3,24(a4)
    80006a12:	fee9                	bnez	a3,800069ec <virtio_disk_rw+0x54>
    80006a14:	2785                	addw	a5,a5,1
    80006a16:	0705                	add	a4,a4,1
    80006a18:	fe979be3          	bne	a5,s1,80006a0e <virtio_disk_rw+0x76>
    80006a1c:	57fd                	li	a5,-1
    80006a1e:	c19c                	sw	a5,0(a1)
    80006a20:	03205163          	blez	s2,80006a42 <virtio_disk_rw+0xaa>
    80006a24:	f9042503          	lw	a0,-112(s0)
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	cc2080e7          	jalr	-830(ra) # 800066ea <free_desc>
    80006a30:	4785                	li	a5,1
    80006a32:	0127d863          	bge	a5,s2,80006a42 <virtio_disk_rw+0xaa>
    80006a36:	f9442503          	lw	a0,-108(s0)
    80006a3a:	00000097          	auipc	ra,0x0
    80006a3e:	cb0080e7          	jalr	-848(ra) # 800066ea <free_desc>
    80006a42:	85e2                	mv	a1,s8
    80006a44:	0001f517          	auipc	a0,0x1f
    80006a48:	eb450513          	add	a0,a0,-332 # 800258f8 <disk+0x18>
    80006a4c:	ffffc097          	auipc	ra,0xffffc
    80006a50:	b74080e7          	jalr	-1164(ra) # 800025c0 <sleep>
    80006a54:	f9040613          	add	a2,s0,-112
    80006a58:	894e                	mv	s2,s3
    80006a5a:	b765                	j	80006a02 <virtio_disk_rw+0x6a>
    80006a5c:	f9042503          	lw	a0,-112(s0)
    80006a60:	00451693          	sll	a3,a0,0x4
    80006a64:	0001f797          	auipc	a5,0x1f
    80006a68:	e7c78793          	add	a5,a5,-388 # 800258e0 <disk>
    80006a6c:	00a50713          	add	a4,a0,10
    80006a70:	0712                	sll	a4,a4,0x4
    80006a72:	973e                	add	a4,a4,a5
    80006a74:	01703633          	snez	a2,s7
    80006a78:	c710                	sw	a2,8(a4)
    80006a7a:	00072623          	sw	zero,12(a4)
    80006a7e:	01973823          	sd	s9,16(a4)
    80006a82:	6398                	ld	a4,0(a5)
    80006a84:	9736                	add	a4,a4,a3
    80006a86:	0a868613          	add	a2,a3,168
    80006a8a:	963e                	add	a2,a2,a5
    80006a8c:	e310                	sd	a2,0(a4)
    80006a8e:	6390                	ld	a2,0(a5)
    80006a90:	00d605b3          	add	a1,a2,a3
    80006a94:	4741                	li	a4,16
    80006a96:	c598                	sw	a4,8(a1)
    80006a98:	4805                	li	a6,1
    80006a9a:	01059623          	sh	a6,12(a1)
    80006a9e:	f9442703          	lw	a4,-108(s0)
    80006aa2:	00e59723          	sh	a4,14(a1)
    80006aa6:	0712                	sll	a4,a4,0x4
    80006aa8:	963a                	add	a2,a2,a4
    80006aaa:	058a0593          	add	a1,s4,88
    80006aae:	e20c                	sd	a1,0(a2)
    80006ab0:	0007b883          	ld	a7,0(a5)
    80006ab4:	9746                	add	a4,a4,a7
    80006ab6:	40000613          	li	a2,1024
    80006aba:	c710                	sw	a2,8(a4)
    80006abc:	001bb613          	seqz	a2,s7
    80006ac0:	0016161b          	sllw	a2,a2,0x1
    80006ac4:	00166613          	or	a2,a2,1
    80006ac8:	00c71623          	sh	a2,12(a4)
    80006acc:	f9842583          	lw	a1,-104(s0)
    80006ad0:	00b71723          	sh	a1,14(a4)
    80006ad4:	00250613          	add	a2,a0,2
    80006ad8:	0612                	sll	a2,a2,0x4
    80006ada:	963e                	add	a2,a2,a5
    80006adc:	577d                	li	a4,-1
    80006ade:	00e60823          	sb	a4,16(a2)
    80006ae2:	0592                	sll	a1,a1,0x4
    80006ae4:	98ae                	add	a7,a7,a1
    80006ae6:	03068713          	add	a4,a3,48
    80006aea:	973e                	add	a4,a4,a5
    80006aec:	00e8b023          	sd	a4,0(a7)
    80006af0:	6398                	ld	a4,0(a5)
    80006af2:	972e                	add	a4,a4,a1
    80006af4:	01072423          	sw	a6,8(a4)
    80006af8:	4689                	li	a3,2
    80006afa:	00d71623          	sh	a3,12(a4)
    80006afe:	00071723          	sh	zero,14(a4)
    80006b02:	010a2223          	sw	a6,4(s4)
    80006b06:	01463423          	sd	s4,8(a2)
    80006b0a:	6794                	ld	a3,8(a5)
    80006b0c:	0026d703          	lhu	a4,2(a3)
    80006b10:	8b1d                	and	a4,a4,7
    80006b12:	0706                	sll	a4,a4,0x1
    80006b14:	96ba                	add	a3,a3,a4
    80006b16:	00a69223          	sh	a0,4(a3)
    80006b1a:	0ff0000f          	fence
    80006b1e:	6798                	ld	a4,8(a5)
    80006b20:	00275783          	lhu	a5,2(a4)
    80006b24:	2785                	addw	a5,a5,1
    80006b26:	00f71123          	sh	a5,2(a4)
    80006b2a:	0ff0000f          	fence
    80006b2e:	100017b7          	lui	a5,0x10001
    80006b32:	0407a823          	sw	zero,80(a5) # 10001050 <_entry-0x6fffefb0>
    80006b36:	004a2783          	lw	a5,4(s4)
    80006b3a:	0001f917          	auipc	s2,0x1f
    80006b3e:	ece90913          	add	s2,s2,-306 # 80025a08 <disk+0x128>
    80006b42:	4485                	li	s1,1
    80006b44:	01079c63          	bne	a5,a6,80006b5c <virtio_disk_rw+0x1c4>
    80006b48:	85ca                	mv	a1,s2
    80006b4a:	8552                	mv	a0,s4
    80006b4c:	ffffc097          	auipc	ra,0xffffc
    80006b50:	a74080e7          	jalr	-1420(ra) # 800025c0 <sleep>
    80006b54:	004a2783          	lw	a5,4(s4)
    80006b58:	fe9788e3          	beq	a5,s1,80006b48 <virtio_disk_rw+0x1b0>
    80006b5c:	f9042903          	lw	s2,-112(s0)
    80006b60:	00290713          	add	a4,s2,2
    80006b64:	0712                	sll	a4,a4,0x4
    80006b66:	0001f797          	auipc	a5,0x1f
    80006b6a:	d7a78793          	add	a5,a5,-646 # 800258e0 <disk>
    80006b6e:	97ba                	add	a5,a5,a4
    80006b70:	0007b423          	sd	zero,8(a5)
    80006b74:	0001f997          	auipc	s3,0x1f
    80006b78:	d6c98993          	add	s3,s3,-660 # 800258e0 <disk>
    80006b7c:	00491713          	sll	a4,s2,0x4
    80006b80:	0009b783          	ld	a5,0(s3)
    80006b84:	97ba                	add	a5,a5,a4
    80006b86:	00c7d483          	lhu	s1,12(a5)
    80006b8a:	854a                	mv	a0,s2
    80006b8c:	00e7d903          	lhu	s2,14(a5)
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	b5a080e7          	jalr	-1190(ra) # 800066ea <free_desc>
    80006b98:	8885                	and	s1,s1,1
    80006b9a:	f0ed                	bnez	s1,80006b7c <virtio_disk_rw+0x1e4>
    80006b9c:	0001f517          	auipc	a0,0x1f
    80006ba0:	e6c50513          	add	a0,a0,-404 # 80025a08 <disk+0x128>
    80006ba4:	ffffa097          	auipc	ra,0xffffa
    80006ba8:	148080e7          	jalr	328(ra) # 80000cec <release>
    80006bac:	70a6                	ld	ra,104(sp)
    80006bae:	7406                	ld	s0,96(sp)
    80006bb0:	64e6                	ld	s1,88(sp)
    80006bb2:	6946                	ld	s2,80(sp)
    80006bb4:	69a6                	ld	s3,72(sp)
    80006bb6:	6a06                	ld	s4,64(sp)
    80006bb8:	7ae2                	ld	s5,56(sp)
    80006bba:	7b42                	ld	s6,48(sp)
    80006bbc:	7ba2                	ld	s7,40(sp)
    80006bbe:	7c02                	ld	s8,32(sp)
    80006bc0:	6ce2                	ld	s9,24(sp)
    80006bc2:	6165                	add	sp,sp,112
    80006bc4:	8082                	ret

0000000080006bc6 <virtio_disk_intr>:
    80006bc6:	1101                	add	sp,sp,-32
    80006bc8:	ec06                	sd	ra,24(sp)
    80006bca:	e822                	sd	s0,16(sp)
    80006bcc:	e426                	sd	s1,8(sp)
    80006bce:	1000                	add	s0,sp,32
    80006bd0:	0001f497          	auipc	s1,0x1f
    80006bd4:	d1048493          	add	s1,s1,-752 # 800258e0 <disk>
    80006bd8:	0001f517          	auipc	a0,0x1f
    80006bdc:	e3050513          	add	a0,a0,-464 # 80025a08 <disk+0x128>
    80006be0:	ffffa097          	auipc	ra,0xffffa
    80006be4:	058080e7          	jalr	88(ra) # 80000c38 <acquire>
    80006be8:	100017b7          	lui	a5,0x10001
    80006bec:	53b8                	lw	a4,96(a5)
    80006bee:	8b0d                	and	a4,a4,3
    80006bf0:	100017b7          	lui	a5,0x10001
    80006bf4:	d3f8                	sw	a4,100(a5)
    80006bf6:	0ff0000f          	fence
    80006bfa:	689c                	ld	a5,16(s1)
    80006bfc:	0204d703          	lhu	a4,32(s1)
    80006c00:	0027d783          	lhu	a5,2(a5) # 10001002 <_entry-0x6fffeffe>
    80006c04:	04f70863          	beq	a4,a5,80006c54 <virtio_disk_intr+0x8e>
    80006c08:	0ff0000f          	fence
    80006c0c:	6898                	ld	a4,16(s1)
    80006c0e:	0204d783          	lhu	a5,32(s1)
    80006c12:	8b9d                	and	a5,a5,7
    80006c14:	078e                	sll	a5,a5,0x3
    80006c16:	97ba                	add	a5,a5,a4
    80006c18:	43dc                	lw	a5,4(a5)
    80006c1a:	00278713          	add	a4,a5,2
    80006c1e:	0712                	sll	a4,a4,0x4
    80006c20:	9726                	add	a4,a4,s1
    80006c22:	01074703          	lbu	a4,16(a4)
    80006c26:	e721                	bnez	a4,80006c6e <virtio_disk_intr+0xa8>
    80006c28:	0789                	add	a5,a5,2
    80006c2a:	0792                	sll	a5,a5,0x4
    80006c2c:	97a6                	add	a5,a5,s1
    80006c2e:	6788                	ld	a0,8(a5)
    80006c30:	00052223          	sw	zero,4(a0)
    80006c34:	ffffc097          	auipc	ra,0xffffc
    80006c38:	9f0080e7          	jalr	-1552(ra) # 80002624 <wakeup>
    80006c3c:	0204d783          	lhu	a5,32(s1)
    80006c40:	2785                	addw	a5,a5,1
    80006c42:	17c2                	sll	a5,a5,0x30
    80006c44:	93c1                	srl	a5,a5,0x30
    80006c46:	02f49023          	sh	a5,32(s1)
    80006c4a:	6898                	ld	a4,16(s1)
    80006c4c:	00275703          	lhu	a4,2(a4)
    80006c50:	faf71ce3          	bne	a4,a5,80006c08 <virtio_disk_intr+0x42>
    80006c54:	0001f517          	auipc	a0,0x1f
    80006c58:	db450513          	add	a0,a0,-588 # 80025a08 <disk+0x128>
    80006c5c:	ffffa097          	auipc	ra,0xffffa
    80006c60:	090080e7          	jalr	144(ra) # 80000cec <release>
    80006c64:	60e2                	ld	ra,24(sp)
    80006c66:	6442                	ld	s0,16(sp)
    80006c68:	64a2                	ld	s1,8(sp)
    80006c6a:	6105                	add	sp,sp,32
    80006c6c:	8082                	ret
    80006c6e:	00002517          	auipc	a0,0x2
    80006c72:	c6250513          	add	a0,a0,-926 # 800088d0 <syscalls+0x400>
    80006c76:	ffffa097          	auipc	ra,0xffffa
    80006c7a:	8ea080e7          	jalr	-1814(ra) # 80000560 <panic>
	...

0000000080007000 <_trampoline>:
    80007000:	14051073          	csrw	sscratch,a0
    80007004:	02000537          	lui	a0,0x2000
    80007008:	357d                	addw	a0,a0,-1 # 1ffffff <_entry-0x7e000001>
    8000700a:	0536                	sll	a0,a0,0xd
    8000700c:	02153423          	sd	ra,40(a0)
    80007010:	02253823          	sd	sp,48(a0)
    80007014:	02353c23          	sd	gp,56(a0)
    80007018:	04453023          	sd	tp,64(a0)
    8000701c:	04553423          	sd	t0,72(a0)
    80007020:	04653823          	sd	t1,80(a0)
    80007024:	04753c23          	sd	t2,88(a0)
    80007028:	f120                	sd	s0,96(a0)
    8000702a:	f524                	sd	s1,104(a0)
    8000702c:	fd2c                	sd	a1,120(a0)
    8000702e:	e150                	sd	a2,128(a0)
    80007030:	e554                	sd	a3,136(a0)
    80007032:	e958                	sd	a4,144(a0)
    80007034:	ed5c                	sd	a5,152(a0)
    80007036:	0b053023          	sd	a6,160(a0)
    8000703a:	0b153423          	sd	a7,168(a0)
    8000703e:	0b253823          	sd	s2,176(a0)
    80007042:	0b353c23          	sd	s3,184(a0)
    80007046:	0d453023          	sd	s4,192(a0)
    8000704a:	0d553423          	sd	s5,200(a0)
    8000704e:	0d653823          	sd	s6,208(a0)
    80007052:	0d753c23          	sd	s7,216(a0)
    80007056:	0f853023          	sd	s8,224(a0)
    8000705a:	0f953423          	sd	s9,232(a0)
    8000705e:	0fa53823          	sd	s10,240(a0)
    80007062:	0fb53c23          	sd	s11,248(a0)
    80007066:	11c53023          	sd	t3,256(a0)
    8000706a:	11d53423          	sd	t4,264(a0)
    8000706e:	11e53823          	sd	t5,272(a0)
    80007072:	11f53c23          	sd	t6,280(a0)
    80007076:	140022f3          	csrr	t0,sscratch
    8000707a:	06553823          	sd	t0,112(a0)
    8000707e:	00853103          	ld	sp,8(a0)
    80007082:	02053203          	ld	tp,32(a0)
    80007086:	01053283          	ld	t0,16(a0)
    8000708a:	00053303          	ld	t1,0(a0)
    8000708e:	12000073          	sfence.vma
    80007092:	18031073          	csrw	satp,t1
    80007096:	12000073          	sfence.vma
    8000709a:	8282                	jr	t0

000000008000709c <userret>:
    8000709c:	12000073          	sfence.vma
    800070a0:	18051073          	csrw	satp,a0
    800070a4:	12000073          	sfence.vma
    800070a8:	02000537          	lui	a0,0x2000
    800070ac:	357d                	addw	a0,a0,-1 # 1ffffff <_entry-0x7e000001>
    800070ae:	0536                	sll	a0,a0,0xd
    800070b0:	02853083          	ld	ra,40(a0)
    800070b4:	03053103          	ld	sp,48(a0)
    800070b8:	03853183          	ld	gp,56(a0)
    800070bc:	04053203          	ld	tp,64(a0)
    800070c0:	04853283          	ld	t0,72(a0)
    800070c4:	05053303          	ld	t1,80(a0)
    800070c8:	05853383          	ld	t2,88(a0)
    800070cc:	7120                	ld	s0,96(a0)
    800070ce:	7524                	ld	s1,104(a0)
    800070d0:	7d2c                	ld	a1,120(a0)
    800070d2:	6150                	ld	a2,128(a0)
    800070d4:	6554                	ld	a3,136(a0)
    800070d6:	6958                	ld	a4,144(a0)
    800070d8:	6d5c                	ld	a5,152(a0)
    800070da:	0a053803          	ld	a6,160(a0)
    800070de:	0a853883          	ld	a7,168(a0)
    800070e2:	0b053903          	ld	s2,176(a0)
    800070e6:	0b853983          	ld	s3,184(a0)
    800070ea:	0c053a03          	ld	s4,192(a0)
    800070ee:	0c853a83          	ld	s5,200(a0)
    800070f2:	0d053b03          	ld	s6,208(a0)
    800070f6:	0d853b83          	ld	s7,216(a0)
    800070fa:	0e053c03          	ld	s8,224(a0)
    800070fe:	0e853c83          	ld	s9,232(a0)
    80007102:	0f053d03          	ld	s10,240(a0)
    80007106:	0f853d83          	ld	s11,248(a0)
    8000710a:	10053e03          	ld	t3,256(a0)
    8000710e:	10853e83          	ld	t4,264(a0)
    80007112:	11053f03          	ld	t5,272(a0)
    80007116:	11853f83          	ld	t6,280(a0)
    8000711a:	7928                	ld	a0,112(a0)
    8000711c:	10200073          	sret
	...
