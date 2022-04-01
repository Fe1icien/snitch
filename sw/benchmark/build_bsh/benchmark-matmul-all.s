
/home/bsc22f7/scratch/snitch/sw/benchmark/build_bsh/benchmark-matmul-all:	file format elf32-littleriscv

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text             00002c7c 80000000 TEXT
  2 .init             00000468 80002c80 TEXT
  3 .rodata           000002f0 800030e8 DATA
  4 .tdata            00000000 800033d8 DATA
  5 .tbss             00000010 800033d8 BSS
  6 .tbssend          00000000 800033e8 DATA
  7 .sdata            000000c0 800033e8 DATA
  8 .data             00000000 800034a8 DATA
  9 .sbss             00000004 800034a8 BSS
 10 .bss              00000000 800034ac BSS
 11 .dram             00000000 800034ac DATA
 12 .debug_info       00003bbc 00000000 
 13 .debug_abbrev     00000d78 00000000 
 14 .debug_aranges    00000040 00000000 
 15 .debug_line       0000313d 00000000 
 16 .debug_loc        000034ed 00000000 
 17 .debug_str        00000dcf 00000000 
 18 .comment          000000bf 00000000 
 19 .riscv.attributes 00000037 00000000 
 20 .debug_frame      000003e0 00000000 
 21 .debug_ranges     000004b0 00000000 
 22 .symtab           00003a80 00000000 
 23 .shstrtab         000000e4 00000000 
 24 .strtab           000009bb 00000000 


Disassembly of section .text:

80000000 <__udivdi3>:
80000000: 13 01 01 fe  	addi	sp, sp, -32
80000004: 23 2e 11 00  	sw	ra, 28(sp)
80000008: 23 2a b1 00  	sw	a1, 20(sp)
8000000c: 23 28 a1 00  	sw	a0, 16(sp)
80000010: 23 26 d1 00  	sw	a3, 12(sp)
80000014: 23 24 c1 00  	sw	a2, 8(sp)
80000018: 83 25 41 01  	lw	a1, 20(sp)
8000001c: 03 25 01 01  	lw	a0, 16(sp)
80000020: 83 26 c1 00  	lw	a3, 12(sp)
80000024: 03 26 81 00  	lw	a2, 8(sp)
80000028: 97 00 00 00  	auipc	ra, 0
8000002c: e7 80 40 01  	jalr	20(ra)
80000030: 83 20 c1 01  	lw	ra, 28(sp)
80000034: 13 01 01 02  	addi	sp, sp, 32
80000038: 67 80 00 00  	ret

8000003c <__udivXi3>:
8000003c: 13 01 01 f8  	addi	sp, sp, -128
80000040: 23 2a b1 06  	sw	a1, 116(sp)
80000044: 23 28 a1 06  	sw	a0, 112(sp)
80000048: 23 26 d1 06  	sw	a3, 108(sp)
8000004c: 23 24 c1 06  	sw	a2, 104(sp)
80000050: 13 05 00 04  	addi	a0, zero, 64
80000054: 23 22 a1 06  	sw	a0, 100(sp)
80000058: 83 25 c1 06  	lw	a1, 108(sp)
8000005c: 03 25 81 06  	lw	a0, 104(sp)
80000060: 33 65 b5 00  	or	a0, a0, a1
80000064: 93 05 00 00  	mv	a1, zero
80000068: 63 08 b5 10  	beq	a0, a1, 0x80000178 <.LBB1_4>
8000006c: 6f 00 40 00  	j	0x80000070 <.LBB1_1>

80000070 <.LBB1_1>:
80000070: 83 25 81 06  	lw	a1, 104(sp)
80000074: 03 25 c1 06  	lw	a0, 108(sp)
80000078: 13 56 15 00  	srli	a2, a0, 1
8000007c: 33 66 c5 00  	or	a2, a0, a2
80000080: 93 56 26 00  	srli	a3, a2, 2
80000084: 33 66 d6 00  	or	a2, a2, a3
80000088: 93 56 46 00  	srli	a3, a2, 4
8000008c: 33 66 d6 00  	or	a2, a2, a3
80000090: 93 56 86 00  	srli	a3, a2, 8
80000094: 33 66 d6 00  	or	a2, a2, a3
80000098: 93 56 06 01  	srli	a3, a2, 16
8000009c: 33 66 d6 00  	or	a2, a2, a3
800000a0: 13 46 f6 ff  	not	a2, a2
800000a4: 93 56 16 00  	srli	a3, a2, 1
800000a8: 37 57 55 55  	lui	a4, 349525
800000ac: 93 08 57 55  	addi	a7, a4, 1365
800000b0: b3 f6 16 01  	and	a3, a3, a7
800000b4: b3 06 d6 40  	sub	a3, a2, a3
800000b8: 37 36 33 33  	lui	a2, 209715
800000bc: 13 08 36 33  	addi	a6, a2, 819
800000c0: 33 f6 06 01  	and	a2, a3, a6
800000c4: 93 d6 26 00  	srli	a3, a3, 2
800000c8: b3 f6 06 01  	and	a3, a3, a6
800000cc: 33 06 d6 00  	add	a2, a2, a3
800000d0: 93 56 46 00  	srli	a3, a2, 4
800000d4: 33 06 d6 00  	add	a2, a2, a3
800000d8: b7 16 0f 0f  	lui	a3, 61681
800000dc: 13 87 f6 f0  	addi	a4, a3, -241
800000e0: 33 76 e6 00  	and	a2, a2, a4
800000e4: b7 06 01 01  	lui	a3, 4112
800000e8: 93 86 16 10  	addi	a3, a3, 257
800000ec: 33 06 d6 02  	mul	a2, a2, a3
800000f0: 13 56 86 01  	srli	a2, a2, 24
800000f4: 93 d7 15 00  	srli	a5, a1, 1
800000f8: b3 e5 f5 00  	or	a1, a1, a5
800000fc: 93 d7 25 00  	srli	a5, a1, 2
80000100: b3 e5 f5 00  	or	a1, a1, a5
80000104: 93 d7 45 00  	srli	a5, a1, 4
80000108: b3 e5 f5 00  	or	a1, a1, a5
8000010c: 93 d7 85 00  	srli	a5, a1, 8
80000110: b3 e5 f5 00  	or	a1, a1, a5
80000114: 93 d7 05 01  	srli	a5, a1, 16
80000118: b3 e5 f5 00  	or	a1, a1, a5
8000011c: 93 c5 f5 ff  	not	a1, a1
80000120: 93 d7 15 00  	srli	a5, a1, 1
80000124: b3 f7 17 01  	and	a5, a5, a7
80000128: b3 87 f5 40  	sub	a5, a1, a5
8000012c: b3 f5 07 01  	and	a1, a5, a6
80000130: 93 d7 27 00  	srli	a5, a5, 2
80000134: b3 f7 07 01  	and	a5, a5, a6
80000138: b3 85 f5 00  	add	a1, a1, a5
8000013c: 93 d7 45 00  	srli	a5, a1, 4
80000140: b3 85 f5 00  	add	a1, a1, a5
80000144: b3 f5 e5 00  	and	a1, a1, a4
80000148: b3 85 d5 02  	mul	a1, a1, a3
8000014c: 93 d5 85 01  	srli	a1, a1, 24
80000150: 93 85 05 02  	addi	a1, a1, 32
80000154: 23 20 b1 04  	sw	a1, 64(sp)
80000158: 93 05 00 00  	mv	a1, zero
8000015c: 23 22 c1 04  	sw	a2, 68(sp)
80000160: 63 16 b5 00  	bne	a0, a1, 0x8000016c <.LBB1_3>
80000164: 03 25 01 04  	lw	a0, 64(sp)
80000168: 23 22 a1 04  	sw	a0, 68(sp)

8000016c <.LBB1_3>:
8000016c: 03 25 41 04  	lw	a0, 68(sp)
80000170: 23 2e a1 02  	sw	a0, 60(sp)
80000174: 6f 00 00 01  	j	0x80000184 <.LBB1_5>

80000178 <.LBB1_4>:
80000178: 13 05 00 04  	addi	a0, zero, 64
8000017c: 23 2e a1 02  	sw	a0, 60(sp)
80000180: 6f 00 40 00  	j	0x80000184 <.LBB1_5>

80000184 <.LBB1_5>:
80000184: 03 25 c1 03  	lw	a0, 60(sp)
80000188: 23 2c a1 02  	sw	a0, 56(sp)
8000018c: 83 25 41 07  	lw	a1, 116(sp)
80000190: 03 25 01 07  	lw	a0, 112(sp)
80000194: 33 65 b5 00  	or	a0, a0, a1
80000198: 93 05 00 00  	mv	a1, zero
8000019c: 63 08 b5 10  	beq	a0, a1, 0x800002ac <.LBB1_9>
800001a0: 6f 00 40 00  	j	0x800001a4 <.LBB1_6>

800001a4 <.LBB1_6>:
800001a4: 83 25 01 07  	lw	a1, 112(sp)
800001a8: 03 25 41 07  	lw	a0, 116(sp)
800001ac: 13 56 15 00  	srli	a2, a0, 1
800001b0: 33 66 c5 00  	or	a2, a0, a2
800001b4: 93 56 26 00  	srli	a3, a2, 2
800001b8: 33 66 d6 00  	or	a2, a2, a3
800001bc: 93 56 46 00  	srli	a3, a2, 4
800001c0: 33 66 d6 00  	or	a2, a2, a3
800001c4: 93 56 86 00  	srli	a3, a2, 8
800001c8: 33 66 d6 00  	or	a2, a2, a3
800001cc: 93 56 06 01  	srli	a3, a2, 16
800001d0: 33 66 d6 00  	or	a2, a2, a3
800001d4: 13 46 f6 ff  	not	a2, a2
800001d8: 93 56 16 00  	srli	a3, a2, 1
800001dc: 37 57 55 55  	lui	a4, 349525
800001e0: 93 08 57 55  	addi	a7, a4, 1365
800001e4: b3 f6 16 01  	and	a3, a3, a7
800001e8: b3 06 d6 40  	sub	a3, a2, a3
800001ec: 37 36 33 33  	lui	a2, 209715
800001f0: 13 08 36 33  	addi	a6, a2, 819
800001f4: 33 f6 06 01  	and	a2, a3, a6
800001f8: 93 d6 26 00  	srli	a3, a3, 2
800001fc: b3 f6 06 01  	and	a3, a3, a6
80000200: 33 06 d6 00  	add	a2, a2, a3
80000204: 93 56 46 00  	srli	a3, a2, 4
80000208: 33 06 d6 00  	add	a2, a2, a3
8000020c: b7 16 0f 0f  	lui	a3, 61681
80000210: 13 87 f6 f0  	addi	a4, a3, -241
80000214: 33 76 e6 00  	and	a2, a2, a4
80000218: b7 06 01 01  	lui	a3, 4112
8000021c: 93 86 16 10  	addi	a3, a3, 257
80000220: 33 06 d6 02  	mul	a2, a2, a3
80000224: 13 56 86 01  	srli	a2, a2, 24
80000228: 93 d7 15 00  	srli	a5, a1, 1
8000022c: b3 e5 f5 00  	or	a1, a1, a5
80000230: 93 d7 25 00  	srli	a5, a1, 2
80000234: b3 e5 f5 00  	or	a1, a1, a5
80000238: 93 d7 45 00  	srli	a5, a1, 4
8000023c: b3 e5 f5 00  	or	a1, a1, a5
80000240: 93 d7 85 00  	srli	a5, a1, 8
80000244: b3 e5 f5 00  	or	a1, a1, a5
80000248: 93 d7 05 01  	srli	a5, a1, 16
8000024c: b3 e5 f5 00  	or	a1, a1, a5
80000250: 93 c5 f5 ff  	not	a1, a1
80000254: 93 d7 15 00  	srli	a5, a1, 1
80000258: b3 f7 17 01  	and	a5, a5, a7
8000025c: b3 87 f5 40  	sub	a5, a1, a5
80000260: b3 f5 07 01  	and	a1, a5, a6
80000264: 93 d7 27 00  	srli	a5, a5, 2
80000268: b3 f7 07 01  	and	a5, a5, a6
8000026c: b3 85 f5 00  	add	a1, a1, a5
80000270: 93 d7 45 00  	srli	a5, a1, 4
80000274: b3 85 f5 00  	add	a1, a1, a5
80000278: b3 f5 e5 00  	and	a1, a1, a4
8000027c: b3 85 d5 02  	mul	a1, a1, a3
80000280: 93 d5 85 01  	srli	a1, a1, 24
80000284: 93 85 05 02  	addi	a1, a1, 32
80000288: 23 28 b1 02  	sw	a1, 48(sp)
8000028c: 93 05 00 00  	mv	a1, zero
80000290: 23 2a c1 02  	sw	a2, 52(sp)
80000294: 63 16 b5 00  	bne	a0, a1, 0x800002a0 <.LBB1_8>
80000298: 03 25 01 03  	lw	a0, 48(sp)
8000029c: 23 2a a1 02  	sw	a0, 52(sp)

800002a0 <.LBB1_8>:
800002a0: 03 25 41 03  	lw	a0, 52(sp)
800002a4: 23 26 a1 02  	sw	a0, 44(sp)
800002a8: 6f 00 00 01  	j	0x800002b8 <.LBB1_10>

800002ac <.LBB1_9>:
800002ac: 13 05 00 04  	addi	a0, zero, 64
800002b0: 23 26 a1 02  	sw	a0, 44(sp)
800002b4: 6f 00 40 00  	j	0x800002b8 <.LBB1_10>

800002b8 <.LBB1_10>:
800002b8: 03 25 81 03  	lw	a0, 56(sp)
800002bc: 83 25 c1 02  	lw	a1, 44(sp)
800002c0: 33 05 b5 40  	sub	a0, a0, a1
800002c4: 23 20 a1 06  	sw	a0, 96(sp)
800002c8: 03 25 01 06  	lw	a0, 96(sp)
800002cc: 93 05 00 04  	addi	a1, zero, 64
800002d0: 63 6c b5 00  	bltu	a0, a1, 0x800002e8 <.LBB1_12>
800002d4: 6f 00 40 00  	j	0x800002d8 <.LBB1_11>

800002d8 <.LBB1_11>:
800002d8: 13 05 00 00  	mv	a0, zero
800002dc: 23 2e a1 06  	sw	a0, 124(sp)
800002e0: 23 2c a1 06  	sw	a0, 120(sp)
800002e4: 6f 00 40 26  	j	0x80000548 <.LBB1_23>

800002e8 <.LBB1_12>:
800002e8: 03 25 01 06  	lw	a0, 96(sp)
800002ec: 93 05 f0 03  	addi	a1, zero, 63
800002f0: 63 1e b5 00  	bne	a0, a1, 0x8000030c <.LBB1_14>
800002f4: 6f 00 40 00  	j	0x800002f8 <.LBB1_13>

800002f8 <.LBB1_13>:
800002f8: 03 25 01 07  	lw	a0, 112(sp)
800002fc: 83 25 41 07  	lw	a1, 116(sp)
80000300: 23 2e b1 06  	sw	a1, 124(sp)
80000304: 23 2c a1 06  	sw	a0, 120(sp)
80000308: 6f 00 00 24  	j	0x80000548 <.LBB1_23>

8000030c <.LBB1_14>:
8000030c: 03 25 01 06  	lw	a0, 96(sp)
80000310: 13 05 15 00  	addi	a0, a0, 1
80000314: 23 20 a1 06  	sw	a0, 96(sp)
80000318: 03 26 41 07  	lw	a2, 116(sp)
8000031c: 03 25 01 07  	lw	a0, 112(sp)
80000320: 03 27 01 06  	lw	a4, 96(sp)
80000324: 33 55 e5 00  	srl	a0, a0, a4
80000328: 93 05 f0 01  	addi	a1, zero, 31
8000032c: 23 2c b1 00  	sw	a1, 24(sp)
80000330: b3 86 e5 40  	sub	a3, a1, a4
80000334: 93 15 16 00  	slli	a1, a2, 1
80000338: b3 95 d5 00  	sll	a1, a1, a3
8000033c: b3 66 b5 00  	or	a3, a0, a1
80000340: 13 05 07 fe  	addi	a0, a4, -32
80000344: b3 55 a6 00  	srl	a1, a2, a0
80000348: 23 2e b1 00  	sw	a1, 28(sp)
8000034c: 93 05 00 00  	mv	a1, zero
80000350: 23 20 b1 02  	sw	a1, 32(sp)
80000354: 33 56 e6 00  	srl	a2, a2, a4
80000358: 23 22 d1 02  	sw	a3, 36(sp)
8000035c: 23 24 c1 02  	sw	a2, 40(sp)
80000360: 63 4a b5 00  	blt	a0, a1, 0x80000374 <.LBB1_16>
80000364: 03 25 01 02  	lw	a0, 32(sp)
80000368: 83 25 c1 01  	lw	a1, 28(sp)
8000036c: 23 22 b1 02  	sw	a1, 36(sp)
80000370: 23 24 a1 02  	sw	a0, 40(sp)

80000374 <.LBB1_16>:
80000374: 83 25 01 02  	lw	a1, 32(sp)
80000378: 83 26 81 01  	lw	a3, 24(sp)
8000037c: 03 25 41 02  	lw	a0, 36(sp)
80000380: 03 26 81 02  	lw	a2, 40(sp)
80000384: 23 2e c1 04  	sw	a2, 92(sp)
80000388: 23 2c a1 04  	sw	a0, 88(sp)
8000038c: 83 27 01 06  	lw	a5, 96(sp)
80000390: 13 05 00 04  	addi	a0, zero, 64
80000394: 33 07 f5 40  	sub	a4, a0, a5
80000398: 03 26 01 07  	lw	a2, 112(sp)
8000039c: 03 25 41 07  	lw	a0, 116(sp)
800003a0: 33 15 e5 00  	sll	a0, a0, a4
800003a4: 33 88 e6 40  	sub	a6, a3, a4
800003a8: 93 56 16 00  	srli	a3, a2, 1
800003ac: b3 d6 06 01  	srl	a3, a3, a6
800003b0: b3 66 d5 00  	or	a3, a0, a3
800003b4: 13 05 00 02  	addi	a0, zero, 32
800003b8: 33 05 f5 40  	sub	a0, a0, a5
800003bc: b3 17 a6 00  	sll	a5, a2, a0
800003c0: 23 26 f1 00  	sw	a5, 12(sp)
800003c4: 33 16 e6 00  	sll	a2, a2, a4
800003c8: 23 28 d1 00  	sw	a3, 16(sp)
800003cc: 23 2a c1 00  	sw	a2, 20(sp)
800003d0: 63 4a b5 00  	blt	a0, a1, 0x800003e4 <.LBB1_18>
800003d4: 03 25 01 02  	lw	a0, 32(sp)
800003d8: 83 25 c1 00  	lw	a1, 12(sp)
800003dc: 23 28 b1 00  	sw	a1, 16(sp)
800003e0: 23 2a a1 00  	sw	a0, 20(sp)

800003e4 <.LBB1_18>:
800003e4: 03 25 01 02  	lw	a0, 32(sp)
800003e8: 83 25 01 01  	lw	a1, 16(sp)
800003ec: 03 26 41 01  	lw	a2, 20(sp)
800003f0: 23 28 c1 06  	sw	a2, 112(sp)
800003f4: 23 2a b1 06  	sw	a1, 116(sp)
800003f8: 23 2a a1 04  	sw	a0, 84(sp)
800003fc: 23 28 a1 04  	sw	a0, 80(sp)
80000400: 6f 00 40 00  	j	0x80000404 <.LBB1_19>

80000404 <.LBB1_19>:
80000404: 03 25 01 06  	lw	a0, 96(sp)
80000408: 93 05 00 00  	mv	a1, zero
8000040c: 63 0c b5 0e  	beq	a0, a1, 0x80000504 <.LBB1_22>
80000410: 6f 00 40 00  	j	0x80000414 <.LBB1_20>

80000414 <.LBB1_20>:
80000414: 83 25 c1 05  	lw	a1, 92(sp)
80000418: 03 25 81 05  	lw	a0, 88(sp)
8000041c: 13 56 f5 01  	srli	a2, a0, 31
80000420: 93 95 15 00  	slli	a1, a1, 1
80000424: b3 e5 c5 00  	or	a1, a1, a2
80000428: 13 15 15 00  	slli	a0, a0, 1
8000042c: 03 26 41 07  	lw	a2, 116(sp)
80000430: 13 56 f6 01  	srli	a2, a2, 31
80000434: 33 65 c5 00  	or	a0, a0, a2
80000438: 23 2e b1 04  	sw	a1, 92(sp)
8000043c: 23 2c a1 04  	sw	a0, 88(sp)
80000440: 03 25 41 07  	lw	a0, 116(sp)
80000444: 83 25 01 07  	lw	a1, 112(sp)
80000448: 13 d6 f5 01  	srli	a2, a1, 31
8000044c: 13 15 15 00  	slli	a0, a0, 1
80000450: 33 65 c5 00  	or	a0, a0, a2
80000454: 93 95 15 00  	slli	a1, a1, 1
80000458: 03 26 01 05  	lw	a2, 80(sp)
8000045c: 83 26 41 05  	lw	a3, 84(sp)
80000460: 33 65 d5 00  	or	a0, a0, a3
80000464: b3 e5 c5 00  	or	a1, a1, a2
80000468: 23 28 b1 06  	sw	a1, 112(sp)
8000046c: 23 2a a1 06  	sw	a0, 116(sp)
80000470: 83 25 81 06  	lw	a1, 104(sp)
80000474: 83 26 c1 06  	lw	a3, 108(sp)
80000478: 03 26 81 05  	lw	a2, 88(sp)
8000047c: 03 25 c1 05  	lw	a0, 92(sp)
80000480: 13 45 f5 ff  	not	a0, a0
80000484: 33 05 d5 00  	add	a0, a0, a3
80000488: 13 46 f6 ff  	not	a2, a2
8000048c: b3 05 b6 00  	add	a1, a2, a1
80000490: b3 b5 c5 00  	sltu	a1, a1, a2
80000494: 33 05 b5 00  	add	a0, a0, a1
80000498: 13 55 f5 41  	srai	a0, a0, 31
8000049c: 23 26 a1 04  	sw	a0, 76(sp)
800004a0: 23 24 a1 04  	sw	a0, 72(sp)
800004a4: 03 25 81 04  	lw	a0, 72(sp)
800004a8: 13 75 15 00  	andi	a0, a0, 1
800004ac: 93 05 00 00  	mv	a1, zero
800004b0: 23 2a b1 04  	sw	a1, 84(sp)
800004b4: 23 28 a1 04  	sw	a0, 80(sp)
800004b8: 03 25 81 06  	lw	a0, 104(sp)
800004bc: 03 26 c1 06  	lw	a2, 108(sp)
800004c0: 83 25 81 04  	lw	a1, 72(sp)
800004c4: 83 26 c1 04  	lw	a3, 76(sp)
800004c8: 33 77 d6 00  	and	a4, a2, a3
800004cc: 33 76 b5 00  	and	a2, a0, a1
800004d0: 03 25 c1 05  	lw	a0, 92(sp)
800004d4: 83 25 81 05  	lw	a1, 88(sp)
800004d8: b3 b6 c5 00  	sltu	a3, a1, a2
800004dc: 33 05 e5 40  	sub	a0, a0, a4
800004e0: 33 05 d5 40  	sub	a0, a0, a3
800004e4: b3 85 c5 40  	sub	a1, a1, a2
800004e8: 23 2c b1 04  	sw	a1, 88(sp)
800004ec: 23 2e a1 04  	sw	a0, 92(sp)
800004f0: 6f 00 40 00  	j	0x800004f4 <.LBB1_21>

800004f4 <.LBB1_21>:
800004f4: 03 25 01 06  	lw	a0, 96(sp)
800004f8: 13 05 f5 ff  	addi	a0, a0, -1
800004fc: 23 20 a1 06  	sw	a0, 96(sp)
80000500: 6f f0 5f f0  	j	0x80000404 <.LBB1_19>

80000504 <.LBB1_22>:
80000504: 03 25 41 07  	lw	a0, 116(sp)
80000508: 83 25 01 07  	lw	a1, 112(sp)
8000050c: 13 d6 f5 01  	srli	a2, a1, 31
80000510: 13 15 15 00  	slli	a0, a0, 1
80000514: 33 65 c5 00  	or	a0, a0, a2
80000518: 93 95 15 00  	slli	a1, a1, 1
8000051c: 03 26 01 05  	lw	a2, 80(sp)
80000520: 83 26 41 05  	lw	a3, 84(sp)
80000524: 33 65 d5 00  	or	a0, a0, a3
80000528: b3 e5 c5 00  	or	a1, a1, a2
8000052c: 23 28 b1 06  	sw	a1, 112(sp)
80000530: 23 2a a1 06  	sw	a0, 116(sp)
80000534: 03 25 01 07  	lw	a0, 112(sp)
80000538: 83 25 41 07  	lw	a1, 116(sp)
8000053c: 23 2e b1 06  	sw	a1, 124(sp)
80000540: 23 2c a1 06  	sw	a0, 120(sp)
80000544: 6f 00 40 00  	j	0x80000548 <.LBB1_23>

80000548 <.LBB1_23>:
80000548: 03 25 81 07  	lw	a0, 120(sp)
8000054c: 83 25 c1 07  	lw	a1, 124(sp)
80000550: 13 01 01 08  	addi	sp, sp, 128
80000554: 67 80 00 00  	ret

80000558 <memset>:
80000558: 13 03 f0 00  	addi	t1, zero, 15
8000055c: 13 07 05 00  	mv	a4, a0
80000560: 63 7e c3 02  	bgeu	t1, a2, 0x8000059c <.Ltiny>
80000564: 93 77 f7 00  	andi	a5, a4, 15
80000568: 63 90 07 0a  	bnez	a5, 0x80000608 <.Lmisaligned>

8000056c <.Laligned>:
8000056c: 63 92 05 08  	bnez	a1, 0x800005f0 <.Lwordify>

80000570 <.Lwordified>:
80000570: 93 76 06 ff  	andi	a3, a2, -16
80000574: 13 76 f6 00  	andi	a2, a2, 15
80000578: b3 86 e6 00  	add	a3, a3, a4

8000057c <.Ltmp0>:
8000057c: 23 20 b7 00  	sw	a1, 0(a4)
80000580: 23 22 b7 00  	sw	a1, 4(a4)
80000584: 23 24 b7 00  	sw	a1, 8(a4)
80000588: 23 26 b7 00  	sw	a1, 12(a4)
8000058c: 13 07 07 01  	addi	a4, a4, 16
80000590: e3 66 d7 fe  	bltu	a4, a3, 0x8000057c <.Ltmp0>
80000594: 63 14 06 00  	bnez	a2, 0x8000059c <.Ltiny>
80000598: 67 80 00 00  	ret

8000059c <.Ltiny>:
8000059c: b3 06 c3 40  	sub	a3, t1, a2
800005a0: 93 96 26 00  	slli	a3, a3, 2

800005a4 <.Ltmp1>:
800005a4: 97 02 00 00  	auipc	t0, 0
800005a8: b3 86 56 00  	add	a3, a3, t0

800005ac <.Ltable_misaligned>:
800005ac: 67 80 c6 00  	jr	12(a3)

800005b0 <.Ltable>:
800005b0: 23 07 b7 00  	sb	a1, 14(a4)
800005b4: a3 06 b7 00  	sb	a1, 13(a4)
800005b8: 23 06 b7 00  	sb	a1, 12(a4)
800005bc: a3 05 b7 00  	sb	a1, 11(a4)
800005c0: 23 05 b7 00  	sb	a1, 10(a4)
800005c4: a3 04 b7 00  	sb	a1, 9(a4)
800005c8: 23 04 b7 00  	sb	a1, 8(a4)
800005cc: a3 03 b7 00  	sb	a1, 7(a4)
800005d0: 23 03 b7 00  	sb	a1, 6(a4)
800005d4: a3 02 b7 00  	sb	a1, 5(a4)
800005d8: 23 02 b7 00  	sb	a1, 4(a4)
800005dc: a3 01 b7 00  	sb	a1, 3(a4)
800005e0: 23 01 b7 00  	sb	a1, 2(a4)
800005e4: a3 00 b7 00  	sb	a1, 1(a4)
800005e8: 23 00 b7 00  	sb	a1, 0(a4)
800005ec: 67 80 00 00  	ret

800005f0 <.Lwordify>:
800005f0: 93 f5 f5 0f  	andi	a1, a1, 255
800005f4: 93 96 85 00  	slli	a3, a1, 8
800005f8: b3 e5 d5 00  	or	a1, a1, a3
800005fc: 93 96 05 01  	slli	a3, a1, 16
80000600: b3 e5 d5 00  	or	a1, a1, a3
80000604: 6f f0 df f6  	j	0x80000570 <.Lwordified>

80000608 <.Lmisaligned>:
80000608: 93 96 27 00  	slli	a3, a5, 2

8000060c <.Ltmp2>:
8000060c: 97 02 00 00  	auipc	t0, 0
80000610: b3 86 56 00  	add	a3, a3, t0
80000614: 93 82 00 00  	mv	t0, ra
80000618: e7 80 06 fa  	jalr	-96(a3)
8000061c: 93 80 02 00  	mv	ra, t0
80000620: 93 87 07 ff  	addi	a5, a5, -16
80000624: 33 07 f7 40  	sub	a4, a4, a5
80000628: 33 06 f6 00  	add	a2, a2, a5
8000062c: e3 78 c3 f6  	bgeu	t1, a2, 0x8000059c <.Ltiny>
80000630: 6f f0 df f3  	j	0x8000056c <.Laligned>

80000634 <main>:
; int main() {
80000634: 13 01 01 fc  	addi	sp, sp, -64
;     gemm_result_t result_baseline = gemm_bench(gemm_seq_baseline);
80000638: 23 2e 11 02  	sw	ra, 60(sp)
8000063c: 23 2c 81 02  	sw	s0, 56(sp)
80000640: 23 2a 91 02  	sw	s1, 52(sp)

80000644 <.LBB0_10>:
80000644: 97 25 00 00  	auipc	a1, 2
80000648: 93 85 05 00  	mv	a1, a1
8000064c: 13 05 81 02  	addi	a0, sp, 40
80000650: 97 20 00 00  	auipc	ra, 2
80000654: e7 80 80 d2  	jalr	-728(ra)
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000658: 37 05 00 00  	lui	a0, 0
8000065c: b3 04 45 00  	add	s1, a0, tp
80000660: 03 a5 04 00  	lw	a0, 0(s1)
80000664: 03 25 05 00  	lw	a0, 0(a0)
80000668: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
8000066c: 73 24 40 f1  	csrr	s0, mhartid
;     if (snrt_global_core_idx() == 0) {
80000670: 63 1c a4 00  	bne	s0, a0, 0x80000688 <.LBB0_12>
;         printf("Cycles (Baseline): %u\n", result_baseline.cycles_total);
80000674: 83 25 01 03  	lw	a1, 48(sp)

80000678 <.LBB0_11>:
80000678: 17 35 00 00  	auipc	a0, 3
8000067c: 13 05 c5 b1  	addi	a0, a0, -1252
80000680: 97 00 00 00  	auipc	ra, 0
80000684: e7 80 00 0c  	jalr	192(ra)

80000688 <.LBB0_12>:
;     gemm_result_t result_ssr = gemm_bench(gemm_seq_ssr);
80000688: 97 25 00 00  	auipc	a1, 2
8000068c: 93 85 05 13  	addi	a1, a1, 304
80000690: 13 05 81 01  	addi	a0, sp, 24
80000694: 97 20 00 00  	auipc	ra, 2
80000698: e7 80 40 ce  	jalr	-796(ra)
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
8000069c: 03 a5 04 00  	lw	a0, 0(s1)
800006a0: 03 25 05 00  	lw	a0, 0(a0)
800006a4: 03 25 85 00  	lw	a0, 8(a0)
;     if (snrt_global_core_idx() == 0) {
800006a8: 63 1c a4 00  	bne	s0, a0, 0x800006c0 <.LBB0_14>
;         printf("Cycles (SSR):      %u\n", result_ssr.cycles_total);
800006ac: 83 25 01 02  	lw	a1, 32(sp)

800006b0 <.LBB0_13>:
800006b0: 17 35 00 00  	auipc	a0, 3
800006b4: 13 05 b5 af  	addi	a0, a0, -1285
800006b8: 97 00 00 00  	auipc	ra, 0
800006bc: e7 80 80 08  	jalr	136(ra)

800006c0 <.LBB0_14>:
;     gemm_result_t result_ssr_frep = gemm_bench(gemm_seq_ssr_frep);
800006c0: 97 25 00 00  	auipc	a1, 2
800006c4: 93 85 05 25  	addi	a1, a1, 592
800006c8: 13 05 81 00  	addi	a0, sp, 8
800006cc: 97 20 00 00  	auipc	ra, 2
800006d0: e7 80 c0 ca  	jalr	-852(ra)
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
800006d4: 37 05 00 00  	lui	a0, 0
800006d8: b3 04 45 00  	add	s1, a0, tp
800006dc: 03 a5 04 00  	lw	a0, 0(s1)
800006e0: 03 25 05 00  	lw	a0, 0(a0)
800006e4: 03 25 85 00  	lw	a0, 8(a0)
;     if (snrt_global_core_idx() == 0) {
800006e8: 63 12 a4 02  	bne	s0, a0, 0x8000070c <.LBB0_15+0x1c>
;         printf("Cycles (SSR+FREP): %u\n", result_ssr_frep.cycles_total);
800006ec: 83 25 01 01  	lw	a1, 16(sp)

800006f0 <.LBB0_15>:
800006f0: 17 35 00 00  	auipc	a0, 3
800006f4: 13 05 85 a8  	addi	a0, a0, -1400
800006f8: 97 00 00 00  	auipc	ra, 0
800006fc: e7 80 80 04  	jalr	72(ra)
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80000700: 03 a5 04 00  	lw	a0, 0(s1)
80000704: 03 25 05 00  	lw	a0, 0(a0)
80000708: 03 25 85 00  	lw	a0, 8(a0)
;     if (snrt_global_core_idx() == 0) {
8000070c: 63 1e a4 00  	bne	s0, a0, 0x80000728 <.LBB0_15+0x38>
;             result_baseline.errors + result_ssr.errors + result_ssr_frep.errors;
80000710: 03 25 81 02  	lw	a0, 40(sp)
80000714: 83 25 81 01  	lw	a1, 24(sp)
80000718: 03 26 81 00  	lw	a2, 8(sp)
8000071c: 33 85 a5 00  	add	a0, a1, a0
80000720: 33 05 c5 00  	add	a0, a0, a2
80000724: 6f 00 80 00  	j	0x8000072c <.LBB0_15+0x3c>
80000728: 13 05 00 00  	mv	a0, zero
; }
8000072c: 83 24 41 03  	lw	s1, 52(sp)
80000730: 03 24 81 03  	lw	s0, 56(sp)
80000734: 83 20 c1 03  	lw	ra, 60(sp)
80000738: 13 01 01 04  	addi	sp, sp, 64
8000073c: 67 80 00 00  	ret

80000740 <printf_>:
; {
80000740: 13 01 01 fd  	addi	sp, sp, -48
80000744: 23 26 11 00  	sw	ra, 12(sp)
80000748: 93 02 05 00  	mv	t0, a0
8000074c: 23 26 11 03  	sw	a7, 44(sp)
80000750: 23 24 01 03  	sw	a6, 40(sp)
80000754: 23 22 f1 02  	sw	a5, 36(sp)
80000758: 23 20 e1 02  	sw	a4, 32(sp)
8000075c: 23 2e d1 00  	sw	a3, 28(sp)
80000760: 23 2c c1 00  	sw	a2, 24(sp)
80000764: 23 2a b1 00  	sw	a1, 20(sp)
80000768: 13 05 41 01  	addi	a0, sp, 20
;   va_start(va, format);
8000076c: 23 24 a1 00  	sw	a0, 8(sp)

80000770 <.LBB0_1>:
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
80000770: 17 15 00 00  	auipc	a0, 1
80000774: 13 05 c5 c5  	addi	a0, a0, -932
80000778: 93 05 71 00  	addi	a1, sp, 7
8000077c: 13 06 f0 ff  	addi	a2, zero, -1
80000780: 13 07 41 01  	addi	a4, sp, 20
80000784: 93 86 02 00  	mv	a3, t0
80000788: 97 00 00 00  	auipc	ra, 0
8000078c: e7 80 40 01  	jalr	20(ra)
;   return ret;
80000790: 83 20 c1 00  	lw	ra, 12(sp)
80000794: 13 01 01 03  	addi	sp, sp, 48
80000798: 67 80 00 00  	ret

8000079c <_vsnprintf.llvm.2703457791718675039>:
; {
8000079c: 13 01 01 f9  	addi	sp, sp, -112
800007a0: 23 26 11 06  	sw	ra, 108(sp)
800007a4: 23 24 81 06  	sw	s0, 104(sp)
800007a8: 23 22 91 06  	sw	s1, 100(sp)
800007ac: 23 20 21 07  	sw	s2, 96(sp)
800007b0: 23 2e 31 05  	sw	s3, 92(sp)
800007b4: 23 2c 41 05  	sw	s4, 88(sp)
800007b8: 23 2a 51 05  	sw	s5, 84(sp)
800007bc: 23 28 61 05  	sw	s6, 80(sp)
800007c0: 23 26 71 05  	sw	s7, 76(sp)
800007c4: 23 24 81 05  	sw	s8, 72(sp)
800007c8: 23 22 91 05  	sw	s9, 68(sp)
800007cc: 23 20 a1 05  	sw	s10, 64(sp)
800007d0: 23 2e b1 03  	sw	s11, 60(sp)
800007d4: 93 09 07 00  	mv	s3, a4
800007d8: 13 84 06 00  	mv	s0, a3
800007dc: 93 0a 06 00  	mv	s5, a2
800007e0: 13 8a 05 00  	mv	s4, a1
;   if (!buffer) {
800007e4: 63 86 05 00  	beqz	a1, 0x800007f0 <.LBB1_182>
800007e8: 13 09 05 00  	mv	s2, a0
800007ec: 6f 00 c0 00  	j	0x800007f8 <.LBB1_182+0x8>

800007f0 <.LBB1_182>:
800007f0: 17 19 00 00  	auipc	s2, 1
800007f4: 13 09 c9 be  	addi	s2, s2, -1044
800007f8: 13 0c 00 00  	mv	s8, zero
800007fc: 13 0b 50 02  	addi	s6, zero, 37
80000800: 93 0d 00 01  	addi	s11, zero, 16
80000804: 93 0b e0 02  	addi	s7, zero, 46
80000808: 37 15 00 00  	lui	a0, 1
8000080c: 13 05 05 80  	addi	a0, a0, -2048
80000810: 23 2c a1 00  	sw	a0, 24(sp)
80000814: 37 05 01 00  	lui	a0, 16
80000818: 13 05 f5 ff  	addi	a0, a0, -1
8000081c: 23 28 a1 00  	sw	a0, 16(sp)
;   while (*format)
80000820: 13 0d 24 00  	addi	s10, s0, 2
80000824: 93 0c 0c 00  	mv	s9, s8
80000828: 13 0c a0 00  	addi	s8, zero, 10
;   while (*format)
8000082c: 03 45 04 00  	lbu	a0, 0(s0)
80000830: e3 00 05 34  	beqz	a0, 0x80001370 <.LBB1_124+0x3e8>
80000834: 63 08 65 03  	beq	a0, s6, 0x80000864 <.LBB1_182+0x74>
;       out(*format, buffer, idx++, maxlen);
80000838: 93 84 1c 00  	addi	s1, s9, 1
8000083c: 93 05 0a 00  	mv	a1, s4
80000840: 13 86 0c 00  	mv	a2, s9
80000844: 93 86 0a 00  	mv	a3, s5
80000848: e7 00 09 00  	jalr	s2
;       format++;
8000084c: 13 04 14 00  	addi	s0, s0, 1
;       continue;
80000850: 13 0d 1d 00  	addi	s10, s10, 1
80000854: 93 8c 04 00  	mv	s9, s1
;   while (*format)
80000858: 03 45 04 00  	lbu	a0, 0(s0)
8000085c: e3 1c 05 fc  	bnez	a0, 0x80000834 <.LBB1_182+0x44>
80000860: 6f 00 10 31  	j	0x80001370 <.LBB1_124+0x3e8>
;     flags = 0U;
80000864: 13 04 00 00  	mv	s0, zero
80000868: 6f 00 00 01  	j	0x80000878 <.LBB1_9+0x8>

8000086c <.LBB1_8>:
8000086c: 93 05 00 01  	addi	a1, zero, 16

80000870 <.LBB1_9>:
80000870: 33 64 b4 00  	or	s0, s0, a1
;     } while (n);
80000874: 13 0d 1d 00  	addi	s10, s10, 1
;       switch (*format) {
80000878: 03 45 fd ff  	lbu	a0, -1(s10)
8000087c: 93 05 05 fe  	addi	a1, a0, -32
80000880: 63 ec bd 02  	bltu	s11, a1, 0x800008b8 <.LBB1_15>
80000884: 93 95 25 00  	slli	a1, a1, 2

80000888 <.LBB1_183>:
80000888: 17 36 00 00  	auipc	a2, 3
8000088c: 13 06 06 94  	addi	a2, a2, -1728
80000890: b3 85 c5 00  	add	a1, a1, a2
80000894: 03 a6 05 00  	lw	a2, 0(a1)
80000898: 93 05 10 00  	addi	a1, zero, 1
8000089c: 67 00 06 00  	jr	a2

800008a0 <.LBB1_12>:
800008a0: 93 05 80 00  	addi	a1, zero, 8
800008a4: 6f f0 df fc  	j	0x80000870 <.LBB1_9>

800008a8 <.LBB1_13>:
800008a8: 93 05 40 00  	addi	a1, zero, 4
800008ac: 6f f0 5f fc  	j	0x80000870 <.LBB1_9>

800008b0 <.LBB1_14>:
800008b0: 93 05 20 00  	addi	a1, zero, 2
800008b4: 6f f0 df fb  	j	0x80000870 <.LBB1_9>

800008b8 <.LBB1_15>:
;   return (ch >= '0') && (ch <= '9');
800008b8: 93 05 05 fd  	addi	a1, a0, -48
800008bc: 13 f6 f5 0f  	andi	a2, a1, 255
;     if (_is_digit(*format)) {
800008c0: 93 05 fd ff  	addi	a1, s10, -1
800008c4: 93 06 90 00  	addi	a3, zero, 9
800008c8: 63 ee c6 06  	bltu	a3, a2, 0x80000944 <.LBB1_15+0x8c>
800008cc: 13 0b 00 00  	mv	s6, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800008d0: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
800008d4: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800008d8: b3 06 8b 03  	mul	a3, s6, s8
800008dc: 93 85 15 00  	addi	a1, a1, 1
800008e0: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
800008e4: 93 06 05 fd  	addi	a3, a0, -48
800008e8: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
800008ec: 13 0b 06 fd  	addi	s6, a2, -48
;   while (_is_digit(**str)) {
800008f0: e3 e0 86 ff  	bltu	a3, s8, 0x800008d0 <.LBB1_15+0x18>
800008f4: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800008f8: 63 16 75 0b  	bne	a0, s7, 0x800009a4 <.LBB1_15+0xec>
;       if (_is_digit(*format)) {
800008fc: 03 45 1d 00  	lbu	a0, 1(s10)
;       flags |= FLAGS_PRECISION;
80000900: 13 64 04 40  	ori	s0, s0, 1024
;   return (ch >= '0') && (ch <= '9');
80000904: 93 05 05 fd  	addi	a1, a0, -48
80000908: 13 f6 f5 0f  	andi	a2, a1, 255
;       format++;
8000090c: 93 05 1d 00  	addi	a1, s10, 1
;       if (_is_digit(*format)) {
80000910: 93 06 90 00  	addi	a3, zero, 9
80000914: 63 e0 c6 06  	bltu	a3, a2, 0x80000974 <.LBB1_15+0xbc>
80000918: 93 0b 00 00  	mv	s7, zero
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
8000091c: 13 76 f5 0f  	andi	a2, a0, 255
;   while (_is_digit(**str)) {
80000920: 03 c5 15 00  	lbu	a0, 1(a1)
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000924: b3 86 8b 03  	mul	a3, s7, s8
80000928: 93 85 15 00  	addi	a1, a1, 1
8000092c: 33 06 d6 00  	add	a2, a2, a3
;   return (ch >= '0') && (ch <= '9');
80000930: 93 06 05 fd  	addi	a3, a0, -48
80000934: 93 f6 f6 0f  	andi	a3, a3, 255
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
80000938: 93 0b 06 fd  	addi	s7, a2, -48
;   while (_is_digit(**str)) {
8000093c: e3 e0 86 ff  	bltu	a3, s8, 0x8000091c <.LBB1_15+0x64>
80000940: 6f 00 00 07  	j	0x800009b0 <.LBB1_15+0xf8>
;     else if (*format == '*') {
80000944: 13 06 a0 02  	addi	a2, zero, 42
80000948: 63 18 c5 04  	bne	a0, a2, 0x80000998 <.LBB1_15+0xe0>
;       const int w = va_arg(va, int);
8000094c: 83 a5 09 00  	lw	a1, 0(s3)
;       if (w < 0) {
80000950: 63 d4 05 00  	bgez	a1, 0x80000958 <.LBB1_15+0xa0>
80000954: 13 64 24 00  	ori	s0, s0, 2
80000958: 93 89 49 00  	addi	s3, s3, 4
;     if (*format == '.') {
8000095c: 03 45 0d 00  	lbu	a0, 0(s10)
80000960: 13 d6 f5 41  	srai	a2, a1, 31
80000964: b3 85 c5 00  	add	a1, a1, a2
80000968: 33 cb c5 00  	xor	s6, a1, a2
;     if (*format == '.') {
8000096c: e3 08 75 f9  	beq	a0, s7, 0x800008fc <.LBB1_15+0x44>
80000970: 6f 00 40 03  	j	0x800009a4 <.LBB1_15+0xec>
;       else if (*format == '*') {
80000974: 13 06 a0 02  	addi	a2, zero, 42
80000978: 63 1a c5 02  	bne	a0, a2, 0x800009ac <.LBB1_15+0xf4>
;         const int prec = (int)va_arg(va, int);
8000097c: 83 ab 09 00  	lw	s7, 0(s3)
;         precision = prec > 0 ? (unsigned int)prec : 0U;
80000980: 63 44 70 01  	bgtz	s7, 0x80000988 <.LBB1_15+0xd0>
80000984: 93 0b 00 00  	mv	s7, zero
;     switch (*format) {
80000988: 03 45 2d 00  	lbu	a0, 2(s10)
;         format++;
8000098c: 13 0d 2d 00  	addi	s10, s10, 2
80000990: 93 89 49 00  	addi	s3, s3, 4
80000994: 6f 00 00 02  	j	0x800009b4 <.LBB1_15+0xfc>
80000998: 13 0b 00 00  	mv	s6, zero
8000099c: 13 8d 05 00  	mv	s10, a1
;     if (*format == '.') {
800009a0: e3 0e 75 f5  	beq	a0, s7, 0x800008fc <.LBB1_15+0x44>
800009a4: 93 0b 00 00  	mv	s7, zero
800009a8: 6f 00 c0 00  	j	0x800009b4 <.LBB1_15+0xfc>
800009ac: 93 0b 00 00  	mv	s7, zero
800009b0: 13 8d 05 00  	mv	s10, a1
;     switch (*format) {
800009b4: 93 05 85 f9  	addi	a1, a0, -104
800009b8: 13 d6 15 00  	srli	a2, a1, 1
800009bc: 93 95 f5 01  	slli	a1, a1, 31
800009c0: b3 e5 c5 00  	or	a1, a1, a2
800009c4: 13 06 90 00  	addi	a2, zero, 9
800009c8: 63 62 b6 06  	bltu	a2, a1, 0x80000a2c <.LBB1_42>
800009cc: 93 95 25 00  	slli	a1, a1, 2

800009d0 <.LBB1_184>:
800009d0: 17 36 00 00  	auipc	a2, 3
800009d4: 13 06 c6 83  	addi	a2, a2, -1988
800009d8: b3 85 c5 00  	add	a1, a1, a2
800009dc: 83 a6 05 00  	lw	a3, 0(a1)
800009e0: 93 05 10 00  	addi	a1, zero, 1
800009e4: 13 06 00 10  	addi	a2, zero, 256
800009e8: 67 80 06 00  	jr	a3

800009ec <.LBB1_36>:
;         if (*format == 'h') {
800009ec: 03 45 1d 00  	lbu	a0, 1(s10)
800009f0: 93 05 80 06  	addi	a1, zero, 104
800009f4: 63 12 b5 12  	bne	a0, a1, 0x80000b18 <.LBB1_53+0x48>
800009f8: 93 05 20 00  	addi	a1, zero, 2
800009fc: 13 06 00 0c  	addi	a2, zero, 192
80000a00: 6f 00 00 02  	j	0x80000a20 <.LBB1_41>

80000a04 <.LBB1_38>:
80000a04: 13 06 00 20  	addi	a2, zero, 512
80000a08: 6f 00 80 01  	j	0x80000a20 <.LBB1_41>

80000a0c <.LBB1_39>:
;         if (*format == 'l') {
80000a0c: 03 45 1d 00  	lbu	a0, 1(s10)
80000a10: 93 05 c0 06  	addi	a1, zero, 108
80000a14: 63 18 b5 10  	bne	a0, a1, 0x80000b24 <.LBB1_53+0x54>
80000a18: 93 05 20 00  	addi	a1, zero, 2
80000a1c: 13 06 00 30  	addi	a2, zero, 768

80000a20 <.LBB1_41>:
80000a20: 33 0d bd 00  	add	s10, s10, a1
;     switch (*format) {
80000a24: 03 45 0d 00  	lbu	a0, 0(s10)
80000a28: 33 64 c4 00  	or	s0, s0, a2

80000a2c <.LBB1_42>:
;     switch (*format) {
80000a2c: 93 05 b5 fd  	addi	a1, a0, -37
80000a30: 13 06 30 05  	addi	a2, zero, 83
80000a34: 63 64 b6 10  	bltu	a2, a1, 0x80000b3c <.LBB1_59>
80000a38: 93 95 25 00  	slli	a1, a1, 2

80000a3c <.LBB1_185>:
80000a3c: 17 26 00 00  	auipc	a2, 2
80000a40: 13 06 86 7f  	addi	a2, a2, 2040
80000a44: b3 85 c5 00  	add	a1, a1, a2
80000a48: 03 a6 05 00  	lw	a2, 0(a1)
80000a4c: 93 05 80 00  	addi	a1, zero, 8
80000a50: 13 0c 00 01  	addi	s8, zero, 16
80000a54: 67 00 06 00  	jr	a2

80000a58 <.LBB1_44>:
;           flags &= ~FLAGS_HASH;   // no hash for dec format
80000a58: 13 74 f4 fe  	andi	s0, s0, -17
80000a5c: 13 0c a0 00  	addi	s8, zero, 10

80000a60 <.LBB1_45>:
;         if (*format == 'X') {
80000a60: 93 05 80 05  	addi	a1, zero, 88
80000a64: 63 14 b5 00  	bne	a0, a1, 0x80000a6c <.LBB1_45+0xc>
80000a68: 13 64 04 02  	ori	s0, s0, 32
;         if ((*format != 'i') && (*format != 'd')) {
80000a6c: 93 05 40 06  	addi	a1, zero, 100
80000a70: 63 08 b5 0e  	beq	a0, a1, 0x80000b60 <.LBB1_62+0x8>
80000a74: 93 05 0c 00  	mv	a1, s8
;         if ((*format != 'i') && (*format != 'd')) {
80000a78: 13 06 90 06  	addi	a2, zero, 105
80000a7c: 63 02 c5 0e  	beq	a0, a2, 0x80000b60 <.LBB1_62+0x8>
80000a80: 6f 00 80 0d  	j	0x80000b58 <.LBB1_62>

80000a84 <.LBB1_49>:
;         if (*format == 'F') flags |= FLAGS_UPPERCASE;
80000a84: 93 05 60 04  	addi	a1, zero, 70
80000a88: 63 14 b5 00  	bne	a0, a1, 0x80000a90 <.LBB1_49+0xc>
80000a8c: 13 64 04 02  	ori	s0, s0, 32
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000a90: 13 85 79 00  	addi	a0, s3, 7
80000a94: 13 75 85 ff  	andi	a0, a0, -8
80000a98: 07 35 05 00  	fld	fa0, 0(a0)
80000a9c: 93 09 85 00  	addi	s3, a0, 8
80000aa0: 13 05 09 00  	mv	a0, s2
80000aa4: 93 05 0a 00  	mv	a1, s4
80000aa8: 13 86 0c 00  	mv	a2, s9
80000aac: 93 86 0a 00  	mv	a3, s5
80000ab0: 13 87 0b 00  	mv	a4, s7
80000ab4: 93 07 0b 00  	mv	a5, s6
80000ab8: 13 08 04 00  	mv	a6, s0
80000abc: 97 10 00 00  	auipc	ra, 1
80000ac0: e7 80 40 92  	jalr	-1756(ra)
80000ac4: 6f 00 80 7d  	j	0x8000129c <.LBB1_124+0x314>

80000ac8 <.LBB1_52>:
;         if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
80000ac8: 83 25 81 01  	lw	a1, 24(sp)
80000acc: 33 64 b4 00  	or	s0, s0, a1

80000ad0 <.LBB1_53>:
;         if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
80000ad0: 13 65 25 00  	ori	a0, a0, 2
80000ad4: 93 05 70 04  	addi	a1, zero, 71
80000ad8: 63 14 b5 00  	bne	a0, a1, 0x80000ae0 <.LBB1_53+0x10>
80000adc: 13 64 04 02  	ori	s0, s0, 32
;         idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
80000ae0: 13 85 79 00  	addi	a0, s3, 7
80000ae4: 13 75 85 ff  	andi	a0, a0, -8
80000ae8: 07 35 05 00  	fld	fa0, 0(a0)
80000aec: 93 09 85 00  	addi	s3, a0, 8
80000af0: 13 05 09 00  	mv	a0, s2
80000af4: 93 05 0a 00  	mv	a1, s4
80000af8: 13 86 0c 00  	mv	a2, s9
80000afc: 93 86 0a 00  	mv	a3, s5
80000b00: 13 87 0b 00  	mv	a4, s7
80000b04: 93 07 0b 00  	mv	a5, s6
80000b08: 13 08 04 00  	mv	a6, s0
80000b0c: 97 10 00 00  	auipc	ra, 1
80000b10: e7 80 40 fb  	jalr	-76(ra)
80000b14: 6f 00 80 78  	j	0x8000129c <.LBB1_124+0x314>
80000b18: 13 64 04 08  	ori	s0, s0, 128
80000b1c: 13 0d 1d 00  	addi	s10, s10, 1
80000b20: 6f f0 df f0  	j	0x80000a2c <.LBB1_42>
80000b24: 13 64 04 10  	ori	s0, s0, 256
80000b28: 13 0d 1d 00  	addi	s10, s10, 1
80000b2c: 6f f0 1f f0  	j	0x80000a2c <.LBB1_42>

80000b30 <.LBB1_58>:
;         out('%', buffer, idx++, maxlen);
80000b30: 13 8c 1c 00  	addi	s8, s9, 1
80000b34: 13 05 50 02  	addi	a0, zero, 37
80000b38: 6f 00 80 00  	j	0x80000b40 <.LBB1_59+0x4>

80000b3c <.LBB1_59>:
;         out(*format, buffer, idx++, maxlen);
80000b3c: 13 8c 1c 00  	addi	s8, s9, 1
80000b40: 93 05 0a 00  	mv	a1, s4
80000b44: 13 86 0c 00  	mv	a2, s9
80000b48: 93 86 0a 00  	mv	a3, s5
80000b4c: e7 00 09 00  	jalr	s2
80000b50: 6f 00 00 75  	j	0x800012a0 <.LBB1_124+0x318>

80000b54 <.LBB1_61>:
80000b54: 93 05 20 00  	addi	a1, zero, 2

80000b58 <.LBB1_62>:
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
80000b58: 13 74 34 ff  	andi	s0, s0, -13
80000b5c: 13 8c 05 00  	mv	s8, a1
;         if (flags & FLAGS_PRECISION) {
80000b60: 93 75 04 40  	andi	a1, s0, 1024
80000b64: 63 84 05 00  	beqz	a1, 0x80000b6c <.LBB1_62+0x14>
80000b68: 13 74 e4 ff  	andi	s0, s0, -2
;         if ((*format == 'i') || (*format == 'd')) {
80000b6c: 93 05 90 06  	addi	a1, zero, 105
80000b70: 63 06 b5 00  	beq	a0, a1, 0x80000b7c <.LBB1_62+0x24>
80000b74: 93 05 40 06  	addi	a1, zero, 100
80000b78: 63 1c b5 12  	bne	a0, a1, 0x80000cb0 <.LBB1_62+0x158>
;           if (flags & FLAGS_LONG_LONG) {
80000b7c: 13 75 04 20  	andi	a0, s0, 512
80000b80: 63 16 05 02  	bnez	a0, 0x80000bac <.LBB1_62+0x54>
;           else if (flags & FLAGS_LONG) {
80000b84: 13 75 04 10  	andi	a0, s0, 256
80000b88: 63 1c 05 14  	bnez	a0, 0x80000ce0 <.LBB1_62+0x188>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000b8c: 13 75 04 04  	andi	a0, s0, 64
80000b90: 63 14 05 50  	bnez	a0, 0x80001098 <.LBB1_124+0x110>
80000b94: 03 a8 09 00  	lw	a6, 0(s3)
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80000b98: 93 75 04 08  	andi	a1, s0, 128
80000b9c: 63 80 05 50  	beqz	a1, 0x8000109c <.LBB1_124+0x114>
80000ba0: 13 15 08 01  	slli	a0, a6, 16
80000ba4: 13 58 05 41  	srai	a6, a0, 16
80000ba8: 6f 00 40 4f  	j	0x8000109c <.LBB1_124+0x114>
80000bac: 23 26 21 01  	sw	s2, 12(sp)
;             const long long value = va_arg(va, long long);
80000bb0: 13 85 79 00  	addi	a0, s3, 7
80000bb4: 13 75 85 ff  	andi	a0, a0, -8
80000bb8: 83 29 05 00  	lw	s3, 0(a0)
80000bbc: 23 22 a1 00  	sw	a0, 4(sp)
;             const long long value = va_arg(va, long long);
80000bc0: 13 65 45 00  	ori	a0, a0, 4
80000bc4: 03 25 05 00  	lw	a0, 0(a0)
;   if (!value) {
80000bc8: 23 24 a1 00  	sw	a0, 8(sp)
80000bcc: 33 e5 a9 00  	or	a0, s3, a0
80000bd0: 63 14 05 00  	bnez	a0, 0x80000bd8 <.LBB1_62+0x80>
80000bd4: 13 74 f4 fe  	andi	s0, s0, -17
80000bd8: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000bdc: 93 75 04 40  	andi	a1, s0, 1024
80000be0: 93 d5 a5 00  	srli	a1, a1, 10
80000be4: 33 75 b5 00  	and	a0, a0, a1
80000be8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000bec: 63 14 05 0a  	bnez	a0, 0x80000c94 <.LBB1_62+0x13c>
80000bf0: 83 24 81 00  	lw	s1, 8(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80000bf4: 63 da 04 00  	bgez	s1, 0x80000c08 <.LBB1_62+0xb0>
80000bf8: 33 35 30 01  	snez	a0, s3
80000bfc: b3 09 30 41  	neg	s3, s3
80000c00: 33 85 a4 00  	add	a0, s1, a0
80000c04: b3 04 a0 40  	neg	s1, a0
80000c08: 13 09 00 00  	mv	s2, zero
80000c0c: 13 75 04 02  	andi	a0, s0, 32
80000c10: 13 45 15 06  	xori	a0, a0, 97
80000c14: 13 05 65 0f  	addi	a0, a0, 246
80000c18: 23 2a a1 00  	sw	a0, 20(sp)
80000c1c: 6f 00 40 02  	j	0x80000c40 <.LBB1_62+0xe8>
80000c20: 13 06 10 00  	addi	a2, zero, 1
80000c24: 93 07 19 00  	addi	a5, s2, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000c28: 93 36 f9 01  	sltiu	a3, s2, 31
80000c2c: 33 f6 c6 00  	and	a2, a3, a2
80000c30: 13 89 07 00  	mv	s2, a5
80000c34: 93 09 05 00  	mv	s3, a0
80000c38: 93 84 05 00  	mv	s1, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000c3c: 63 0c 06 04  	beqz	a2, 0x80000c94 <.LBB1_62+0x13c>
;       value /= base;
80000c40: 13 85 09 00  	mv	a0, s3
80000c44: 93 85 04 00  	mv	a1, s1
80000c48: 13 06 0c 00  	mv	a2, s8
80000c4c: 93 06 00 00  	mv	a3, zero
80000c50: 97 f0 ff ff  	auipc	ra, 1048575
80000c54: e7 80 00 3b  	jalr	944(ra)
80000c58: 33 06 85 03  	mul	a2, a0, s8
80000c5c: 33 86 c9 40  	sub	a2, s3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000c60: 13 77 e6 0f  	andi	a4, a2, 254
80000c64: 93 06 00 03  	addi	a3, zero, 48
80000c68: 93 07 a0 00  	addi	a5, zero, 10
80000c6c: 63 64 f7 00  	bltu	a4, a5, 0x80000c74 <.LBB1_62+0x11c>
80000c70: 83 26 41 01  	lw	a3, 20(sp)
80000c74: 33 86 c6 00  	add	a2, a3, a2
80000c78: 93 06 c1 01  	addi	a3, sp, 28
80000c7c: b3 86 26 01  	add	a3, a3, s2
80000c80: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000c84: e3 9e 04 f8  	bnez	s1, 0x80000c20 <.LBB1_62+0xc8>
80000c88: 33 b6 89 01  	sltu	a2, s3, s8
80000c8c: 13 46 16 00  	xori	a2, a2, 1
80000c90: 6f f0 5f f9  	j	0x80000c24 <.LBB1_62+0xcc>
80000c94: 03 25 41 00  	lw	a0, 4(sp)
80000c98: 93 09 85 00  	addi	s3, a0, 8
80000c9c: 03 25 81 00  	lw	a0, 8(sp)
80000ca0: 13 58 f5 01  	srli	a6, a0, 31
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000ca4: 13 07 c1 01  	addi	a4, sp, 28
80000ca8: 03 29 c1 00  	lw	s2, 12(sp)
80000cac: 6f 00 00 49  	j	0x8000113c <.LBB1_124+0x1b4>
;           if (flags & FLAGS_LONG_LONG) {
80000cb0: 13 75 04 20  	andi	a0, s0, 512
80000cb4: 63 12 05 0c  	bnez	a0, 0x80000d78 <.LBB1_62+0x220>
;           else if (flags & FLAGS_LONG) {
80000cb8: 13 75 04 10  	andi	a0, s0, 256
80000cbc: 63 1a 05 48  	bnez	a0, 0x80001150 <.LBB1_124+0x1c8>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000cc0: 13 75 04 04  	andi	a0, s0, 64
80000cc4: 63 1c 05 50  	bnez	a0, 0x800011dc <.LBB1_124+0x254>
80000cc8: 03 a5 09 00  	lw	a0, 0(s3)
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
80000ccc: 93 75 04 08  	andi	a1, s0, 128
80000cd0: 63 88 05 50  	beqz	a1, 0x800011e0 <.LBB1_124+0x258>
80000cd4: 83 25 01 01  	lw	a1, 16(sp)
80000cd8: 33 75 b5 00  	and	a0, a0, a1
80000cdc: 6f 00 40 50  	j	0x800011e0 <.LBB1_124+0x258>
;             const long value = va_arg(va, long);
80000ce0: 03 a8 09 00  	lw	a6, 0(s3)
;   if (!value) {
80000ce4: 63 14 08 00  	bnez	a6, 0x80000cec <.LBB1_62+0x194>
80000ce8: 13 74 f4 fe  	andi	s0, s0, -17
80000cec: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
80000cf0: 13 76 04 40  	andi	a2, s0, 1024
80000cf4: 13 56 a6 00  	srli	a2, a2, 10
80000cf8: b3 f5 c5 00  	and	a1, a1, a2
80000cfc: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000d00: 63 98 05 42  	bnez	a1, 0x80001130 <.LBB1_124+0x1a8>
80000d04: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
80000d08: 13 56 f8 41  	srai	a2, a6, 31
80000d0c: b3 06 c8 00  	add	a3, a6, a2
80000d10: b3 c6 c6 00  	xor	a3, a3, a2
80000d14: 13 76 04 02  	andi	a2, s0, 32
80000d18: 13 46 16 06  	xori	a2, a2, 97
80000d1c: 93 08 66 0f  	addi	a7, a2, 246
80000d20: 6f 00 40 03  	j	0x80000d54 <.LBB1_62+0x1fc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000d24: 33 05 f6 00  	add	a0, a2, a5
80000d28: 93 87 15 00  	addi	a5, a1, 1
80000d2c: 13 06 c1 01  	addi	a2, sp, 28
80000d30: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000d34: b3 b6 86 01  	sltu	a3, a3, s8
80000d38: 93 c6 16 00  	xori	a3, a3, 1
80000d3c: 93 b5 f5 01  	sltiu	a1, a1, 31
80000d40: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000d44: 23 00 a6 00  	sb	a0, 0(a2)
80000d48: 93 85 07 00  	mv	a1, a5
80000d4c: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000d50: 63 80 04 3e  	beqz	s1, 0x80001130 <.LBB1_124+0x1a8>
;       value /= base;
80000d54: 33 d7 86 03  	divu	a4, a3, s8
80000d58: 33 06 87 03  	mul	a2, a4, s8
80000d5c: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000d60: 13 f5 e7 0f  	andi	a0, a5, 254
80000d64: 13 06 00 03  	addi	a2, zero, 48
80000d68: 93 04 a0 00  	addi	s1, zero, 10
80000d6c: e3 6c 95 fa  	bltu	a0, s1, 0x80000d24 <.LBB1_62+0x1cc>
80000d70: 13 86 08 00  	mv	a2, a7
80000d74: 6f f0 1f fb  	j	0x80000d24 <.LBB1_62+0x1cc>
80000d78: 23 26 21 01  	sw	s2, 12(sp)
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
80000d7c: 13 85 79 00  	addi	a0, s3, 7
80000d80: 93 75 85 ff  	andi	a1, a0, -8
80000d84: 03 a9 05 00  	lw	s2, 0(a1)
80000d88: 13 e5 45 00  	ori	a0, a1, 4
80000d8c: 83 29 05 00  	lw	s3, 0(a0)
;   if (!value) {
80000d90: 33 65 39 01  	or	a0, s2, s3
80000d94: 23 24 b1 00  	sw	a1, 8(sp)
80000d98: 63 14 05 00  	bnez	a0, 0x80000da0 <.LBB1_62+0x248>
80000d9c: 13 74 f4 fe  	andi	s0, s0, -17
80000da0: 13 35 15 00  	seqz	a0, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000da4: 93 75 04 40  	andi	a1, s0, 1024
80000da8: 93 d5 a5 00  	srli	a1, a1, 10
80000dac: 33 75 b5 00  	and	a0, a0, a1
80000db0: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80000db4: 63 18 05 08  	bnez	a0, 0x80000e44 <.LBB1_62+0x2ec>
80000db8: 93 04 00 00  	mv	s1, zero
80000dbc: 13 75 04 02  	andi	a0, s0, 32
80000dc0: 13 45 15 06  	xori	a0, a0, 97
80000dc4: 13 05 65 0f  	addi	a0, a0, 246
80000dc8: 23 2a a1 00  	sw	a0, 20(sp)
80000dcc: 6f 00 40 02  	j	0x80000df0 <.LBB1_62+0x298>
80000dd0: 13 06 10 00  	addi	a2, zero, 1
80000dd4: 93 87 14 00  	addi	a5, s1, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000dd8: 93 b6 f4 01  	sltiu	a3, s1, 31
80000ddc: 33 f6 c6 00  	and	a2, a3, a2
80000de0: 93 84 07 00  	mv	s1, a5
80000de4: 13 09 05 00  	mv	s2, a0
80000de8: 93 89 05 00  	mv	s3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000dec: 63 0c 06 04  	beqz	a2, 0x80000e44 <.LBB1_62+0x2ec>
;       value /= base;
80000df0: 13 05 09 00  	mv	a0, s2
80000df4: 93 85 09 00  	mv	a1, s3
80000df8: 13 06 0c 00  	mv	a2, s8
80000dfc: 93 06 00 00  	mv	a3, zero
80000e00: 97 f0 ff ff  	auipc	ra, 1048575
80000e04: e7 80 00 20  	jalr	512(ra)
80000e08: 33 06 85 03  	mul	a2, a0, s8
80000e0c: 33 06 c9 40  	sub	a2, s2, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000e10: 13 77 e6 0f  	andi	a4, a2, 254
80000e14: 93 06 00 03  	addi	a3, zero, 48
80000e18: 93 07 a0 00  	addi	a5, zero, 10
80000e1c: 63 64 f7 00  	bltu	a4, a5, 0x80000e24 <.LBB1_62+0x2cc>
80000e20: 83 26 41 01  	lw	a3, 20(sp)
80000e24: 33 86 c6 00  	add	a2, a3, a2
80000e28: 93 06 c1 01  	addi	a3, sp, 28
80000e2c: b3 86 96 00  	add	a3, a3, s1
80000e30: 23 80 c6 00  	sb	a2, 0(a3)
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000e34: e3 9e 09 f8  	bnez	s3, 0x80000dd0 <.LBB1_62+0x278>
80000e38: 33 36 89 01  	sltu	a2, s2, s8
80000e3c: 13 46 16 00  	xori	a2, a2, 1
80000e40: 6f f0 5f f9  	j	0x80000dd4 <.LBB1_62+0x27c>
80000e44: 03 25 81 00  	lw	a0, 8(sp)
80000e48: 93 09 85 00  	addi	s3, a0, 8
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80000e4c: 13 07 c1 01  	addi	a4, sp, 28
80000e50: 03 29 c1 00  	lw	s2, 12(sp)
80000e54: 6f 00 c0 41  	j	0x80001270 <.LBB1_124+0x2e8>

80000e58 <.LBB1_108>:
80000e58: 93 0b 09 00  	mv	s7, s2
;         if (!(flags & FLAGS_LEFT)) {
80000e5c: 13 79 24 00  	andi	s2, s0, 2
80000e60: 93 04 10 00  	addi	s1, zero, 1
80000e64: 63 1e 09 02  	bnez	s2, 0x80000ea0 <.LBB1_108+0x48>
80000e68: 93 04 20 00  	addi	s1, zero, 2
;           while (l++ < width) {
80000e6c: 63 6a 9b 02  	bltu	s6, s1, 0x80000ea0 <.LBB1_108+0x48>
80000e70: 13 04 00 00  	mv	s0, zero
;           while (l++ < width) {
80000e74: 13 0c fb ff  	addi	s8, s6, -1
80000e78: 93 84 0b 00  	mv	s1, s7
;             out(' ', buffer, idx++, maxlen);
80000e7c: 33 86 8c 00  	add	a2, s9, s0
80000e80: 13 05 00 02  	addi	a0, zero, 32
80000e84: 93 05 0a 00  	mv	a1, s4
80000e88: 93 86 0a 00  	mv	a3, s5
80000e8c: e7 80 04 00  	jalr	s1
;           while (l++ < width) {
80000e90: 13 04 14 00  	addi	s0, s0, 1
80000e94: e3 14 8c fe  	bne	s8, s0, 0x80000e7c <.LBB1_108+0x24>
80000e98: 93 04 1b 00  	addi	s1, s6, 1
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80000e9c: b3 8c 8c 00  	add	s9, s9, s0
80000ea0: 03 c5 09 00  	lbu	a0, 0(s3)
80000ea4: 13 34 19 00  	seqz	s0, s2
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
80000ea8: 93 89 49 00  	addi	s3, s3, 4
80000eac: 13 8c 1c 00  	addi	s8, s9, 1
80000eb0: 93 05 0a 00  	mv	a1, s4
80000eb4: 13 86 0c 00  	mv	a2, s9
80000eb8: 93 86 0a 00  	mv	a3, s5
80000ebc: 13 89 0b 00  	mv	s2, s7
80000ec0: e7 80 0b 00  	jalr	s7
80000ec4: 33 b5 64 01  	sltu	a0, s1, s6
80000ec8: 13 45 15 00  	xori	a0, a0, 1
;         if (flags & FLAGS_LEFT) {
80000ecc: 33 65 a4 00  	or	a0, s0, a0
80000ed0: 63 18 05 3c  	bnez	a0, 0x800012a0 <.LBB1_124+0x318>
;           while (l++ < width) {
80000ed4: 33 04 9b 40  	sub	s0, s6, s1
80000ed8: 93 0b e0 02  	addi	s7, zero, 46
80000edc: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80000ee0: 13 0c 1c 00  	addi	s8, s8, 1
80000ee4: 13 05 00 02  	addi	a0, zero, 32
80000ee8: 93 05 0a 00  	mv	a1, s4
80000eec: 93 86 0a 00  	mv	a3, s5
80000ef0: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
80000ef4: 13 04 f4 ff  	addi	s0, s0, -1
80000ef8: e3 12 04 fe  	bnez	s0, 0x80000edc <.LBB1_108+0x84>
80000efc: 13 0b 50 02  	addi	s6, zero, 37
80000f00: 13 04 1d 00  	addi	s0, s10, 1
80000f04: 6f f0 df 91  	j	0x80000820 <.LBB1_182+0x30>

80000f08 <.LBB1_117>:
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
80000f08: 03 a5 09 00  	lw	a0, 0(s3)
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
80000f0c: 93 6e 14 02  	ori	t4, s0, 33
;   if (!value) {
80000f10: 63 14 05 00  	bnez	a0, 0x80000f18 <.LBB1_117+0x10>
80000f14: 93 fe fe fe  	andi	t4, t4, -17
80000f18: 93 04 a0 00  	addi	s1, zero, 10
80000f1c: 13 04 f0 00  	addi	s0, zero, 15
80000f20: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80000f24: 13 f6 0e 40  	andi	a2, t4, 1024
80000f28: 13 56 a6 00  	srli	a2, a2, 10
80000f2c: b3 f5 c5 00  	and	a1, a1, a2
80000f30: 93 07 00 00  	mv	a5, zero
80000f34: 13 0b 50 02  	addi	s6, zero, 37
;   if (!(flags & FLAGS_PRECISION) || value) {
80000f38: 63 94 05 0c  	bnez	a1, 0x80001000 <.LBB1_124+0x78>
80000f3c: 93 05 00 00  	mv	a1, zero
80000f40: 6f 00 40 03  	j	0x80000f74 <.LBB1_117+0x6c>
80000f44: 93 76 f5 00  	andi	a3, a0, 15
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000f48: 33 06 d6 00  	add	a2, a2, a3
80000f4c: 93 87 15 00  	addi	a5, a1, 1
80000f50: 93 06 c1 01  	addi	a3, sp, 28
80000f54: b3 86 b6 00  	add	a3, a3, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000f58: 33 37 a4 00  	sltu	a4, s0, a0
;       value /= base;
80000f5c: 13 55 45 00  	srli	a0, a0, 4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000f60: 93 b5 f5 01  	sltiu	a1, a1, 31
80000f64: 33 f7 e5 00  	and	a4, a1, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000f68: 23 80 c6 00  	sb	a2, 0(a3)
80000f6c: 93 85 07 00  	mv	a1, a5
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80000f70: 63 08 07 08  	beqz	a4, 0x80001000 <.LBB1_124+0x78>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80000f74: 93 76 e5 00  	andi	a3, a0, 14
80000f78: 13 06 00 03  	addi	a2, zero, 48
80000f7c: e3 e4 96 fc  	bltu	a3, s1, 0x80000f44 <.LBB1_117+0x3c>
80000f80: 13 06 70 03  	addi	a2, zero, 55
80000f84: 6f f0 1f fc  	j	0x80000f44 <.LBB1_117+0x3c>

80000f88 <.LBB1_124>:
;         const char* p = va_arg(va, char*);
80000f88: 83 a4 09 00  	lw	s1, 0(s3)
;   for (s = str; *s && maxsize--; ++s);
80000f8c: 03 c5 04 00  	lbu	a0, 0(s1)
80000f90: 13 86 04 00  	mv	a2, s1
;   for (s = str; *s && maxsize--; ++s);
80000f94: 63 0c 05 02  	beqz	a0, 0x80000fcc <.LBB1_124+0x44>
80000f98: 93 05 f0 ff  	addi	a1, zero, -1
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
80000f9c: 63 84 0b 00  	beqz	s7, 0x80000fa4 <.LBB1_124+0x1c>
80000fa0: 93 85 0b 00  	mv	a1, s7
;   for (s = str; *s && maxsize--; ++s);
80000fa4: 93 85 f5 ff  	addi	a1, a1, -1
80000fa8: 93 86 04 00  	mv	a3, s1
;   for (s = str; *s && maxsize--; ++s);
80000fac: 03 c7 16 00  	lbu	a4, 1(a3)
80000fb0: 13 86 16 00  	addi	a2, a3, 1
80000fb4: b3 36 e0 00  	snez	a3, a4
80000fb8: 33 37 b0 00  	snez	a4, a1
80000fbc: 33 77 d7 00  	and	a4, a4, a3
80000fc0: 93 85 f5 ff  	addi	a1, a1, -1
80000fc4: 93 06 06 00  	mv	a3, a2
;   for (s = str; *s && maxsize--; ++s);
80000fc8: e3 12 07 fe  	bnez	a4, 0x80000fac <.LBB1_124+0x24>
;   return (unsigned int)(s - str);
80000fcc: 33 06 96 40  	sub	a2, a2, s1
;         if (flags & FLAGS_PRECISION) {
80000fd0: 93 75 04 40  	andi	a1, s0, 1024
80000fd4: 93 b6 15 00  	seqz	a3, a1
80000fd8: b3 35 76 01  	sltu	a1, a2, s7
80000fdc: b3 e5 b6 00  	or	a1, a3, a1
80000fe0: 63 9c 05 04  	bnez	a1, 0x80001038 <.LBB1_124+0xb0>
80000fe4: 13 86 0b 00  	mv	a2, s7
;         if (!(flags & FLAGS_LEFT)) {
80000fe8: 13 74 24 00  	andi	s0, s0, 2
80000fec: 63 0a 04 04  	beqz	s0, 0x80001040 <.LBB1_124+0xb8>
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80000ff0: 23 2a c1 00  	sw	a2, 20(sp)
80000ff4: 63 14 05 2c  	bnez	a0, 0x800012bc <.LBB1_124+0x334>
80000ff8: 13 8c 0c 00  	mv	s8, s9
80000ffc: 6f 00 40 32  	j	0x80001320 <.LBB1_124+0x398>
80001000: 93 89 49 00  	addi	s3, s3, 4
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
80001004: 13 07 c1 01  	addi	a4, sp, 28
80001008: 93 08 00 01  	addi	a7, zero, 16
8000100c: 13 0e 80 00  	addi	t3, zero, 8
80001010: 13 05 09 00  	mv	a0, s2
80001014: 93 05 0a 00  	mv	a1, s4
80001018: 13 86 0c 00  	mv	a2, s9
8000101c: 93 86 0a 00  	mv	a3, s5
80001020: 13 08 00 00  	mv	a6, zero
80001024: 93 83 0b 00  	mv	t2, s7
80001028: 97 10 00 00  	auipc	ra, 1
8000102c: e7 80 c0 f7  	jalr	-132(ra)
80001030: 13 0c 05 00  	mv	s8, a0
80001034: 6f 00 00 27  	j	0x800012a4 <.LBB1_124+0x31c>
;         if (!(flags & FLAGS_LEFT)) {
80001038: 13 74 24 00  	andi	s0, s0, 2
8000103c: e3 1a 04 fa  	bnez	s0, 0x80000ff0 <.LBB1_124+0x68>
;           while (l++ < width) {
80001040: 63 78 66 27  	bgeu	a2, s6, 0x800012b0 <.LBB1_124+0x328>
80001044: 23 26 d1 00  	sw	a3, 12(sp)
80001048: 23 2a 81 00  	sw	s0, 20(sp)
8000104c: 13 04 00 00  	mv	s0, zero
80001050: 13 0c 09 00  	mv	s8, s2
;           while (l++ < width) {
80001054: 33 09 cb 40  	sub	s2, s6, a2
;             out(' ', buffer, idx++, maxlen);
80001058: 33 86 8c 00  	add	a2, s9, s0
8000105c: 13 05 00 02  	addi	a0, zero, 32
80001060: 93 05 0a 00  	mv	a1, s4
80001064: 93 86 0a 00  	mv	a3, s5
80001068: e7 00 0c 00  	jalr	s8
;           while (l++ < width) {
8000106c: 13 04 14 00  	addi	s0, s0, 1
80001070: e3 14 89 fe  	bne	s2, s0, 0x80001058 <.LBB1_124+0xd0>
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001074: 03 c5 04 00  	lbu	a0, 0(s1)
;           while (l++ < width) {
80001078: 13 06 1b 00  	addi	a2, s6, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000107c: b3 8c 8c 00  	add	s9, s9, s0
80001080: 13 09 0c 00  	mv	s2, s8
80001084: 03 24 41 01  	lw	s0, 20(sp)
80001088: 83 26 c1 00  	lw	a3, 12(sp)
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000108c: 23 2a c1 00  	sw	a2, 20(sp)
80001090: 63 16 05 22  	bnez	a0, 0x800012bc <.LBB1_124+0x334>
80001094: 6f f0 5f f6  	j	0x80000ff8 <.LBB1_124+0x70>
;             const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
80001098: 03 c8 09 00  	lbu	a6, 0(s3)
;   if (!value) {
8000109c: 63 14 08 00  	bnez	a6, 0x800010a4 <.LBB1_124+0x11c>
800010a0: 13 74 f4 fe  	andi	s0, s0, -17
800010a4: 93 35 18 00  	seqz	a1, a6
;   if (!(flags & FLAGS_PRECISION) || value) {
800010a8: 13 76 04 40  	andi	a2, s0, 1024
800010ac: 13 56 a6 00  	srli	a2, a2, 10
800010b0: b3 f5 c5 00  	and	a1, a1, a2
800010b4: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800010b8: 63 9c 05 06  	bnez	a1, 0x80001130 <.LBB1_124+0x1a8>
800010bc: 93 05 00 00  	mv	a1, zero
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
800010c0: 13 56 f8 41  	srai	a2, a6, 31
800010c4: b3 06 c8 00  	add	a3, a6, a2
800010c8: b3 c6 c6 00  	xor	a3, a3, a2
800010cc: 13 76 04 02  	andi	a2, s0, 32
800010d0: 13 46 16 06  	xori	a2, a2, 97
800010d4: 93 08 66 0f  	addi	a7, a2, 246
800010d8: 6f 00 40 03  	j	0x8000110c <.LBB1_124+0x184>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800010dc: 33 05 f6 00  	add	a0, a2, a5
800010e0: 93 87 15 00  	addi	a5, a1, 1
800010e4: 13 06 c1 01  	addi	a2, sp, 28
800010e8: 33 06 b6 00  	add	a2, a2, a1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800010ec: b3 b6 86 01  	sltu	a3, a3, s8
800010f0: 93 c6 16 00  	xori	a3, a3, 1
800010f4: 93 b5 f5 01  	sltiu	a1, a1, 31
800010f8: b3 f4 d5 00  	and	s1, a1, a3
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800010fc: 23 00 a6 00  	sb	a0, 0(a2)
80001100: 93 85 07 00  	mv	a1, a5
80001104: 93 06 07 00  	mv	a3, a4
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001108: 63 84 04 02  	beqz	s1, 0x80001130 <.LBB1_124+0x1a8>
;       value /= base;
8000110c: 33 d7 86 03  	divu	a4, a3, s8
80001110: 33 06 87 03  	mul	a2, a4, s8
80001114: b3 87 c6 40  	sub	a5, a3, a2
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001118: 13 f5 e7 0f  	andi	a0, a5, 254
8000111c: 13 06 00 03  	addi	a2, zero, 48
80001120: 93 04 a0 00  	addi	s1, zero, 10
80001124: e3 6c 95 fa  	bltu	a0, s1, 0x800010dc <.LBB1_124+0x154>
80001128: 13 86 08 00  	mv	a2, a7
8000112c: 6f f0 1f fb  	j	0x800010dc <.LBB1_124+0x154>
80001130: 93 89 49 00  	addi	s3, s3, 4
80001134: 13 58 f8 01  	srli	a6, a6, 31
80001138: 13 07 c1 01  	addi	a4, sp, 28
8000113c: 13 05 09 00  	mv	a0, s2
80001140: 93 05 0a 00  	mv	a1, s4
80001144: 13 86 0c 00  	mv	a2, s9
80001148: 93 86 0a 00  	mv	a3, s5
8000114c: 6f 00 80 13  	j	0x80001284 <.LBB1_124+0x2fc>
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
80001150: 03 a5 09 00  	lw	a0, 0(s3)
;   if (!value) {
80001154: 63 14 05 00  	bnez	a0, 0x8000115c <.LBB1_124+0x1d4>
80001158: 13 74 f4 fe  	andi	s0, s0, -17
8000115c: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
80001160: 13 76 04 40  	andi	a2, s0, 1024
80001164: 13 56 a6 00  	srli	a2, a2, 10
80001168: b3 f5 c5 00  	and	a1, a1, a2
8000116c: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
80001170: 63 9c 05 0e  	bnez	a1, 0x80001268 <.LBB1_124+0x2e0>
80001174: 13 06 00 00  	mv	a2, zero
80001178: 93 75 04 02  	andi	a1, s0, 32
8000117c: 93 c5 15 06  	xori	a1, a1, 97
80001180: 13 88 65 0f  	addi	a6, a1, 246
80001184: 6f 00 40 03  	j	0x800011b8 <.LBB1_124+0x230>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001188: 33 87 e7 00  	add	a4, a5, a4
8000118c: 93 07 16 00  	addi	a5, a2, 1
80001190: 93 05 c1 01  	addi	a1, sp, 28
80001194: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001198: 33 35 85 01  	sltu	a0, a0, s8
8000119c: 13 45 15 00  	xori	a0, a0, 1
800011a0: 13 36 f6 01  	sltiu	a2, a2, 31
800011a4: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800011a8: 23 80 e4 00  	sb	a4, 0(s1)
800011ac: 13 86 07 00  	mv	a2, a5
800011b0: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
800011b4: 63 8a 05 0a  	beqz	a1, 0x80001268 <.LBB1_124+0x2e0>
;       value /= base;
800011b8: b3 56 85 03  	divu	a3, a0, s8
800011bc: 33 87 86 03  	mul	a4, a3, s8
800011c0: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
800011c4: 93 74 e7 0f  	andi	s1, a4, 254
800011c8: 93 07 00 03  	addi	a5, zero, 48
800011cc: 93 05 a0 00  	addi	a1, zero, 10
800011d0: e3 ec b4 fa  	bltu	s1, a1, 0x80001188 <.LBB1_124+0x200>
800011d4: 93 07 08 00  	mv	a5, a6
800011d8: 6f f0 1f fb  	j	0x80001188 <.LBB1_124+0x200>
;             const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
800011dc: 03 c5 09 00  	lbu	a0, 0(s3)
;   if (!value) {
800011e0: 63 14 05 00  	bnez	a0, 0x800011e8 <.LBB1_124+0x260>
800011e4: 13 74 f4 fe  	andi	s0, s0, -17
800011e8: 93 35 15 00  	seqz	a1, a0
;   if (!(flags & FLAGS_PRECISION) || value) {
800011ec: 13 76 04 40  	andi	a2, s0, 1024
800011f0: 13 56 a6 00  	srli	a2, a2, 10
800011f4: b3 f5 c5 00  	and	a1, a1, a2
800011f8: 93 07 00 00  	mv	a5, zero
;   if (!(flags & FLAGS_PRECISION) || value) {
800011fc: 63 96 05 06  	bnez	a1, 0x80001268 <.LBB1_124+0x2e0>
80001200: 13 06 00 00  	mv	a2, zero
80001204: 93 75 04 02  	andi	a1, s0, 32
80001208: 93 c5 15 06  	xori	a1, a1, 97
8000120c: 13 88 65 0f  	addi	a6, a1, 246
80001210: 6f 00 40 03  	j	0x80001244 <.LBB1_124+0x2bc>
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001214: 33 87 e7 00  	add	a4, a5, a4
80001218: 93 07 16 00  	addi	a5, a2, 1
8000121c: 93 05 c1 01  	addi	a1, sp, 28
80001220: b3 84 c5 00  	add	s1, a1, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001224: 33 35 85 01  	sltu	a0, a0, s8
80001228: 13 45 15 00  	xori	a0, a0, 1
8000122c: 13 36 f6 01  	sltiu	a2, a2, 31
80001230: b3 75 a6 00  	and	a1, a2, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001234: 23 80 e4 00  	sb	a4, 0(s1)
80001238: 13 86 07 00  	mv	a2, a5
8000123c: 13 85 06 00  	mv	a0, a3
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001240: 63 84 05 02  	beqz	a1, 0x80001268 <.LBB1_124+0x2e0>
;       value /= base;
80001244: b3 56 85 03  	divu	a3, a0, s8
80001248: 33 87 86 03  	mul	a4, a3, s8
8000124c: 33 07 e5 40  	sub	a4, a0, a4
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001250: 93 74 e7 0f  	andi	s1, a4, 254
80001254: 93 07 00 03  	addi	a5, zero, 48
80001258: 93 05 a0 00  	addi	a1, zero, 10
8000125c: e3 ec b4 fa  	bltu	s1, a1, 0x80001214 <.LBB1_124+0x28c>
80001260: 93 07 08 00  	mv	a5, a6
80001264: 6f f0 1f fb  	j	0x80001214 <.LBB1_124+0x28c>
80001268: 93 89 49 00  	addi	s3, s3, 4
8000126c: 13 07 c1 01  	addi	a4, sp, 28
80001270: 13 05 09 00  	mv	a0, s2
80001274: 93 05 0a 00  	mv	a1, s4
80001278: 13 86 0c 00  	mv	a2, s9
8000127c: 93 86 0a 00  	mv	a3, s5
80001280: 13 08 00 00  	mv	a6, zero
80001284: 93 08 0c 00  	mv	a7, s8
80001288: 93 83 0b 00  	mv	t2, s7
8000128c: 13 0e 0b 00  	mv	t3, s6
80001290: 93 0e 04 00  	mv	t4, s0
80001294: 97 10 00 00  	auipc	ra, 1
80001298: e7 80 00 d1  	jalr	-752(ra)
8000129c: 13 0c 05 00  	mv	s8, a0
800012a0: 13 0b 50 02  	addi	s6, zero, 37
800012a4: 93 0b e0 02  	addi	s7, zero, 46
800012a8: 13 04 1d 00  	addi	s0, s10, 1
800012ac: 6f f0 4f d7  	j	0x80000820 <.LBB1_182+0x30>
800012b0: 13 06 16 00  	addi	a2, a2, 1
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800012b4: 23 2a c1 00  	sw	a2, 20(sp)
800012b8: e3 00 05 d4  	beqz	a0, 0x80000ff8 <.LBB1_124+0x70>
800012bc: 93 84 14 00  	addi	s1, s1, 1
800012c0: 63 88 06 02  	beqz	a3, 0x800012f0 <.LBB1_124+0x368>
;           out(*(p++), buffer, idx++, maxlen);
800012c4: 13 8c 1c 00  	addi	s8, s9, 1
800012c8: 13 75 f5 0f  	andi	a0, a0, 255
800012cc: 93 05 0a 00  	mv	a1, s4
800012d0: 13 86 0c 00  	mv	a2, s9
800012d4: 93 86 0a 00  	mv	a3, s5
800012d8: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800012dc: 03 c5 04 00  	lbu	a0, 0(s1)
800012e0: 93 84 14 00  	addi	s1, s1, 1
800012e4: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800012e8: e3 1e 05 fc  	bnez	a0, 0x800012c4 <.LBB1_124+0x33c>
800012ec: 6f 00 40 03  	j	0x80001320 <.LBB1_124+0x398>
800012f0: e3 84 0b d0  	beqz	s7, 0x80000ff8 <.LBB1_124+0x70>
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
800012f4: 93 8b fb ff  	addi	s7, s7, -1
;           out(*(p++), buffer, idx++, maxlen);
800012f8: 13 8c 1c 00  	addi	s8, s9, 1
800012fc: 13 75 f5 0f  	andi	a0, a0, 255
80001300: 93 05 0a 00  	mv	a1, s4
80001304: 13 86 0c 00  	mv	a2, s9
80001308: 93 86 0a 00  	mv	a3, s5
8000130c: e7 00 09 00  	jalr	s2
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
80001310: 03 c5 04 00  	lbu	a0, 0(s1)
80001314: 93 84 14 00  	addi	s1, s1, 1
80001318: 93 0c 0c 00  	mv	s9, s8
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
8000131c: e3 1a 05 fc  	bnez	a0, 0x800012f0 <.LBB1_124+0x368>
80001320: 13 35 14 00  	seqz	a0, s0
80001324: 03 26 41 01  	lw	a2, 20(sp)
80001328: b3 35 66 01  	sltu	a1, a2, s6
8000132c: 93 c5 15 00  	xori	a1, a1, 1
;         if (flags & FLAGS_LEFT) {
80001330: 33 65 b5 00  	or	a0, a0, a1
80001334: 93 89 49 00  	addi	s3, s3, 4
;         if (flags & FLAGS_LEFT) {
80001338: e3 14 05 f6  	bnez	a0, 0x800012a0 <.LBB1_124+0x318>
;           while (l++ < width) {
8000133c: 33 04 cb 40  	sub	s0, s6, a2
80001340: 93 0b e0 02  	addi	s7, zero, 46
80001344: 13 06 0c 00  	mv	a2, s8
;             out(' ', buffer, idx++, maxlen);
80001348: 13 0c 1c 00  	addi	s8, s8, 1
8000134c: 13 05 00 02  	addi	a0, zero, 32
80001350: 93 05 0a 00  	mv	a1, s4
80001354: 93 86 0a 00  	mv	a3, s5
80001358: e7 00 09 00  	jalr	s2
;           while (l++ < width) {
8000135c: 13 04 f4 ff  	addi	s0, s0, -1
80001360: e3 12 04 fe  	bnez	s0, 0x80001344 <.LBB1_124+0x3bc>
80001364: 13 0b 50 02  	addi	s6, zero, 37
80001368: 13 04 1d 00  	addi	s0, s10, 1
8000136c: 6f f0 4f cb  	j	0x80000820 <.LBB1_182+0x30>
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
80001370: 13 86 0c 00  	mv	a2, s9
80001374: 63 e4 5c 01  	bltu	s9, s5, 0x8000137c <.LBB1_124+0x3f4>
80001378: 13 86 fa ff  	addi	a2, s5, -1
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
8000137c: 13 05 00 00  	mv	a0, zero
80001380: 93 05 0a 00  	mv	a1, s4
80001384: 93 86 0a 00  	mv	a3, s5
80001388: e7 00 09 00  	jalr	s2
;   return (int)idx;
8000138c: 13 85 0c 00  	mv	a0, s9
80001390: 83 2d c1 03  	lw	s11, 60(sp)
80001394: 03 2d 01 04  	lw	s10, 64(sp)
80001398: 83 2c 41 04  	lw	s9, 68(sp)
8000139c: 03 2c 81 04  	lw	s8, 72(sp)
800013a0: 83 2b c1 04  	lw	s7, 76(sp)
800013a4: 03 2b 01 05  	lw	s6, 80(sp)
800013a8: 83 2a 41 05  	lw	s5, 84(sp)
800013ac: 03 2a 81 05  	lw	s4, 88(sp)
800013b0: 83 29 c1 05  	lw	s3, 92(sp)
800013b4: 03 29 01 06  	lw	s2, 96(sp)
800013b8: 83 24 41 06  	lw	s1, 100(sp)
800013bc: 03 24 81 06  	lw	s0, 104(sp)
800013c0: 83 20 c1 06  	lw	ra, 108(sp)
800013c4: 13 01 01 07  	addi	sp, sp, 112
800013c8: 67 80 00 00  	ret

800013cc <_out_char.llvm.2703457791718675039>:
;   if (character) {
800013cc: 63 06 05 00  	beqz	a0, 0x800013d8 <_out_char.llvm.2703457791718675039+0xc>
800013d0: b7 85 0b f0  	lui	a1, 983224
;     *(volatile uint32_t *)0xF00B8000 = character;
800013d4: 23 a0 a5 00  	sw	a0, 0(a1)
; }
800013d8: 67 80 00 00  	ret

800013dc <_out_null>:
; }
800013dc: 67 80 00 00  	ret

800013e0 <_ftoa>:
; {
800013e0: 13 01 01 f9  	addi	sp, sp, -112
800013e4: 23 26 11 06  	sw	ra, 108(sp)
800013e8: 23 24 81 06  	sw	s0, 104(sp)
800013ec: 23 22 91 06  	sw	s1, 100(sp)
800013f0: 23 20 21 07  	sw	s2, 96(sp)
800013f4: 23 2e 31 05  	sw	s3, 92(sp)
800013f8: 23 2c 41 05  	sw	s4, 88(sp)
800013fc: 23 2a 51 05  	sw	s5, 84(sp)
80001400: 23 28 61 05  	sw	s6, 80(sp)
80001404: 23 26 71 05  	sw	s7, 76(sp)
80001408: 23 24 81 05  	sw	s8, 72(sp)
8000140c: 23 22 91 05  	sw	s9, 68(sp)
80001410: 23 20 a1 05  	sw	s10, 64(sp)
80001414: 27 3c 81 02  	fsd	fs0, 56(sp)
80001418: 27 38 91 02  	fsd	fs1, 48(sp)
8000141c: 27 34 21 03  	fsd	fs2, 40(sp)

80001420 <.LBB4_83>:
80001420: 97 24 00 00  	auipc	s1, 2
80001424: 93 84 84 fc  	addi	s1, s1, -56
80001428: 07 b0 04 00  	fld	ft0, 0(s1)
;   if (value < -DBL_MAX)
8000142c: d3 04 a0 a2  	fle.d	s1, ft0, fa0
80001430: 93 0a 08 00  	mv	s5, a6
80001434: 13 89 07 00  	mv	s2, a5
80001438: 93 89 06 00  	mv	s3, a3
8000143c: 13 0a 06 00  	mv	s4, a2
80001440: 13 8b 05 00  	mv	s6, a1
80001444: 93 0b 05 00  	mv	s7, a0
;   if (value < -DBL_MAX)
80001448: 63 98 04 0e  	bnez	s1, 0x80001538 <.LBB4_83+0x118>
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
8000144c: 13 f5 2a 00  	andi	a0, s5, 2
80001450: 93 f5 3a 00  	andi	a1, s5, 3
80001454: b3 35 b0 00  	snez	a1, a1
80001458: 13 36 59 00  	sltiu	a2, s2, 5
8000145c: b3 65 b6 00  	or	a1, a2, a1
80001460: 93 5c 15 00  	srli	s9, a0, 1
80001464: 13 04 0a 00  	mv	s0, s4
80001468: 63 96 05 02  	bnez	a1, 0x80001494 <.LBB4_83+0x74>
;     for (size_t i = len; i < width; i++) {
8000146c: 93 04 c9 ff  	addi	s1, s2, -4
80001470: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80001474: 13 04 16 00  	addi	s0, a2, 1
80001478: 13 05 00 02  	addi	a0, zero, 32
8000147c: 93 05 0b 00  	mv	a1, s6
80001480: 93 86 09 00  	mv	a3, s3
80001484: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001488: 93 84 f4 ff  	addi	s1, s1, -1
8000148c: 13 06 04 00  	mv	a2, s0
80001490: e3 92 04 fe  	bnez	s1, 0x80001474 <.LBB4_83+0x54>
;     out(buf[--len], buffer, idx++, maxlen);
80001494: 93 04 14 00  	addi	s1, s0, 1
80001498: 13 05 d0 02  	addi	a0, zero, 45
8000149c: 93 05 0b 00  	mv	a1, s6
800014a0: 13 06 04 00  	mv	a2, s0
800014a4: 93 86 09 00  	mv	a3, s3
800014a8: e7 80 0b 00  	jalr	s7
800014ac: 93 0a 24 00  	addi	s5, s0, 2
800014b0: 13 05 90 06  	addi	a0, zero, 105
800014b4: 93 05 0b 00  	mv	a1, s6
800014b8: 13 86 04 00  	mv	a2, s1
800014bc: 93 86 09 00  	mv	a3, s3
800014c0: e7 80 0b 00  	jalr	s7
800014c4: 13 0c 34 00  	addi	s8, s0, 3
800014c8: 13 05 e0 06  	addi	a0, zero, 110
800014cc: 93 05 0b 00  	mv	a1, s6
800014d0: 13 86 0a 00  	mv	a2, s5
800014d4: 93 86 09 00  	mv	a3, s3
800014d8: e7 80 0b 00  	jalr	s7
800014dc: 93 04 44 00  	addi	s1, s0, 4
800014e0: 13 05 60 06  	addi	a0, zero, 102
800014e4: 93 05 0b 00  	mv	a1, s6
800014e8: 13 06 0c 00  	mv	a2, s8
800014ec: 93 86 09 00  	mv	a3, s3
800014f0: e7 80 0b 00  	jalr	s7
800014f4: 33 85 44 41  	sub	a0, s1, s4
800014f8: 33 35 25 01  	sltu	a0, a0, s2
800014fc: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001500: 93 c5 1c 00  	xori	a1, s9, 1
80001504: 33 e5 a5 00  	or	a0, a1, a0
80001508: 63 16 05 56  	bnez	a0, 0x80001a74 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000150c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001510: 13 84 14 00  	addi	s0, s1, 1
80001514: 13 05 00 02  	addi	a0, zero, 32
80001518: 93 05 0b 00  	mv	a1, s6
8000151c: 13 86 04 00  	mv	a2, s1
80001520: 93 86 09 00  	mv	a3, s3
80001524: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001528: 33 05 8a 00  	add	a0, s4, s0
8000152c: 93 04 04 00  	mv	s1, s0
80001530: e3 60 25 ff  	bltu	a0, s2, 0x80001510 <.LBB4_83+0xf0>
80001534: 6f 00 40 54  	j	0x80001a78 <.LBB4_90+0x378>
80001538: 53 04 a5 22  	fmv.d	fs0, fa0

8000153c <.LBB4_84>:
8000153c: 17 25 00 00  	auipc	a0, 2
80001540: 13 05 45 eb  	addi	a0, a0, -332
80001544: 07 30 05 00  	fld	ft0, 0(a0)
;   if (value > DBL_MAX)
80001548: 53 05 05 a2  	fle.d	a0, fa0, ft0
8000154c: 63 1e 05 00  	bnez	a0, 0x80001568 <.LBB4_86>
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
80001550: 93 f5 4a 00  	andi	a1, s5, 4
80001554: 13 b5 15 00  	seqz	a0, a1
80001558: 63 82 05 06  	beqz	a1, 0x800015bc <.LBB4_88>

8000155c <.LBB4_85>:
8000155c: 17 2c 00 00  	auipc	s8, 2
80001560: 13 0c 3c c3  	addi	s8, s8, -973
80001564: 6f 00 00 06  	j	0x800015c4 <.LBB4_88+0x8>

80001568 <.LBB4_86>:
80001568: 17 25 00 00  	auipc	a0, 2
8000156c: 13 05 05 e9  	addi	a0, a0, -368
80001570: 07 30 05 00  	fld	ft0, 0(a0)

80001574 <.LBB4_87>:
80001574: 17 25 00 00  	auipc	a0, 2
80001578: 13 05 c5 e8  	addi	a0, a0, -372
8000157c: 87 30 05 00  	fld	ft1, 0(a0)
;   if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
80001580: 53 05 04 a2  	fle.d	a0, fs0, ft0
80001584: d3 85 80 a2  	fle.d	a1, ft1, fs0
80001588: 33 75 b5 00  	and	a0, a0, a1
8000158c: 63 1e 05 0e  	bnez	a0, 0x80001688 <.LBB4_88+0xcc>
;     return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001590: 13 85 0b 00  	mv	a0, s7
80001594: 93 05 0b 00  	mv	a1, s6
80001598: 13 06 0a 00  	mv	a2, s4
8000159c: 93 86 09 00  	mv	a3, s3
800015a0: 53 05 84 22  	fmv.d	fa0, fs0
800015a4: 93 07 09 00  	mv	a5, s2
800015a8: 13 88 0a 00  	mv	a6, s5
800015ac: 97 00 00 00  	auipc	ra, 0
800015b0: e7 80 40 51  	jalr	1300(ra)
800015b4: 13 04 05 00  	mv	s0, a0
800015b8: 6f 00 00 4c  	j	0x80001a78 <.LBB4_90+0x378>

800015bc <.LBB4_88>:
800015bc: 17 2c 00 00  	auipc	s8, 2
800015c0: 13 0c 6c c0  	addi	s8, s8, -1018
800015c4: 93 05 40 00  	addi	a1, zero, 4
;     return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
800015c8: b3 8c a5 40  	sub	s9, a1, a0
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800015cc: 13 f5 3a 00  	andi	a0, s5, 3
800015d0: 33 35 a0 00  	snez	a0, a0
800015d4: b3 b5 2c 01  	sltu	a1, s9, s2
800015d8: 93 c5 15 00  	xori	a1, a1, 1
800015dc: 33 65 b5 00  	or	a0, a0, a1
800015e0: 93 fa 2a 00  	andi	s5, s5, 2
800015e4: 93 04 0a 00  	mv	s1, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800015e8: 63 16 05 02  	bnez	a0, 0x80001614 <.LBB4_88+0x58>
;     for (size_t i = len; i < width; i++) {
800015ec: 33 04 99 41  	sub	s0, s2, s9
800015f0: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800015f4: 93 04 16 00  	addi	s1, a2, 1
800015f8: 13 05 00 02  	addi	a0, zero, 32
800015fc: 93 05 0b 00  	mv	a1, s6
80001600: 93 86 09 00  	mv	a3, s3
80001604: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
80001608: 13 04 f4 ff  	addi	s0, s0, -1
8000160c: 13 86 04 00  	mv	a2, s1
80001610: e3 12 04 fe  	bnez	s0, 0x800015f4 <.LBB4_88+0x38>
80001614: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
80001618: 13 0c fc ff  	addi	s8, s8, -1
;     out(buf[--len], buffer, idx++, maxlen);
8000161c: 33 05 9c 01  	add	a0, s8, s9
80001620: 03 45 05 00  	lbu	a0, 0(a0)
80001624: 13 86 04 00  	mv	a2, s1
80001628: 13 84 fc ff  	addi	s0, s9, -1
8000162c: 93 84 14 00  	addi	s1, s1, 1
80001630: 93 05 0b 00  	mv	a1, s6
80001634: 93 86 09 00  	mv	a3, s3
80001638: e7 80 0b 00  	jalr	s7
8000163c: 93 0c 04 00  	mv	s9, s0
;   while (len) {
80001640: e3 1e 04 fc  	bnez	s0, 0x8000161c <.LBB4_88+0x60>
80001644: 33 85 44 41  	sub	a0, s1, s4
80001648: 33 35 25 01  	sltu	a0, a0, s2
8000164c: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001650: 93 c5 1a 00  	xori	a1, s5, 1
80001654: 33 e5 a5 00  	or	a0, a1, a0
80001658: 63 1e 05 40  	bnez	a0, 0x80001a74 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
8000165c: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001660: 13 84 14 00  	addi	s0, s1, 1
80001664: 13 05 00 02  	addi	a0, zero, 32
80001668: 93 05 0b 00  	mv	a1, s6
8000166c: 13 86 04 00  	mv	a2, s1
80001670: 93 86 09 00  	mv	a3, s3
80001674: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001678: 33 05 8a 00  	add	a0, s4, s0
8000167c: 93 04 04 00  	mv	s1, s0
80001680: e3 60 25 ff  	bltu	a0, s2, 0x80001660 <.LBB4_88+0xa4>
80001684: 6f 00 40 3f  	j	0x80001a78 <.LBB4_90+0x378>
;   if (!(flags & FLAGS_PRECISION)) {
80001688: 13 f5 0a 40  	andi	a0, s5, 1024
8000168c: 13 0c 60 00  	addi	s8, zero, 6
80001690: 63 04 05 00  	beqz	a0, 0x80001698 <.LBB4_88+0xdc>
80001694: 13 0c 07 00  	mv	s8, a4
80001698: 13 05 a0 00  	addi	a0, zero, 10
8000169c: 53 29 84 22  	fabs.d	fs2, fs0
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800016a0: 63 6c ac 02  	bltu	s8, a0, 0x800016d8 <.LBB4_88+0x11c>
800016a4: 93 04 6c ff  	addi	s1, s8, -10
800016a8: 13 05 f0 01  	addi	a0, zero, 31
800016ac: 63 e4 a4 00  	bltu	s1, a0, 0x800016b4 <.LBB4_88+0xf8>
800016b0: 93 04 f0 01  	addi	s1, zero, 31
800016b4: 13 84 14 00  	addi	s0, s1, 1
;     buf[len++] = '0';
800016b8: 13 05 81 00  	addi	a0, sp, 8
800016bc: 93 05 00 03  	addi	a1, zero, 48
800016c0: 13 06 04 00  	mv	a2, s0
800016c4: 97 f0 ff ff  	auipc	ra, 1048575
800016c8: e7 80 40 e9  	jalr	-364(ra)
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
800016cc: 13 c5 f4 ff  	not	a0, s1
800016d0: 33 0c ac 00  	add	s8, s8, a0
800016d4: 6f 00 80 00  	j	0x800016dc <.LBB4_88+0x120>
800016d8: 13 04 00 00  	mv	s0, zero
;   double tmp = (value - whole) * pow10[prec];
800016dc: 13 15 3c 00  	slli	a0, s8, 3

800016e0 <.LBB4_89>:
800016e0: 97 25 00 00  	auipc	a1, 2
800016e4: 93 85 85 ca  	addi	a1, a1, -856
800016e8: 33 05 b5 00  	add	a0, a0, a1
800016ec: 87 30 05 00  	fld	ft1, 0(a0)
;   int whole = (int)value;
800016f0: d3 14 09 c2  	fcvt.w.d	s1, fs2, rtz
;   double tmp = (value - whole) * pow10[prec];
800016f4: 53 80 04 d2  	fcvt.d.w	ft0, s1
800016f8: 53 70 09 0a  	fsub.d	ft0, fs2, ft0
800016fc: 53 f1 00 12  	fmul.d	ft2, ft1, ft0

80001700 <.LBB4_90>:
80001700: 17 25 00 00  	auipc	a0, 2
80001704: 13 05 85 d0  	addi	a0, a0, -760
80001708: 07 30 05 00  	fld	ft0, 0(a0)
;   unsigned long frac = (unsigned long)tmp;
8000170c: 53 15 11 c2  	fcvt.wu.d	a0, ft2, rtz
;   diff = tmp - frac;
80001710: d3 01 15 d2  	fcvt.d.wu	ft3, a0
80001714: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;   if (diff > 0.5) {
80001718: d3 05 01 a2  	fle.d	a1, ft2, ft0
8000171c: 63 90 05 02  	bnez	a1, 0x8000173c <.LBB4_90+0x3c>
;     ++frac;
80001720: 13 05 15 00  	addi	a0, a0, 1
;     if (frac >= pow10[prec]) {
80001724: 53 01 15 d2  	fcvt.d.wu	ft2, a0
80001728: d3 15 11 a2  	flt.d	a1, ft2, ft1
8000172c: 63 94 05 02  	bnez	a1, 0x80001754 <.LBB4_90+0x54>
80001730: 13 05 00 00  	mv	a0, zero
;       ++whole;
80001734: 93 84 14 00  	addi	s1, s1, 1
80001738: 6f 00 c0 01  	j	0x80001754 <.LBB4_90+0x54>
;   else if (diff < 0.5) {
8000173c: d3 15 01 a2  	flt.d	a1, ft2, ft0
80001740: 63 9a 05 00  	bnez	a1, 0x80001754 <.LBB4_90+0x54>
;   else if ((frac == 0U) || (frac & 1U)) {
80001744: 93 35 15 00  	seqz	a1, a0
80001748: 13 76 15 00  	andi	a2, a0, 1
8000174c: b3 65 b6 00  	or	a1, a2, a1
80001750: 33 85 a5 00  	add	a0, a1, a0
80001754: d3 04 00 d2  	fcvt.d.w	fs1, zero
;   if (prec == 0U) {
80001758: 63 0c 0c 0c  	beqz	s8, 0x80001830 <.LBB4_90+0x130>
8000175c: 13 06 00 00  	mv	a2, zero
80001760: 93 05 81 00  	addi	a1, sp, 8
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001764: 33 83 85 00  	add	t1, a1, s0
80001768: 93 02 00 02  	addi	t0, zero, 32
8000176c: 33 87 82 40  	sub	a4, t0, s0
80001770: b7 d5 cc cc  	lui	a1, 838861
80001774: 93 83 d5 cc  	addi	t2, a1, -819
80001778: 13 08 a0 00  	addi	a6, zero, 10
8000177c: 93 08 90 00  	addi	a7, zero, 9
80001780: 63 04 c7 0c  	beq	a4, a2, 0x80001848 <.LBB4_90+0x148>
80001784: 93 05 05 00  	mv	a1, a0
;       if (!(frac /= 10U)) {
80001788: 33 35 75 02  	mulhu	a0, a0, t2
8000178c: 13 55 35 00  	srli	a0, a0, 3
80001790: b3 06 05 03  	mul	a3, a0, a6
80001794: b3 86 d5 40  	sub	a3, a1, a3
;       buf[len++] = (char)(48U + (frac % 10U));
80001798: 93 e6 06 03  	ori	a3, a3, 48
8000179c: b3 07 c3 00  	add	a5, t1, a2
800017a0: 23 80 d7 00  	sb	a3, 0(a5)
;       if (!(frac /= 10U)) {
800017a4: 13 06 16 00  	addi	a2, a2, 1
800017a8: e3 ec b8 fc  	bltu	a7, a1, 0x80001780 <.LBB4_90+0x80>
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800017ac: 33 05 c4 00  	add	a0, s0, a2
800017b0: 93 05 f5 ff  	addi	a1, a0, -1
800017b4: 93 06 e0 01  	addi	a3, zero, 30
800017b8: b3 b6 b6 00  	sltu	a3, a3, a1
800017bc: 33 47 cc 00  	xor	a4, s8, a2
800017c0: 13 37 17 00  	seqz	a4, a4
800017c4: b3 e6 e6 00  	or	a3, a3, a4
800017c8: 63 94 06 08  	bnez	a3, 0x80001850 <.LBB4_90+0x150>
800017cc: 13 05 81 00  	addi	a0, sp, 8
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
800017d0: 33 05 85 00  	add	a0, a0, s0
800017d4: 93 45 f6 ff  	not	a1, a2
800017d8: 33 8c 85 01  	add	s8, a1, s8
800017dc: 33 04 c4 00  	add	s0, s0, a2
800017e0: 93 05 f0 01  	addi	a1, zero, 31
800017e4: b3 86 85 40  	sub	a3, a1, s0
800017e8: 33 05 c5 00  	add	a0, a0, a2
800017ec: 93 05 0c 00  	mv	a1, s8
800017f0: 63 64 dc 00  	bltu	s8, a3, 0x800017f8 <.LBB4_90+0xf8>
800017f4: 93 85 06 00  	mv	a1, a3
800017f8: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
800017fc: 93 05 00 03  	addi	a1, zero, 48
80001800: 97 f0 ff ff  	auipc	ra, 1048575
80001804: e7 80 80 d5  	jalr	-680(ra)
80001808: 13 05 00 00  	mv	a0, zero
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
8000180c: b3 05 a4 00  	add	a1, s0, a0
80001810: 93 b5 f5 01  	sltiu	a1, a1, 31
80001814: 33 46 ac 00  	xor	a2, s8, a0
80001818: 33 36 c0 00  	snez	a2, a2
8000181c: 33 f6 c5 00  	and	a2, a1, a2
80001820: 13 05 15 00  	addi	a0, a0, 1
80001824: e3 14 06 fe  	bnez	a2, 0x8000180c <.LBB4_90+0x10c>
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001828: 33 05 a4 00  	add	a0, s0, a0
8000182c: 6f 00 80 02  	j	0x80001854 <.LBB4_90+0x154>
;     diff = value - (double)whole;
80001830: d3 80 04 d2  	fcvt.d.w	ft1, s1
80001834: d3 70 19 0a  	fsub.d	ft1, fs2, ft1
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001838: 53 05 10 a2  	fle.d	a0, ft0, ft1
8000183c: 33 f5 a4 00  	and	a0, s1, a0
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
80001840: b3 84 a4 00  	add	s1, s1, a0
80001844: 6f 00 c0 03  	j	0x80001880 <.LBB4_90+0x180>
80001848: 13 04 00 02  	addi	s0, zero, 32
8000184c: 6f 00 80 03  	j	0x80001884 <.LBB4_90+0x184>
80001850: 93 b5 f5 01  	sltiu	a1, a1, 31
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001854: 63 8e 05 00  	beqz	a1, 0x80001870 <.LBB4_90+0x170>
;       buf[len++] = '.';
80001858: 13 04 15 00  	addi	s0, a0, 1
8000185c: 93 05 81 00  	addi	a1, sp, 8
;       buf[len++] = '.';
80001860: 33 85 a5 00  	add	a0, a1, a0
80001864: 93 05 e0 02  	addi	a1, zero, 46
80001868: 23 00 b5 00  	sb	a1, 0(a0)
8000186c: 6f 00 80 00  	j	0x80001874 <.LBB4_90+0x174>
80001870: 13 04 05 00  	mv	s0, a0
80001874: 13 05 00 02  	addi	a0, zero, 32
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
80001878: 93 02 04 00  	mv	t0, s0
8000187c: 63 64 85 00  	bltu	a0, s0, 0x80001884 <.LBB4_90+0x184>
80001880: 93 02 00 02  	addi	t0, zero, 32
80001884: d3 1c 94 a2  	flt.d	s9, fs0, fs1
80001888: 37 65 66 66  	lui	a0, 419430
8000188c: 93 05 75 66  	addi	a1, a0, 1639
80001890: 13 08 a0 00  	addi	a6, zero, 10
80001894: 93 06 81 00  	addi	a3, sp, 8
80001898: 13 07 20 01  	addi	a4, zero, 18
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
8000189c: 63 80 82 04  	beq	t0, s0, 0x800018dc <.LBB4_90+0x1dc>
;     if (!(whole /= 10)) {
800018a0: 33 95 b4 02  	mulh	a0, s1, a1
800018a4: 93 57 f5 01  	srli	a5, a0, 31
800018a8: 13 55 25 40  	srai	a0, a0, 2
800018ac: 33 05 f5 00  	add	a0, a0, a5
800018b0: b3 07 05 03  	mul	a5, a0, a6
800018b4: b3 87 f4 40  	sub	a5, s1, a5
;     buf[len++] = (char)(48 + (whole % 10));
800018b8: 93 87 07 03  	addi	a5, a5, 48
800018bc: 13 0c 14 00  	addi	s8, s0, 1
800018c0: 33 84 86 00  	add	s0, a3, s0
;     if (!(whole /= 10)) {
800018c4: 13 86 94 00  	addi	a2, s1, 9
;     buf[len++] = (char)(48 + (whole % 10));
800018c8: 23 00 f4 00  	sb	a5, 0(s0)
800018cc: 13 04 0c 00  	mv	s0, s8
800018d0: 93 04 05 00  	mv	s1, a0
;     if (!(whole /= 10)) {
800018d4: e3 64 c7 fc  	bltu	a4, a2, 0x8000189c <.LBB4_90+0x19c>
800018d8: 6f 00 80 00  	j	0x800018e0 <.LBB4_90+0x1e0>
800018dc: 13 8c 02 00  	mv	s8, t0
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800018e0: 93 f4 3a 00  	andi	s1, s5, 3
800018e4: 13 05 10 00  	addi	a0, zero, 1
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
800018e8: 63 96 a4 06  	bne	s1, a0, 0x80001954 <.LBB4_90+0x254>
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800018ec: 63 0c 09 00  	beqz	s2, 0x80001904 <.LBB4_90+0x204>
800018f0: 13 f5 ca 00  	andi	a0, s5, 12
800018f4: 33 35 a0 00  	snez	a0, a0
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
800018f8: 33 e5 ac 00  	or	a0, s9, a0
800018fc: 33 09 a9 40  	sub	s2, s2, a0
80001900: 6f 00 80 00  	j	0x80001908 <.LBB4_90+0x208>
80001904: 13 09 00 00  	mv	s2, zero
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001908: 33 35 2c 01  	sltu	a0, s8, s2
8000190c: 93 45 15 00  	xori	a1, a0, 1
80001910: 13 05 f0 01  	addi	a0, zero, 31
80001914: 33 36 85 01  	sltu	a2, a0, s8
80001918: b3 65 b6 00  	or	a1, a2, a1
8000191c: 63 9c 05 02  	bnez	a1, 0x80001954 <.LBB4_90+0x254>
80001920: 93 06 81 00  	addi	a3, sp, 8
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001924: 93 45 fc ff  	not	a1, s8
80001928: b3 05 b9 00  	add	a1, s2, a1
8000192c: 33 06 85 41  	sub	a2, a0, s8
80001930: 33 85 86 01  	add	a0, a3, s8
80001934: 63 e4 c5 00  	bltu	a1, a2, 0x8000193c <.LBB4_90+0x23c>
80001938: 93 05 06 00  	mv	a1, a2
8000193c: 13 84 15 00  	addi	s0, a1, 1
;       buf[len++] = '0';
80001940: 93 05 00 03  	addi	a1, zero, 48
80001944: 13 06 04 00  	mv	a2, s0
80001948: 97 f0 ff ff  	auipc	ra, 1048575
8000194c: e7 80 00 c1  	jalr	-1008(ra)
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
80001950: 33 0c 84 01  	add	s8, s0, s8
80001954: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
80001958: 63 6a 85 05  	bltu	a0, s8, 0x800019ac <.LBB4_90+0x2ac>
;     if (negative) {
8000195c: 63 8c 0c 00  	beqz	s9, 0x80001974 <.LBB4_90+0x274>
80001960: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '-';
80001964: 33 05 85 01  	add	a0, a0, s8
80001968: 13 0c 1c 00  	addi	s8, s8, 1
8000196c: 93 05 d0 02  	addi	a1, zero, 45
80001970: 6f 00 80 03  	j	0x800019a8 <.LBB4_90+0x2a8>
;     else if (flags & FLAGS_PLUS) {
80001974: 13 f5 4a 00  	andi	a0, s5, 4
80001978: 63 10 05 02  	bnez	a0, 0x80001998 <.LBB4_90+0x298>
;     else if (flags & FLAGS_SPACE) {
8000197c: 13 f5 8a 00  	andi	a0, s5, 8
80001980: 63 06 05 02  	beqz	a0, 0x800019ac <.LBB4_90+0x2ac>
80001984: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = ' ';
80001988: 33 05 85 01  	add	a0, a0, s8
8000198c: 13 0c 1c 00  	addi	s8, s8, 1
80001990: 93 05 00 02  	addi	a1, zero, 32
80001994: 6f 00 40 01  	j	0x800019a8 <.LBB4_90+0x2a8>
80001998: 13 05 81 00  	addi	a0, sp, 8
;       buf[len++] = '+';  // ignore the space if the '+' exists
8000199c: 33 05 85 01  	add	a0, a0, s8
800019a0: 13 0c 1c 00  	addi	s8, s8, 1
800019a4: 93 05 b0 02  	addi	a1, zero, 43
800019a8: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800019ac: 33 35 90 00  	snez	a0, s1
800019b0: b3 35 2c 01  	sltu	a1, s8, s2
800019b4: 93 c5 15 00  	xori	a1, a1, 1
800019b8: 33 65 b5 00  	or	a0, a0, a1
800019bc: 93 fa 2a 00  	andi	s5, s5, 2
800019c0: 13 04 0a 00  	mv	s0, s4
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
800019c4: 63 16 05 02  	bnez	a0, 0x800019f0 <.LBB4_90+0x2f0>
;     for (size_t i = len; i < width; i++) {
800019c8: b3 04 89 41  	sub	s1, s2, s8
800019cc: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
800019d0: 13 04 16 00  	addi	s0, a2, 1
800019d4: 13 05 00 02  	addi	a0, zero, 32
800019d8: 93 05 0b 00  	mv	a1, s6
800019dc: 93 86 09 00  	mv	a3, s3
800019e0: e7 80 0b 00  	jalr	s7
;     for (size_t i = len; i < width; i++) {
800019e4: 93 84 f4 ff  	addi	s1, s1, -1
800019e8: 13 06 04 00  	mv	a2, s0
800019ec: e3 92 04 fe  	bnez	s1, 0x800019d0 <.LBB4_90+0x2d0>
800019f0: 93 da 1a 00  	srli	s5, s5, 1
;   while (len) {
800019f4: 63 0c 0c 02  	beqz	s8, 0x80001a2c <.LBB4_90+0x32c>
800019f8: 93 0c 71 00  	addi	s9, sp, 7
;     out(buf[--len], buffer, idx++, maxlen);
800019fc: 33 85 8c 01  	add	a0, s9, s8
80001a00: 03 45 05 00  	lbu	a0, 0(a0)
80001a04: 13 0d fc ff  	addi	s10, s8, -1
80001a08: 93 04 14 00  	addi	s1, s0, 1
80001a0c: 93 05 0b 00  	mv	a1, s6
80001a10: 13 06 04 00  	mv	a2, s0
80001a14: 93 86 09 00  	mv	a3, s3
80001a18: e7 80 0b 00  	jalr	s7
80001a1c: 13 84 04 00  	mv	s0, s1
80001a20: 13 0c 0d 00  	mv	s8, s10
;   while (len) {
80001a24: e3 1c 0d fc  	bnez	s10, 0x800019fc <.LBB4_90+0x2fc>
80001a28: 6f 00 80 00  	j	0x80001a30 <.LBB4_90+0x330>
80001a2c: 93 04 04 00  	mv	s1, s0
80001a30: 33 85 44 41  	sub	a0, s1, s4
80001a34: 33 35 25 01  	sltu	a0, a0, s2
80001a38: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
80001a3c: 93 c5 1a 00  	xori	a1, s5, 1
80001a40: 33 e5 a5 00  	or	a0, a1, a0
80001a44: 63 18 05 02  	bnez	a0, 0x80001a74 <.LBB4_90+0x374>
;     while (idx - start_idx < width) {
80001a48: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
80001a4c: 13 84 14 00  	addi	s0, s1, 1
80001a50: 13 05 00 02  	addi	a0, zero, 32
80001a54: 93 05 0b 00  	mv	a1, s6
80001a58: 13 86 04 00  	mv	a2, s1
80001a5c: 93 86 09 00  	mv	a3, s3
80001a60: e7 80 0b 00  	jalr	s7
;     while (idx - start_idx < width) {
80001a64: 33 05 8a 00  	add	a0, s4, s0
80001a68: 93 04 04 00  	mv	s1, s0
80001a6c: e3 60 25 ff  	bltu	a0, s2, 0x80001a4c <.LBB4_90+0x34c>
80001a70: 6f 00 80 00  	j	0x80001a78 <.LBB4_90+0x378>
80001a74: 13 84 04 00  	mv	s0, s1
; }
80001a78: 13 05 04 00  	mv	a0, s0
80001a7c: 07 39 81 02  	fld	fs2, 40(sp)
80001a80: 87 34 01 03  	fld	fs1, 48(sp)
80001a84: 07 34 81 03  	fld	fs0, 56(sp)
80001a88: 03 2d 01 04  	lw	s10, 64(sp)
80001a8c: 83 2c 41 04  	lw	s9, 68(sp)
80001a90: 03 2c 81 04  	lw	s8, 72(sp)
80001a94: 83 2b c1 04  	lw	s7, 76(sp)
80001a98: 03 2b 01 05  	lw	s6, 80(sp)
80001a9c: 83 2a 41 05  	lw	s5, 84(sp)
80001aa0: 03 2a 81 05  	lw	s4, 88(sp)
80001aa4: 83 29 c1 05  	lw	s3, 92(sp)
80001aa8: 03 29 01 06  	lw	s2, 96(sp)
80001aac: 83 24 41 06  	lw	s1, 100(sp)
80001ab0: 03 24 81 06  	lw	s0, 104(sp)
80001ab4: 83 20 c1 06  	lw	ra, 108(sp)
80001ab8: 13 01 01 07  	addi	sp, sp, 112
80001abc: 67 80 00 00  	ret

80001ac0 <_etoa>:
; {
80001ac0: 13 01 01 f9  	addi	sp, sp, -112
80001ac4: 23 26 11 06  	sw	ra, 108(sp)
80001ac8: 23 24 81 06  	sw	s0, 104(sp)
80001acc: 23 22 91 06  	sw	s1, 100(sp)
80001ad0: 23 20 21 07  	sw	s2, 96(sp)
80001ad4: 23 2e 31 05  	sw	s3, 92(sp)
80001ad8: 23 2c 41 05  	sw	s4, 88(sp)
80001adc: 23 2a 51 05  	sw	s5, 84(sp)
80001ae0: 23 28 61 05  	sw	s6, 80(sp)
80001ae4: 23 26 71 05  	sw	s7, 76(sp)
80001ae8: 23 24 81 05  	sw	s8, 72(sp)
80001aec: 23 22 91 05  	sw	s9, 68(sp)
80001af0: 23 20 a1 05  	sw	s10, 64(sp)
80001af4: 23 2e b1 03  	sw	s11, 60(sp)

80001af8 <.LBB5_43>:
80001af8: 97 24 00 00  	auipc	s1, 2
80001afc: 93 84 84 91  	addi	s1, s1, -1768
80001b00: 87 b0 04 00  	fld	ft1, 0(s1)

80001b04 <.LBB5_44>:
80001b04: 97 24 00 00  	auipc	s1, 2
80001b08: 93 84 44 91  	addi	s1, s1, -1772
80001b0c: 07 b1 04 00  	fld	ft2, 0(s1)
80001b10: 53 00 a5 22  	fmv.d	ft0, fa0
80001b14: d3 04 15 a2  	fle.d	s1, fa0, ft1
80001b18: 53 04 a1 a2  	fle.d	s0, ft2, fa0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001b1c: b3 f4 84 00  	and	s1, s1, s0
80001b20: 93 0a 08 00  	mv	s5, a6
80001b24: 13 89 07 00  	mv	s2, a5
80001b28: 93 07 07 00  	mv	a5, a4
80001b2c: 93 89 06 00  	mv	s3, a3
80001b30: 13 0a 06 00  	mv	s4, a2
80001b34: 13 8b 05 00  	mv	s6, a1
80001b38: 93 0b 05 00  	mv	s7, a0
;   if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
80001b3c: 63 92 04 06  	bnez	s1, 0x80001ba0 <.LBB5_44+0x9c>
;     return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
80001b40: 13 85 0b 00  	mv	a0, s7
80001b44: 93 05 0b 00  	mv	a1, s6
80001b48: 13 06 0a 00  	mv	a2, s4
80001b4c: 93 86 09 00  	mv	a3, s3
80001b50: 53 05 00 22  	fmv.d	fa0, ft0
80001b54: 13 87 07 00  	mv	a4, a5
80001b58: 93 07 09 00  	mv	a5, s2
80001b5c: 13 88 0a 00  	mv	a6, s5
80001b60: 83 2d c1 03  	lw	s11, 60(sp)
80001b64: 03 2d 01 04  	lw	s10, 64(sp)
80001b68: 83 2c 41 04  	lw	s9, 68(sp)
80001b6c: 03 2c 81 04  	lw	s8, 72(sp)
80001b70: 83 2b c1 04  	lw	s7, 76(sp)
80001b74: 03 2b 01 05  	lw	s6, 80(sp)
80001b78: 83 2a 41 05  	lw	s5, 84(sp)
80001b7c: 03 2a 81 05  	lw	s4, 88(sp)
80001b80: 83 29 c1 05  	lw	s3, 92(sp)
80001b84: 03 29 01 06  	lw	s2, 96(sp)
80001b88: 83 24 41 06  	lw	s1, 100(sp)
80001b8c: 03 24 81 06  	lw	s0, 104(sp)
80001b90: 83 20 c1 06  	lw	ra, 108(sp)
80001b94: 13 01 01 07  	addi	sp, sp, 112
80001b98: 17 03 00 00  	auipc	t1, 0
80001b9c: 67 00 83 84  	jr	-1976(t1)
;   if (negative) {
80001ba0: 53 25 00 22  	fabs.d	fa0, ft0
;   if (!(flags & FLAGS_PRECISION)) {
80001ba4: 13 f5 0a 40  	andi	a0, s5, 1024
80001ba8: 13 07 60 00  	addi	a4, zero, 6
80001bac: 63 04 05 00  	beqz	a0, 0x80001bb4 <.LBB5_44+0xb0>
80001bb0: 13 87 07 00  	mv	a4, a5
;   conv.F = value;
80001bb4: 27 38 a1 00  	fsd	fa0, 16(sp)
80001bb8: 83 25 41 01  	lw	a1, 20(sp)
80001bbc: 03 26 01 01  	lw	a2, 16(sp)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001bc0: 93 d6 45 01  	srli	a3, a1, 20
80001bc4: b7 07 10 00  	lui	a5, 256
80001bc8: 93 87 f7 ff  	addi	a5, a5, -1
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001bcc: b3 f5 f5 00  	and	a1, a1, a5
80001bd0: 23 24 c1 00  	sw	a2, 8(sp)
80001bd4: 37 06 f0 3f  	lui	a2, 261888
;   conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
80001bd8: b3 e5 c5 00  	or	a1, a1, a2
80001bdc: 23 26 b1 00  	sw	a1, 12(sp)
80001be0: 87 30 81 00  	fld	ft1, 8(sp)

80001be4 <.LBB5_45>:
80001be4: 97 25 00 00  	auipc	a1, 2
80001be8: 93 85 c5 83  	addi	a1, a1, -1988
80001bec: 07 b1 05 00  	fld	ft2, 0(a1)

80001bf0 <.LBB5_46>:
80001bf0: 97 25 00 00  	auipc	a1, 2
80001bf4: 93 85 85 83  	addi	a1, a1, -1992
80001bf8: 87 b1 05 00  	fld	ft3, 0(a1)
;   int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
80001bfc: 93 f5 f6 7f  	andi	a1, a3, 2047
80001c00: 93 85 15 c0  	addi	a1, a1, -1023
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001c04: 53 82 05 d2  	fcvt.d.w	ft4, a1
80001c08: c3 f0 30 12  	fmadd.d	ft1, ft1, ft3, ft2

80001c0c <.LBB5_47>:
80001c0c: 97 25 00 00  	auipc	a1, 2
80001c10: 93 85 45 82  	addi	a1, a1, -2012
80001c14: 07 b1 05 00  	fld	ft2, 0(a1)

80001c18 <.LBB5_48>:
80001c18: 97 25 00 00  	auipc	a1, 2
80001c1c: 93 85 05 82  	addi	a1, a1, -2016
80001c20: 87 b1 05 00  	fld	ft3, 0(a1)

80001c24 <.LBB5_49>:
80001c24: 97 25 00 00  	auipc	a1, 2
80001c28: 93 85 c5 81  	addi	a1, a1, -2020
80001c2c: 87 b2 05 00  	fld	ft5, 0(a1)
;   int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
80001c30: c3 70 22 0a  	fmadd.d	ft1, ft4, ft2, ft1
80001c34: d3 95 00 c2  	fcvt.w.d	a1, ft1, rtz
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001c38: d3 80 05 d2  	fcvt.d.w	ft1, a1
80001c3c: 43 f1 50 1a  	fmadd.d	ft2, ft1, ft5, ft3

80001c40 <.LBB5_50>:
80001c40: 17 26 00 00  	auipc	a2, 2
80001c44: 13 06 86 80  	addi	a2, a2, -2040
80001c48: 87 31 06 00  	fld	ft3, 0(a2)

80001c4c <.LBB5_51>:
80001c4c: 17 26 00 00  	auipc	a2, 2
80001c50: 13 06 46 80  	addi	a2, a2, -2044
80001c54: 07 32 06 00  	fld	ft4, 0(a2)
;   exp2 = (int)(expval * 3.321928094887362 + 0.5);
80001c58: 53 16 01 c2  	fcvt.w.d	a2, ft2, rtz
;   const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
80001c5c: 53 01 06 d2  	fcvt.d.w	ft2, a2
80001c60: 53 71 31 12  	fmul.d	ft2, ft2, ft3
80001c64: c3 f0 40 12  	fmadd.d	ft1, ft1, ft4, ft2
;   const double z2 = z * z;
80001c68: 53 f1 10 12  	fmul.d	ft2, ft1, ft1
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80001c6c: 13 06 f6 3f  	addi	a2, a2, 1023
80001c70: 23 20 01 00  	sw	zero, 0(sp)
80001c74: 13 16 46 01  	slli	a2, a2, 20
80001c78: 23 22 c1 00  	sw	a2, 4(sp)

80001c7c <.LBB5_52>:
80001c7c: 17 16 00 00  	auipc	a2, 1
80001c80: 13 06 46 7e  	addi	a2, a2, 2020
80001c84: 87 31 06 00  	fld	ft3, 0(a2)

80001c88 <.LBB5_53>:
80001c88: 17 16 00 00  	auipc	a2, 1
80001c8c: 13 06 06 7e  	addi	a2, a2, 2016
80001c90: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.U = (uint64_t)(exp2 + 1023) << 52U;
80001c94: 87 32 01 00  	fld	ft5, 0(sp)

80001c98 <.LBB5_54>:
80001c98: 17 16 00 00  	auipc	a2, 1
80001c9c: 13 06 06 7c  	addi	a2, a2, 1984
80001ca0: 07 33 06 00  	fld	ft6, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80001ca4: c3 71 41 1a  	fmadd.d	ft3, ft2, ft4, ft3

80001ca8 <.LBB5_55>:
80001ca8: 17 16 00 00  	auipc	a2, 1
80001cac: 13 06 86 7c  	addi	a2, a2, 1992
80001cb0: 07 32 06 00  	fld	ft4, 0(a2)
;   conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
80001cb4: 53 73 13 0a  	fsub.d	ft6, ft6, ft1
80001cb8: d3 f0 10 02  	fadd.d	ft1, ft1, ft1
80001cbc: d3 71 31 1a  	fdiv.d	ft3, ft2, ft3
80001cc0: d3 f1 41 02  	fadd.d	ft3, ft3, ft4
80001cc4: 53 71 31 1a  	fdiv.d	ft2, ft2, ft3
80001cc8: 53 71 23 02  	fadd.d	ft2, ft6, ft2
80001ccc: d3 f0 20 1a  	fdiv.d	ft1, ft1, ft2
80001cd0: c3 f0 50 2a  	fmadd.d	ft1, ft1, ft5, ft5
;   if (value < conv.F) {
80001cd4: 53 16 15 a2  	flt.d	a2, fa0, ft1
80001cd8: 63 0a 06 00  	beqz	a2, 0x80001cec <.LBB5_56+0x10>

80001cdc <.LBB5_56>:
80001cdc: 97 16 00 00  	auipc	a3, 1
80001ce0: 93 86 c6 79  	addi	a3, a3, 1948
80001ce4: 07 b1 06 00  	fld	ft2, 0(a3)
80001ce8: d3 f0 20 12  	fmul.d	ft1, ft1, ft2
;   if (value < conv.F) {
80001cec: 33 8d c5 40  	sub	s10, a1, a2
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80001cf0: 93 05 3d 06  	addi	a1, s10, 99
80001cf4: 93 b5 75 0c  	sltiu	a1, a1, 199
80001cf8: 13 06 50 00  	addi	a2, zero, 5
80001cfc: b7 16 00 00  	lui	a3, 1
80001d00: 93 86 06 80  	addi	a3, a3, -2048
;   if (flags & FLAGS_ADAPT_EXP) {
80001d04: b3 f6 da 00  	and	a3, s5, a3
;   unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
80001d08: b3 0c b6 40  	sub	s9, a2, a1
;   if (flags & FLAGS_ADAPT_EXP) {
80001d0c: 63 84 06 06  	beqz	a3, 0x80001d74 <.LBB5_58+0x58>

80001d10 <.LBB5_57>:
80001d10: 97 15 00 00  	auipc	a1, 1
80001d14: 93 85 05 77  	addi	a1, a1, 1904
80001d18: 07 b1 05 00  	fld	ft2, 0(a1)

80001d1c <.LBB5_58>:
80001d1c: 97 15 00 00  	auipc	a1, 1
80001d20: 93 85 c5 76  	addi	a1, a1, 1900
80001d24: 87 b1 05 00  	fld	ft3, 0(a1)
;     if ((value >= 1e-4) && (value < 1e6)) {
80001d28: d3 15 25 a2  	flt.d	a1, fa0, ft2
80001d2c: 53 86 a1 a2  	fle.d	a2, ft3, fa0
80001d30: b3 e5 c5 00  	or	a1, a1, a2
80001d34: 63 98 05 00  	bnez	a1, 0x80001d44 <.LBB5_58+0x28>
;       if ((int)prec > expval) {
80001d38: 63 40 ed 02  	blt	s10, a4, 0x80001d58 <.LBB5_58+0x3c>
80001d3c: 13 07 00 00  	mv	a4, zero
80001d40: 6f 00 00 02  	j	0x80001d60 <.LBB5_58+0x44>
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80001d44: 63 06 07 02  	beqz	a4, 0x80001d70 <.LBB5_58+0x54>
80001d48: 13 35 15 00  	seqz	a0, a0
;       if ((prec > 0) && (flags & FLAGS_PRECISION)) {
80001d4c: 13 45 15 00  	xori	a0, a0, 1
80001d50: 33 07 a7 40  	sub	a4, a4, a0
80001d54: 6f 00 00 02  	j	0x80001d74 <.LBB5_58+0x58>
80001d58: 13 45 fd ff  	not	a0, s10
80001d5c: 33 07 a7 00  	add	a4, a4, a0
80001d60: 13 0d 00 00  	mv	s10, zero
80001d64: 93 0c 00 00  	mv	s9, zero
;       flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
80001d68: 93 ea 0a 40  	ori	s5, s5, 1024
80001d6c: 6f 00 80 00  	j	0x80001d74 <.LBB5_58+0x58>
80001d70: 13 07 00 00  	mv	a4, zero
;   if (width > minwidth) {
80001d74: b3 05 99 41  	sub	a1, s2, s9
80001d78: 33 36 b9 00  	sltu	a2, s2, a1
80001d7c: 13 05 00 00  	mv	a0, zero
80001d80: 63 14 06 00  	bnez	a2, 0x80001d88 <.LBB5_58+0x6c>
80001d84: 13 85 05 00  	mv	a0, a1
;   if ((flags & FLAGS_LEFT) && minwidth) {
80001d88: 93 07 00 00  	mv	a5, zero
80001d8c: 93 d5 1a 00  	srli	a1, s5, 1
80001d90: 13 fc 15 00  	andi	s8, a1, 1
80001d94: b3 35 90 01  	snez	a1, s9
80001d98: b3 75 bc 00  	and	a1, s8, a1
80001d9c: 53 01 00 d2  	fcvt.d.w	ft2, zero
80001da0: 63 94 05 00  	bnez	a1, 0x80001da8 <.LBB5_58+0x8c>
80001da4: 93 07 05 00  	mv	a5, a0
;   if (expval) {
80001da8: 93 35 1d 00  	seqz	a1, s10
80001dac: 53 15 20 a2  	flt.d	a0, ft0, ft2
;   if (expval) {
80001db0: 63 94 05 00  	bnez	a1, 0x80001db8 <.LBB5_58+0x9c>
80001db4: 53 75 15 1a  	fdiv.d	fa0, fa0, ft1
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80001db8: 63 04 05 00  	beqz	a0, 0x80001dc0 <.LBB5_58+0xa4>
80001dbc: 53 15 a5 22  	fneg.d	fa0, fa0
80001dc0: 37 f5 ff ff  	lui	a0, 1048575
80001dc4: 13 05 f5 7f  	addi	a0, a0, 2047
;   idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
80001dc8: 33 f8 aa 00  	and	a6, s5, a0
80001dcc: 13 85 0b 00  	mv	a0, s7
80001dd0: 93 05 0b 00  	mv	a1, s6
80001dd4: 13 06 0a 00  	mv	a2, s4
80001dd8: 93 86 09 00  	mv	a3, s3
80001ddc: 97 f0 ff ff  	auipc	ra, 1048575
80001de0: e7 80 40 60  	jalr	1540(ra)
80001de4: 93 0d 05 00  	mv	s11, a0
;   if (minwidth) {
80001de8: 63 8e 0c 16  	beqz	s9, 0x80001f64 <.LBB5_58+0x248>
;     out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
80001dec: 13 f5 0a 02  	andi	a0, s5, 32
80001df0: 13 45 55 06  	xori	a0, a0, 101
80001df4: 93 05 0b 00  	mv	a1, s6
80001df8: 13 86 0d 00  	mv	a2, s11
80001dfc: 93 86 09 00  	mv	a3, s3
80001e00: e7 80 0b 00  	jalr	s7
80001e04: 13 04 00 00  	mv	s0, zero
;     idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
80001e08: 93 5a fd 01  	srli	s5, s10, 31
80001e0c: 13 55 fd 41  	srai	a0, s10, 31
80001e10: b3 05 ad 00  	add	a1, s10, a0
80001e14: b3 c7 a5 00  	xor	a5, a1, a0
80001e18: 37 d5 cc cc  	lui	a0, 838861
80001e1c: 93 05 d5 cc  	addi	a1, a0, -819
80001e20: 13 08 a0 00  	addi	a6, zero, 10
80001e24: 93 08 c1 01  	addi	a7, sp, 28
80001e28: 93 02 90 00  	addi	t0, zero, 9
;       value /= base;
80001e2c: 33 b5 b7 02  	mulhu	a0, a5, a1
80001e30: 13 56 35 00  	srli	a2, a0, 3
80001e34: 33 05 06 03  	mul	a0, a2, a6
80001e38: 33 85 a7 40  	sub	a0, a5, a0
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e3c: 93 66 05 03  	ori	a3, a0, 48
80001e40: 33 87 88 00  	add	a4, a7, s0
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e44: 13 35 f4 01  	sltiu	a0, s0, 31
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e48: 13 04 14 00  	addi	s0, s0, 1
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e4c: b3 b7 f2 00  	sltu	a5, t0, a5
80001e50: b3 74 f5 00  	and	s1, a0, a5
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
80001e54: 23 00 d7 00  	sb	a3, 0(a4)
80001e58: 93 07 06 00  	mv	a5, a2
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
80001e5c: e3 98 04 fc  	bnez	s1, 0x80001e2c <.LBB5_58+0x110>
80001e60: 13 8d ec ff  	addi	s10, s9, -2
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80001e64: b3 35 a4 01  	sltu	a1, s0, s10
80001e68: 93 c5 15 00  	xori	a1, a1, 1
80001e6c: 13 46 15 00  	xori	a2, a0, 1
80001e70: b3 65 b6 00  	or	a1, a2, a1
80001e74: 63 9a 05 04  	bnez	a1, 0x80001ec8 <.LBB5_58+0x1ac>
80001e78: 13 05 c1 01  	addi	a0, sp, 28
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80001e7c: b3 85 8c 40  	sub	a1, s9, s0
80001e80: 93 85 d5 ff  	addi	a1, a1, -3
80001e84: 13 06 f0 01  	addi	a2, zero, 31
80001e88: 33 06 86 40  	sub	a2, a2, s0
80001e8c: 33 05 85 00  	add	a0, a0, s0
80001e90: 63 e4 c5 00  	bltu	a1, a2, 0x80001e98 <.LBB5_58+0x17c>
80001e94: 93 05 06 00  	mv	a1, a2
80001e98: 13 86 15 00  	addi	a2, a1, 1
;       buf[len++] = '0';
80001e9c: 93 05 00 03  	addi	a1, zero, 48
80001ea0: 97 e0 ff ff  	auipc	ra, 1048574
80001ea4: e7 80 80 6b  	jalr	1720(ra)
80001ea8: 93 05 14 00  	addi	a1, s0, 1
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80001eac: 33 b6 a5 01  	sltu	a2, a1, s10
80001eb0: 13 35 f4 01  	sltiu	a0, s0, 31
80001eb4: 33 76 c5 00  	and	a2, a0, a2
80001eb8: 13 84 05 00  	mv	s0, a1
80001ebc: e3 16 06 fe  	bnez	a2, 0x80001ea8 <.LBB5_58+0x18c>
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80001ec0: 63 18 05 00  	bnez	a0, 0x80001ed0 <.LBB5_58+0x1b4>
80001ec4: 6f 00 80 02  	j	0x80001eec <.LBB5_58+0x1d0>
80001ec8: 93 05 04 00  	mv	a1, s0
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
80001ecc: 63 00 05 02  	beqz	a0, 0x80001eec <.LBB5_58+0x1d0>
80001ed0: 13 05 c1 01  	addi	a0, sp, 28
80001ed4: 33 05 b5 00  	add	a0, a0, a1
80001ed8: 13 06 d0 02  	addi	a2, zero, 45
80001edc: 63 94 0a 00  	bnez	s5, 0x80001ee4 <.LBB5_58+0x1c8>
80001ee0: 13 06 b0 02  	addi	a2, zero, 43
80001ee4: 93 85 15 00  	addi	a1, a1, 1
80001ee8: 23 00 c5 00  	sb	a2, 0(a0)
80001eec: 13 84 1d 00  	addi	s0, s11, 1
;   while (len) {
80001ef0: 93 0a b1 01  	addi	s5, sp, 27
;     out(buf[--len], buffer, idx++, maxlen);
80001ef4: 33 85 ba 00  	add	a0, s5, a1
80001ef8: 03 45 05 00  	lbu	a0, 0(a0)
80001efc: 13 06 04 00  	mv	a2, s0
80001f00: 93 84 f5 ff  	addi	s1, a1, -1
80001f04: 13 04 14 00  	addi	s0, s0, 1
80001f08: 93 05 0b 00  	mv	a1, s6
80001f0c: 93 86 09 00  	mv	a3, s3
80001f10: e7 80 0b 00  	jalr	s7
80001f14: 93 85 04 00  	mv	a1, s1
;   while (len) {
80001f18: e3 9e 04 fc  	bnez	s1, 0x80001ef4 <.LBB5_58+0x1d8>
80001f1c: 33 05 44 41  	sub	a0, s0, s4
80001f20: 33 35 25 01  	sltu	a0, a0, s2
80001f24: 13 45 15 00  	xori	a0, a0, 1
;     if (flags & FLAGS_LEFT) {
80001f28: 93 45 1c 00  	xori	a1, s8, 1
80001f2c: 33 e5 a5 00  	or	a0, a1, a0
80001f30: 63 18 05 02  	bnez	a0, 0x80001f60 <.LBB5_58+0x244>
;       while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
80001f34: 33 0a 40 41  	neg	s4, s4
80001f38: 93 0d 14 00  	addi	s11, s0, 1
80001f3c: 13 05 00 02  	addi	a0, zero, 32
80001f40: 93 05 0b 00  	mv	a1, s6
80001f44: 13 06 04 00  	mv	a2, s0
80001f48: 93 86 09 00  	mv	a3, s3
80001f4c: e7 80 0b 00  	jalr	s7
80001f50: 33 05 ba 01  	add	a0, s4, s11
80001f54: 13 84 0d 00  	mv	s0, s11
80001f58: e3 60 25 ff  	bltu	a0, s2, 0x80001f38 <.LBB5_58+0x21c>
80001f5c: 6f 00 80 00  	j	0x80001f64 <.LBB5_58+0x248>
80001f60: 93 0d 04 00  	mv	s11, s0
; }
80001f64: 13 85 0d 00  	mv	a0, s11
80001f68: 83 2d c1 03  	lw	s11, 60(sp)
80001f6c: 03 2d 01 04  	lw	s10, 64(sp)
80001f70: 83 2c 41 04  	lw	s9, 68(sp)
80001f74: 03 2c 81 04  	lw	s8, 72(sp)
80001f78: 83 2b c1 04  	lw	s7, 76(sp)
80001f7c: 03 2b 01 05  	lw	s6, 80(sp)
80001f80: 83 2a 41 05  	lw	s5, 84(sp)
80001f84: 03 2a 81 05  	lw	s4, 88(sp)
80001f88: 83 29 c1 05  	lw	s3, 92(sp)
80001f8c: 03 29 01 06  	lw	s2, 96(sp)
80001f90: 83 24 41 06  	lw	s1, 100(sp)
80001f94: 03 24 81 06  	lw	s0, 104(sp)
80001f98: 83 20 c1 06  	lw	ra, 108(sp)
80001f9c: 13 01 01 07  	addi	sp, sp, 112
80001fa0: 67 80 00 00  	ret

80001fa4 <_ntoa_format>:
; {
80001fa4: 13 01 01 fc  	addi	sp, sp, -64
80001fa8: 23 2e 11 02  	sw	ra, 60(sp)
80001fac: 23 2c 81 02  	sw	s0, 56(sp)
80001fb0: 23 2a 91 02  	sw	s1, 52(sp)
80001fb4: 23 28 21 03  	sw	s2, 48(sp)
80001fb8: 23 26 31 03  	sw	s3, 44(sp)
80001fbc: 23 24 41 03  	sw	s4, 40(sp)
80001fc0: 23 22 51 03  	sw	s5, 36(sp)
80001fc4: 23 20 61 03  	sw	s6, 32(sp)
80001fc8: 23 2e 71 01  	sw	s7, 28(sp)
80001fcc: 23 2c 81 01  	sw	s8, 24(sp)
80001fd0: 23 2a 91 01  	sw	s9, 20(sp)
80001fd4: 23 28 a1 01  	sw	s10, 16(sp)
80001fd8: 23 26 b1 01  	sw	s11, 12(sp)
80001fdc: 93 8b 0e 00  	mv	s7, t4
;   if (!(flags & FLAGS_LEFT)) {
80001fe0: 93 fa 2e 00  	andi	s5, t4, 2
80001fe4: 13 09 0e 00  	mv	s2, t3
80001fe8: 13 8d 03 00  	mv	s10, t2
80001fec: 93 0c 08 00  	mv	s9, a6
80001ff0: 13 8c 07 00  	mv	s8, a5
80001ff4: 93 04 07 00  	mv	s1, a4
80001ff8: 93 89 06 00  	mv	s3, a3
80001ffc: 13 0a 06 00  	mv	s4, a2
80002000: 13 8b 05 00  	mv	s6, a1
80002004: 93 0d 05 00  	mv	s11, a0
;   if (!(flags & FLAGS_LEFT)) {
80002008: 63 92 0a 0e  	bnez	s5, 0x800020ec <_ntoa_format+0x148>
8000200c: 13 f4 1b 00  	andi	s0, s7, 1
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002010: 63 0e 09 00  	beqz	s2, 0x8000202c <_ntoa_format+0x88>
80002014: 63 0e 04 00  	beqz	s0, 0x80002030 <_ntoa_format+0x8c>
80002018: 13 f5 cb 00  	andi	a0, s7, 12
8000201c: 33 35 a0 00  	snez	a0, a0
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
80002020: 33 65 95 01  	or	a0, a0, s9
80002024: 33 09 a9 40  	sub	s2, s2, a0
80002028: 6f 00 80 00  	j	0x80002030 <_ntoa_format+0x8c>
8000202c: 13 09 00 00  	mv	s2, zero
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002030: 33 35 ac 01  	sltu	a0, s8, s10
80002034: 93 45 15 00  	xori	a1, a0, 1
80002038: 13 05 f0 01  	addi	a0, zero, 31
8000203c: 33 36 85 01  	sltu	a2, a0, s8
80002040: b3 65 b6 00  	or	a1, a2, a1
80002044: 63 9a 05 04  	bnez	a1, 0x80002098 <_ntoa_format+0xf4>
80002048: 23 24 11 01  	sw	a7, 8(sp)
8000204c: 23 22 91 01  	sw	s9, 4(sp)
80002050: 93 8c 0a 00  	mv	s9, s5
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002054: 93 45 fc ff  	not	a1, s8
80002058: b3 85 a5 01  	add	a1, a1, s10
8000205c: 33 06 85 41  	sub	a2, a0, s8
80002060: 93 8a 04 00  	mv	s5, s1
80002064: 33 85 84 01  	add	a0, s1, s8
80002068: 63 e4 c5 00  	bltu	a1, a2, 0x80002070 <_ntoa_format+0xcc>
8000206c: 93 05 06 00  	mv	a1, a2
80002070: 93 84 15 00  	addi	s1, a1, 1
;       buf[len++] = '0';
80002074: 93 05 00 03  	addi	a1, zero, 48
80002078: 13 86 04 00  	mv	a2, s1
8000207c: 97 e0 ff ff  	auipc	ra, 1048574
80002080: e7 80 c0 4d  	jalr	1244(ra)
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002084: 33 8c 84 01  	add	s8, s1, s8
80002088: 93 84 0a 00  	mv	s1, s5
8000208c: 93 8a 0c 00  	mv	s5, s9
80002090: 83 2c 41 00  	lw	s9, 4(sp)
80002094: 83 28 81 00  	lw	a7, 8(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002098: 63 0a 04 04  	beqz	s0, 0x800020ec <_ntoa_format+0x148>
8000209c: 33 35 2c 01  	sltu	a0, s8, s2
800020a0: 93 45 15 00  	xori	a1, a0, 1
800020a4: 13 05 f0 01  	addi	a0, zero, 31
800020a8: 33 36 85 01  	sltu	a2, a0, s8
800020ac: b3 e5 c5 00  	or	a1, a1, a2
800020b0: 63 9e 05 02  	bnez	a1, 0x800020ec <_ntoa_format+0x148>
800020b4: 23 24 11 01  	sw	a7, 8(sp)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800020b8: 93 45 fc ff  	not	a1, s8
800020bc: 33 04 b9 00  	add	s0, s2, a1
800020c0: b3 05 85 41  	sub	a1, a0, s8
800020c4: 33 85 84 01  	add	a0, s1, s8
800020c8: 63 64 b4 00  	bltu	s0, a1, 0x800020d0 <_ntoa_format+0x12c>
800020cc: 13 84 05 00  	mv	s0, a1
800020d0: 13 06 14 00  	addi	a2, s0, 1
;       buf[len++] = '0';
800020d4: 93 05 00 03  	addi	a1, zero, 48
800020d8: 97 e0 ff ff  	auipc	ra, 1048574
800020dc: e7 80 00 48  	jalr	1152(ra)
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
800020e0: 33 05 8c 00  	add	a0, s8, s0
800020e4: 13 0c 15 00  	addi	s8, a0, 1
800020e8: 83 28 81 00  	lw	a7, 8(sp)
;   if (flags & FLAGS_HASH) {
800020ec: 13 f5 0b 01  	andi	a0, s7, 16
800020f0: 63 02 05 0e  	beqz	a0, 0x800021d4 <_ntoa_format+0x230>
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
800020f4: 13 f5 0b 40  	andi	a0, s7, 1024
800020f8: 13 55 a5 00  	srli	a0, a0, 10
800020fc: 93 35 1c 00  	seqz	a1, s8
80002100: 33 65 b5 00  	or	a0, a0, a1
80002104: 63 1e 05 02  	bnez	a0, 0x80002140 <_ntoa_format+0x19c>
80002108: 33 45 ac 01  	xor	a0, s8, s10
8000210c: 33 35 a0 00  	snez	a0, a0
80002110: b3 45 2c 01  	xor	a1, s8, s2
80002114: b3 35 b0 00  	snez	a1, a1
80002118: 33 75 b5 00  	and	a0, a0, a1
8000211c: 63 12 05 02  	bnez	a0, 0x80002140 <_ntoa_format+0x19c>
;       len--;
80002120: 13 05 fc ff  	addi	a0, s8, -1
;       if (len && (base == 16U)) {
80002124: b3 35 a0 00  	snez	a1, a0
80002128: 13 86 08 ff  	addi	a2, a7, -16
8000212c: 13 36 16 00  	seqz	a2, a2
80002130: b3 75 b6 00  	and	a1, a2, a1
80002134: 63 84 05 00  	beqz	a1, 0x8000213c <_ntoa_format+0x198>
80002138: 13 05 ec ff  	addi	a0, s8, -2
8000213c: 13 0c 05 00  	mv	s8, a0
80002140: 13 05 00 01  	addi	a0, zero, 16
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002144: 63 96 a8 02  	bne	a7, a0, 0x80002170 <_ntoa_format+0x1cc>
80002148: 13 f5 0b 02  	andi	a0, s7, 32
8000214c: 93 55 55 00  	srli	a1, a0, 5
80002150: 13 06 f0 01  	addi	a2, zero, 31
80002154: 33 36 86 01  	sltu	a2, a2, s8
80002158: b3 e5 c5 00  	or	a1, a1, a2
8000215c: 63 9e 05 02  	bnez	a1, 0x80002198 <_ntoa_format+0x1f4>
;       buf[len++] = 'x';
80002160: 33 85 84 01  	add	a0, s1, s8
80002164: 13 0c 1c 00  	addi	s8, s8, 1
80002168: 93 05 80 07  	addi	a1, zero, 120
8000216c: 6f 00 c0 04  	j	0x800021b8 <_ntoa_format+0x214>
;     else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
80002170: 13 85 e8 ff  	addi	a0, a7, -2
80002174: 33 35 a0 00  	snez	a0, a0
80002178: 93 05 f0 01  	addi	a1, zero, 31
8000217c: b3 b5 85 01  	sltu	a1, a1, s8
80002180: 33 65 b5 00  	or	a0, a0, a1
80002184: 63 1c 05 02  	bnez	a0, 0x800021bc <_ntoa_format+0x218>
;       buf[len++] = 'b';
80002188: 33 85 84 01  	add	a0, s1, s8
8000218c: 13 0c 1c 00  	addi	s8, s8, 1
80002190: 93 05 20 06  	addi	a1, zero, 98
80002194: 6f 00 40 02  	j	0x800021b8 <_ntoa_format+0x214>
80002198: 93 35 0c 02  	sltiu	a1, s8, 32
;     else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
8000219c: 13 35 15 00  	seqz	a0, a0
800021a0: 93 c5 15 00  	xori	a1, a1, 1
800021a4: 33 65 b5 00  	or	a0, a0, a1
800021a8: 63 1a 05 00  	bnez	a0, 0x800021bc <_ntoa_format+0x218>
;       buf[len++] = 'X';
800021ac: 33 85 84 01  	add	a0, s1, s8
800021b0: 13 0c 1c 00  	addi	s8, s8, 1
800021b4: 93 05 80 05  	addi	a1, zero, 88
800021b8: 23 00 b5 00  	sb	a1, 0(a0)
800021bc: 13 05 f0 01  	addi	a0, zero, 31
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
800021c0: 63 62 85 05  	bltu	a0, s8, 0x80002204 <_ntoa_format+0x260>
;       buf[len++] = '0';
800021c4: 33 85 84 01  	add	a0, s1, s8
800021c8: 13 0c 1c 00  	addi	s8, s8, 1
800021cc: 93 05 00 03  	addi	a1, zero, 48
;       buf[len++] = '0';
800021d0: 23 00 b5 00  	sb	a1, 0(a0)
800021d4: 13 05 f0 01  	addi	a0, zero, 31
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
800021d8: 63 66 85 03  	bltu	a0, s8, 0x80002204 <_ntoa_format+0x260>
;     if (negative) {
800021dc: 63 8c 0c 00  	beqz	s9, 0x800021f4 <_ntoa_format+0x250>
800021e0: 93 8c 04 00  	mv	s9, s1
;       buf[len++] = '-';
800021e4: 33 85 84 01  	add	a0, s1, s8
800021e8: 13 0c 1c 00  	addi	s8, s8, 1
800021ec: 93 05 d0 02  	addi	a1, zero, 45
800021f0: 6f 00 00 04  	j	0x80002230 <_ntoa_format+0x28c>
;     else if (flags & FLAGS_PLUS) {
800021f4: 13 f5 4b 00  	andi	a0, s7, 4
800021f8: 63 1a 05 00  	bnez	a0, 0x8000220c <_ntoa_format+0x268>
;     else if (flags & FLAGS_SPACE) {
800021fc: 13 f5 8b 00  	andi	a0, s7, 8
80002200: 63 10 05 02  	bnez	a0, 0x80002220 <_ntoa_format+0x27c>
80002204: 93 8c 04 00  	mv	s9, s1
80002208: 6f 00 c0 02  	j	0x80002234 <_ntoa_format+0x290>
8000220c: 93 8c 04 00  	mv	s9, s1
;       buf[len++] = '+';  // ignore the space if the '+' exists
80002210: 33 85 84 01  	add	a0, s1, s8
80002214: 13 0c 1c 00  	addi	s8, s8, 1
80002218: 93 05 b0 02  	addi	a1, zero, 43
8000221c: 6f 00 40 01  	j	0x80002230 <_ntoa_format+0x28c>
80002220: 93 8c 04 00  	mv	s9, s1
;       buf[len++] = ' ';
80002224: 33 85 84 01  	add	a0, s1, s8
80002228: 13 0c 1c 00  	addi	s8, s8, 1
8000222c: 93 05 00 02  	addi	a1, zero, 32
80002230: 23 00 b5 00  	sb	a1, 0(a0)
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
80002234: 13 f5 3b 00  	andi	a0, s7, 3
80002238: 33 35 a0 00  	snez	a0, a0
8000223c: b3 35 2c 01  	sltu	a1, s8, s2
80002240: 93 c5 15 00  	xori	a1, a1, 1
80002244: 33 65 b5 00  	or	a0, a0, a1
80002248: 13 04 0a 00  	mv	s0, s4
8000224c: 63 16 05 02  	bnez	a0, 0x80002278 <_ntoa_format+0x2d4>
;     for (size_t i = len; i < width; i++) {
80002250: b3 04 89 41  	sub	s1, s2, s8
80002254: 13 06 0a 00  	mv	a2, s4
;       out(' ', buffer, idx++, maxlen);
80002258: 13 04 16 00  	addi	s0, a2, 1
8000225c: 13 05 00 02  	addi	a0, zero, 32
80002260: 93 05 0b 00  	mv	a1, s6
80002264: 93 86 09 00  	mv	a3, s3
80002268: e7 80 0d 00  	jalr	s11
;     for (size_t i = len; i < width; i++) {
8000226c: 93 84 f4 ff  	addi	s1, s1, -1
80002270: 13 06 04 00  	mv	a2, s0
80002274: e3 92 04 fe  	bnez	s1, 0x80002258 <_ntoa_format+0x2b4>
80002278: b3 3a 50 01  	snez	s5, s5
;   while (len) {
8000227c: 63 0c 0c 02  	beqz	s8, 0x800022b4 <_ntoa_format+0x310>
80002280: 93 8b fc ff  	addi	s7, s9, -1
;     out(buf[--len], buffer, idx++, maxlen);
80002284: 33 85 8b 01  	add	a0, s7, s8
80002288: 03 45 05 00  	lbu	a0, 0(a0)
8000228c: 93 0c fc ff  	addi	s9, s8, -1
80002290: 93 04 14 00  	addi	s1, s0, 1
80002294: 93 05 0b 00  	mv	a1, s6
80002298: 13 06 04 00  	mv	a2, s0
8000229c: 93 86 09 00  	mv	a3, s3
800022a0: e7 80 0d 00  	jalr	s11
800022a4: 13 84 04 00  	mv	s0, s1
800022a8: 13 8c 0c 00  	mv	s8, s9
;   while (len) {
800022ac: e3 9c 0c fc  	bnez	s9, 0x80002284 <_ntoa_format+0x2e0>
800022b0: 6f 00 80 00  	j	0x800022b8 <_ntoa_format+0x314>
800022b4: 93 04 04 00  	mv	s1, s0
800022b8: 33 85 44 41  	sub	a0, s1, s4
800022bc: 33 35 25 01  	sltu	a0, a0, s2
800022c0: 13 45 15 00  	xori	a0, a0, 1
;   if (flags & FLAGS_LEFT) {
800022c4: 93 c5 1a 00  	xori	a1, s5, 1
800022c8: 33 e5 a5 00  	or	a0, a1, a0
800022cc: 63 18 05 02  	bnez	a0, 0x800022fc <_ntoa_format+0x358>
;     while (idx - start_idx < width) {
800022d0: 33 0a 40 41  	neg	s4, s4
;       out(' ', buffer, idx++, maxlen);
800022d4: 13 84 14 00  	addi	s0, s1, 1
800022d8: 13 05 00 02  	addi	a0, zero, 32
800022dc: 93 05 0b 00  	mv	a1, s6
800022e0: 13 86 04 00  	mv	a2, s1
800022e4: 93 86 09 00  	mv	a3, s3
800022e8: e7 80 0d 00  	jalr	s11
;     while (idx - start_idx < width) {
800022ec: 33 05 8a 00  	add	a0, s4, s0
800022f0: 93 04 04 00  	mv	s1, s0
800022f4: e3 60 25 ff  	bltu	a0, s2, 0x800022d4 <_ntoa_format+0x330>
800022f8: 6f 00 80 00  	j	0x80002300 <_ntoa_format+0x35c>
800022fc: 13 84 04 00  	mv	s0, s1
;   return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
80002300: 13 05 04 00  	mv	a0, s0
80002304: 83 2d c1 00  	lw	s11, 12(sp)
80002308: 03 2d 01 01  	lw	s10, 16(sp)
8000230c: 83 2c 41 01  	lw	s9, 20(sp)
80002310: 03 2c 81 01  	lw	s8, 24(sp)
80002314: 83 2b c1 01  	lw	s7, 28(sp)
80002318: 03 2b 01 02  	lw	s6, 32(sp)
8000231c: 83 2a 41 02  	lw	s5, 36(sp)
80002320: 03 2a 81 02  	lw	s4, 40(sp)
80002324: 83 29 c1 02  	lw	s3, 44(sp)
80002328: 03 29 01 03  	lw	s2, 48(sp)
8000232c: 83 24 41 03  	lw	s1, 52(sp)
80002330: 03 24 81 03  	lw	s0, 56(sp)
80002334: 83 20 c1 03  	lw	ra, 60(sp)
80002338: 13 01 01 04  	addi	sp, sp, 64
8000233c: 67 80 00 00  	ret

80002340 <snrt_global_core_idx>:
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002340: 37 05 00 00  	lui	a0, 0
80002344: 33 05 45 00  	add	a0, a0, tp
80002348: 03 25 05 00  	lw	a0, 0(a0)
8000234c: 03 25 05 00  	lw	a0, 0(a0)
80002350: 03 25 85 00  	lw	a0, 8(a0)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002354: f3 25 40 f1  	csrr	a1, mhartid
;     return snrt_hartid() - _snrt_team_current->root->global_core_base_hartid;
80002358: 33 85 a5 40  	sub	a0, a1, a0
8000235c: 67 80 00 00  	ret

80002360 <_snrt_barrier_reg_ptr>:
;     return _snrt_team_current->root->barrier_reg_ptr;
80002360: 37 05 00 00  	lui	a0, 0
80002364: 33 05 45 00  	add	a0, a0, tp
80002368: 03 25 05 00  	lw	a0, 0(a0)
8000236c: 03 25 05 00  	lw	a0, 0(a0)
80002370: 03 25 05 07  	lw	a0, 112(a0)
80002374: 67 80 00 00  	ret

80002378 <gemm_bench>:
; gemm_result_t gemm_bench(gemm_impl_t gemm_impl) {
80002378: 13 01 01 fc  	addi	sp, sp, -64
8000237c: 23 2e 11 02  	sw	ra, 60(sp)
80002380: 23 2c 81 02  	sw	s0, 56(sp)
80002384: 23 2a 91 02  	sw	s1, 52(sp)
80002388: 23 28 21 03  	sw	s2, 48(sp)
8000238c: 23 26 31 03  	sw	s3, 44(sp)
80002390: 23 24 41 03  	sw	s4, 40(sp)
80002394: 23 22 51 03  	sw	s5, 36(sp)
80002398: 23 20 61 03  	sw	s6, 32(sp)
8000239c: 23 2e 71 01  	sw	s7, 28(sp)
800023a0: 23 2c 81 01  	sw	s8, 24(sp)
800023a4: 23 2a 91 01  	sw	s9, 20(sp)
800023a8: 23 28 a1 01  	sw	s10, 16(sp)
800023ac: 23 26 b1 01  	sw	s11, 12(sp)
800023b0: 13 84 05 00  	mv	s0, a1
800023b4: 13 0a 05 00  	mv	s4, a0
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
800023b8: 97 10 00 00  	auipc	ra, 1
800023bc: e7 80 80 cc  	jalr	-824(ra)
;     return _snrt_team_current->root->cluster_core_num;
800023c0: 37 05 00 00  	lui	a0, 0
800023c4: 33 05 45 00  	add	a0, a0, tp
800023c8: 03 25 05 00  	lw	a0, 0(a0)
800023cc: 83 25 05 00  	lw	a1, 0(a0)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800023d0: 37 05 00 00  	lui	a0, 0
800023d4: 33 05 45 00  	add	a0, a0, tp
;     return _snrt_team_current->root->cluster_core_num;
800023d8: 03 a6 c5 01  	lw	a2, 28(a1)
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
800023dc: 03 2d 45 00  	lw	s10, 4(a0)
;     return snrt_cluster_core_num() - 1;
800023e0: 13 05 f6 ff  	addi	a0, a2, -1
;     if (snrt_is_dm_core()) {
800023e4: 63 72 ad 08  	bgeu	s10, a0, 0x80002468 <.LBB0_24+0x30>

800023e8 <.LBB0_22>:
;     ptr += input_size * input_size + 1;
800023e8: 97 14 00 00  	auipc	s1, 1
800023ec: 93 84 04 d0  	addi	s1, s1, -768
800023f0: 83 aa 04 00  	lw	s5, 0(s1)
;     return _snrt_team_current->root->cluster_mem;
800023f4: 83 ac 05 03  	lw	s9, 48(a1)
;     ptr += input_size * input_size + 1;
800023f8: b3 85 5a 03  	mul	a1, s5, s5
800023fc: 13 96 35 00  	slli	a2, a1, 3
80002400: 13 06 86 00  	addi	a2, a2, 8
80002404: b3 89 cc 00  	add	s3, s9, a2
;     if (core_id % core_num == 0) populate(input_A, input_size * input_size, 1);
80002408: b3 76 ad 02  	remu	a3, s10, a0
8000240c: 13 07 20 00  	addi	a4, zero, 2
;     ptr += input_size * input_size + 1;
80002410: 33 86 c9 00  	add	a2, s3, a2
;     if (core_id % core_num == 0) populate(input_A, input_size * input_size, 1);
80002414: 23 24 81 00  	sw	s0, 8(sp)
80002418: 63 88 e6 06  	beq	a3, a4, 0x80002488 <.LBB0_24+0x50>
8000241c: 13 07 10 00  	addi	a4, zero, 1
;     if (core_id % core_num == 0) populate(input_A, input_size * input_size, 1);
80002420: 63 80 e6 0a  	beq	a3, a4, 0x800024c0 <.LBB0_25+0x34>
80002424: 63 98 06 0c  	bnez	a3, 0x800024f4 <.LBB0_26+0x30>
;     for (uint32_t i = 0; i < size; i++) {
80002428: 63 86 05 0c  	beqz	a1, 0x800024f4 <.LBB0_26+0x30>

8000242c <.LBB0_23>:
8000242c: 97 16 00 00  	auipc	a3, 1
80002430: 93 86 c6 06  	addi	a3, a3, 108
80002434: 07 b0 06 00  	fld	ft0, 0(a3)

80002438 <.LBB0_24>:
80002438: 97 16 00 00  	auipc	a3, 1
8000243c: 93 86 86 05  	addi	a3, a3, 88
80002440: 87 b0 06 00  	fld	ft1, 0(a3)
80002444: 53 01 00 22  	fmv.d	ft2, ft0
80002448: 93 86 0c 00  	mv	a3, s9
;         *ptr = (double)seed * 3.141;
8000244c: d3 71 11 12  	fmul.d	ft3, ft2, ft1
80002450: 27 b0 36 00  	fsd	ft3, 0(a3)
;         ++ptr;
80002454: 93 86 86 00  	addi	a3, a3, 8
;     for (uint32_t i = 0; i < size; i++) {
80002458: 93 85 f5 ff  	addi	a1, a1, -1
8000245c: 53 71 01 02  	fadd.d	ft2, ft2, ft0
80002460: e3 96 05 fe  	bnez	a1, 0x8000244c <.LBB0_24+0x14>
80002464: 6f 00 00 09  	j	0x800024f4 <.LBB0_26+0x30>
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80002468: 97 10 00 00  	auipc	ra, 1
8000246c: e7 80 80 c1  	jalr	-1000(ra)
80002470: 97 10 00 00  	auipc	ra, 1
80002474: e7 80 00 c1  	jalr	-1008(ra)
;         return (gemm_result_t){0, 0, 0};
80002478: 23 20 0a 00  	sw	zero, 0(s4)
8000247c: 23 22 0a 00  	sw	zero, 4(s4)
80002480: 23 24 0a 00  	sw	zero, 8(s4)
80002484: 6f 00 40 18  	j	0x80002608 <.LBB0_28+0x70>
;     for (uint32_t i = 0; i < size; i++) {
80002488: 63 86 05 06  	beqz	a1, 0x800024f4 <.LBB0_26+0x30>

8000248c <.LBB0_25>:
8000248c: 97 16 00 00  	auipc	a3, 1
80002490: 93 86 46 00  	addi	a3, a3, 4
80002494: 07 b0 06 00  	fld	ft0, 0(a3)
80002498: 93 06 00 00  	mv	a3, zero
8000249c: 13 07 06 00  	mv	a4, a2
;         *ptr = (double)seed * 3.141;
800024a0: 93 87 36 00  	addi	a5, a3, 3
800024a4: d3 80 17 d2  	fcvt.d.wu	ft1, a5
800024a8: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800024ac: 27 30 17 00  	fsd	ft1, 0(a4)
;     for (uint32_t i = 0; i < size; i++) {
800024b0: 93 86 16 00  	addi	a3, a3, 1
;         ++ptr;
800024b4: 13 07 87 00  	addi	a4, a4, 8
;     for (uint32_t i = 0; i < size; i++) {
800024b8: e3 94 d5 fe  	bne	a1, a3, 0x800024a0 <.LBB0_25+0x14>
800024bc: 6f 00 80 03  	j	0x800024f4 <.LBB0_26+0x30>
800024c0: 63 8a 05 02  	beqz	a1, 0x800024f4 <.LBB0_26+0x30>

800024c4 <.LBB0_26>:
800024c4: 97 16 00 00  	auipc	a3, 1
800024c8: 93 86 c6 fc  	addi	a3, a3, -52
800024cc: 07 b0 06 00  	fld	ft0, 0(a3)
800024d0: 93 06 00 00  	mv	a3, zero
800024d4: 13 87 09 00  	mv	a4, s3
;         *ptr = (double)seed * 3.141;
800024d8: 93 87 26 00  	addi	a5, a3, 2
800024dc: d3 80 17 d2  	fcvt.d.wu	ft1, a5
800024e0: d3 f0 00 12  	fmul.d	ft1, ft1, ft0
800024e4: 27 30 17 00  	fsd	ft1, 0(a4)
;     for (uint32_t i = 0; i < size; i++) {
800024e8: 93 86 16 00  	addi	a3, a3, 1
;         ++ptr;
800024ec: 13 07 87 00  	addi	a4, a4, 8
;     for (uint32_t i = 0; i < size; i++) {
800024f0: e3 94 d5 fe  	bne	a1, a3, 0x800024d8 <.LBB0_26+0x14>
;     uint32_t N = input_size / core_num;
800024f4: b3 db aa 02  	divu	s7, s5, a0
;     double *argA = input_A + core_id * input_size;
800024f8: b3 85 aa 03  	mul	a1, s5, s10
800024fc: 93 95 35 00  	slli	a1, a1, 3
80002500: 33 8c bc 00  	add	s8, s9, a1
;     double *argC = input_C + core_id * input_size;
80002504: 33 0b b6 00  	add	s6, a2, a1
;     uint32_t ldA = input_size * core_num;
80002508: 33 84 aa 02  	mul	s0, s5, a0
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
8000250c: f3 2d 00 b0  	csrr	s11, mcycle
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
80002510: 97 10 00 00  	auipc	ra, 1
80002514: e7 80 00 b7  	jalr	-1168(ra)
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002518: 73 29 00 b0  	csrr	s2, mcycle
;     gemm_impl(N, M, K, argA, ldA, argB, ldB, argC, ldC);
8000251c: 23 20 81 00  	sw	s0, 0(sp)
80002520: 13 85 0b 00  	mv	a0, s7
80002524: 93 85 0a 00  	mv	a1, s5
80002528: 13 86 0a 00  	mv	a2, s5
8000252c: 93 06 0c 00  	mv	a3, s8
80002530: 13 07 04 00  	mv	a4, s0
80002534: 93 87 09 00  	mv	a5, s3
80002538: 13 88 0a 00  	mv	a6, s5
8000253c: 93 08 0b 00  	mv	a7, s6
80002540: 03 24 81 00  	lw	s0, 8(sp)
80002544: e7 00 04 00  	jalr	s0
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002548: f3 29 00 b0  	csrr	s3, mcycle
; void snrt_cluster_hw_barrier() { _snrt_cluster_barrier(); }
8000254c: 97 10 00 00  	auipc	ra, 1
80002550: e7 80 40 b3  	jalr	-1228(ra)
; size_t benchmark_get_cycle() { return read_csr(mcycle); }
80002554: 73 28 00 b0  	csrr	a6, mcycle
80002558: 83 a5 04 00  	lw	a1, 0(s1)
;     if (core_id == 0) {
8000255c: 33 35 a0 01  	snez	a0, s10
80002560: 13 b6 15 00  	seqz	a2, a1
80002564: 33 65 c5 00  	or	a0, a0, a2
80002568: 63 14 05 08  	bnez	a0, 0x800025f0 <.LBB0_28+0x58>
8000256c: 93 06 00 00  	mv	a3, zero
80002570: 13 07 00 00  	mv	a4, zero
80002574: 13 06 00 00  	mv	a2, zero
;         for (uint32_t i = 0; i < input_size; i++) {
80002578: 33 85 5a 03  	mul	a0, s5, s5
8000257c: 13 15 45 00  	slli	a0, a0, 4
80002580: 33 05 95 01  	add	a0, a0, s9

80002584 <.LBB0_27>:
80002584: 97 17 00 00  	auipc	a5, 1
80002588: 93 87 c7 f1  	addi	a5, a5, -228
8000258c: 07 b0 07 00  	fld	ft0, 0(a5)
;         for (uint32_t i = 0; i < input_size; i++) {
80002590: 93 07 05 01  	addi	a5, a0, 16
80002594: d3 00 00 d2  	fcvt.d.w	ft1, zero

80002598 <.LBB0_28>:
80002598: 17 14 00 00  	auipc	s0, 1
8000259c: 13 04 84 b5  	addi	s0, s0, -1192
;             for (uint32_t n = 0; n < input_size; n++) {
800025a0: 33 85 d5 02  	mul	a0, a1, a3
800025a4: 33 85 a7 00  	add	a0, a5, a0
800025a8: 53 81 10 22  	fmv.d	ft2, ft1
;                 sum += input_C[i * input_size + n];
800025ac: 87 31 05 00  	fld	ft3, 0(a0)
800025b0: 53 f1 21 02  	fadd.d	ft2, ft3, ft2
;             for (uint32_t n = 0; n < input_size; n++) {
800025b4: 93 85 f5 ff  	addi	a1, a1, -1
800025b8: 13 05 85 00  	addi	a0, a0, 8
800025bc: e3 98 05 fe  	bnez	a1, 0x800025ac <.LBB0_28+0x14>
;             double d = sum - output_checksum[i];
800025c0: 13 15 37 00  	slli	a0, a4, 3
800025c4: 33 05 85 00  	add	a0, a0, s0
800025c8: 87 31 05 00  	fld	ft3, 0(a0)
800025cc: 53 71 31 0a  	fsub.d	ft2, ft2, ft3
;             asm volatile("fabs.d %[d], %[d]" : [ d ] "+f"(d));
800025d0: 53 21 21 22  	fabs.d	ft2, ft2
;         for (uint32_t i = 0; i < input_size; i++) {
800025d4: 83 a5 04 00  	lw	a1, 0(s1)
;             diffs += d > 0.001;
800025d8: 53 15 20 a2  	flt.d	a0, ft0, ft2
800025dc: 33 06 a6 00  	add	a2, a2, a0
;         for (uint32_t i = 0; i < input_size; i++) {
800025e0: 13 07 17 00  	addi	a4, a4, 1
800025e4: 93 86 86 00  	addi	a3, a3, 8
800025e8: e3 6c b7 fa  	bltu	a4, a1, 0x800025a0 <.LBB0_28+0x8>
800025ec: 6f 00 80 00  	j	0x800025f4 <.LBB0_28+0x5c>
;     uint32_t diffs = 0;
800025f0: 13 06 00 00  	mv	a2, zero
;     return (gemm_result_t){
800025f4: 23 20 ca 00  	sw	a2, 0(s4)
;         .cycles_core = t2 - t1,
800025f8: 33 85 29 41  	sub	a0, s3, s2
;     return (gemm_result_t){
800025fc: 23 22 aa 00  	sw	a0, 4(s4)
;         .cycles_total = t3 - t0,
80002600: 33 05 b8 41  	sub	a0, a6, s11
;     return (gemm_result_t){
80002604: 23 24 aa 00  	sw	a0, 8(s4)
; }
80002608: 83 2d c1 00  	lw	s11, 12(sp)
8000260c: 03 2d 01 01  	lw	s10, 16(sp)
80002610: 83 2c 41 01  	lw	s9, 20(sp)
80002614: 03 2c 81 01  	lw	s8, 24(sp)
80002618: 83 2b c1 01  	lw	s7, 28(sp)
8000261c: 03 2b 01 02  	lw	s6, 32(sp)
80002620: 83 2a 41 02  	lw	s5, 36(sp)
80002624: 03 2a 81 02  	lw	s4, 40(sp)
80002628: 83 29 c1 02  	lw	s3, 44(sp)
8000262c: 03 29 01 03  	lw	s2, 48(sp)
80002630: 83 24 41 03  	lw	s1, 52(sp)
80002634: 03 24 81 03  	lw	s0, 56(sp)
80002638: 83 20 c1 03  	lw	ra, 60(sp)
8000263c: 13 01 01 04  	addi	sp, sp, 64
80002640: 67 80 00 00  	ret

80002644 <gemm_seq_baseline>:
;                        double *restrict C, uint32_t ldC) {
80002644: 13 01 01 fb  	addi	sp, sp, -80
80002648: 23 26 81 04  	sw	s0, 76(sp)
8000264c: 23 24 91 04  	sw	s1, 72(sp)
80002650: 23 22 21 05  	sw	s2, 68(sp)
80002654: 23 20 31 05  	sw	s3, 64(sp)
80002658: 23 2e 41 03  	sw	s4, 60(sp)
8000265c: 23 2c 51 03  	sw	s5, 56(sp)
80002660: 23 2a 61 03  	sw	s6, 52(sp)
80002664: 23 28 71 03  	sw	s7, 48(sp)
80002668: 23 26 81 03  	sw	s8, 44(sp)
8000266c: 27 30 81 02  	fsd	fs0, 32(sp)
80002670: 27 3c 91 00  	fsd	fs1, 24(sp)
80002674: 27 38 21 01  	fsd	fs2, 16(sp)
80002678: 27 34 31 01  	fsd	fs3, 8(sp)
;     for (uint32_t n1 = 0; n1 < N; n1 += tf) {
8000267c: 93 34 15 00  	seqz	s1, a0
80002680: 13 b4 15 00  	seqz	s0, a1
80002684: b3 e4 84 00  	or	s1, s1, s0
80002688: 63 80 04 04  	beqz	s1, 0x800026c8 <gemm_seq_baseline+0x84>
; }
8000268c: 87 39 81 00  	fld	fs3, 8(sp)
80002690: 07 39 01 01  	fld	fs2, 16(sp)
80002694: 87 34 81 01  	fld	fs1, 24(sp)
80002698: 07 34 01 02  	fld	fs0, 32(sp)
8000269c: 03 2c c1 02  	lw	s8, 44(sp)
800026a0: 83 2b 01 03  	lw	s7, 48(sp)
800026a4: 03 2b 41 03  	lw	s6, 52(sp)
800026a8: 83 2a 81 03  	lw	s5, 56(sp)
800026ac: 03 2a c1 03  	lw	s4, 60(sp)
800026b0: 83 29 01 04  	lw	s3, 64(sp)
800026b4: 03 29 41 04  	lw	s2, 68(sp)
800026b8: 83 24 81 04  	lw	s1, 72(sp)
800026bc: 03 24 c1 04  	lw	s0, 76(sp)
800026c0: 13 01 01 05  	addi	sp, sp, 80
800026c4: 67 80 00 00  	ret
800026c8: 93 02 00 00  	mv	t0, zero
800026cc: 03 23 01 05  	lw	t1, 80(sp)
800026d0: 93 33 16 00  	seqz	t2, a2
;     for (uint32_t n1 = 0; n1 < N; n1 += tf) {
800026d4: 13 1e 38 00  	slli	t3, a6, 3
800026d8: 13 18 48 00  	slli	a6, a6, 4
800026dc: 93 1e 37 00  	slli	t4, a4, 3
800026e0: 13 1f 47 00  	slli	t5, a4, 4
800026e4: 6f 00 00 01  	j	0x800026f4 <gemm_seq_baseline+0xb0>
800026e8: 93 82 22 00  	addi	t0, t0, 2
800026ec: b3 86 e6 01  	add	a3, a3, t5
800026f0: e3 fe a2 f8  	bgeu	t0, a0, 0x8000268c <gemm_seq_baseline+0x48>
;         for (uint32_t m1 = 0; m1 < M; m1 += tf) {
800026f4: e3 9a 03 fe  	bnez	t2, 0x800026e8 <gemm_seq_baseline+0xa4>
800026f8: 13 0a 00 00  	mv	s4, zero
800026fc: 13 e7 12 00  	ori	a4, t0, 1
80002700: b3 8f 62 02  	mul	t6, t0, t1
80002704: 33 09 67 02  	mul	s2, a4, t1
80002708: 93 89 07 00  	mv	s3, a5
8000270c: 13 0c 00 00  	mv	s8, zero
80002710: 33 07 fa 01  	add	a4, s4, t6
80002714: 13 17 37 00  	slli	a4, a4, 3
80002718: b3 8a e8 00  	add	s5, a7, a4
8000271c: 33 07 2a 01  	add	a4, s4, s2
80002720: 13 17 37 00  	slli	a4, a4, 3
80002724: 33 8b e8 00  	add	s6, a7, a4
80002728: 93 84 06 00  	mv	s1, a3
8000272c: 13 87 09 00  	mv	a4, s3

80002730 <loop_start>:
;                       [ b0 ] "r"(&B[(k1 + 0) * ldB + (m1)]),
80002730: b3 8b d4 01  	add	s7, s1, t4
;                 asm volatile(
80002734: 33 04 c7 01  	add	s0, a4, t3
80002738: 07 b0 04 00  	fld	ft0, 0(s1)
8000273c: 87 b0 84 00  	fld	ft1, 8(s1)
80002740: 07 b1 0b 00  	fld	ft2, 0(s7)
80002744: 87 b1 8b 00  	fld	ft3, 8(s7)
80002748: 07 32 07 00  	fld	ft4, 0(a4)
8000274c: 87 32 87 00  	fld	ft5, 8(a4)
80002750: 07 33 04 00  	fld	ft6, 0(s0)
80002754: 87 33 84 00  	fld	ft7, 8(s0)
80002758: 07 b4 0a 00  	fld	fs0, 0(s5)
8000275c: 87 b4 8a 00  	fld	fs1, 8(s5)
80002760: 07 39 0b 00  	fld	fs2, 0(s6)
80002764: 87 39 8b 00  	fld	fs3, 8(s6)
80002768: 43 74 40 42  	fmadd.d	fs0, ft0, ft4, fs0
8000276c: c3 74 50 4a  	fmadd.d	fs1, ft0, ft5, fs1
80002770: 43 79 41 92  	fmadd.d	fs2, ft2, ft4, fs2
80002774: c3 79 51 9a  	fmadd.d	fs3, ft2, ft5, fs3
80002778: 43 f4 60 42  	fmadd.d	fs0, ft1, ft6, fs0
8000277c: c3 f4 70 4a  	fmadd.d	fs1, ft1, ft7, fs1
80002780: 43 f9 61 92  	fmadd.d	fs2, ft3, ft6, fs2
80002784: c3 f9 71 9a  	fmadd.d	fs3, ft3, ft7, fs3
80002788: 27 b0 8a 00  	fsd	fs0, 0(s5)
8000278c: 27 b4 9a 00  	fsd	fs1, 8(s5)
80002790: 27 30 2b 01  	fsd	fs2, 0(s6)
80002794: 27 34 3b 01  	fsd	fs3, 8(s6)

80002798 <loop_end>:
;             for (uint32_t k1 = 0; k1 < K; k1 += tf) {
80002798: 13 0c 2c 00  	addi	s8, s8, 2
8000279c: 33 07 07 01  	add	a4, a4, a6
800027a0: 93 84 04 01  	addi	s1, s1, 16
800027a4: e3 66 cc f8  	bltu	s8, a2, 0x80002730 <loop_start>
;         for (uint32_t m1 = 0; m1 < M; m1 += tf) {
800027a8: 13 0a 2a 00  	addi	s4, s4, 2
800027ac: 93 89 09 01  	addi	s3, s3, 16
800027b0: e3 6e ba f4  	bltu	s4, a1, 0x8000270c <gemm_seq_baseline+0xc8>
800027b4: 6f f0 5f f3  	j	0x800026e8 <gemm_seq_baseline+0xa4>

800027b8 <gemm_seq_ssr>:
;                   double *B, uint32_t ldB, double *C, uint32_t ldC) {
800027b8: 13 01 01 ff  	addi	sp, sp, -16
;     asm volatile("" : "=f"(ft0), "=f"(ft1));
800027bc: d3 81 10 22  	fmv.d	ft3, ft1
800027c0: 53 02 00 22  	fmv.d	ft4, ft0
800027c4: 27 34 41 00  	fsd	ft4, 8(sp)
800027c8: 27 30 31 00  	fsd	ft3, 0(sp)
;     snrt_ssr_loop_3d(SNRT_SSR_DM0, K, M / 4, N, 8, 0 * 4, 8 * ldA);
800027cc: 93 d2 25 00  	srli	t0, a1, 2
;     --b0;
800027d0: 13 03 f6 ff  	addi	t1, a2, -1
;     --b1;
800027d4: 93 82 f2 ff  	addi	t0, t0, -1
;     --b2;
800027d8: 93 03 f5 ff  	addi	t2, a0, -1
800027dc: 37 5e 20 00  	lui	t3, 517
;     ssr_config_reg[dm].bounds[0].value = b0;
800027e0: 23 28 6e 80  	sw	t1, -2032(t3)
;     ssr_config_reg[dm].bounds[1].value = b1;
800027e4: 23 2c 5e 80  	sw	t0, -2024(t3)
;     ssr_config_reg[dm].bounds[2].value = b2;
800027e8: 23 20 7e 82  	sw	t2, -2016(t3)
800027ec: 93 0e 80 00  	addi	t4, zero, 8
;     ssr_config_reg[dm].stride[0].value = i0 - a;
800027f0: 23 28 de 83  	sw	t4, -2000(t3)
;     a += i0 * b0;
800027f4: 13 1f 33 00  	slli	t5, t1, 3
800027f8: 33 0f e0 41  	neg	t5, t5
;     ssr_config_reg[dm].stride[1].value = i1 - a;
800027fc: 23 2c ee 83  	sw	t5, -1992(t3)
;     a += i1 * b1;
80002800: 33 07 67 40  	sub	a4, a4, t1
80002804: 13 17 37 00  	slli	a4, a4, 3
;     ssr_config_reg[dm].stride[2].value = i2 - a;
80002808: 23 20 ee 84  	sw	a4, -1984(t3)
8000280c: 13 0f 30 00  	addi	t5, zero, 3
;     ssr_config_reg[dm].repeat.value = count - 1;
80002810: 23 24 ee 81  	sw	t5, -2040(t3)
;     snrt_ssr_loop_4d(SNRT_SSR_DM1, 4, K, M / 4, N, 8, 8 * ldB, 8 * 4, 0);
80002814: 13 18 38 00  	slli	a6, a6, 3
;     ssr_config_reg[dm].bounds[0].value = b0;
80002818: 23 28 ee 91  	sw	t5, -1776(t3)
;     ssr_config_reg[dm].bounds[1].value = b1;
8000281c: 23 2c 6e 90  	sw	t1, -1768(t3)
;     ssr_config_reg[dm].bounds[2].value = b2;
80002820: 23 20 5e 92  	sw	t0, -1760(t3)
;     ssr_config_reg[dm].bounds[3].value = b3;
80002824: 23 24 7e 92  	sw	t2, -1752(t3)
;     ssr_config_reg[dm].stride[0].value = i0 - a;
80002828: 23 28 de 93  	sw	t4, -1744(t3)
;     ssr_config_reg[dm].stride[1].value = i1 - a;
8000282c: 13 07 88 fe  	addi	a4, a6, -24
80002830: 23 2c ee 92  	sw	a4, -1736(t3)
;     a += i1 * b1;
80002834: 33 08 68 02  	mul	a6, a6, t1
;     ssr_config_reg[dm].stride[2].value = i2 - a;
80002838: 33 87 0e 41  	sub	a4, t4, a6
8000283c: 23 20 ee 94  	sw	a4, -1728(t3)
;     a += i2 * b2;
80002840: 13 97 52 00  	slli	a4, t0, 5
;     ssr_config_reg[dm].stride[3].value = i3 - a;
80002844: 33 08 07 01  	add	a6, a4, a6
80002848: 13 07 80 fe  	addi	a4, zero, -24
8000284c: 33 07 07 41  	sub	a4, a4, a6
80002850: 23 24 ee 94  	sw	a4, -1720(t3)
;     ssr_config_reg[dm].rptr[dim].value = (size_t)ptr;
80002854: 23 28 de 8c  	sw	a3, -1840(t3)
80002858: 23 2c fe 9c  	sw	a5, -1576(t3)
;     for (uint32_t n = 0; n < N; n++) {
8000285c: 93 36 15 00  	seqz	a3, a0
80002860: 13 b7 15 00  	seqz	a4, a1
;     for (uint32_t n = 0; n < N; n++) {
80002864: b3 e6 e6 00  	or	a3, a3, a4
;     __builtin_ssr_enable();
80002868: 73 e7 00 7c  	csrrsi	a4, 1984, 1
;     for (uint32_t n = 0; n < N; n++) {
8000286c: 63 80 06 02  	beqz	a3, 0x8000288c <gemm_seq_ssr+0xd4>
;     __builtin_ssr_disable();
80002870: 73 f5 00 7c  	csrrci	a0, 1984, 1
;     asm volatile("" ::"f"(ft0), "f"(ft1));
80002874: 87 31 81 00  	fld	ft3, 8(sp)
80002878: 07 32 01 00  	fld	ft4, 0(sp)
8000287c: 53 80 31 22  	fmv.d	ft0, ft3
80002880: d3 00 42 22  	fmv.d	ft1, ft4
; }
80002884: 13 01 01 01  	addi	sp, sp, 16
80002888: 67 80 00 00  	ret
8000288c: 03 28 01 01  	lw	a6, 16(sp)
80002890: 13 03 00 00  	mv	t1, zero
80002894: 93 32 16 00  	seqz	t0, a2
80002898: 6f 00 c0 00  	j	0x800028a4 <gemm_seq_ssr+0xec>
;     for (uint32_t n = 0; n < N; n++) {
8000289c: 13 03 13 00  	addi	t1, t1, 1
800028a0: e3 08 a3 fc  	beq	t1, a0, 0x80002870 <gemm_seq_ssr+0xb8>
;         for (uint32_t m = 0; m < M; m += 4) {
800028a4: e3 9c 02 fe  	bnez	t0, 0x8000289c <gemm_seq_ssr+0xe4>
800028a8: 93 06 00 00  	mv	a3, zero
800028ac: b3 03 03 03  	mul	t2, t1, a6
;             register double c0 = C[n * ldC + m + 0];
800028b0: 33 87 76 00  	add	a4, a3, t2
800028b4: 13 17 37 00  	slli	a4, a4, 3
800028b8: 33 87 e8 00  	add	a4, a7, a4
800028bc: 87 31 07 00  	fld	ft3, 0(a4)
;             register double c1 = C[n * ldC + m + 1];
800028c0: 07 32 87 00  	fld	ft4, 8(a4)
;             register double c2 = C[n * ldC + m + 2];
800028c4: 07 33 07 01  	fld	ft6, 16(a4)
;             register double c3 = C[n * ldC + m + 3];
800028c8: 87 32 87 01  	fld	ft5, 24(a4)
;             register double c1 = C[n * ldC + m + 1];
800028cc: 13 0f 87 00  	addi	t5, a4, 8
;             register double c2 = C[n * ldC + m + 2];
800028d0: 93 0e 07 01  	addi	t4, a4, 16
;             register double c3 = C[n * ldC + m + 3];
800028d4: 13 0e 87 01  	addi	t3, a4, 24
800028d8: 93 07 06 00  	mv	a5, a2
;             for (uint32_t k = 0; k < K; k++) {
800028dc: 93 87 f7 ff  	addi	a5, a5, -1
;                 asm volatile(
800028e0: c3 71 10 1a  	fmadd.d	ft3, ft0, ft1, ft3
800028e4: 43 72 10 22  	fmadd.d	ft4, ft0, ft1, ft4
800028e8: 43 73 10 32  	fmadd.d	ft6, ft0, ft1, ft6
800028ec: c3 72 10 2a  	fmadd.d	ft5, ft0, ft1, ft5
;             for (uint32_t k = 0; k < K; k++) {
800028f0: e3 96 07 fe  	bnez	a5, 0x800028dc <gemm_seq_ssr+0x124>
;             C[n * ldC + m + 0] = c0;
800028f4: 27 30 37 00  	fsd	ft3, 0(a4)
;             C[n * ldC + m + 1] = c1;
800028f8: 27 30 4f 00  	fsd	ft4, 0(t5)
;             C[n * ldC + m + 2] = c2;
800028fc: 27 b0 6e 00  	fsd	ft6, 0(t4)
;         for (uint32_t m = 0; m < M; m += 4) {
80002900: 93 86 46 00  	addi	a3, a3, 4
;             C[n * ldC + m + 3] = c3;
80002904: 27 30 5e 00  	fsd	ft5, 0(t3)
;         for (uint32_t m = 0; m < M; m += 4) {
80002908: e3 e4 b6 fa  	bltu	a3, a1, 0x800028b0 <gemm_seq_ssr+0xf8>
8000290c: 6f f0 1f f9  	j	0x8000289c <gemm_seq_ssr+0xe4>

80002910 <gemm_seq_ssr_frep>:
;                        uint32_t ldC) {
80002910: 13 01 01 ff  	addi	sp, sp, -16
;     asm volatile("" : "=f"(ft0), "=f"(ft1));
80002914: d3 81 10 22  	fmv.d	ft3, ft1
80002918: 53 02 00 22  	fmv.d	ft4, ft0
8000291c: 27 34 41 00  	fsd	ft4, 8(sp)
80002920: 27 30 31 00  	fsd	ft3, 0(sp)
;     snrt_ssr_loop_3d(SNRT_SSR_DM0, K, M / 4, N, 8, 0 * 4, 8 * ldA);
80002924: 13 d3 25 00  	srli	t1, a1, 2
;     --b0;
80002928: 93 02 f6 ff  	addi	t0, a2, -1
;     --b1;
8000292c: 93 03 f3 ff  	addi	t2, t1, -1
;     --b2;
80002930: 13 03 f5 ff  	addi	t1, a0, -1
80002934: b7 5e 20 00  	lui	t4, 517
;     ssr_config_reg[dm].bounds[0].value = b0;
80002938: 23 a8 5e 80  	sw	t0, -2032(t4)
;     ssr_config_reg[dm].bounds[1].value = b1;
8000293c: 23 ac 7e 80  	sw	t2, -2024(t4)
;     ssr_config_reg[dm].bounds[2].value = b2;
80002940: 23 a0 6e 82  	sw	t1, -2016(t4)
80002944: 13 0e 80 00  	addi	t3, zero, 8
;     ssr_config_reg[dm].stride[0].value = i0 - a;
80002948: 23 a8 ce 83  	sw	t3, -2000(t4)
;     a += i0 * b0;
8000294c: 13 96 32 00  	slli	a2, t0, 3
80002950: 33 06 c0 40  	neg	a2, a2
;     ssr_config_reg[dm].stride[1].value = i1 - a;
80002954: 23 ac ce 82  	sw	a2, -1992(t4)
;     a += i1 * b1;
80002958: 33 06 57 40  	sub	a2, a4, t0
8000295c: 13 16 36 00  	slli	a2, a2, 3
;     ssr_config_reg[dm].stride[2].value = i2 - a;
80002960: 23 a0 ce 84  	sw	a2, -1984(t4)
80002964: 13 06 30 00  	addi	a2, zero, 3
;     ssr_config_reg[dm].repeat.value = count - 1;
80002968: 23 a4 ce 80  	sw	a2, -2040(t4)
;     snrt_ssr_loop_4d(SNRT_SSR_DM1, 4, K, M / 4, N, 8, 8 * ldB, 8 * 4, 0);
8000296c: 13 17 38 00  	slli	a4, a6, 3
;     ssr_config_reg[dm].bounds[0].value = b0;
80002970: 23 a8 ce 90  	sw	a2, -1776(t4)
;     ssr_config_reg[dm].bounds[1].value = b1;
80002974: 23 ac 5e 90  	sw	t0, -1768(t4)
;     ssr_config_reg[dm].bounds[2].value = b2;
80002978: 23 a0 7e 92  	sw	t2, -1760(t4)
;     ssr_config_reg[dm].bounds[3].value = b3;
8000297c: 23 a4 6e 92  	sw	t1, -1752(t4)
;     ssr_config_reg[dm].stride[0].value = i0 - a;
80002980: 23 a8 ce 93  	sw	t3, -1744(t4)
;     ssr_config_reg[dm].stride[1].value = i1 - a;
80002984: 13 06 87 fe  	addi	a2, a4, -24
80002988: 23 ac ce 92  	sw	a2, -1736(t4)
;     a += i1 * b1;
8000298c: 33 06 57 02  	mul	a2, a4, t0
;     ssr_config_reg[dm].stride[2].value = i2 - a;
80002990: 33 07 ce 40  	sub	a4, t3, a2
80002994: 23 a0 ee 94  	sw	a4, -1728(t4)
;     a += i2 * b2;
80002998: 13 97 53 00  	slli	a4, t2, 5
;     ssr_config_reg[dm].stride[3].value = i3 - a;
8000299c: 33 06 c7 00  	add	a2, a4, a2
800029a0: 13 07 80 fe  	addi	a4, zero, -24
800029a4: 33 06 c7 40  	sub	a2, a4, a2
800029a8: 23 a4 ce 94  	sw	a2, -1720(t4)
;     ssr_config_reg[dm].rptr[dim].value = (size_t)ptr;
800029ac: 23 a8 de 8c  	sw	a3, -1840(t4)
800029b0: 23 ac fe 9c  	sw	a5, -1576(t4)
;     for (uint32_t n = 0; n < N; n++) {
800029b4: 13 36 15 00  	seqz	a2, a0
800029b8: 93 b6 15 00  	seqz	a3, a1
800029bc: 33 66 d6 00  	or	a2, a2, a3
;     __builtin_ssr_enable();
800029c0: f3 e6 00 7c  	csrrsi	a3, 1984, 1
;     for (uint32_t n = 0; n < N; n++) {
800029c4: 63 14 06 06  	bnez	a2, 0x80002a2c <gemm_seq_ssr_frep+0x11c>
800029c8: 83 26 01 01  	lw	a3, 16(sp)
800029cc: 13 06 00 00  	mv	a2, zero
;     for (uint32_t n = 0; n < N; n++) {
800029d0: 13 87 08 01  	addi	a4, a7, 16
800029d4: 13 98 36 00  	slli	a6, a3, 3
800029d8: 93 07 00 00  	mv	a5, zero
800029dc: 93 06 07 00  	mv	a3, a4
;             register double c0 = C[n * ldC + m + 0];
800029e0: 87 b1 06 ff  	fld	ft3, -16(a3)
;             register double c1 = C[n * ldC + m + 1];
800029e4: 07 b2 86 ff  	fld	ft4, -8(a3)
;             register double c2 = C[n * ldC + m + 2];
800029e8: 87 b2 06 00  	fld	ft5, 0(a3)
;             register double c3 = C[n * ldC + m + 3];
800029ec: 07 b3 86 00  	fld	ft6, 8(a3)
;             asm volatile(
800029f0: 8b 80 32 00  	frep.o	t0, 4, 0, 0
800029f4: c3 71 10 1a  	fmadd.d	ft3, ft0, ft1, ft3
800029f8: 43 72 10 22  	fmadd.d	ft4, ft0, ft1, ft4
800029fc: c3 72 10 2a  	fmadd.d	ft5, ft0, ft1, ft5
80002a00: 43 73 10 32  	fmadd.d	ft6, ft0, ft1, ft6
;             C[n * ldC + m + 0] = c0;
80002a04: 27 b8 36 fe  	fsd	ft3, -16(a3)
;             C[n * ldC + m + 1] = c1;
80002a08: 27 bc 46 fe  	fsd	ft4, -8(a3)
;             C[n * ldC + m + 2] = c2;
80002a0c: 27 b0 56 00  	fsd	ft5, 0(a3)
;             C[n * ldC + m + 3] = c3;
80002a10: 27 b4 66 00  	fsd	ft6, 8(a3)
;         for (uint32_t m = 0; m < M; m += 4) {
80002a14: 93 87 47 00  	addi	a5, a5, 4
80002a18: 93 86 06 02  	addi	a3, a3, 32
80002a1c: e3 e2 b7 fc  	bltu	a5, a1, 0x800029e0 <gemm_seq_ssr_frep+0xd0>
;     for (uint32_t n = 0; n < N; n++) {
80002a20: 13 06 16 00  	addi	a2, a2, 1
80002a24: 33 07 07 01  	add	a4, a4, a6
80002a28: e3 18 a6 fa  	bne	a2, a0, 0x800029d8 <gemm_seq_ssr_frep+0xc8>
; void snrt_fpu_fence() { asm volatile("fmv.x.w zero, fa0"); }
80002a2c: 53 00 05 e0  	fmv.x.w	zero, fa0
;     __builtin_ssr_disable();
80002a30: 73 f5 00 7c  	csrrci	a0, 1984, 1
;     asm volatile("" ::"f"(ft0), "f"(ft1));
80002a34: 87 31 81 00  	fld	ft3, 8(sp)
80002a38: 07 32 01 00  	fld	ft4, 0(sp)
80002a3c: 53 80 31 22  	fmv.d	ft0, ft3
80002a40: d3 00 42 22  	fmv.d	ft1, ft4
; }
80002a44: 13 01 01 01  	addi	sp, sp, 16
80002a48: 67 80 00 00  	ret

80002a4c <__snrt_isr>:
;     uint32_t cause = read_csr(mcause);
80002a4c: 73 25 20 34  	csrr	a0, mcause
;     if (cause & MCAUSE_INTERRUPT) {
80002a50: 63 44 05 00  	bltz	a0, 0x80002a58 <__snrt_isr+0xc>
;         while (1)
80002a54: 6f 00 00 00  	j	0x80002a54 <__snrt_isr+0x8>
80002a58: b7 05 00 80  	lui	a1, 524288
80002a5c: 93 85 f5 ff  	addi	a1, a1, -1
;         switch (cause & ~MCAUSE_INTERRUPT) {
80002a60: 33 75 b5 00  	and	a0, a0, a1
80002a64: 13 05 d5 ff  	addi	a0, a0, -3
80002a68: 93 55 25 00  	srli	a1, a0, 2
80002a6c: 13 15 e5 01  	slli	a0, a0, 30
80002a70: 33 65 b5 00  	or	a0, a0, a1
80002a74: 93 05 40 00  	addi	a1, zero, 4
80002a78: 63 0a b5 06  	beq	a0, a1, 0x80002aec <.LBB1_7+0x58>
80002a7c: 63 1a 05 08  	bnez	a0, 0x80002b10 <.LBB1_7+0x7c>
80002a80: 37 05 00 00  	lui	a0, 0
80002a84: 33 05 45 00  	add	a0, a0, tp
80002a88: 03 25 05 00  	lw	a0, 0(a0)
80002a8c: 03 25 05 00  	lw	a0, 0(a0)
80002a90: f3 25 40 f1  	csrr	a1, mhartid

80002a94 <.LBB1_7>:
;     asm volatile(
80002a94: 17 16 00 00  	auipc	a2, 1
80002a98: 13 06 46 a1  	addi	a2, a2, -1516
80002a9c: 03 25 85 00  	lw	a0, 8(a0)
;     asm volatile(
80002aa0: 93 06 06 00  	mv	a3, a2
80002aa4: 93 02 10 00  	addi	t0, zero, 1
80002aa8: af a2 56 0c  	amoswap.w.aq	t0, t0, (a3)
80002aac: e3 9e 02 fe  	bnez	t0, 0x80002aa8 <.LBB1_7+0x14>
;     *(clint_p + ((hartid & ~0x1f) >> 5)) &= ~(1 << (hartid & 0x1f));
80002ab0: b7 06 00 00  	lui	a3, 0
80002ab4: b3 86 46 00  	add	a3, a3, tp
80002ab8: 83 a6 86 00  	lw	a3, 8(a3)
80002abc: 33 85 a5 40  	sub	a0, a1, a0
80002ac0: 93 55 35 00  	srli	a1, a0, 3
80002ac4: 93 f5 c5 ff  	andi	a1, a1, -4
80002ac8: b3 85 b6 00  	add	a1, a3, a1
80002acc: 83 a6 05 00  	lw	a3, 0(a1)
80002ad0: 13 07 10 00  	addi	a4, zero, 1
80002ad4: 33 15 a7 00  	sll	a0, a4, a0
80002ad8: 13 45 f5 ff  	not	a0, a0
80002adc: 33 f5 a6 00  	and	a0, a3, a0
80002ae0: 23 a0 a5 00  	sw	a0, 0(a1)
;     asm volatile("amoswap.w.rl  x0,x0,(%0)   # Release lock by storing 0\n"
80002ae4: 2f 20 06 0a  	amoswap.w.rl	zero, zero, (a2)
; }
80002ae8: 67 80 00 00  	ret
; uint32_t snrt_cluster_core_idx() { return _snrt_core_idx; }
80002aec: 37 05 00 00  	lui	a0, 0
80002af0: 33 05 45 00  	add	a0, a0, tp
80002af4: 03 25 45 00  	lw	a0, 4(a0)
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002af8: b7 05 00 00  	lui	a1, 0
80002afc: b3 85 45 00  	add	a1, a1, tp
80002b00: 83 a5 c5 00  	lw	a1, 12(a1)
80002b04: 13 06 10 00  	addi	a2, zero, 1
;     snrt_int_cluster_clr(1 << cluster_core_idx);
80002b08: 33 15 a6 00  	sll	a0, a2, a0
; void snrt_int_cluster_clr(uint32_t mask) { cl_clint_clr(mask); }
80002b0c: 23 a4 a5 00  	sw	a0, 8(a1)
; }
80002b10: 67 80 00 00  	ret

80002b14 <_snrt_init_team>:
;     team->base.root = team;
80002b14: 23 a0 f7 00  	sw	a5, 0(a5)
;     team->bootdata = (void *)bootdata;
80002b18: 23 a2 e7 00  	sw	a4, 4(a5)
;     team->global_core_base_hartid = bootdata->hartid_base;
80002b1c: 03 23 87 00  	lw	t1, 8(a4)
80002b20: 23 a4 67 00  	sw	t1, 8(a5)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002b24: 03 28 87 02  	lw	a6, 40(a4)
;                             bootdata->s1_quadrant_count;
80002b28: 83 28 c7 02  	lw	a7, 44(a4)
;     team->global_core_num = bootdata->core_count * bootdata->cluster_count *
80002b2c: 83 22 47 00  	lw	t0, 4(a4)
80002b30: 33 88 08 03  	mul	a6, a7, a6
80002b34: 33 05 58 02  	mul	a0, a6, t0
80002b38: 23 a6 a7 00  	sw	a0, 12(a5)
;     asm("csrr %0, mhartid" : "=r"(hartid));
80002b3c: f3 28 40 f1  	csrr	a7, mhartid
;         (snrt_hartid() - bootdata->hartid_base) / bootdata->core_count;
80002b40: 33 85 68 40  	sub	a0, a7, t1
80002b44: 33 55 55 02  	divu	a0, a0, t0
;     team->cluster_idx =
80002b48: 23 a8 a7 00  	sw	a0, 16(a5)
;     team->cluster_num = bootdata->cluster_count * bootdata->s1_quadrant_count;
80002b4c: 23 aa 07 01  	sw	a6, 20(a5)
;     team->cluster_core_base_hartid = bootdata->hartid_base;
80002b50: 23 ac 67 00  	sw	t1, 24(a5)
;     team->cluster_core_num = cluster_core_num;
80002b54: 23 ae b7 00  	sw	a1, 28(a5)
;         (uint64_t)(bootdata->global_mem_start + _snrt_cluster_global_offset);
80002b58: 03 25 87 01  	lw	a0, 24(a4)
80002b5c: b7 05 00 10  	lui	a1, 65536
80002b60: 33 05 b5 00  	add	a0, a0, a1
;     team->global_mem.start =
80002b64: 23 a2 07 02  	sw	zero, 36(a5)
80002b68: 23 a0 a7 02  	sw	a0, 32(a5)
;     team->global_mem.end = (uint64_t)bootdata->global_mem_end;
80002b6c: 03 25 07 02  	lw	a0, 32(a4)
80002b70: 83 25 47 02  	lw	a1, 36(a4)
80002b74: 23 a4 a7 02  	sw	a0, 40(a5)
80002b78: 23 a6 b7 02  	sw	a1, 44(a5)
;     team->cluster_mem.start = (uint64_t)spm_start;
80002b7c: 23 a8 c7 02  	sw	a2, 48(a5)
80002b80: 23 aa 07 02  	sw	zero, 52(a5)
;     team->cluster_mem.end = (uint64_t)spm_end;
80002b84: 23 ac d7 02  	sw	a3, 56(a5)
80002b88: 23 ae 07 02  	sw	zero, 60(a5)
;     team->barrier_reg_ptr = (uint32_t)spm_start + bootdata->tcdm_size +
80002b8c: 03 25 07 01  	lw	a0, 16(a4)
80002b90: 33 08 a6 00  	add	a6, a2, a0
80002b94: 93 05 08 04  	addi	a1, a6, 64
80002b98: 23 a8 b7 06  	sw	a1, 112(a5)
;         (uint64_t)spm_start + bootdata->tcdm_size + bootdata->tcdm_size / 2;
80002b9c: b3 32 a8 00  	sltu	t0, a6, a0
80002ba0: 93 55 15 00  	srli	a1, a0, 1
80002ba4: 33 03 b8 00  	add	t1, a6, a1
80002ba8: b3 35 03 01  	sltu	a1, t1, a6
80002bac: b3 85 b2 00  	add	a1, t0, a1
;     team->zero_mem.start =
80002bb0: 23 a0 67 04  	sw	t1, 64(a5)
80002bb4: 23 a2 b7 04  	sw	a1, 68(a5)
;     team->zero_mem.end = (uint64_t)spm_start + 2 * bootdata->tcdm_size;
80002bb8: 13 15 15 00  	slli	a0, a0, 1
80002bbc: b3 05 c5 00  	add	a1, a0, a2
80002bc0: 33 b5 a5 00  	sltu	a0, a1, a0
80002bc4: 23 a4 b7 04  	sw	a1, 72(a5)
80002bc8: 23 a6 a7 04  	sw	a0, 76(a5)
;     team->cluster_barrier.barrier = 0;
80002bcc: 23 a4 07 06  	sw	zero, 104(a5)
;     team->cluster_barrier.barrier_iteration = 0;
80002bd0: 23 a6 07 06  	sw	zero, 108(a5)
;     _snrt_team_current = &team->base;
80002bd4: 37 05 00 00  	lui	a0, 0
80002bd8: 33 05 45 00  	add	a0, a0, tp
80002bdc: 23 20 f5 00  	sw	a5, 0(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002be0: 03 a5 07 00  	lw	a0, 0(a5)
80002be4: 83 25 85 01  	lw	a1, 24(a0)
;         _snrt_team_current->root->cluster_core_num;
80002be8: 03 25 c5 01  	lw	a0, 28(a0)
;         (snrt_hartid() - _snrt_team_current->root->cluster_core_base_hartid) %
80002bec: b3 85 b8 40  	sub	a1, a7, a1
80002bf0: 33 f5 a5 02  	remu	a0, a1, a0
;     _snrt_core_idx =
80002bf4: b7 05 00 00  	lui	a1, 0
80002bf8: b3 85 45 00  	add	a1, a1, tp
80002bfc: 23 a2 a5 00  	sw	a0, 4(a1)
80002c00: 13 05 80 44  	addi	a0, zero, 1096
;     putc_buffer[snrt_hartid()].hdr.size = 0;
80002c04: 33 85 a8 02  	mul	a0, a7, a0

80002c08 <.LBB0_1>:
80002c08: 97 15 00 00  	auipc	a1, 1
80002c0c: 93 85 45 8a  	addi	a1, a1, -1884
80002c10: 33 05 b5 00  	add	a0, a0, a1
80002c14: 23 20 05 00  	sw	zero, 0(a0)
;     team->peripherals.clint = (uint32_t *)bootdata->clint_base;
80002c18: 83 28 07 03  	lw	a7, 48(a4)
80002c1c: 23 aa 17 07  	sw	a7, 116(a5)
;     team->peripherals.perf_counters =
80002c20: 23 ae 07 07  	sw	a6, 124(a5)
;     team->peripherals.wakeup = (uint32_t *)0;  // not supported in RTL anymore
80002c24: 23 ac 07 06  	sw	zero, 120(a5)
;         (uint32_t *)(spm_start + bootdata->tcdm_size +
80002c28: 13 07 08 03  	addi	a4, a6, 48
;     team->peripherals.cl_clint =
80002c2c: 23 a0 e7 08  	sw	a4, 128(a5)
;         ALIGN_UP((uint32_t)team->cluster_mem.start, MIN_CHUNK_SIZE);
80002c30: 13 05 76 00  	addi	a0, a2, 7
80002c34: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l1.base =
80002c38: 23 a8 a7 04  	sw	a0, 80(a5)
;         (uint32_t)(team->cluster_mem.end - team->cluster_mem.start);
80002c3c: 33 86 c6 40  	sub	a2, a3, a2
;     team->allocator.l1.size =
80002c40: 23 aa c7 04  	sw	a2, 84(a5)
;     team->allocator.l1.next = team->allocator.l1.base;
80002c44: 23 ac a7 04  	sw	a0, 88(a5)
;         ALIGN_UP((uint32_t)_edram + l3off, MIN_CHUNK_SIZE);
80002c48: 03 a5 05 00  	lw	a0, 0(a1)
80002c4c: 13 05 f5 44  	addi	a0, a0, 1103
80002c50: 13 75 85 ff  	andi	a0, a0, -8
;     team->allocator.l3.base =
80002c54: 23 ae a7 04  	sw	a0, 92(a5)
;     team->allocator.l3.size = 0;
80002c58: 23 a0 07 06  	sw	zero, 96(a5)
;     team->allocator.l3.next = team->allocator.l3.base;
80002c5c: 23 a2 a7 06  	sw	a0, 100(a5)
;     clint_p = team->peripherals.clint;
80002c60: 37 05 00 00  	lui	a0, 0
80002c64: 33 05 45 00  	add	a0, a0, tp
80002c68: 23 24 15 01  	sw	a7, 8(a0)
;     cl_clint_p = team->peripherals.cl_clint;
80002c6c: 37 05 00 00  	lui	a0, 0
80002c70: 33 05 45 00  	add	a0, a0, tp
80002c74: 23 26 e5 00  	sw	a4, 12(a0)
; }
80002c78: 67 80 00 00  	ret

Disassembly of section .init:

80002c80 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
80002c80: 97 11 00 00  	auipc	gp, 1
;     addi      gp, gp, %pcrel_lo(1b)
80002c84: 93 81 81 f5  	addi	gp, gp, -168

80002c88 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
80002c88: 97 00 00 00  	auipc	ra, 0
80002c8c: e7 80 40 3c  	jalr	964(ra)

80002c90 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
80002c90: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
80002c94: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
80002c98: 97 00 00 00  	auipc	ra, 0
80002c9c: e7 80 c0 40  	jalr	1036(ra)
;     mv        t0, a0
80002ca0: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
80002ca4: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
80002ca8: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
80002cac: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
80002cb0: 63 92 02 02  	bnez	t0, 0x80002cd4 <snrt.crt0.init_registers>

80002cb4 <.Lpcrel_hi0>:
;     la        t0, _edata
80002cb4: 97 02 00 00  	auipc	t0, 0
80002cb8: 93 82 42 7f  	addi	t0, t0, 2036

80002cbc <.Lpcrel_hi1>:
;     la        t1, _end
80002cbc: 17 03 00 00  	auipc	t1, 0
80002cc0: 13 03 03 7f  	addi	t1, t1, 2032
;     bge       t0, t1, 2f
80002cc4: 63 d8 62 00  	bge	t0, t1, 0x80002cd4 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
80002cc8: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
80002ccc: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
80002cd0: e3 cc 62 fe  	blt	t0, t1, 0x80002cc8 <.Lpcrel_hi1+0xc>

80002cd4 <snrt.crt0.init_registers>:
;     csrr    t0, misa
80002cd4: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
80002cd8: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
80002cdc: 63 82 02 08  	beqz	t0, 0x80002d60 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
80002ce0: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
80002ce4: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
80002ce8: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
80002cec: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
80002cf0: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
80002cf4: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
80002cf8: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
80002cfc: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
80002d00: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
80002d04: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
80002d08: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
80002d0c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
80002d10: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
80002d14: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
80002d18: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
80002d1c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
80002d20: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
80002d24: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
80002d28: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
80002d2c: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
80002d30: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
80002d34: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
80002d38: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
80002d3c: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
80002d40: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
80002d44: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
80002d48: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
80002d4c: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
80002d50: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
80002d54: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
80002d58: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
80002d5c: d3 0f 00 d2  	fcvt.d.w	ft11, zero

80002d60 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
80002d60: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
80002d64: 23 a0 06 00  	sw	zero, 0(a3)

80002d68 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
80002d68: 97 02 00 00  	auipc	t0, 0
80002d6c: 83 a2 82 40  	lw	t0, 1032(t0)
;     sub       a3, a3, t0
80002d70: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
80002d74: 93 87 06 00  	mv	a5, a3

80002d78 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
80002d78: 97 03 00 00  	auipc	t2, 0
80002d7c: 83 a3 c3 3f  	lw	t2, 1020(t2)
;     sll       t0, a0, t2  # this hart
80002d80: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
80002d84: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
80002d88: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
80002d8c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
80002d90: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
80002d94: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
80002d98: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
80002d9c: b3 86 66 40  	sub	a3, a3, t1

80002da0 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
80002da0: 97 02 00 00  	auipc	t0, 0
80002da4: 93 82 82 63  	addi	t0, t0, 1592

80002da8 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
80002da8: 17 03 00 00  	auipc	t1, 0
80002dac: 13 03 03 63  	addi	t1, t1, 1584

80002db0 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
80002db0: 97 03 00 00  	auipc	t2, 0
80002db4: 93 83 83 62  	addi	t2, t2, 1576

80002db8 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
80002db8: 17 0e 00 00  	auipc	t3, 0
80002dbc: 13 0e 0e 63  	addi	t3, t3, 1584
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
80002dc0: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
80002dc4: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
80002dc8: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
80002dcc: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
80002dd0: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
80002dd4: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
80002dd8: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
80002ddc: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
80002de0: 63 dc 62 00  	bge	t0, t1, 0x80002df8 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
80002de4: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
80002de8: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
80002dec: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002df0: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
80002df4: e3 c8 62 fe  	blt	t0, t1, 0x80002de4 <.Lpcrel_hi7+0x2c>

80002df8 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
80002df8: 97 02 00 00  	auipc	t0, 0
80002dfc: 93 82 02 5e  	addi	t0, t0, 1504

80002e00 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
80002e00: 17 03 00 00  	auipc	t1, 0
80002e04: 13 03 83 5e  	addi	t1, t1, 1512
;     bge       t0, t1, 2f
80002e08: 63 da 62 00  	bge	t0, t1, 0x80002e1c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
80002e0c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
80002e10: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
80002e14: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
80002e18: e3 ca 72 fe  	blt	t0, t2, 0x80002e0c <.Lpcrel_hi9+0xc>

80002e1c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
80002e1c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
80002e20: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
80002e24: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
80002e28: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
80002e2c: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
80002e30: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
80002e34: 97 00 00 00  	auipc	ra, 0
80002e38: e7 80 00 ce  	jalr	-800(ra)
;     lw        a0, 0(sp)
80002e3c: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
80002e40: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
80002e44: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
80002e48: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
80002e4c: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
80002e50: 13 01 41 01  	addi	sp, sp, 20

80002e54 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
80002e54: 97 02 00 00  	auipc	t0, 0
80002e58: 93 82 c2 03  	addi	t0, t0, 60
;     csrw   mtvec, t0
80002e5c: 73 90 52 30  	csrw	mtvec, t0

80002e60 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
80002e60: 97 00 00 00  	auipc	ra, 0
80002e64: e7 80 00 22  	jalr	544(ra)

80002e68 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
80002e68: 97 d0 ff ff  	auipc	ra, 1048573
80002e6c: e7 80 c0 7c  	jalr	1996(ra)
;     mv        s0, a0 # store return value in s0
80002e70: 13 04 05 00  	mv	s0, a0

80002e74 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
80002e74: 97 00 00 00  	auipc	ra, 0
80002e78: e7 80 c0 20  	jalr	524(ra)

80002e7c <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
80002e7c: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
80002e80: 97 00 00 00  	auipc	ra, 0
80002e84: e7 80 c0 22  	jalr	556(ra)
;     wfi
80002e88: 73 00 50 10  	wfi	
;     j       1b
80002e8c: 6f f0 df ff  	j	0x80002e88 <snrt.crt0.end+0xc>

80002e90 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
80002e90: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
80002e94: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
80002e98: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
80002e9c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
80002ea0: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
80002ea4: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
80002ea8: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
80002eac: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
80002eb0: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
80002eb4: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
80002eb8: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
80002ebc: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
80002ec0: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
80002ec4: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
80002ec8: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
80002ecc: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
80002ed0: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
80002ed4: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
80002ed8: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002edc: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002ee0: 63 84 02 08  	beqz	t0, 0x80002f68 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
80002ee4: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
80002ee8: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
80002eec: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
80002ef0: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
80002ef4: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
80002ef8: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
80002efc: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
80002f00: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
80002f04: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
80002f08: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
80002f0c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
80002f10: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
80002f14: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
80002f18: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
80002f1c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
80002f20: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
80002f24: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
80002f28: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
80002f2c: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
80002f30: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
80002f34: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
80002f38: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
80002f3c: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
80002f40: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
80002f44: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
80002f48: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
80002f4c: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
80002f50: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
80002f54: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
80002f58: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
80002f5c: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
80002f60: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
80002f64: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
80002f68: 97 00 00 00  	auipc	ra, 0
80002f6c: e7 80 40 ae  	jalr	-1308(ra)
;     csrr    t0, misa
80002f70: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
80002f74: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
80002f78: 63 84 02 08  	beqz	t0, 0x80003000 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
80002f7c: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
80002f80: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
80002f84: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
80002f88: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
80002f8c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
80002f90: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
80002f94: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
80002f98: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
80002f9c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
80002fa0: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
80002fa4: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
80002fa8: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
80002fac: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
80002fb0: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
80002fb4: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
80002fb8: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
80002fbc: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
80002fc0: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
80002fc4: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
80002fc8: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
80002fcc: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
80002fd0: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
80002fd4: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
80002fd8: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
80002fdc: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
80002fe0: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
80002fe4: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
80002fe8: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
80002fec: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
80002ff0: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
80002ff4: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
80002ff8: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
80002ffc: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
80003000: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
80003004: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
80003008: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
8000300c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
80003010: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
80003014: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
80003018: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
8000301c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
80003020: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
80003024: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
80003028: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
8000302c: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
80003030: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
80003034: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
80003038: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
8000303c: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
80003040: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
80003044: 13 01 01 05  	addi	sp, sp, 80
;     mret
80003048: 73 00 20 30  	mret	

8000304c <_snrt_init_core_info>:
;     mv        a4, a1
8000304c: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
80003050: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
80003054: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
80003058: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
8000305c: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
80003060: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
80003064: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
80003068: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
8000306c: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
80003070: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
80003074: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
80003078: 33 75 b5 02  	remu	a0, a0, a1
;     ret
8000307c: 67 80 00 00  	ret

80003080 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
80003080: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
80003084: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
80003088: 97 f0 ff ff  	auipc	ra, 1048575
8000308c: e7 80 80 2d  	jalr	728(ra)
;     lw        a0, 0(a0)
80003090: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
80003094: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
80003098: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
8000309c: 13 01 41 00  	addi	sp, sp, 4
;     ret
800030a0: 67 80 00 00  	ret

800030a4 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
800030a4: 03 25 85 00  	lw	a0, 8(a0)
;     ret
800030a8: 67 80 00 00  	ret

800030ac <_snrt_exit>:
;     addi      sp, sp, -8
800030ac: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
800030b0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
800030b4: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
800030b8: 97 f0 ff ff  	auipc	ra, 1048575
800030bc: e7 80 80 28  	jalr	648(ra)
;     lw        t0, 0(sp)
800030c0: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
800030c4: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
800030c8: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
800030cc: 63 1c 05 00  	bnez	a0, 0x800030e4 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
800030d0: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
800030d4: 93 e2 12 00  	ori	t0, t0, 1

800030d8 <.Lpcrel_hi11>:
;     la        t1, scratch_reg
800030d8: 17 d3 ff 81  	auipc	t1, 532477
800030dc: 13 03 c3 f3  	addi	t1, t1, -196
;     sw        t0, 0(t1)
800030e0: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
800030e4: 67 80 00 00  	ret
