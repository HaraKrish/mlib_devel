--------------------------------------------------------------------------------
-- Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: I.32
--  \   \         Application: netgen
--  /   /         Filename: address_fifo_rx.vhd
-- /___/   /\     Timestamp: Wed Sep  6 09:50:47 2006
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl /home/droz/10GbE/ten_Gb_eth/tmp/_cg/address_fifo_rx.ngc /home/droz/10GbE/ten_Gb_eth/tmp/_cg/address_fifo_rx.vhd 
-- Device	: 2vp70ff1704-7
-- Input file	: /home/droz/10GbE/ten_Gb_eth/tmp/_cg/address_fifo_rx.ngc
-- Output file	: /home/droz/10GbE/ten_Gb_eth/tmp/_cg/address_fifo_rx.vhd
-- # of Entities	: 1
-- Design Name	: address_fifo_rx
-- Xilinx	: /opt/Xilinx82
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- The synopsys directives "translate_off/translate_on" specified
-- below are supported by XST, FPGA Compiler II, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

-- synopsys translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity address_fifo_rx is
  port (
    rd_en : in STD_LOGIC := 'X'; 
    wr_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    wr_clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    rd_clk : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 63 downto 0 ) 
  );
end address_fifo_rx;

architecture STRUCTURE of address_fifo_rx is
  signal NlwRenamedSig_OI_full : STD_LOGIC; 
  signal BU2_N2 : STD_LOGIC; 
  signal BU2_almost_empty : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N372 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N371 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N370 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N369 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N368 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N367 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N366 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N365 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N364 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N363 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N362 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N361 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N360 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N359 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N358 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_11 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_N356 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map118 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map58 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map145 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map134 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map129 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map117 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map105 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map85 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map74 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map69 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map57 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map45 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map33 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN12 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN13 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_Q : STD_LOGIC;
 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0004 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0005 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0006 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0007 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0000 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0001 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0002 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0003 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0004 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0005 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0006 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0007 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0000 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0001 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0002 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0003 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_ram_regout_en : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or0002 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_not0001 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or0001 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_reg_27 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_reg_28 : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY : STD_LOGIC; 
  signal BU2_U0_gen_as_fgas_DEBUG_RAM_RD_EN : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem631_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem621_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem611_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem601_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem591_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem581_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem571_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem561_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem551_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem541_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem531_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem521_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem511_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem501_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem491_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem481_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem471_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem461_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem451_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem441_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem431_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem421_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem411_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem401_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem391_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem381_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem371_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem361_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem351_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem341_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem331_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem321_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem311_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem301_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem291_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem281_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem271_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem261_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem251_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem241_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem231_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem221_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem211_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem201_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem191_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem181_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem171_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem161_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem151_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem141_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem131_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem121_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem111_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem101_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem91_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem81_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem71_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem65_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem510_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem410_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem310_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem210_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem110_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem64_SPO_UNCONNECTED : STD_LOGIC; 
  signal din_29 : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal dout_30 : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_data_count : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_prog_empty_thresh : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_prog_empty_thresh_negate : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_prog_full_thresh : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_prog_full_thresh_assert : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_prog_full_thresh_negate : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_prog_empty_thresh_assert : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000 : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_debug_rd_pntr_w : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_DEBUG_RD_PNTR : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_DEBUG_WR_PNTR : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_gen_as_fgas_debug_wr_pntr_r : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  full <= NlwRenamedSig_OI_full;
  dout(63) <= dout_30(63);
  dout(62) <= dout_30(62);
  dout(61) <= dout_30(61);
  dout(60) <= dout_30(60);
  dout(59) <= dout_30(59);
  dout(58) <= dout_30(58);
  dout(57) <= dout_30(57);
  dout(56) <= dout_30(56);
  dout(55) <= dout_30(55);
  dout(54) <= dout_30(54);
  dout(53) <= dout_30(53);
  dout(52) <= dout_30(52);
  dout(51) <= dout_30(51);
  dout(50) <= dout_30(50);
  dout(49) <= dout_30(49);
  dout(48) <= dout_30(48);
  dout(47) <= dout_30(47);
  dout(46) <= dout_30(46);
  dout(45) <= dout_30(45);
  dout(44) <= dout_30(44);
  dout(43) <= dout_30(43);
  dout(42) <= dout_30(42);
  dout(41) <= dout_30(41);
  dout(40) <= dout_30(40);
  dout(39) <= dout_30(39);
  dout(38) <= dout_30(38);
  dout(37) <= dout_30(37);
  dout(36) <= dout_30(36);
  dout(35) <= dout_30(35);
  dout(34) <= dout_30(34);
  dout(33) <= dout_30(33);
  dout(32) <= dout_30(32);
  dout(31) <= dout_30(31);
  dout(30) <= dout_30(30);
  dout(29) <= dout_30(29);
  dout(28) <= dout_30(28);
  dout(27) <= dout_30(27);
  dout(26) <= dout_30(26);
  dout(25) <= dout_30(25);
  dout(24) <= dout_30(24);
  dout(23) <= dout_30(23);
  dout(22) <= dout_30(22);
  dout(21) <= dout_30(21);
  dout(20) <= dout_30(20);
  dout(19) <= dout_30(19);
  dout(18) <= dout_30(18);
  dout(17) <= dout_30(17);
  dout(16) <= dout_30(16);
  dout(15) <= dout_30(15);
  dout(14) <= dout_30(14);
  dout(13) <= dout_30(13);
  dout(12) <= dout_30(12);
  dout(11) <= dout_30(11);
  dout(10) <= dout_30(10);
  dout(9) <= dout_30(9);
  dout(8) <= dout_30(8);
  dout(7) <= dout_30(7);
  dout(6) <= dout_30(6);
  dout(5) <= dout_30(5);
  dout(4) <= dout_30(4);
  dout(3) <= dout_30(3);
  dout(2) <= dout_30(2);
  dout(1) <= dout_30(1);
  dout(0) <= dout_30(0);
  din_29(63) <= din(63);
  din_29(62) <= din(62);
  din_29(61) <= din(61);
  din_29(60) <= din(60);
  din_29(59) <= din(59);
  din_29(58) <= din(58);
  din_29(57) <= din(57);
  din_29(56) <= din(56);
  din_29(55) <= din(55);
  din_29(54) <= din(54);
  din_29(53) <= din(53);
  din_29(52) <= din(52);
  din_29(51) <= din(51);
  din_29(50) <= din(50);
  din_29(49) <= din(49);
  din_29(48) <= din(48);
  din_29(47) <= din(47);
  din_29(46) <= din(46);
  din_29(45) <= din(45);
  din_29(44) <= din(44);
  din_29(43) <= din(43);
  din_29(42) <= din(42);
  din_29(41) <= din(41);
  din_29(40) <= din(40);
  din_29(39) <= din(39);
  din_29(38) <= din(38);
  din_29(37) <= din(37);
  din_29(36) <= din(36);
  din_29(35) <= din(35);
  din_29(34) <= din(34);
  din_29(33) <= din(33);
  din_29(32) <= din(32);
  din_29(31) <= din(31);
  din_29(30) <= din(30);
  din_29(29) <= din(29);
  din_29(28) <= din(28);
  din_29(27) <= din(27);
  din_29(26) <= din(26);
  din_29(25) <= din(25);
  din_29(24) <= din(24);
  din_29(23) <= din(23);
  din_29(22) <= din(22);
  din_29(21) <= din(21);
  din_29(20) <= din(20);
  din_29(19) <= din(19);
  din_29(18) <= din(18);
  din_29(17) <= din(17);
  din_29(16) <= din(16);
  din_29(15) <= din(15);
  din_29(14) <= din(14);
  din_29(13) <= din(13);
  din_29(12) <= din(12);
  din_29(11) <= din(11);
  din_29(10) <= din(10);
  din_29(9) <= din(9);
  din_29(8) <= din(8);
  din_29(7) <= din(7);
  din_29(6) <= din(6);
  din_29(5) <= din(5);
  din_29(4) <= din(4);
  din_29(3) <= din(3);
  din_29(2) <= din(2);
  din_29(1) <= din(1);
  din_29(0) <= din(0);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_XST_VCC : VCC
    port map (
      P => BU2_N2
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_data_count(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i101 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => NlwRenamedSig_OI_full,
      I1 => BU2_U0_gen_as_fgas_N356,
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map117,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map105,
      LO => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map118
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i101 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map33,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map45,
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_11,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map57,
      LO => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map58
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_f5 : MUXF5
    port map (
      I0 => BU2_U0_gen_as_fgas_N372,
      I1 => BU2_U0_gen_as_fgas_N371,
      S => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(4),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(3),
      I1 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(1),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0),
      I3 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(2),
      O => BU2_U0_gen_as_fgas_N372
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(2),
      I1 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(3),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(1),
      I3 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0),
      O => BU2_U0_gen_as_fgas_N371
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_f5 : MUXF5
    port map (
      I0 => BU2_U0_gen_as_fgas_N370,
      I1 => BU2_U0_gen_as_fgas_N369,
      S => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(4),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(3),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(1),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(2),
      O => BU2_U0_gen_as_fgas_N370
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(2),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(3),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(1),
      O => BU2_U0_gen_as_fgas_N369
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_f5 : MUXF5
    port map (
      I0 => BU2_U0_gen_as_fgas_N368,
      I1 => BU2_U0_gen_as_fgas_N367,
      S => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      I2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      I3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      O => BU2_U0_gen_as_fgas_N368
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      I2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      I3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      O => BU2_U0_gen_as_fgas_N367
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_f5 : MUXF5
    port map (
      I0 => BU2_U0_gen_as_fgas_N366,
      I1 => BU2_U0_gen_as_fgas_N365,
      S => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      I2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      I3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      O => BU2_U0_gen_as_fgas_N366
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      I2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      I3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      O => BU2_U0_gen_as_fgas_N365
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_f5 : MUXF5
    port map (
      I0 => BU2_U0_gen_as_fgas_N364,
      I1 => BU2_U0_gen_as_fgas_N363,
      S => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(4),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(3),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(1),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(2),
      O => BU2_U0_gen_as_fgas_N364
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(2),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(3),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(1),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0),
      O => BU2_U0_gen_as_fgas_N363
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0007_f5 : MUXF5
    port map (
      I0 => BU2_U0_gen_as_fgas_N362,
      I1 => BU2_U0_gen_as_fgas_N361,
      S => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0007
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00072 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(0),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(3),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(2),
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(1),
      O => BU2_U0_gen_as_fgas_N362
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00071 : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(0),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(3),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(2),
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(1),
      O => BU2_U0_gen_as_fgas_N361
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0007_f5 : MUXF5
    port map (
      I0 => BU2_U0_gen_as_fgas_N360,
      I1 => BU2_U0_gen_as_fgas_N359,
      S => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0007
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00072 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(0),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(3),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(2),
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(1),
      O => BU2_U0_gen_as_fgas_N360
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00071 : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(0),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(3),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(2),
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(1),
      O => BU2_U0_gen_as_fgas_N359
    );
  BU2_U0_gen_as_fgas_XST_VCC : VCC
    port map (
      P => BU2_U0_gen_as_fgas_N358
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_4 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN13
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_3 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN12
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_2 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_1 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_11
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i101_SW0 : LUT3
    generic map(
      INIT => X"7D"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(4),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(4),
      O => BU2_U0_gen_as_fgas_N356
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i218 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map129,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map134,
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map145,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map118,
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i218 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map69,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map74,
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map85,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map58,
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i187 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(3),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(3),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(0),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map145
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i154 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(4),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map134
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i143 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(2),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(2),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(1),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(1),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map129
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i98 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(0),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(1),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(1),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map117
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i49 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(2),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(2),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_w(3),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(3),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG_i_map105
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i187 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(0),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(3),
      I2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      I3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map85
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i154 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map74
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i143 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(1),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(2),
      I2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      I3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map69
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i98 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(1),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(0),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0),
      I3 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(1),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map57
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i49 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(2),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(2),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(3),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(3),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map45
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i10 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(4),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_r(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG_i_map33
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1 : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      O => BU2_U0_gen_as_fgas_DEBUG_RAM_RD_EN
    );
  BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_not000111 : LUT4
    generic map(
      INIT => X"8DAF"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      I1 => rd_en,
      I2 => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY,
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_not0001
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_REGOUT_EN1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      O => BU2_U0_gen_as_fgas_ram_regout_en
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(3),
      I1 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(1),
      I3 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(2),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(3)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(3),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(1),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(2),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(3)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      I2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      I3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      I2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      I3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(3),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(1),
      I3 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(2),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00061 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(1),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(2),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(3),
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0006
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00061 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(1),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(2),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(3),
      I3 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0006
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(2),
      I1 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0),
      I2 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(2)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(2),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(2)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      I2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      I2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(2),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0),
      I2 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00051 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(4),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(3),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(2),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0005
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00051 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(4),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(3),
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(2),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0005
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or000111 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      I1 => rd_en,
      I2 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or0001
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or000211 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24,
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25,
      I2 => rd_en,
      O => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or0002
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0),
      I1 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(1)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(1)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0),
      I1 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(1),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00021 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0002
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00041 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(3),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0004
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00031 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0003
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00001 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0000
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor00011 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      I1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0001
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00041 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(3),
      I1 => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0004
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00011 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0001
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00031 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0003
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00021 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0002
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor00001 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      I1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      O => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0000
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_1 : LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(0)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_1 : LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(0)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_1 : LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_1 : LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_Q
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_1 : LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0),
      O => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(0)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(4),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN12,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(3),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN12,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(3)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(1),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN12,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(1)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(0),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN12,
      PRE => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(0)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(2),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN12,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_plus1_r(2)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(4),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(3),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(3)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(1),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(1)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(0),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      PRE => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(0)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(2),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus1_w(2)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN13,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN13,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN13,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0003,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN13,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN13,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_4_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_3_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_2_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0003,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000_0_Q,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_ram_wr_en_i,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_RAM_FULL_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_flogic_FULL_NONREG,
      PRE => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => NlwRenamedSig_OI_full
    );
  BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_RAM_EMPTY_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_thrmod_elogic_EMPTY_NONREG,
      PRE => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_DEBUG_RAM_EMPTY
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(4),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(4)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(3),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(3)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(1),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      PRE => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(1)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(0),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(0)
    );
  BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_cntblk_gen_cntr_gen_wr_cntr_plus2_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_add0000(2),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_plus2_w(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_PNTR_B_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_r(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_PNTR_B_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0004,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_r(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_PNTR_B_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0005,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_r(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_PNTR_B_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0006,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_r(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_PNTR_B_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0007,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_debug_wr_pntr_r(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(3),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(2),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(1),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(0),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x2(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(3),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(2),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(1),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(0),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_x(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0000,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0001,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0002,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_xor0003,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_wrx_pntr_gc(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_PNTR_B_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_w(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_PNTR_B_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0004,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_w(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_PNTR_B_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0005,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_w(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_PNTR_B_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0006,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_w(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_PNTR_B_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0007,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_debug_rd_pntr_w(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(3),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(2),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(1),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(0),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x2(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(3),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(2),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(1),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(0),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_x(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(4)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0000,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(3)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0001,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(2)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0002,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(1)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_xor0003,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_clkmod_cx_rdx_pntr_gc(0)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem631 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(63),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem631_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(63)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem621 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(62),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem621_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(62)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem611 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(61),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem611_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(61)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem601 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(60),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem601_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(60)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem591 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(59),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem591_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(59)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem581 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(58),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem581_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(58)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem571 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(57),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem571_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(57)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem561 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(56),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem561_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(56)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem551 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(55),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem551_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(55)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem541 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(54),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem541_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(54)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem531 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(53),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem531_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(53)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem521 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(52),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem521_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(52)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem511 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(51),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem511_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(51)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem501 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(50),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem501_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(50)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem491 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(49),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem491_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(49)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem481 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(48),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem481_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(48)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem471 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(47),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem471_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(47)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem461 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(46),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem461_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(46)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem451 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(45),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem451_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(45)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem441 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(44),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem441_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(44)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem431 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(43),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem431_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(43)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem421 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(42),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem421_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(42)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem411 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(41),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_3_12,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem411_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(41)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem401 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(40),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem401_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(40)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem391 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(39),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem391_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(39)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem381 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(38),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem381_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(38)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem371 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(37),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem371_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(37)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem361 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(36),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem361_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(36)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem351 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(35),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem351_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(35)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem341 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(34),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem341_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(34)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem331 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(33),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem331_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(33)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem321 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(32),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem321_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(32)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem311 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(31),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem311_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(31)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem301 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(30),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem301_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(30)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem291 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(29),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem291_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(29)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem281 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(28),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem281_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(28)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem271 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(27),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem271_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(27)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem261 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(26),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem261_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(26)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem251 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(25),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem251_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(25)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem241 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(24),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem241_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(24)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem231 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(23),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem231_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(23)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem221 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(22),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem221_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(22)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem211 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(21),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem211_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(21)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem201 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(20),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem201_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(20)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem191 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(19),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem191_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(19)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem181 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(18),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem181_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(18)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem171 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(17),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem171_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(17)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem161 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(16),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem161_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(16)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem151 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(15),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem151_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(15)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem141 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(14),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem141_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(14)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem131 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(13),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem131_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(13)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem121 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(12),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem121_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(12)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem111 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(11),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem111_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(11)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem101 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(10),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem101_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(10)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem91 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(9),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem91_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(9)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem81 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(8),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem81_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(8)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem71 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(7),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem71_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(7)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem65 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(6),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem65_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(6)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem510 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(5),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_2_13,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem510_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(5)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem410 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(4),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_4_14,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem410_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(4)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem310 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(3),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_5_15,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem310_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(3)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem210 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(2),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_6_16,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem210_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(2)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem110 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(1),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_normgen_flblk_wpremod_RAM_WR_EN1_7_17,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem110_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(1)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem64 : RAM32X1D
    port map (
      A0 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(0),
      A1 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(1),
      A2 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(2),
      A3 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(3),
      A4 => BU2_U0_gen_as_fgas_DEBUG_WR_PNTR(4),
      D => din_29(0),
      DPRA0 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(0),
      DPRA1 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(1),
      DPRA2 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(2),
      DPRA3 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(3),
      DPRA4 => BU2_U0_gen_as_fgas_DEBUG_RD_PNTR(4),
      WCLK => wr_clk,
      WE => BU2_U0_gen_as_fgas_DEBUG_RAM_WR_EN,
      SPO => NLW_BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_inst_Mram_mem64_SPO_UNCONNECTED,
      DPO => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(0)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_63 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(63),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(63)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_62 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(62),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(62)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_61 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(61),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(61)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_60 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(60),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(60)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_59 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(59),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(59)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_58 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(58),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(58)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_57 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(57),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(57)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_56 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(56),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(56)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_55 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(55),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(55)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_54 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(54),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(54)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_53 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(53),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(53)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_52 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(52),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(52)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_51 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(51),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(51)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_50 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(50),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_6_18,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(50)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_49 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(49),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(49)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_48 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(48),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(48)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_47 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(47),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(47)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_46 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(46),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(46)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_45 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(45),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(45)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_44 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(44),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(44)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_43 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(43),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(43)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_42 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(42),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(42)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_41 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(41),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(41)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_40 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(40),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(40)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_39 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(39),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(39)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_38 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(38),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(38)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_37 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(37),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(37)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_36 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(36),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(36)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_35 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(35),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(35)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_34 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(34),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(34)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_33 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(33),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(33)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_32 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(32),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(32)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(31),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(31)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(30),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(30)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(29),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(29)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(28),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(28)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(27),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(27)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(26),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(26)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(25),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(25)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(24),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(24)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(23),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(23)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(22),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(22)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(21),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(21)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(20),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(20)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(19),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(19)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(18),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(18)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(17),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(17)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(16),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(16)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(15),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(15)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(14),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(14)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(13),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(13)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(12),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(12)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(11),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(11)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(10),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(10)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(9),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(9)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(8),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(8)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(7),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(7)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(6),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_5_19,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(6)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(5),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_7_20,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(5)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(4),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_8_21,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(4)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(3),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_9_22,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(3)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(2),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN1_10_23,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(2)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(1),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(1)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_varindex0000(0),
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_RAM_RD_EN11,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(0)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_63 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(63),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(63)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_62 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(62),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(62)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_61 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(61),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(61)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_60 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(60),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(60)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_59 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(59),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(59)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_58 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(58),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(58)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_57 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(57),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(57)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_56 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(56),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(56)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_55 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(55),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(55)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_54 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(54),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(54)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_53 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(53),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(53)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_52 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(52),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(52)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_51 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(51),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(51)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_50 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(50),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(50)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_49 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(49),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(49)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_48 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(48),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(48)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_47 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(47),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(47)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_46 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(46),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(46)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_45 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(45),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(45)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_44 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(44),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(44)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_43 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(43),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(43)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_42 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(42),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(42)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_41 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(41),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(41)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_40 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(40),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(40)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_39 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(39),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(39)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_38 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(38),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(38)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_37 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(37),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(37)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_36 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(36),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(36)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_35 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(35),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(35)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_34 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(34),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(34)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_33 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(33),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(33)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_32 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(32),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(32)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_31 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(31),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(31)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_30 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(30),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(30)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_29 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(29),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(29)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_28 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(28),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(28)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_27 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(27),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(27)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_26 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(26),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(26)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_25 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(25),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(25)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_24 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(24),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(24)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_23 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(23),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(23)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_22 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(22),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(22)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_21 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(21),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(21)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_20 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(20),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(20)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_19 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(19),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(19)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_18 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(18),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(18)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_17 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(17),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(17)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_16 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(16),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(16)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_15 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(15),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(15)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_14 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(14),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(14)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_13 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(13),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(13)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_12 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(12),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(12)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_11 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(11),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(11)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_10 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(10),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(10)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_9 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(9),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(9)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_8 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(8),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(8)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_7 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(7),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(7)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_6 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(6),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(6)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_5 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(5),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(5)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_4 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(4),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(4)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_3 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(3),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(3)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_2 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(2),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(2)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_1 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(1),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(1)
    );
  BU2_U0_gen_as_fgas_normgen_memblk_DOUT_0 : FDCE
    port map (
      D => BU2_U0_gen_as_fgas_normgen_memblk_mem0_distinst_dob_i(0),
      CE => BU2_U0_gen_as_fgas_ram_regout_en,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => dout_30(0)
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_user_empty : FDP
    generic map(
      INIT => '1'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or0002,
      PRE => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => empty
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_DEBUG_RAM_RD_EN,
      CE => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_not0001,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_ram_valid_i_24
    );
  BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i : FDC
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_or0001,
      CLR => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_flblk_rpremod_read_data_valid_i_25
    );
  BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int_0 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_reg_28,
      PRE => rst,
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0)
    );
  BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_reg : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_almost_empty,
      CE => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26,
      PRE => rst,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_reg_27
    );
  BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb : FDP
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_reg_27,
      PRE => rst,
      C => wr_clk,
      Q => BU2_U0_gen_as_fgas_normgen_inblk_wr_rst_fb_26
    );
  BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_reg : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      D => BU2_almost_empty,
      CE => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_int(0),
      PRE => rst,
      C => rd_clk,
      Q => BU2_U0_gen_as_fgas_normgen_inblk_rd_rst_reg_28
    );
  BU2_U0_gen_as_fgas_XST_GND : GND
    port map (
      G => BU2_almost_empty
    );

end STRUCTURE;

-- synopsys translate_on
