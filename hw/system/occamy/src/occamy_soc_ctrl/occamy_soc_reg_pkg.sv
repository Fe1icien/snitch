// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package occamy_soc_reg_pkg;

  // Param list
  parameter int NumScratchRegs = 4;
  parameter int NumPads = 31;

  // Address widths within the block
  parameter int BlockAw = 8;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    struct packed {
      logic        q;
    } ecc_uncorrectable;
    struct packed {
      logic        q;
    } ecc_correctable;
  } occamy_soc_reg2hw_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } ecc_uncorrectable;
    struct packed {
      logic        q;
    } ecc_correctable;
  } occamy_soc_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } ecc_uncorrectable;
    struct packed {
      logic        q;
      logic        qe;
    } ecc_correctable;
  } occamy_soc_reg2hw_intr_test_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } slw;
    struct packed {
      logic        q;
    } smt;
    struct packed {
      logic [1:0]  q;
    } drv;
  } occamy_soc_reg2hw_pad_mreg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } ecc_uncorrectable;
    struct packed {
      logic        d;
      logic        de;
    } ecc_correctable;
  } occamy_soc_hw2reg_intr_state_reg_t;

  typedef struct packed {
    logic [1:0]  d;
  } occamy_soc_hw2reg_chip_id_reg_t;

  typedef struct packed {
    logic [1:0]  d;
  } occamy_soc_hw2reg_boot_mode_reg_t;

  // Register -> HW type
  typedef struct packed {
    occamy_soc_reg2hw_intr_state_reg_t intr_state; // [131:130]
    occamy_soc_reg2hw_intr_enable_reg_t intr_enable; // [129:128]
    occamy_soc_reg2hw_intr_test_reg_t intr_test; // [127:124]
    occamy_soc_reg2hw_pad_mreg_t [30:0] pad; // [123:0]
  } occamy_soc_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    occamy_soc_hw2reg_intr_state_reg_t intr_state; // [7:4]
    occamy_soc_hw2reg_chip_id_reg_t chip_id; // [3:2]
    occamy_soc_hw2reg_boot_mode_reg_t boot_mode; // [1:0]
  } occamy_soc_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] OCCAMY_SOC_INTR_STATE_OFFSET = 8'h 0;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_INTR_ENABLE_OFFSET = 8'h 4;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_INTR_TEST_OFFSET = 8'h 8;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_VERSION_OFFSET = 8'h c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_CHIP_ID_OFFSET = 8'h 10;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_SCRATCH_0_OFFSET = 8'h 14;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_SCRATCH_1_OFFSET = 8'h 18;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_SCRATCH_2_OFFSET = 8'h 1c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_SCRATCH_3_OFFSET = 8'h 20;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_BOOT_MODE_OFFSET = 8'h 24;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_NUM_QUADRANTS_OFFSET = 8'h 28;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_0_OFFSET = 8'h 2c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_1_OFFSET = 8'h 30;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_2_OFFSET = 8'h 34;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_3_OFFSET = 8'h 38;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_4_OFFSET = 8'h 3c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_5_OFFSET = 8'h 40;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_6_OFFSET = 8'h 44;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_7_OFFSET = 8'h 48;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_8_OFFSET = 8'h 4c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_9_OFFSET = 8'h 50;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_10_OFFSET = 8'h 54;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_11_OFFSET = 8'h 58;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_12_OFFSET = 8'h 5c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_13_OFFSET = 8'h 60;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_14_OFFSET = 8'h 64;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_15_OFFSET = 8'h 68;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_16_OFFSET = 8'h 6c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_17_OFFSET = 8'h 70;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_18_OFFSET = 8'h 74;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_19_OFFSET = 8'h 78;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_20_OFFSET = 8'h 7c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_21_OFFSET = 8'h 80;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_22_OFFSET = 8'h 84;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_23_OFFSET = 8'h 88;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_24_OFFSET = 8'h 8c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_25_OFFSET = 8'h 90;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_26_OFFSET = 8'h 94;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_27_OFFSET = 8'h 98;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_28_OFFSET = 8'h 9c;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_29_OFFSET = 8'h a0;
  parameter logic [BlockAw-1:0] OCCAMY_SOC_PAD_30_OFFSET = 8'h a4;

  // Reset values for hwext registers and their fields
  parameter logic [1:0] OCCAMY_SOC_INTR_TEST_RESVAL = 2'h 0;
  parameter logic [0:0] OCCAMY_SOC_INTR_TEST_ECC_UNCORRECTABLE_RESVAL = 1'h 0;
  parameter logic [0:0] OCCAMY_SOC_INTR_TEST_ECC_CORRECTABLE_RESVAL = 1'h 0;
  parameter logic [1:0] OCCAMY_SOC_CHIP_ID_RESVAL = 2'h 0;
  parameter logic [1:0] OCCAMY_SOC_CHIP_ID_CHIP_ID_RESVAL = 2'h 0;
  parameter logic [1:0] OCCAMY_SOC_BOOT_MODE_RESVAL = 2'h 0;
  parameter logic [31:0] OCCAMY_SOC_NUM_QUADRANTS_RESVAL = 32'h 6;
  parameter logic [31:0] OCCAMY_SOC_NUM_QUADRANTS_NUM_QUADRANTS_RESVAL = 32'h 6;

  // Register index
  typedef enum int {
    OCCAMY_SOC_INTR_STATE,
    OCCAMY_SOC_INTR_ENABLE,
    OCCAMY_SOC_INTR_TEST,
    OCCAMY_SOC_VERSION,
    OCCAMY_SOC_CHIP_ID,
    OCCAMY_SOC_SCRATCH_0,
    OCCAMY_SOC_SCRATCH_1,
    OCCAMY_SOC_SCRATCH_2,
    OCCAMY_SOC_SCRATCH_3,
    OCCAMY_SOC_BOOT_MODE,
    OCCAMY_SOC_NUM_QUADRANTS,
    OCCAMY_SOC_PAD_0,
    OCCAMY_SOC_PAD_1,
    OCCAMY_SOC_PAD_2,
    OCCAMY_SOC_PAD_3,
    OCCAMY_SOC_PAD_4,
    OCCAMY_SOC_PAD_5,
    OCCAMY_SOC_PAD_6,
    OCCAMY_SOC_PAD_7,
    OCCAMY_SOC_PAD_8,
    OCCAMY_SOC_PAD_9,
    OCCAMY_SOC_PAD_10,
    OCCAMY_SOC_PAD_11,
    OCCAMY_SOC_PAD_12,
    OCCAMY_SOC_PAD_13,
    OCCAMY_SOC_PAD_14,
    OCCAMY_SOC_PAD_15,
    OCCAMY_SOC_PAD_16,
    OCCAMY_SOC_PAD_17,
    OCCAMY_SOC_PAD_18,
    OCCAMY_SOC_PAD_19,
    OCCAMY_SOC_PAD_20,
    OCCAMY_SOC_PAD_21,
    OCCAMY_SOC_PAD_22,
    OCCAMY_SOC_PAD_23,
    OCCAMY_SOC_PAD_24,
    OCCAMY_SOC_PAD_25,
    OCCAMY_SOC_PAD_26,
    OCCAMY_SOC_PAD_27,
    OCCAMY_SOC_PAD_28,
    OCCAMY_SOC_PAD_29,
    OCCAMY_SOC_PAD_30
  } occamy_soc_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] OCCAMY_SOC_PERMIT [42] = '{
    4'b 0001, // index[ 0] OCCAMY_SOC_INTR_STATE
    4'b 0001, // index[ 1] OCCAMY_SOC_INTR_ENABLE
    4'b 0001, // index[ 2] OCCAMY_SOC_INTR_TEST
    4'b 0011, // index[ 3] OCCAMY_SOC_VERSION
    4'b 0001, // index[ 4] OCCAMY_SOC_CHIP_ID
    4'b 1111, // index[ 5] OCCAMY_SOC_SCRATCH_0
    4'b 1111, // index[ 6] OCCAMY_SOC_SCRATCH_1
    4'b 1111, // index[ 7] OCCAMY_SOC_SCRATCH_2
    4'b 1111, // index[ 8] OCCAMY_SOC_SCRATCH_3
    4'b 0001, // index[ 9] OCCAMY_SOC_BOOT_MODE
    4'b 1111, // index[10] OCCAMY_SOC_NUM_QUADRANTS
    4'b 0001, // index[11] OCCAMY_SOC_PAD_0
    4'b 0001, // index[12] OCCAMY_SOC_PAD_1
    4'b 0001, // index[13] OCCAMY_SOC_PAD_2
    4'b 0001, // index[14] OCCAMY_SOC_PAD_3
    4'b 0001, // index[15] OCCAMY_SOC_PAD_4
    4'b 0001, // index[16] OCCAMY_SOC_PAD_5
    4'b 0001, // index[17] OCCAMY_SOC_PAD_6
    4'b 0001, // index[18] OCCAMY_SOC_PAD_7
    4'b 0001, // index[19] OCCAMY_SOC_PAD_8
    4'b 0001, // index[20] OCCAMY_SOC_PAD_9
    4'b 0001, // index[21] OCCAMY_SOC_PAD_10
    4'b 0001, // index[22] OCCAMY_SOC_PAD_11
    4'b 0001, // index[23] OCCAMY_SOC_PAD_12
    4'b 0001, // index[24] OCCAMY_SOC_PAD_13
    4'b 0001, // index[25] OCCAMY_SOC_PAD_14
    4'b 0001, // index[26] OCCAMY_SOC_PAD_15
    4'b 0001, // index[27] OCCAMY_SOC_PAD_16
    4'b 0001, // index[28] OCCAMY_SOC_PAD_17
    4'b 0001, // index[29] OCCAMY_SOC_PAD_18
    4'b 0001, // index[30] OCCAMY_SOC_PAD_19
    4'b 0001, // index[31] OCCAMY_SOC_PAD_20
    4'b 0001, // index[32] OCCAMY_SOC_PAD_21
    4'b 0001, // index[33] OCCAMY_SOC_PAD_22
    4'b 0001, // index[34] OCCAMY_SOC_PAD_23
    4'b 0001, // index[35] OCCAMY_SOC_PAD_24
    4'b 0001, // index[36] OCCAMY_SOC_PAD_25
    4'b 0001, // index[37] OCCAMY_SOC_PAD_26
    4'b 0001, // index[38] OCCAMY_SOC_PAD_27
    4'b 0001, // index[39] OCCAMY_SOC_PAD_28
    4'b 0001, // index[40] OCCAMY_SOC_PAD_29
    4'b 0001  // index[41] OCCAMY_SOC_PAD_30
  };

endpackage

