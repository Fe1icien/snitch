
/home/bsc22f7/scratch/snitch/sw/benchmark/build_bsh/snRuntime/libsnRuntime-banshee.a(start_snitch.S.o):	file format elf32-littleriscv

Sections:
Idx Name                Size     VMA      Type
  0                     00000000 00000000 
  1 .strtab             0000033c 00000000 
  2 .text               00000000 00000000 TEXT
  3 .init               00000468 00000000 TEXT
  4 .rela.init          000001b0 00000000 
  5 .debug_info         00000360 00000000 
  6 .rela.debug_info    00000108 00000000 
  7 .debug_abbrev       00000021 00000000 
  8 .debug_aranges      00000020 00000000 
  9 .rela.debug_aranges 00000018 00000000 
 10 .debug_line         00000246 00000000 
 11 .rela.debug_line    0000000c 00000000 
 12 .symtab             00000470 00000000 


Disassembly of section .init:

00000000 <snrt.crt0.init_global_pointer>:
; 1:  auipc     gp, %pcrel_hi(__global_pointer$)
       0: 97 01 00 00  	auipc	gp, 0
;     addi      gp, gp, %pcrel_lo(1b)
       4: 93 81 01 00  	mv	gp, gp

00000008 <snrt.crt0.init_core_info>:
;     call      _snrt_init_core_info
       8: 97 00 00 00  	auipc	ra, 0
       c: e7 80 00 00  	jalr	ra

00000010 <snrt.crt0.init_bss>:
;     mv        s0, a0 # store a0 in s0 since we dont have a stack yet
      10: 13 04 05 00  	mv	s0, a0
;     mv        a0, a4
      14: 13 05 07 00  	mv	a0, a4
;     call      _snrt_get_base_hartid
      18: 97 00 00 00  	auipc	ra, 0
      1c: e7 80 00 00  	jalr	ra
;     mv        t0, a0
      20: 93 02 05 00  	mv	t0, a0
;     mv        a0, s0
      24: 13 05 04 00  	mv	a0, s0
;     csrr      t1, mhartid
      28: 73 23 40 f1  	csrr	t1, mhartid
;     sub       t0, t1, t0
      2c: b3 02 53 40  	sub	t0, t1, t0
;     bnez      t0, 2f
      30: 63 92 02 02  	bnez	t0, 0x54 <snrt.crt0.init_registers>

00000034 <.Lpcrel_hi0>:
;     la        t0, _edata
      34: 97 02 00 00  	auipc	t0, 0
      38: 93 82 02 00  	mv	t0, t0

0000003c <.Lpcrel_hi1>:
;     la        t1, _end
      3c: 17 03 00 00  	auipc	t1, 0
      40: 13 03 03 00  	mv	t1, t1
;     bge       t0, t1, 2f
      44: 63 d8 62 00  	bge	t0, t1, 0x54 <snrt.crt0.init_registers>
; 1:  sw        zero, 0(t0)
      48: 23 a0 02 00  	sw	zero, 0(t0)
;     addi      t0, t0, 4
      4c: 93 82 42 00  	addi	t0, t0, 4
;     blt       t0, t1, 1b
      50: e3 cc 62 fe  	blt	t0, t1, 0x48 <.Lpcrel_hi1+0xc>

00000054 <snrt.crt0.init_registers>:
;     csrr    t0, misa
      54: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) | (1 << 5) # D/F - single/double precision float extension
      58: 93 f2 82 02  	andi	t0, t0, 40
;     beqz    t0, 3f
      5c: 63 82 02 08  	beqz	t0, 0xe0 <snrt.crt0.init_stack>
;     fcvt.d.w f0, zero
      60: 53 00 00 d2  	fcvt.d.w	ft0, zero
;     fcvt.d.w f1, zero
      64: d3 00 00 d2  	fcvt.d.w	ft1, zero
;     fcvt.d.w f2, zero
      68: 53 01 00 d2  	fcvt.d.w	ft2, zero
;     fcvt.d.w f3, zero
      6c: d3 01 00 d2  	fcvt.d.w	ft3, zero
;     fcvt.d.w f4, zero
      70: 53 02 00 d2  	fcvt.d.w	ft4, zero
;     fcvt.d.w f5, zero
      74: d3 02 00 d2  	fcvt.d.w	ft5, zero
;     fcvt.d.w f6, zero
      78: 53 03 00 d2  	fcvt.d.w	ft6, zero
;     fcvt.d.w f7, zero
      7c: d3 03 00 d2  	fcvt.d.w	ft7, zero
;     fcvt.d.w f8, zero
      80: 53 04 00 d2  	fcvt.d.w	fs0, zero
;     fcvt.d.w f9, zero
      84: d3 04 00 d2  	fcvt.d.w	fs1, zero
;     fcvt.d.w f10, zero
      88: 53 05 00 d2  	fcvt.d.w	fa0, zero
;     fcvt.d.w f11, zero
      8c: d3 05 00 d2  	fcvt.d.w	fa1, zero
;     fcvt.d.w f12, zero
      90: 53 06 00 d2  	fcvt.d.w	fa2, zero
;     fcvt.d.w f13, zero
      94: d3 06 00 d2  	fcvt.d.w	fa3, zero
;     fcvt.d.w f14, zero
      98: 53 07 00 d2  	fcvt.d.w	fa4, zero
;     fcvt.d.w f15, zero
      9c: d3 07 00 d2  	fcvt.d.w	fa5, zero
;     fcvt.d.w f16, zero
      a0: 53 08 00 d2  	fcvt.d.w	fa6, zero
;     fcvt.d.w f17, zero
      a4: d3 08 00 d2  	fcvt.d.w	fa7, zero
;     fcvt.d.w f18, zero
      a8: 53 09 00 d2  	fcvt.d.w	fs2, zero
;     fcvt.d.w f19, zero
      ac: d3 09 00 d2  	fcvt.d.w	fs3, zero
;     fcvt.d.w f20, zero
      b0: 53 0a 00 d2  	fcvt.d.w	fs4, zero
;     fcvt.d.w f21, zero
      b4: d3 0a 00 d2  	fcvt.d.w	fs5, zero
;     fcvt.d.w f22, zero
      b8: 53 0b 00 d2  	fcvt.d.w	fs6, zero
;     fcvt.d.w f23, zero
      bc: d3 0b 00 d2  	fcvt.d.w	fs7, zero
;     fcvt.d.w f24, zero
      c0: 53 0c 00 d2  	fcvt.d.w	fs8, zero
;     fcvt.d.w f25, zero
      c4: d3 0c 00 d2  	fcvt.d.w	fs9, zero
;     fcvt.d.w f26, zero
      c8: 53 0d 00 d2  	fcvt.d.w	fs10, zero
;     fcvt.d.w f27, zero
      cc: d3 0d 00 d2  	fcvt.d.w	fs11, zero
;     fcvt.d.w f28, zero
      d0: 53 0e 00 d2  	fcvt.d.w	ft8, zero
;     fcvt.d.w f29, zero
      d4: d3 0e 00 d2  	fcvt.d.w	ft9, zero
;     fcvt.d.w f30, zero
      d8: 53 0f 00 d2  	fcvt.d.w	ft10, zero
;     fcvt.d.w f31, zero
      dc: d3 0f 00 d2  	fcvt.d.w	ft11, zero

000000e0 <snrt.crt0.init_stack>:
;     addi      a3, a3, -8
      e0: 93 86 86 ff  	addi	a3, a3, -8
;     sw        zero, 0(a3)
      e4: 23 a0 06 00  	sw	zero, 0(a3)

000000e8 <.Lpcrel_hi2>:
;     lw        t0, _snrt_team_size
      e8: 97 02 00 00  	auipc	t0, 0
      ec: 83 a2 02 00  	lw	t0, 0(t0)
;     sub       a3, a3, t0
      f0: b3 86 56 40  	sub	a3, a3, t0
;     mv        a5, a3
      f4: 93 87 06 00  	mv	a5, a3

000000f8 <.Lpcrel_hi3>:
;     lw        t2, snrt_stack_size  # load stack size (overridable by binary)
      f8: 97 03 00 00  	auipc	t2, 0
      fc: 83 a3 03 00  	lw	t2, 0(t2)
;     sll       t0, a0, t2  # this hart
     100: b3 12 75 00  	sll	t0, a0, t2
;     sll       t1, a1, t2  # all harts
     104: 33 93 75 00  	sll	t1, a1, t2
;     sub       sp, a3, t0
     108: 33 81 56 40  	sub	sp, a3, t0
;     sub       a3, a3, t1
     10c: b3 86 66 40  	sub	a3, a3, t1
;     slli      t0, a0, 3  # this hart
     110: 93 12 35 00  	slli	t0, a0, 3
;     slli      t1, a1, 3  # all harts
     114: 13 93 35 00  	slli	t1, a1, 3
;     sub       sp, sp, t0
     118: 33 01 51 40  	sub	sp, sp, t0
;     sub       a3, a3, t1
     11c: b3 86 66 40  	sub	a3, a3, t1

00000120 <snrt.crt0.init_tls>:
;     la        t0, __tdata_start
     120: 97 02 00 00  	auipc	t0, 0
     124: 93 82 02 00  	mv	t0, t0

00000128 <.Lpcrel_hi5>:
;     la        t1, __tdata_end
     128: 17 03 00 00  	auipc	t1, 0
     12c: 13 03 03 00  	mv	t1, t1

00000130 <.Lpcrel_hi6>:
;     la        t2, __tbss_start
     130: 97 03 00 00  	auipc	t2, 0
     134: 93 83 03 00  	mv	t2, t2

00000138 <.Lpcrel_hi7>:
;     la        t3, __tbss_end
     138: 17 0e 00 00  	auipc	t3, 0
     13c: 13 0e 0e 00  	mv	t3, t3
;     add       sp, sp, t0   # subtract sp to make room for TLS and align
     140: 33 01 51 00  	add	sp, sp, t0
;     sub       sp, sp, t1
     144: 33 01 61 40  	sub	sp, sp, t1
;     add       sp, sp, t2
     148: 33 01 71 00  	add	sp, sp, t2
;     sub       sp, sp, t3
     14c: 33 01 c1 41  	sub	sp, sp, t3
;     andi      sp, sp, ~0x7
     150: 13 71 81 ff  	andi	sp, sp, -8
;     mv        tp, sp       # palce tp at start of TLS
     154: 13 02 01 00  	mv	tp, sp
;     andi      sp, sp, ~0x7 # align stack to 8B
     158: 13 71 81 ff  	andi	sp, sp, -8
;     mv        t4, tp
     15c: 93 0e 02 00  	mv	t4, tp
;     bge       t0, t1, 2f
     160: 63 dc 62 00  	bge	t0, t1, 0x178 <.Lpcrel_hi8>
; 1:  lw        t5, 0(t0)
     164: 03 af 02 00  	lw	t5, 0(t0)
;     sw        t5, 0(t4)
     168: 23 a0 ee 01  	sw	t5, 0(t4)
;     addi      t0, t0, 4
     16c: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
     170: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t1, 1b
     174: e3 c8 62 fe  	blt	t0, t1, 0x164 <.Lpcrel_hi7+0x2c>

00000178 <.Lpcrel_hi8>:
;     la        t0, __tbss_start
     178: 97 02 00 00  	auipc	t0, 0
     17c: 93 82 02 00  	mv	t0, t0

00000180 <.Lpcrel_hi9>:
;     la        t1, __tbss_end
     180: 17 03 00 00  	auipc	t1, 0
     184: 13 03 03 00  	mv	t1, t1
;     bge       t0, t1, 2f
     188: 63 da 62 00  	bge	t0, t1, 0x19c <snrt.crt0.init_team>
; 1:  sw        zero, 0(t4)
     18c: 23 a0 0e 00  	sw	zero, 0(t4)
;     addi      t0, t0, 4
     190: 93 82 42 00  	addi	t0, t0, 4
;     addi      t4, t4, 4
     194: 93 8e 4e 00  	addi	t4, t4, 4
;     blt       t0, t2, 1b
     198: e3 ca 72 fe  	blt	t0, t2, 0x18c <.Lpcrel_hi9+0xc>

0000019c <snrt.crt0.init_team>:
;     addi      sp, sp, -20
     19c: 13 01 c1 fe  	addi	sp, sp, -20
;     sw        a0, 0(sp)
     1a0: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        a1, 4(sp)
     1a4: 23 22 b1 00  	sw	a1, 4(sp)
;     sw        a2, 8(sp)
     1a8: 23 24 c1 00  	sw	a2, 8(sp)
;     sw        a3, 12(sp)
     1ac: 23 26 d1 00  	sw	a3, 12(sp)
;     sw        a4, 16(sp)
     1b0: 23 28 e1 00  	sw	a4, 16(sp)
;     call      _snrt_init_team
     1b4: 97 00 00 00  	auipc	ra, 0
     1b8: e7 80 00 00  	jalr	ra
;     lw        a0, 0(sp)
     1bc: 03 25 01 00  	lw	a0, 0(sp)
;     lw        a1, 4(sp)
     1c0: 83 25 41 00  	lw	a1, 4(sp)
;     lw        a2, 8(sp)
     1c4: 03 26 81 00  	lw	a2, 8(sp)
;     lw        a3, 12(sp)
     1c8: 83 26 c1 00  	lw	a3, 12(sp)
;     lw        a4, 16(sp)
     1cc: 03 27 01 01  	lw	a4, 16(sp)
;     addi      sp, sp, 20
     1d0: 13 01 41 01  	addi	sp, sp, 20

000001d4 <snrt.crt0.init_interrupt>:
;     la t0, __snrt_crt0_interrupt_handler
     1d4: 97 02 00 00  	auipc	t0, 0
     1d8: 93 82 02 00  	mv	t0, t0
;     csrw   mtvec, t0
     1dc: 73 90 52 30  	csrw	mtvec, t0

000001e0 <snrt.crt0.pre_barrier>:
;     call      _snrt_cluster_barrier
     1e0: 97 00 00 00  	auipc	ra, 0
     1e4: e7 80 00 00  	jalr	ra

000001e8 <snrt.crt0.main>:
;     call      main  # main(int core_id, int core_num, void *spm_start, void *spm_end)
     1e8: 97 00 00 00  	auipc	ra, 0
     1ec: e7 80 00 00  	jalr	ra
;     mv        s0, a0 # store return value in s0
     1f0: 13 04 05 00  	mv	s0, a0

000001f4 <snrt.crt0.post_barrier>:
;     call      _snrt_cluster_barrier
     1f4: 97 00 00 00  	auipc	ra, 0
     1f8: e7 80 00 00  	jalr	ra

000001fc <snrt.crt0.end>:
;     mv        a0, s0 # recover return value of main function in s0
     1fc: 13 05 04 00  	mv	a0, s0
;     call      _snrt_exit
     200: 97 00 00 00  	auipc	ra, 0
     204: e7 80 00 00  	jalr	ra
;     wfi
     208: 73 00 50 10  	wfi	
;     j       1b
     20c: 6f f0 df ff  	j	0x208 <snrt.crt0.end+0xc>

00000210 <__snrt_crt0_interrupt_handler>:
;     addi    sp, sp, -80
     210: 13 01 01 fb  	addi	sp, sp, -80
;     sw  ra, 64(sp)
     214: 23 20 11 04  	sw	ra, 64(sp)
;     sw  t0, 60(sp)
     218: 23 2e 51 02  	sw	t0, 60(sp)
;     sw  t1, 56(sp)
     21c: 23 2c 61 02  	sw	t1, 56(sp)
;     sw  t2, 52(sp)
     220: 23 2a 71 02  	sw	t2, 52(sp)
;     sw  s0, 48(sp)
     224: 23 28 81 02  	sw	s0, 48(sp)
;     sw  a0, 44(sp)
     228: 23 26 a1 02  	sw	a0, 44(sp)
;     sw  a1, 40(sp)
     22c: 23 24 b1 02  	sw	a1, 40(sp)
;     sw  a2, 36(sp)
     230: 23 22 c1 02  	sw	a2, 36(sp)
;     sw  a3, 32(sp)
     234: 23 20 d1 02  	sw	a3, 32(sp)
;     sw  a4, 28(sp)
     238: 23 2e e1 00  	sw	a4, 28(sp)
;     sw  a5, 24(sp)
     23c: 23 2c f1 00  	sw	a5, 24(sp)
;     sw  a6, 20(sp)
     240: 23 2a 01 01  	sw	a6, 20(sp)
;     sw  a7, 16(sp)
     244: 23 28 11 01  	sw	a7, 16(sp)
;     sw  t3, 12(sp)
     248: 23 26 c1 01  	sw	t3, 12(sp)
;     sw  t4,  8(sp)
     24c: 23 24 d1 01  	sw	t4, 8(sp)
;     sw  t5,  4(sp)
     250: 23 22 e1 01  	sw	t5, 4(sp)
;     sw  t6,  0(sp)
     254: 23 20 f1 01  	sw	t6, 0(sp)
;     csrr    t0, misa
     258: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
     25c: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
     260: 63 84 02 08  	beqz	t0, 0x2e8 <__snrt_crt0_interrupt_handler+0xd8>
;     addi    sp, sp, -256
     264: 13 01 01 f0  	addi	sp, sp, -256
;     fsd     f0, 248(sp)
     268: 27 3c 01 0e  	fsd	ft0, 248(sp)
;     fsd     f1, 240(sp)
     26c: 27 38 11 0e  	fsd	ft1, 240(sp)
;     fsd     f2, 232(sp)
     270: 27 34 21 0e  	fsd	ft2, 232(sp)
;     fsd     f3, 224(sp)
     274: 27 30 31 0e  	fsd	ft3, 224(sp)
;     fsd     f4, 216(sp)
     278: 27 3c 41 0c  	fsd	ft4, 216(sp)
;     fsd     f5, 208(sp)
     27c: 27 38 51 0c  	fsd	ft5, 208(sp)
;     fsd     f6, 200(sp)
     280: 27 34 61 0c  	fsd	ft6, 200(sp)
;     fsd     f7, 192(sp)
     284: 27 30 71 0c  	fsd	ft7, 192(sp)
;     fsd     f8, 184(sp)
     288: 27 3c 81 0a  	fsd	fs0, 184(sp)
;     fsd     f9, 176(sp)
     28c: 27 38 91 0a  	fsd	fs1, 176(sp)
;     fsd     f10, 168(sp)
     290: 27 34 a1 0a  	fsd	fa0, 168(sp)
;     fsd     f11, 160(sp)
     294: 27 30 b1 0a  	fsd	fa1, 160(sp)
;     fsd     f12, 152(sp)
     298: 27 3c c1 08  	fsd	fa2, 152(sp)
;     fsd     f13, 144(sp)
     29c: 27 38 d1 08  	fsd	fa3, 144(sp)
;     fsd     f14, 136(sp)
     2a0: 27 34 e1 08  	fsd	fa4, 136(sp)
;     fsd     f15, 128(sp)
     2a4: 27 30 f1 08  	fsd	fa5, 128(sp)
;     fsd     f16, 120(sp)
     2a8: 27 3c 01 07  	fsd	fa6, 120(sp)
;     fsd     f17, 112(sp)
     2ac: 27 38 11 07  	fsd	fa7, 112(sp)
;     fsd     f18, 104(sp)
     2b0: 27 34 21 07  	fsd	fs2, 104(sp)
;     fsd     f19, 96(sp)
     2b4: 27 30 31 07  	fsd	fs3, 96(sp)
;     fsd     f20, 88(sp)
     2b8: 27 3c 41 05  	fsd	fs4, 88(sp)
;     fsd     f21, 80(sp)
     2bc: 27 38 51 05  	fsd	fs5, 80(sp)
;     fsd     f22, 72(sp)
     2c0: 27 34 61 05  	fsd	fs6, 72(sp)
;     fsd     f23, 64(sp)
     2c4: 27 30 71 05  	fsd	fs7, 64(sp)
;     fsd     f24, 56(sp)
     2c8: 27 3c 81 03  	fsd	fs8, 56(sp)
;     fsd     f25, 48(sp)
     2cc: 27 38 91 03  	fsd	fs9, 48(sp)
;     fsd     f26, 40(sp)
     2d0: 27 34 a1 03  	fsd	fs10, 40(sp)
;     fsd     f27, 32(sp)
     2d4: 27 30 b1 03  	fsd	fs11, 32(sp)
;     fsd     f28, 24(sp)
     2d8: 27 3c c1 01  	fsd	ft8, 24(sp)
;     fsd     f29, 16(sp)
     2dc: 27 38 d1 01  	fsd	ft9, 16(sp)
;     fsd     f30, 8(sp)
     2e0: 27 34 e1 01  	fsd	ft10, 8(sp)
;     fsd     f31, 0(sp)
     2e4: 27 30 f1 01  	fsd	ft11, 0(sp)
;     call    __snrt_isr
     2e8: 97 00 00 00  	auipc	ra, 0
     2ec: e7 80 00 00  	jalr	ra
;     csrr    t0, misa
     2f0: f3 22 10 30  	csrr	t0, misa
;     andi    t0, t0, (1 << 3) # 3: D - single precision float extension
     2f4: 93 f2 82 00  	andi	t0, t0, 8
;     beqz    t0, 1f
     2f8: 63 84 02 08  	beqz	t0, 0x380 <__snrt_crt0_interrupt_handler+0x170>
;     fld     f0, 248(sp)
     2fc: 07 30 81 0f  	fld	ft0, 248(sp)
;     fld     f1, 240(sp)
     300: 87 30 01 0f  	fld	ft1, 240(sp)
;     fld     f2, 232(sp)
     304: 07 31 81 0e  	fld	ft2, 232(sp)
;     fld     f3, 224(sp)
     308: 87 31 01 0e  	fld	ft3, 224(sp)
;     fld     f4, 216(sp)
     30c: 07 32 81 0d  	fld	ft4, 216(sp)
;     fld     f5, 208(sp)
     310: 87 32 01 0d  	fld	ft5, 208(sp)
;     fld     f6, 200(sp)
     314: 07 33 81 0c  	fld	ft6, 200(sp)
;     fld     f7, 192(sp)
     318: 87 33 01 0c  	fld	ft7, 192(sp)
;     fld     f8, 184(sp)
     31c: 07 34 81 0b  	fld	fs0, 184(sp)
;     fld     f9, 176(sp)
     320: 87 34 01 0b  	fld	fs1, 176(sp)
;     fld     f10, 168(sp)
     324: 07 35 81 0a  	fld	fa0, 168(sp)
;     fld     f11, 160(sp)
     328: 87 35 01 0a  	fld	fa1, 160(sp)
;     fld     f12, 152(sp)
     32c: 07 36 81 09  	fld	fa2, 152(sp)
;     fld     f13, 144(sp)
     330: 87 36 01 09  	fld	fa3, 144(sp)
;     fld     f14, 136(sp)
     334: 07 37 81 08  	fld	fa4, 136(sp)
;     fld     f15, 128(sp)
     338: 87 37 01 08  	fld	fa5, 128(sp)
;     fld     f16, 120(sp)
     33c: 07 38 81 07  	fld	fa6, 120(sp)
;     fld     f17, 112(sp)
     340: 87 38 01 07  	fld	fa7, 112(sp)
;     fld     f18, 104(sp)
     344: 07 39 81 06  	fld	fs2, 104(sp)
;     fld     f19, 96(sp)
     348: 87 39 01 06  	fld	fs3, 96(sp)
;     fld     f20, 88(sp)
     34c: 07 3a 81 05  	fld	fs4, 88(sp)
;     fld     f21, 80(sp)
     350: 87 3a 01 05  	fld	fs5, 80(sp)
;     fld     f22, 72(sp)
     354: 07 3b 81 04  	fld	fs6, 72(sp)
;     fld     f23, 64(sp)
     358: 87 3b 01 04  	fld	fs7, 64(sp)
;     fld     f24, 56(sp)
     35c: 07 3c 81 03  	fld	fs8, 56(sp)
;     fld     f25, 48(sp)
     360: 87 3c 01 03  	fld	fs9, 48(sp)
;     fld     f26, 40(sp)
     364: 07 3d 81 02  	fld	fs10, 40(sp)
;     fld     f27, 32(sp)
     368: 87 3d 01 02  	fld	fs11, 32(sp)
;     fld     f28, 24(sp)
     36c: 07 3e 81 01  	fld	ft8, 24(sp)
;     fld     f29, 16(sp)
     370: 87 3e 01 01  	fld	ft9, 16(sp)
;     fld     f30, 8(sp)
     374: 07 3f 81 00  	fld	ft10, 8(sp)
;     fld     f31, 0(sp)
     378: 87 3f 01 00  	fld	ft11, 0(sp)
;     addi    sp, sp, 256
     37c: 13 01 01 10  	addi	sp, sp, 256
;     lw  t6,  0(sp)
     380: 83 2f 01 00  	lw	t6, 0(sp)
;     lw  t5,  4(sp)
     384: 03 2f 41 00  	lw	t5, 4(sp)
;     lw  t4,  8(sp)
     388: 83 2e 81 00  	lw	t4, 8(sp)
;     lw  t3, 12(sp)
     38c: 03 2e c1 00  	lw	t3, 12(sp)
;     lw  a7, 16(sp)
     390: 83 28 01 01  	lw	a7, 16(sp)
;     lw  a6, 20(sp)
     394: 03 28 41 01  	lw	a6, 20(sp)
;     lw  a5, 24(sp)
     398: 83 27 81 01  	lw	a5, 24(sp)
;     lw  a4, 28(sp)
     39c: 03 27 c1 01  	lw	a4, 28(sp)
;     lw  a3, 32(sp)
     3a0: 83 26 01 02  	lw	a3, 32(sp)
;     lw  a2, 36(sp)
     3a4: 03 26 41 02  	lw	a2, 36(sp)
;     lw  a1, 40(sp)
     3a8: 83 25 81 02  	lw	a1, 40(sp)
;     lw  a0, 44(sp)
     3ac: 03 25 c1 02  	lw	a0, 44(sp)
;     lw  s0, 48(sp)
     3b0: 03 24 01 03  	lw	s0, 48(sp)
;     lw  t2, 52(sp)
     3b4: 83 23 41 03  	lw	t2, 52(sp)
;     lw  t1, 56(sp)
     3b8: 03 23 81 03  	lw	t1, 56(sp)
;     lw  t0, 60(sp)
     3bc: 83 22 c1 03  	lw	t0, 60(sp)
;     lw  ra, 64(sp)
     3c0: 83 20 01 04  	lw	ra, 64(sp)
;     addi    sp, sp, 80
     3c4: 13 01 01 05  	addi	sp, sp, 80
;     mret
     3c8: 73 00 20 30  	mret	

000003cc <_snrt_init_core_info>:
;     mv        a4, a1
     3cc: 13 87 05 00  	mv	a4, a1
;     lw        a1, 4(a4)  # load the number of cores per cluster
     3d0: 83 25 47 00  	lw	a1, 4(a4)
;     lw        t0, 8(a4)  # load cluster's hartid offset
     3d4: 83 22 87 00  	lw	t0, 8(a4)
;     lw        a2, 12(a4) # start address of the TCDM
     3d8: 03 26 c7 00  	lw	a2, 12(a4)
;     lw        t1, 16(a4) # size of TCDM address space
     3dc: 03 23 07 01  	lw	t1, 16(a4)
;     lw        t2, 20(a4) # offset between cluster TCDMs
     3e0: 83 23 47 01  	lw	t2, 20(a4)
;     sub       a0, a0, t0
     3e4: 33 05 55 40  	sub	a0, a0, t0
;     div       t3, a0, a1 # calculate cluster index
     3e8: 33 4e b5 02  	div	t3, a0, a1
;     mul       t4, t3, t2 # calculate cluster TCDM offset
     3ec: b3 0e 7e 02  	mul	t4, t3, t2
;     add       a2, a2, t4 # start address of current cluster TCDM
     3f0: 33 06 d6 01  	add	a2, a2, t4
;     add       a3, a2, t1 # end address of current cluster TCDM
     3f4: b3 06 66 00  	add	a3, a2, t1
;     remu      a0, a0, a1 # calculate cluster-local core id
     3f8: 33 75 b5 02  	remu	a0, a0, a1
;     ret
     3fc: 67 80 00 00  	ret

00000400 <_snrt_cluster_barrier>:
;     addi      sp, sp, -4
     400: 13 01 c1 ff  	addi	sp, sp, -4
;     sw        ra, 0(sp)
     404: 23 20 11 00  	sw	ra, 0(sp)
;     call      _snrt_barrier_reg_ptr
     408: 97 00 00 00  	auipc	ra, 0
     40c: e7 80 00 00  	jalr	ra
;     lw        a0, 0(a0)
     410: 03 25 05 00  	lw	a0, 0(a0)
;     mv        zero, a0
     414: 13 00 05 00  	mv	zero, a0
;     lw        ra, 0(sp)
     418: 83 20 01 00  	lw	ra, 0(sp)
;     addi      sp, sp, 4
     41c: 13 01 41 00  	addi	sp, sp, 4
;     ret
     420: 67 80 00 00  	ret

00000424 <_snrt_get_base_hartid>:
;     lw        a0, 8(a0)  # load cluster's hartid offset
     424: 03 25 85 00  	lw	a0, 8(a0)
;     ret
     428: 67 80 00 00  	ret

0000042c <_snrt_exit>:
;     addi      sp, sp, -8
     42c: 13 01 81 ff  	addi	sp, sp, -8
;     sw        a0, 0(sp)
     430: 23 20 a1 00  	sw	a0, 0(sp)
;     sw        ra, 4(sp)
     434: 23 22 11 00  	sw	ra, 4(sp)
;     call      snrt_global_core_idx
     438: 97 00 00 00  	auipc	ra, 0
     43c: e7 80 00 00  	jalr	ra
;     lw        t0, 0(sp)
     440: 83 22 01 00  	lw	t0, 0(sp)
;     lw        ra, 4(sp)
     444: 83 20 41 00  	lw	ra, 4(sp)
;     addi      sp, sp, 8
     448: 13 01 81 00  	addi	sp, sp, 8
;     bnez      a0, 1f
     44c: 63 1c 05 00  	bnez	a0, 0x464 <.Lpcrel_hi11+0xc>
;     slli      t0, t0, 1
     450: 93 92 12 00  	slli	t0, t0, 1
;     ori       t0, t0, 1
     454: 93 e2 12 00  	ori	t0, t0, 1

00000458 <.Lpcrel_hi11>:
;     la        t1, scratch_reg
     458: 17 03 00 00  	auipc	t1, 0
     45c: 13 03 03 00  	mv	t1, t1
;     sw        t0, 0(t1)
     460: 23 20 53 00  	sw	t0, 0(t1)
; 1:  ret
     464: 67 80 00 00  	ret
