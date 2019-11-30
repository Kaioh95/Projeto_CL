-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/30/2019 15:32:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pControle IS
    PORT (
	slt_op : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	rc_ops : IN std_logic;
	const_ops : IN std_logic;
	sln_ops : IN std_logic;
	nand_op : IN std_logic;
	lw_op : IN std_logic;
	sw_op : IN std_logic;
	RA : IN std_logic_vector(2 DOWNTO 0);
	RB : IN std_logic_vector(2 DOWNTO 0);
	RC : IN std_logic_vector(2 DOWNTO 0);
	allbits : IN std_logic_vector(15 DOWNTO 0);
	reset : IN std_logic;
	valid : IN std_logic;
	operate : IN std_logic;
	fimC : IN std_logic;
	clear : OUT std_logic;
	ld_A : OUT std_logic;
	ld_B : OUT std_logic;
	rd : OUT std_logic;
	wr : OUT std_logic;
	wren : OUT std_logic;
	c_mux : OUT std_logic;
	r_mux : OUT std_logic;
	s_mux : OUT std_logic;
	vd_mux : OUT std_logic;
	count : OUT std_logic;
	led_r : OUT std_logic;
	slt_ula : OUT std_logic_vector(2 DOWNTO 0);
	slt_reg : OUT std_logic_vector(2 DOWNTO 0);
	const : OUT std_logic_vector(5 DOWNTO 0);
	ss : OUT std_logic_vector(4 DOWNTO 0)
	);
END pControle;

-- Design Ports Information
-- allbits[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[7]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[9]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[10]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[12]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[13]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[14]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_A	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_B	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_mux	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_mux	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_mux	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vd_mux	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_r	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_ula[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_ula[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_ula[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_reg[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_reg[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_reg[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const[3]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const[4]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const[5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[0]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_op[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_op[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_op[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc_ops	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sln_ops	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_op	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_ops	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lw_op	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operate	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nand_op	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fimC	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pControle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_slt_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rc_ops : std_logic;
SIGNAL ww_const_ops : std_logic;
SIGNAL ww_sln_ops : std_logic;
SIGNAL ww_nand_op : std_logic;
SIGNAL ww_lw_op : std_logic;
SIGNAL ww_sw_op : std_logic;
SIGNAL ww_RA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_allbits : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_operate : std_logic;
SIGNAL ww_fimC : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_ld_A : std_logic;
SIGNAL ww_ld_B : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_wren : std_logic;
SIGNAL ww_c_mux : std_logic;
SIGNAL ww_r_mux : std_logic;
SIGNAL ww_s_mux : std_logic;
SIGNAL ww_vd_mux : std_logic;
SIGNAL ww_count : std_logic;
SIGNAL ww_led_r : std_logic;
SIGNAL ww_slt_ula : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_slt_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_const : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ss : std_logic_vector(4 DOWNTO 0);
SIGNAL \slt_ula[2]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slt_reg[2]~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \allbits[6]~input_o\ : std_logic;
SIGNAL \allbits[7]~input_o\ : std_logic;
SIGNAL \allbits[8]~input_o\ : std_logic;
SIGNAL \allbits[9]~input_o\ : std_logic;
SIGNAL \allbits[10]~input_o\ : std_logic;
SIGNAL \allbits[11]~input_o\ : std_logic;
SIGNAL \allbits[12]~input_o\ : std_logic;
SIGNAL \allbits[13]~input_o\ : std_logic;
SIGNAL \allbits[14]~input_o\ : std_logic;
SIGNAL \allbits[15]~input_o\ : std_logic;
SIGNAL \clear~output_o\ : std_logic;
SIGNAL \ld_A~output_o\ : std_logic;
SIGNAL \ld_B~output_o\ : std_logic;
SIGNAL \rd~output_o\ : std_logic;
SIGNAL \wr~output_o\ : std_logic;
SIGNAL \wren~output_o\ : std_logic;
SIGNAL \c_mux~output_o\ : std_logic;
SIGNAL \r_mux~output_o\ : std_logic;
SIGNAL \s_mux~output_o\ : std_logic;
SIGNAL \vd_mux~output_o\ : std_logic;
SIGNAL \count~output_o\ : std_logic;
SIGNAL \led_r~output_o\ : std_logic;
SIGNAL \slt_ula[0]~output_o\ : std_logic;
SIGNAL \slt_ula[1]~output_o\ : std_logic;
SIGNAL \slt_ula[2]~output_o\ : std_logic;
SIGNAL \slt_reg[0]~output_o\ : std_logic;
SIGNAL \slt_reg[1]~output_o\ : std_logic;
SIGNAL \slt_reg[2]~output_o\ : std_logic;
SIGNAL \const[0]~output_o\ : std_logic;
SIGNAL \const[1]~output_o\ : std_logic;
SIGNAL \const[2]~output_o\ : std_logic;
SIGNAL \const[3]~output_o\ : std_logic;
SIGNAL \const[4]~output_o\ : std_logic;
SIGNAL \const[5]~output_o\ : std_logic;
SIGNAL \ss[0]~output_o\ : std_logic;
SIGNAL \ss[1]~output_o\ : std_logic;
SIGNAL \ss[2]~output_o\ : std_logic;
SIGNAL \ss[3]~output_o\ : std_logic;
SIGNAL \ss[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fimC~input_o\ : std_logic;
SIGNAL \nand_op~input_o\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \valid~input_o\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \operate~input_o\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \sw_op~input_o\ : std_logic;
SIGNAL \const_ops~input_o\ : std_logic;
SIGNAL \sln_ops~input_o\ : std_logic;
SIGNAL \rc_ops~input_o\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \lw_op~input_o\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \ld_A~10_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \clear$latch~combout\ : std_logic;
SIGNAL \ld_A~8_combout\ : std_logic;
SIGNAL \ld_A~9_combout\ : std_logic;
SIGNAL \clear~0_combout\ : std_logic;
SIGNAL \ld_A~6_combout\ : std_logic;
SIGNAL \ld_A~7_combout\ : std_logic;
SIGNAL \ld_A~13_combout\ : std_logic;
SIGNAL \ld_A$latch~combout\ : std_logic;
SIGNAL \ld_B~4_combout\ : std_logic;
SIGNAL \ld_B~3_combout\ : std_logic;
SIGNAL \ld_B~5_combout\ : std_logic;
SIGNAL \ld_B$latch~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \rd~0_combout\ : std_logic;
SIGNAL \rd$latch~combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \ld_A~12_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \r_mux~11_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \wr~0_combout\ : std_logic;
SIGNAL \wr~2_combout\ : std_logic;
SIGNAL \wr~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \wr$latch~combout\ : std_logic;
SIGNAL \r_mux~2_combout\ : std_logic;
SIGNAL \ld_A~11_combout\ : std_logic;
SIGNAL \r_mux~14_combout\ : std_logic;
SIGNAL \wren~0_combout\ : std_logic;
SIGNAL \wren$latch~combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \c_mux~0_combout\ : std_logic;
SIGNAL \c_mux$latch~combout\ : std_logic;
SIGNAL \r_mux~13_combout\ : std_logic;
SIGNAL \r_mux~12_combout\ : std_logic;
SIGNAL \r_mux$latch~combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \s_mux$latch~combout\ : std_logic;
SIGNAL \vd_mux~0_combout\ : std_logic;
SIGNAL \vd_mux$latch~combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \count$latch~combout\ : std_logic;
SIGNAL \led_r$latch~combout\ : std_logic;
SIGNAL \slt_op[0]~input_o\ : std_logic;
SIGNAL \slt_ula[0]~8_combout\ : std_logic;
SIGNAL \slt_ula[2]~9_combout\ : std_logic;
SIGNAL \slt_ula[2]~9clkctrl_outclk\ : std_logic;
SIGNAL \slt_ula[0]$latch~combout\ : std_logic;
SIGNAL \slt_op[1]~input_o\ : std_logic;
SIGNAL \slt_ula[1]~10_combout\ : std_logic;
SIGNAL \slt_ula[1]$latch~combout\ : std_logic;
SIGNAL \slt_op[2]~input_o\ : std_logic;
SIGNAL \slt_ula[2]~11_combout\ : std_logic;
SIGNAL \slt_ula[2]$latch~combout\ : std_logic;
SIGNAL \RB[0]~input_o\ : std_logic;
SIGNAL \RC[0]~input_o\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \slt_reg[0]~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \slt_reg[0]~5_combout\ : std_logic;
SIGNAL \slt_reg[0]~6_combout\ : std_logic;
SIGNAL \slt_reg[2]~11_combout\ : std_logic;
SIGNAL \slt_reg[2]~12_combout\ : std_logic;
SIGNAL \slt_reg[2]~12clkctrl_outclk\ : std_logic;
SIGNAL \slt_reg[0]$latch~combout\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \RC[1]~input_o\ : std_logic;
SIGNAL \slt_reg[1]~7_combout\ : std_logic;
SIGNAL \RB[1]~input_o\ : std_logic;
SIGNAL \slt_reg[1]~8_combout\ : std_logic;
SIGNAL \slt_reg[1]$latch~combout\ : std_logic;
SIGNAL \RA[2]~input_o\ : std_logic;
SIGNAL \RC[2]~input_o\ : std_logic;
SIGNAL \slt_reg[2]~9_combout\ : std_logic;
SIGNAL \RB[2]~input_o\ : std_logic;
SIGNAL \slt_reg[2]~10_combout\ : std_logic;
SIGNAL \slt_reg[2]$latch~combout\ : std_logic;
SIGNAL \allbits[0]~input_o\ : std_logic;
SIGNAL \allbits[1]~input_o\ : std_logic;
SIGNAL \allbits[2]~input_o\ : std_logic;
SIGNAL \allbits[3]~input_o\ : std_logic;
SIGNAL \allbits[4]~input_o\ : std_logic;
SIGNAL \allbits[5]~input_o\ : std_logic;
SIGNAL state : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_slt_op <= slt_op;
ww_clk <= clk;
ww_rc_ops <= rc_ops;
ww_const_ops <= const_ops;
ww_sln_ops <= sln_ops;
ww_nand_op <= nand_op;
ww_lw_op <= lw_op;
ww_sw_op <= sw_op;
ww_RA <= RA;
ww_RB <= RB;
ww_RC <= RC;
ww_allbits <= allbits;
ww_reset <= reset;
ww_valid <= valid;
ww_operate <= operate;
ww_fimC <= fimC;
clear <= ww_clear;
ld_A <= ww_ld_A;
ld_B <= ww_ld_B;
rd <= ww_rd;
wr <= ww_wr;
wren <= ww_wren;
c_mux <= ww_c_mux;
r_mux <= ww_r_mux;
s_mux <= ww_s_mux;
vd_mux <= ww_vd_mux;
count <= ww_count;
led_r <= ww_led_r;
slt_ula <= ww_slt_ula;
slt_reg <= ww_slt_reg;
const <= ww_const;
ss <= ww_ss;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\slt_ula[2]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slt_ula[2]~9_combout\);

\slt_reg[2]~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slt_reg[2]~12_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y47_N2
\clear~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear$latch~combout\,
	devoe => ww_devoe,
	o => \clear~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\ld_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_A$latch~combout\,
	devoe => ww_devoe,
	o => \ld_A~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\ld_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_B$latch~combout\,
	devoe => ww_devoe,
	o => \ld_B~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd$latch~combout\,
	devoe => ww_devoe,
	o => \rd~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\wr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wr$latch~combout\,
	devoe => ww_devoe,
	o => \wr~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\wren~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wren$latch~combout\,
	devoe => ww_devoe,
	o => \wren~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\c_mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_mux$latch~combout\,
	devoe => ww_devoe,
	o => \c_mux~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\r_mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_mux$latch~combout\,
	devoe => ww_devoe,
	o => \r_mux~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\s_mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_mux$latch~combout\,
	devoe => ww_devoe,
	o => \s_mux~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\vd_mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vd_mux$latch~combout\,
	devoe => ww_devoe,
	o => \vd_mux~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\count~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count$latch~combout\,
	devoe => ww_devoe,
	o => \count~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\led_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r$latch~combout\,
	devoe => ww_devoe,
	o => \led_r~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\slt_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slt_ula[0]$latch~combout\,
	devoe => ww_devoe,
	o => \slt_ula[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\slt_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slt_ula[1]$latch~combout\,
	devoe => ww_devoe,
	o => \slt_ula[1]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\slt_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slt_ula[2]$latch~combout\,
	devoe => ww_devoe,
	o => \slt_ula[2]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\slt_reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slt_reg[0]$latch~combout\,
	devoe => ww_devoe,
	o => \slt_reg[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\slt_reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slt_reg[1]$latch~combout\,
	devoe => ww_devoe,
	o => \slt_reg[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\slt_reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slt_reg[2]$latch~combout\,
	devoe => ww_devoe,
	o => \slt_reg[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\const[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \allbits[0]~input_o\,
	devoe => ww_devoe,
	o => \const[0]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\const[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \allbits[1]~input_o\,
	devoe => ww_devoe,
	o => \const[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\const[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \allbits[2]~input_o\,
	devoe => ww_devoe,
	o => \const[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\const[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \allbits[3]~input_o\,
	devoe => ww_devoe,
	o => \const[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\const[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \allbits[4]~input_o\,
	devoe => ww_devoe,
	o => \const[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\const[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \allbits[5]~input_o\,
	devoe => ww_devoe,
	o => \const[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\ss[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(0),
	devoe => ww_devoe,
	o => \ss[0]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\ss[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(1),
	devoe => ww_devoe,
	o => \ss[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\ss[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(2),
	devoe => ww_devoe,
	o => \ss[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\ss[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(3),
	devoe => ww_devoe,
	o => \ss[3]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\ss[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(4),
	devoe => ww_devoe,
	o => \ss[4]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y44_N1
\fimC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fimC,
	o => \fimC~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\nand_op~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nand_op,
	o => \nand_op~input_o\);

-- Location: LCCOMB_X3_Y44_N26
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (state(3) & (state(2) & ((state(0)) # (!\nand_op~input_o\)))) # (!state(3) & (((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => \nand_op~input_o\,
	datad => state(3),
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X0_Y44_N22
\valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valid,
	o => \valid~input_o\);

-- Location: LCCOMB_X3_Y44_N22
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!state(4) & ((\Mux2~4_combout\ & (!state(2) & \valid~input_o\)) # (!\Mux2~4_combout\ & (state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \Mux2~4_combout\,
	datac => state(2),
	datad => \valid~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X3_Y44_N14
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (state(2) & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datad => state(0),
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X0_Y53_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X3_Y44_N16
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!state(2) & (state(0) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(0),
	datad => \reset~input_o\,
	combout => \Mux4~4_combout\);

-- Location: IOIBUF_X0_Y49_N8
\operate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operate,
	o => \operate~input_o\);

-- Location: LCCOMB_X3_Y44_N8
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\valid~input_o\ & (\Mux2~2_combout\)) # (!\valid~input_o\ & (((\Mux4~4_combout\ & \operate~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid~input_o\,
	datab => \Mux2~2_combout\,
	datac => \Mux4~4_combout\,
	datad => \operate~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X3_Y44_N28
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (!state(4) & ((state(3) & (state(2))) # (!state(3) & ((\Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(2),
	datac => \Mux2~3_combout\,
	datad => state(3),
	combout => \Mux2~9_combout\);

-- Location: IOIBUF_X0_Y54_N8
\sw_op~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_op,
	o => \sw_op~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\const_ops~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_ops,
	o => \const_ops~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\sln_ops~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sln_ops,
	o => \sln_ops~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\rc_ops~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rc_ops,
	o => \rc_ops~input_o\);

-- Location: LCCOMB_X8_Y44_N22
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\const_ops~input_o\) # ((\rc_ops~input_o\) # ((\sw_op~input_o\ & !\sln_ops~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_op~input_o\,
	datab => \const_ops~input_o\,
	datac => \sln_ops~input_o\,
	datad => \rc_ops~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X5_Y44_N14
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!state(4) & (state(2) & state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(4),
	datac => state(2),
	datad => state(0),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X4_Y44_N12
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & (\Equal4~2_combout\ & !state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \Equal4~2_combout\,
	datad => state(3),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X3_Y44_N6
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (state(1) & (\Mux2~5_combout\)) # (!state(1) & (((\Mux2~9_combout\) # (\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => state(1),
	datac => \Mux2~9_combout\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: FF_X3_Y44_N7
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X3_Y44_N10
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (state(4) & ((state(2)) # ((!\operate~input_o\ & !state(0))))) # (!state(4) & (((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \operate~input_o\,
	datac => state(0),
	datad => state(4),
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X3_Y44_N24
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~5_combout\ & (((\valid~input_o\)) # (!\Mux4~4_combout\))) # (!\Mux4~5_combout\ & (((state(2) & \valid~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux4~4_combout\,
	datac => state(2),
	datad => \valid~input_o\,
	combout => \Mux4~6_combout\);

-- Location: IOIBUF_X0_Y52_N22
\lw_op~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lw_op,
	o => \lw_op~input_o\);

-- Location: LCCOMB_X8_Y44_N18
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!\sw_op~input_o\ & (!\lw_op~input_o\ & (!\sln_ops~input_o\ & !\const_ops~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_op~input_o\,
	datab => \lw_op~input_o\,
	datac => \sln_ops~input_o\,
	datad => \const_ops~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X5_Y44_N28
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = ((\Equal4~2_combout\ & ((\Mux4~3_combout\) # (\rc_ops~input_o\)))) # (!\Mux4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux4~3_combout\,
	datac => \Equal4~2_combout\,
	datad => \rc_ops~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X5_Y44_N18
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Equal0~0_combout\ & ((state(2) & (\nand_op~input_o\)) # (!state(2) & ((!\fimC~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => state(2),
	datac => \nand_op~input_o\,
	datad => \fimC~input_o\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X5_Y44_N10
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (state(1) & ((\Mux4~8_combout\))) # (!state(1) & (\Mux4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \Mux4~8_combout\,
	datad => state(1),
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X2_Y44_N6
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (state(4)) # ((state(2) & ((state(3)))) # (!state(2) & (\valid~input_o\ & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => \valid~input_o\,
	datac => state(2),
	datad => state(3),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X5_Y44_N20
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\Mux4~9_combout\ & ((state(3) $ (!state(1))) # (!\Mux4~2_combout\))) # (!\Mux4~9_combout\ & (!\Mux4~2_combout\ & (state(3) $ (state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~9_combout\,
	datab => \Mux4~2_combout\,
	datac => state(3),
	datad => state(1),
	combout => \Mux4~10_combout\);

-- Location: FF_X5_Y44_N21
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X3_Y44_N20
\Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (state(0) & (((!state(2))))) # (!state(0) & ((state(2) & ((\nand_op~input_o\))) # (!state(2) & (!\fimC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fimC~input_o\,
	datab => state(0),
	datac => state(2),
	datad => \nand_op~input_o\,
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X3_Y44_N2
\Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (\Mux4~15_combout\ & !state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux4~15_combout\,
	datad => state(4),
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X8_Y44_N26
\Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (!\const_ops~input_o\ & (!\rc_ops~input_o\ & ((\sw_op~input_o\) # (\sln_ops~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_op~input_o\,
	datab => \const_ops~input_o\,
	datac => \sln_ops~input_o\,
	datad => \rc_ops~input_o\,
	combout => \Mux4~17_combout\);

-- Location: LCCOMB_X3_Y44_N0
\Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (state(0) & (\Mux4~17_combout\ & (state(2) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Mux4~17_combout\,
	datac => state(2),
	datad => state(4),
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X3_Y44_N4
\Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (\Mux4~13_combout\) # ((\valid~input_o\ & (\Mux4~4_combout\ & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid~input_o\,
	datab => \Mux4~4_combout\,
	datac => \Mux4~13_combout\,
	datad => state(4),
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X4_Y44_N6
\ld_A~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~10_combout\ = (state(2) & !state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datac => state(4),
	combout => \ld_A~10_combout\);

-- Location: LCCOMB_X3_Y44_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (state(3) & ((state(1)) # ((\ld_A~10_combout\)))) # (!state(3) & (!state(1) & (\Mux4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => \Mux4~14_combout\,
	datad => \ld_A~10_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X3_Y44_N18
\Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (state(4)) # ((state(0) & ((state(2)) # (\valid~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \valid~input_o\,
	datac => state(0),
	datad => state(4),
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X3_Y44_N30
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (state(1) & ((\Mux3~0_combout\ & (\Mux4~16_combout\)) # (!\Mux3~0_combout\ & ((!\Mux4~11_combout\))))) # (!state(1) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \Mux4~16_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X7_Y44_N17
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X2_Y44_N4
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!state(1) & !state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(4),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X8_Y44_N0
\Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (!\rc_ops~input_o\ & !\const_ops~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rc_ops~input_o\,
	datad => \const_ops~input_o\,
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X8_Y44_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sln_ops~input_o\) # (((!\sw_op~input_o\ & \lw_op~input_o\)) # (!\Mux4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_op~input_o\,
	datab => \lw_op~input_o\,
	datac => \sln_ops~input_o\,
	datad => \Mux4~12_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X8_Y44_N6
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (state(0) & (state(2) & ((\Mux1~0_combout\) # (state(3))))) # (!state(0) & (((state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Mux1~0_combout\,
	datac => state(3),
	datad => state(2),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X2_Y44_N12
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (state(1) & state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datad => state(3),
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X6_Y44_N26
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((\Mux1~1_combout\) # ((\Equal14~0_combout\ & \Mux4~16_combout\)))) # (!\Mux1~2_combout\ & (((\Equal14~0_combout\ & \Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~1_combout\,
	datac => \Equal14~0_combout\,
	datad => \Mux4~16_combout\,
	combout => \Mux1~3_combout\);

-- Location: FF_X6_Y44_N27
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LCCOMB_X6_Y44_N28
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!state(4) & (state(3) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datac => state(3),
	datad => state(1),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X2_Y44_N18
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\operate~input_o\) # (!state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operate~input_o\,
	datad => state(0),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X7_Y44_N0
\Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (!state(3) & (!state(1) & (!state(2) & state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(4),
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X5_Y44_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (state(0) & (state(2))) # (!state(0) & ((state(2) & (!\nand_op~input_o\)) # (!state(2) & ((\fimC~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => \nand_op~input_o\,
	datad => \fimC~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X5_Y44_N8
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Equal7~0_combout\ & ((\Mux0~0_combout\) # ((\Mux0~1_combout\ & \Equal15~0_combout\)))) # (!\Equal7~0_combout\ & (\Mux0~1_combout\ & (\Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Equal15~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X5_Y44_N9
\state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(4));

-- Location: LCCOMB_X5_Y44_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!state(4) & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(4),
	datad => state(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y44_N16
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!state(1) & (!state(2) & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => state(1),
	datac => state(2),
	datad => state(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X5_Y44_N2
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!state(4) & !state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(4),
	datad => state(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X5_Y44_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (state(0) & (!state(1) & (!state(2) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => state(2),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X8_Y44_N24
\clear$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear$latch~combout\ = (!\Equal1~1_combout\ & ((\Equal0~1_combout\) # (\clear$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \clear$latch~combout\,
	combout => \clear$latch~combout\);

-- Location: LCCOMB_X4_Y44_N28
\ld_A~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~8_combout\ = (state(0) & ((state(1) & ((state(3)))) # (!state(1) & (state(2) & !state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(1),
	datad => state(3),
	combout => \ld_A~8_combout\);

-- Location: LCCOMB_X4_Y44_N24
\ld_A~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~9_combout\ = (\ld_A~8_combout\ & !state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~8_combout\,
	datac => state(4),
	combout => \ld_A~9_combout\);

-- Location: LCCOMB_X5_Y44_N0
\clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear~0_combout\ = (\Equal1~1_combout\) # (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datac => \Equal0~1_combout\,
	combout => \clear~0_combout\);

-- Location: LCCOMB_X4_Y44_N14
\ld_A~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~6_combout\ = (state(3) & (((!state(4))))) # (!state(3) & ((state(1) & (state(2) & !state(4))) # (!state(1) & (!state(2) & state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(4),
	combout => \ld_A~6_combout\);

-- Location: LCCOMB_X4_Y44_N10
\ld_A~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~7_combout\ = (!state(4) & ((state(1) & (state(3))) # (!state(1) & ((state(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(4),
	combout => \ld_A~7_combout\);

-- Location: LCCOMB_X4_Y44_N16
\ld_A~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~13_combout\ = (state(0) & ((\ld_A~7_combout\))) # (!state(0) & (\ld_A~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => \ld_A~6_combout\,
	datad => \ld_A~7_combout\,
	combout => \ld_A~13_combout\);

-- Location: LCCOMB_X4_Y44_N4
\ld_A$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A$latch~combout\ = (!\clear~0_combout\ & ((\ld_A~13_combout\ & (\ld_A~9_combout\)) # (!\ld_A~13_combout\ & ((\ld_A$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~9_combout\,
	datab => \ld_A$latch~combout\,
	datac => \clear~0_combout\,
	datad => \ld_A~13_combout\,
	combout => \ld_A$latch~combout\);

-- Location: LCCOMB_X4_Y44_N8
\ld_B~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~4_combout\ = (\ld_A~10_combout\ & (state(3) $ (((!state(0) & state(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datac => state(1),
	datad => \ld_A~10_combout\,
	combout => \ld_B~4_combout\);

-- Location: LCCOMB_X4_Y44_N2
\ld_B~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~3_combout\ = (!state(4) & ((state(3) & ((state(1)) # (state(2)))) # (!state(3) & (state(1) & state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(4),
	combout => \ld_B~3_combout\);

-- Location: LCCOMB_X4_Y44_N18
\ld_B~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~5_combout\ = (state(0) & ((\ld_B~3_combout\))) # (!state(0) & (\ld_A~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => \ld_A~6_combout\,
	datad => \ld_B~3_combout\,
	combout => \ld_B~5_combout\);

-- Location: LCCOMB_X4_Y44_N0
\ld_B$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B$latch~combout\ = (!\clear~0_combout\ & ((\ld_B~5_combout\ & (\ld_B~4_combout\)) # (!\ld_B~5_combout\ & ((\ld_B$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_B~4_combout\,
	datab => \ld_B$latch~combout\,
	datac => \clear~0_combout\,
	datad => \ld_B~5_combout\,
	combout => \ld_B$latch~combout\);

-- Location: LCCOMB_X7_Y44_N20
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!state(3) & !state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(3),
	datad => state(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X7_Y44_N30
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (state(0) & (state(2) & (!state(4) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(4),
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X7_Y44_N14
\rd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rd~0_combout\ = (state(0) & (state(2) & (!state(4) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(4),
	datad => state(1),
	combout => \rd~0_combout\);

-- Location: LCCOMB_X7_Y44_N10
\rd$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rd$latch~combout\ = (!\clear~0_combout\ & ((\rd~0_combout\ & ((\Equal4~1_combout\))) # (!\rd~0_combout\ & (\rd$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd$latch~combout\,
	datab => \Equal4~1_combout\,
	datac => \rd~0_combout\,
	datad => \clear~0_combout\,
	combout => \rd$latch~combout\);

-- Location: LCCOMB_X6_Y44_N0
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (state(1) & (!state(3) & \Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(3),
	datad => \Equal4~2_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X7_Y44_N4
\ld_A~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~12_combout\ = (state(3) & (state(1) & (state(2) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(4),
	combout => \ld_A~12_combout\);

-- Location: LCCOMB_X7_Y44_N24
\Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (state(3) & !state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(3),
	datad => state(1),
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X7_Y44_N2
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!state(2) & (!state(4) & (state(0) & \Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(4),
	datac => state(0),
	datad => \Equal5~4_combout\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X7_Y44_N18
\r_mux~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_mux~11_combout\ = (!\ld_A~12_combout\ & (!\Equal12~0_combout\ & ((state(0)) # (!\Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal15~0_combout\,
	datac => \ld_A~12_combout\,
	datad => \Equal12~0_combout\,
	combout => \r_mux~11_combout\);

-- Location: LCCOMB_X6_Y44_N12
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!state(2) & (!state(1) & (state(3) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(3),
	datad => \Equal0~0_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X7_Y44_N22
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (state(2) & (!state(3) & (state(1) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => \Equal0~0_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X7_Y44_N8
\wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr~0_combout\ = (!\Equal10~0_combout\ & (!\r_mux~11_combout\ & (!\Equal11~0_combout\ & !\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \r_mux~11_combout\,
	datac => \Equal11~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \wr~0_combout\);

-- Location: LCCOMB_X7_Y44_N28
\wr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr~2_combout\ = (state(3) & (state(1) $ ((state(2))))) # (!state(3) & (((!state(1) & state(0))) # (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \wr~2_combout\);

-- Location: LCCOMB_X7_Y44_N12
\wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr~1_combout\ = (state(1) & (!state(2) & ((!state(0)) # (!state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \wr~1_combout\);

-- Location: LCCOMB_X7_Y44_N6
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ((\wr~1_combout\) # (state(4))) # (!\wr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~2_combout\,
	datac => \wr~1_combout\,
	datad => state(4),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X7_Y44_N16
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ((state(4)) # (!\wr~2_combout\)) # (!\wr~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~1_combout\,
	datab => state(4),
	datad => \wr~2_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X7_Y44_N26
\wr$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr$latch~combout\ = (\comb~0_combout\ & ((\wr~0_combout\) # ((\wr$latch~combout\) # (!\comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~0_combout\,
	datab => \comb~0_combout\,
	datac => \wr$latch~combout\,
	datad => \comb~1_combout\,
	combout => \wr$latch~combout\);

-- Location: LCCOMB_X6_Y44_N30
\r_mux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_mux~2_combout\ = (state(3) & (state(2) $ ((!state(1))))) # (!state(3) & (((state(0)) # (!state(1))) # (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(3),
	datad => state(0),
	combout => \r_mux~2_combout\);

-- Location: LCCOMB_X6_Y44_N8
\ld_A~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~11_combout\ = (state(2)) # (((state(3)) # (state(4))) # (!state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(3),
	datad => state(4),
	combout => \ld_A~11_combout\);

-- Location: LCCOMB_X6_Y44_N10
\r_mux~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_mux~14_combout\ = (!\Equal4~1_combout\ & (\ld_A~11_combout\ & ((\r_mux~2_combout\) # (state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_mux~2_combout\,
	datab => \Equal4~1_combout\,
	datac => \ld_A~11_combout\,
	datad => state(4),
	combout => \r_mux~14_combout\);

-- Location: LCCOMB_X6_Y44_N20
\wren~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wren~0_combout\ = (\r_mux~14_combout\ & ((\Equal11~0_combout\) # (\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \Equal10~0_combout\,
	datad => \r_mux~14_combout\,
	combout => \wren~0_combout\);

-- Location: LCCOMB_X6_Y44_N4
\wren$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \wren$latch~combout\ = (!\clear~0_combout\ & ((\wren~0_combout\ & (\Equal10~0_combout\)) # (!\wren~0_combout\ & ((\wren$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \wren$latch~combout\,
	datad => \wren~0_combout\,
	combout => \wren$latch~combout\);

-- Location: LCCOMB_X4_Y44_N22
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!state(1) & (\Equal0~0_combout\ & (state(2) & state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \Equal0~0_combout\,
	datac => state(2),
	datad => state(3),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X4_Y44_N30
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (state(1) & !state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(3),
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X4_Y44_N20
\c_mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_mux~0_combout\ = (\ld_A~10_combout\ & ((\Equal5~4_combout\) # ((!state(0) & \Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal5~4_combout\,
	datac => \Equal3~4_combout\,
	datad => \ld_A~10_combout\,
	combout => \c_mux~0_combout\);

-- Location: LCCOMB_X4_Y44_N26
\c_mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_mux$latch~combout\ = (!\clear~0_combout\ & ((\c_mux~0_combout\ & ((\Equal6~0_combout\))) # (!\c_mux~0_combout\ & (\c_mux$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_mux$latch~combout\,
	datab => \Equal6~0_combout\,
	datac => \clear~0_combout\,
	datad => \c_mux~0_combout\,
	combout => \c_mux$latch~combout\);

-- Location: LCCOMB_X6_Y44_N16
\r_mux~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_mux~13_combout\ = (!state(2) & (!state(1) & (state(3) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => state(3),
	datad => state(4),
	combout => \r_mux~13_combout\);

-- Location: LCCOMB_X6_Y44_N18
\r_mux~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_mux~12_combout\ = (\r_mux~14_combout\ & (!\Equal10~0_combout\ & ((\Equal11~0_combout\) # (!\r_mux~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_mux~14_combout\,
	datab => \Equal10~0_combout\,
	datac => \r_mux~11_combout\,
	datad => \Equal11~0_combout\,
	combout => \r_mux~12_combout\);

-- Location: LCCOMB_X6_Y44_N22
\r_mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_mux$latch~combout\ = (!\clear~0_combout\ & ((\r_mux~12_combout\ & ((\r_mux~13_combout\))) # (!\r_mux~12_combout\ & (\r_mux$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_mux$latch~combout\,
	datab => \clear~0_combout\,
	datac => \r_mux~13_combout\,
	datad => \r_mux~12_combout\,
	combout => \r_mux$latch~combout\);

-- Location: LCCOMB_X6_Y44_N6
\Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (\Equal15~0_combout\ & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal15~0_combout\,
	datad => state(0),
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X8_Y44_N10
\s_mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mux$latch~combout\ = (!\clear~0_combout\ & ((\Equal15~1_combout\) # (\s_mux$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~1_combout\,
	datac => \clear~0_combout\,
	datad => \s_mux$latch~combout\,
	combout => \s_mux$latch~combout\);

-- Location: LCCOMB_X6_Y44_N14
\vd_mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vd_mux~0_combout\ = (state(3)) # ((state(2)) # (state(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datac => state(2),
	datad => state(4),
	combout => \vd_mux~0_combout\);

-- Location: LCCOMB_X6_Y44_N24
\vd_mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \vd_mux$latch~combout\ = (!\clear~0_combout\ & (((\vd_mux$latch~combout\ & !\Equal15~1_combout\)) # (!\vd_mux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vd_mux$latch~combout\,
	datab => \vd_mux~0_combout\,
	datac => \clear~0_combout\,
	datad => \Equal15~1_combout\,
	combout => \vd_mux$latch~combout\);

-- Location: LCCOMB_X5_Y44_N24
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (state(1) & (!state(2) & (state(3) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(3),
	datad => state(4),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X5_Y44_N22
\count$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \count$latch~combout\ = (!\clear~0_combout\ & ((\Equal7~1_combout\ & (state(0))) # (!\Equal7~1_combout\ & ((\count$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \clear~0_combout\,
	datac => \count$latch~combout\,
	datad => \Equal7~1_combout\,
	combout => \count$latch~combout\);

-- Location: LCCOMB_X8_Y44_N20
\led_r$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r$latch~combout\ = (!\clear~0_combout\ & ((\Equal15~1_combout\) # (\led_r$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~1_combout\,
	datac => \clear~0_combout\,
	datad => \led_r$latch~combout\,
	combout => \led_r$latch~combout\);

-- Location: IOIBUF_X0_Y53_N8
\slt_op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slt_op(0),
	o => \slt_op[0]~input_o\);

-- Location: LCCOMB_X2_Y44_N20
\slt_ula[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_ula[0]~8_combout\ = (\slt_op[0]~input_o\) # ((state(3) & (\Equal4~2_combout\ & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \slt_op[0]~input_o\,
	datac => \Equal4~2_combout\,
	datad => state(1),
	combout => \slt_ula[0]~8_combout\);

-- Location: LCCOMB_X6_Y44_N2
\slt_ula[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_ula[2]~9_combout\ = (state(0) & (((state(2) & \Equal7~0_combout\)))) # (!state(0) & ((\Equal15~0_combout\) # ((\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \Equal15~0_combout\,
	datac => state(2),
	datad => \Equal7~0_combout\,
	combout => \slt_ula[2]~9_combout\);

-- Location: CLKCTRL_G3
\slt_ula[2]~9clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slt_ula[2]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slt_ula[2]~9clkctrl_outclk\);

-- Location: LCCOMB_X1_Y44_N12
\slt_ula[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_ula[0]$latch~combout\ = (!\Equal0~1_combout\ & ((GLOBAL(\slt_ula[2]~9clkctrl_outclk\) & ((\slt_ula[0]~8_combout\))) # (!GLOBAL(\slt_ula[2]~9clkctrl_outclk\) & (\slt_ula[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_ula[0]$latch~combout\,
	datab => \slt_ula[0]~8_combout\,
	datac => \Equal0~1_combout\,
	datad => \slt_ula[2]~9clkctrl_outclk\,
	combout => \slt_ula[0]$latch~combout\);

-- Location: IOIBUF_X0_Y55_N15
\slt_op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slt_op(1),
	o => \slt_op[1]~input_o\);

-- Location: LCCOMB_X2_Y44_N30
\slt_ula[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_ula[1]~10_combout\ = (\slt_op[1]~input_o\) # ((state(3) & (\Equal4~2_combout\ & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \slt_op[1]~input_o\,
	datac => \Equal4~2_combout\,
	datad => state(1),
	combout => \slt_ula[1]~10_combout\);

-- Location: LCCOMB_X1_Y44_N22
\slt_ula[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_ula[1]$latch~combout\ = (!\Equal0~1_combout\ & ((GLOBAL(\slt_ula[2]~9clkctrl_outclk\) & (\slt_ula[1]~10_combout\)) # (!GLOBAL(\slt_ula[2]~9clkctrl_outclk\) & ((\slt_ula[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_ula[1]~10_combout\,
	datab => \Equal0~1_combout\,
	datac => \slt_ula[2]~9clkctrl_outclk\,
	datad => \slt_ula[1]$latch~combout\,
	combout => \slt_ula[1]$latch~combout\);

-- Location: IOIBUF_X0_Y51_N15
\slt_op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slt_op(2),
	o => \slt_op[2]~input_o\);

-- Location: LCCOMB_X2_Y44_N16
\slt_ula[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_ula[2]~11_combout\ = (\slt_op[2]~input_o\) # ((state(3) & (\Equal4~2_combout\ & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \slt_op[2]~input_o\,
	datac => \Equal4~2_combout\,
	datad => state(1),
	combout => \slt_ula[2]~11_combout\);

-- Location: LCCOMB_X1_Y44_N4
\slt_ula[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_ula[2]$latch~combout\ = (!\Equal0~1_combout\ & ((GLOBAL(\slt_ula[2]~9clkctrl_outclk\) & (\slt_ula[2]~11_combout\)) # (!GLOBAL(\slt_ula[2]~9clkctrl_outclk\) & ((\slt_ula[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \slt_ula[2]~11_combout\,
	datac => \slt_ula[2]$latch~combout\,
	datad => \slt_ula[2]~9clkctrl_outclk\,
	combout => \slt_ula[2]$latch~combout\);

-- Location: IOIBUF_X0_Y55_N22
\RB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(0),
	o => \RB[0]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\RC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RC(0),
	o => \RC[0]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\RA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: LCCOMB_X8_Y44_N8
\slt_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[0]~4_combout\ = (\Equal5~4_combout\ & ((\Equal4~2_combout\ & (\RC[0]~input_o\)) # (!\Equal4~2_combout\ & ((\RA[0]~input_o\))))) # (!\Equal5~4_combout\ & (((\RA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RC[0]~input_o\,
	datab => \Equal5~4_combout\,
	datac => \Equal4~2_combout\,
	datad => \RA[0]~input_o\,
	combout => \slt_reg[0]~4_combout\);

-- Location: LCCOMB_X8_Y44_N16
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!state(2) & (\Equal3~4_combout\ & (state(0) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \Equal3~4_combout\,
	datac => state(0),
	datad => state(4),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X8_Y44_N30
\slt_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[0]~5_combout\ = (\Equal3~5_combout\) # ((\Equal4~1_combout\ & (\RB[0]~input_o\)) # (!\Equal4~1_combout\ & ((\slt_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \slt_reg[0]~4_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal3~5_combout\,
	combout => \slt_reg[0]~5_combout\);

-- Location: LCCOMB_X8_Y44_N4
\slt_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[0]~6_combout\ = (\slt_reg[0]~5_combout\ & (((state(2)) # (!\Equal0~0_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => state(2),
	datac => \slt_reg[0]~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \slt_reg[0]~6_combout\);

-- Location: LCCOMB_X5_Y44_N6
\slt_reg[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[2]~11_combout\ = (state(0) & (state(2) $ (((state(1) & !state(3)))))) # (!state(0) & ((state(1)) # ((!state(2) & state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(3),
	datad => state(0),
	combout => \slt_reg[2]~11_combout\);

-- Location: LCCOMB_X5_Y44_N26
\slt_reg[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[2]~12_combout\ = (\slt_reg[2]~11_combout\ & (((!state(4))))) # (!\slt_reg[2]~11_combout\ & (!state(2) & (state(4) & !state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_reg[2]~11_combout\,
	datab => state(2),
	datac => state(4),
	datad => state(0),
	combout => \slt_reg[2]~12_combout\);

-- Location: CLKCTRL_G1
\slt_reg[2]~12clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slt_reg[2]~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slt_reg[2]~12clkctrl_outclk\);

-- Location: LCCOMB_X8_Y44_N14
\slt_reg[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[0]$latch~combout\ = (!\Equal0~1_combout\ & ((GLOBAL(\slt_reg[2]~12clkctrl_outclk\) & (\slt_reg[0]~6_combout\)) # (!GLOBAL(\slt_reg[2]~12clkctrl_outclk\) & ((\slt_reg[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_reg[0]~6_combout\,
	datab => \Equal0~1_combout\,
	datac => \slt_reg[0]$latch~combout\,
	datad => \slt_reg[2]~12clkctrl_outclk\,
	combout => \slt_reg[0]$latch~combout\);

-- Location: IOIBUF_X0_Y47_N15
\RA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\RC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RC(1),
	o => \RC[1]~input_o\);

-- Location: LCCOMB_X2_Y44_N22
\slt_reg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[1]~7_combout\ = (\Equal5~4_combout\ & ((\Equal4~2_combout\ & ((\RC[1]~input_o\))) # (!\Equal4~2_combout\ & (\RA[1]~input_o\)))) # (!\Equal5~4_combout\ & (((\RA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datab => \Equal4~2_combout\,
	datac => \RA[1]~input_o\,
	datad => \RC[1]~input_o\,
	combout => \slt_reg[1]~7_combout\);

-- Location: IOIBUF_X0_Y52_N1
\RB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(1),
	o => \RB[1]~input_o\);

-- Location: LCCOMB_X2_Y44_N28
\slt_reg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[1]~8_combout\ = (\ld_A~11_combout\ & ((\Equal4~1_combout\ & ((\RB[1]~input_o\))) # (!\Equal4~1_combout\ & (\slt_reg[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \slt_reg[1]~7_combout\,
	datac => \RB[1]~input_o\,
	datad => \ld_A~11_combout\,
	combout => \slt_reg[1]~8_combout\);

-- Location: LCCOMB_X1_Y44_N30
\slt_reg[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[1]$latch~combout\ = (!\Equal0~1_combout\ & ((GLOBAL(\slt_reg[2]~12clkctrl_outclk\) & (\slt_reg[1]~8_combout\)) # (!GLOBAL(\slt_reg[2]~12clkctrl_outclk\) & ((\slt_reg[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \slt_reg[1]~8_combout\,
	datac => \slt_reg[1]$latch~combout\,
	datad => \slt_reg[2]~12clkctrl_outclk\,
	combout => \slt_reg[1]$latch~combout\);

-- Location: IOIBUF_X0_Y42_N1
\RA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(2),
	o => \RA[2]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\RC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RC(2),
	o => \RC[2]~input_o\);

-- Location: LCCOMB_X2_Y44_N10
\slt_reg[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[2]~9_combout\ = (\Equal5~4_combout\ & ((\Equal4~2_combout\ & ((\RC[2]~input_o\))) # (!\Equal4~2_combout\ & (\RA[2]~input_o\)))) # (!\Equal5~4_combout\ & (((\RA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datab => \Equal4~2_combout\,
	datac => \RA[2]~input_o\,
	datad => \RC[2]~input_o\,
	combout => \slt_reg[2]~9_combout\);

-- Location: IOIBUF_X0_Y50_N15
\RB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(2),
	o => \RB[2]~input_o\);

-- Location: LCCOMB_X2_Y44_N24
\slt_reg[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[2]~10_combout\ = (\ld_A~11_combout\ & ((\Equal4~1_combout\ & ((\RB[2]~input_o\))) # (!\Equal4~1_combout\ & (\slt_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \slt_reg[2]~9_combout\,
	datac => \RB[2]~input_o\,
	datad => \ld_A~11_combout\,
	combout => \slt_reg[2]~10_combout\);

-- Location: LCCOMB_X1_Y44_N24
\slt_reg[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_reg[2]$latch~combout\ = (!\Equal0~1_combout\ & ((GLOBAL(\slt_reg[2]~12clkctrl_outclk\) & (\slt_reg[2]~10_combout\)) # (!GLOBAL(\slt_reg[2]~12clkctrl_outclk\) & ((\slt_reg[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \slt_reg[2]~10_combout\,
	datac => \slt_reg[2]~12clkctrl_outclk\,
	datad => \slt_reg[2]$latch~combout\,
	combout => \slt_reg[2]$latch~combout\);

-- Location: IOIBUF_X31_Y0_N1
\allbits[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(0),
	o => \allbits[0]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\allbits[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(1),
	o => \allbits[1]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\allbits[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(2),
	o => \allbits[2]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\allbits[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(3),
	o => \allbits[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\allbits[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(4),
	o => \allbits[4]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\allbits[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(5),
	o => \allbits[5]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\allbits[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(6),
	o => \allbits[6]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\allbits[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(7),
	o => \allbits[7]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\allbits[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(8),
	o => \allbits[8]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\allbits[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(9),
	o => \allbits[9]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\allbits[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(10),
	o => \allbits[10]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\allbits[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(11),
	o => \allbits[11]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\allbits[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(12),
	o => \allbits[12]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\allbits[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(13),
	o => \allbits[13]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\allbits[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(14),
	o => \allbits[14]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\allbits[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_allbits(15),
	o => \allbits[15]~input_o\);

ww_clear <= \clear~output_o\;

ww_ld_A <= \ld_A~output_o\;

ww_ld_B <= \ld_B~output_o\;

ww_rd <= \rd~output_o\;

ww_wr <= \wr~output_o\;

ww_wren <= \wren~output_o\;

ww_c_mux <= \c_mux~output_o\;

ww_r_mux <= \r_mux~output_o\;

ww_s_mux <= \s_mux~output_o\;

ww_vd_mux <= \vd_mux~output_o\;

ww_count <= \count~output_o\;

ww_led_r <= \led_r~output_o\;

ww_slt_ula(0) <= \slt_ula[0]~output_o\;

ww_slt_ula(1) <= \slt_ula[1]~output_o\;

ww_slt_ula(2) <= \slt_ula[2]~output_o\;

ww_slt_reg(0) <= \slt_reg[0]~output_o\;

ww_slt_reg(1) <= \slt_reg[1]~output_o\;

ww_slt_reg(2) <= \slt_reg[2]~output_o\;

ww_const(0) <= \const[0]~output_o\;

ww_const(1) <= \const[1]~output_o\;

ww_const(2) <= \const[2]~output_o\;

ww_const(3) <= \const[3]~output_o\;

ww_const(4) <= \const[4]~output_o\;

ww_const(5) <= \const[5]~output_o\;

ww_ss(0) <= \ss[0]~output_o\;

ww_ss(1) <= \ss[1]~output_o\;

ww_ss(2) <= \ss[2]~output_o\;

ww_ss(3) <= \ss[3]~output_o\;

ww_ss(4) <= \ss[4]~output_o\;
END structure;


