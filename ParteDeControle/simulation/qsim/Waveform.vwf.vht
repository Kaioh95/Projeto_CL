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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/30/2019 15:16:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pControle
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pControle_vhd_vec_tst IS
END pControle_vhd_vec_tst;
ARCHITECTURE pControle_arch OF pControle_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL allbits : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL c_mux : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL const : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL const_ops : STD_LOGIC;
SIGNAL count : STD_LOGIC;
SIGNAL fimC : STD_LOGIC;
SIGNAL ld_A : STD_LOGIC;
SIGNAL ld_B : STD_LOGIC;
SIGNAL led_r : STD_LOGIC;
SIGNAL lw_op : STD_LOGIC;
SIGNAL nand_op : STD_LOGIC;
SIGNAL operate : STD_LOGIC;
SIGNAL r_mux : STD_LOGIC;
SIGNAL RA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RB : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL rc_ops : STD_LOGIC;
SIGNAL rd : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL s_mux : STD_LOGIC;
SIGNAL sln_ops : STD_LOGIC;
SIGNAL slt_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL slt_reg : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL slt_ula : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ss : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sw_op : STD_LOGIC;
SIGNAL valid : STD_LOGIC;
SIGNAL vd_mux : STD_LOGIC;
SIGNAL wr : STD_LOGIC;
SIGNAL wren : STD_LOGIC;
COMPONENT pControle
	PORT (
	allbits : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	c_mux : OUT STD_LOGIC;
	clear : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	const : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	const_ops : IN STD_LOGIC;
	count : OUT STD_LOGIC;
	fimC : IN STD_LOGIC;
	ld_A : OUT STD_LOGIC;
	ld_B : OUT STD_LOGIC;
	led_r : OUT STD_LOGIC;
	lw_op : IN STD_LOGIC;
	nand_op : IN STD_LOGIC;
	operate : IN STD_LOGIC;
	r_mux : OUT STD_LOGIC;
	RA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RB : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RC : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	rc_ops : IN STD_LOGIC;
	rd : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	s_mux : OUT STD_LOGIC;
	sln_ops : IN STD_LOGIC;
	slt_op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	slt_reg : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	slt_ula : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ss : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	sw_op : IN STD_LOGIC;
	valid : IN STD_LOGIC;
	vd_mux : OUT STD_LOGIC;
	wr : OUT STD_LOGIC;
	wren : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pControle
	PORT MAP (
-- list connections between master ports and signals
	allbits => allbits,
	c_mux => c_mux,
	clear => clear,
	clk => clk,
	const => const,
	const_ops => const_ops,
	count => count,
	fimC => fimC,
	ld_A => ld_A,
	ld_B => ld_B,
	led_r => led_r,
	lw_op => lw_op,
	nand_op => nand_op,
	operate => operate,
	r_mux => r_mux,
	RA => RA,
	RB => RB,
	RC => RC,
	rc_ops => rc_ops,
	rd => rd,
	reset => reset,
	s_mux => s_mux,
	sln_ops => sln_ops,
	slt_op => slt_op,
	slt_reg => slt_reg,
	slt_ula => slt_ula,
	ss => ss,
	sw_op => sw_op,
	valid => valid,
	vd_mux => vd_mux,
	wr => wr,
	wren => wren
	);
-- slt_op[2]
t_prcs_slt_op_2: PROCESS
BEGIN
	slt_op(2) <= '1';
	WAIT FOR 980000 ps;
	slt_op(2) <= '0';
WAIT;
END PROCESS t_prcs_slt_op_2;
-- slt_op[1]
t_prcs_slt_op_1: PROCESS
BEGIN
	slt_op(1) <= '0';
	WAIT FOR 500000 ps;
	slt_op(1) <= '1';
	WAIT FOR 240000 ps;
	slt_op(1) <= '0';
WAIT;
END PROCESS t_prcs_slt_op_1;
-- slt_op[0]
t_prcs_slt_op_0: PROCESS
BEGIN
	slt_op(0) <= '0';
	WAIT FOR 260000 ps;
	slt_op(0) <= '1';
	WAIT FOR 240000 ps;
	slt_op(0) <= '0';
WAIT;
END PROCESS t_prcs_slt_op_0;
-- RA[2]
t_prcs_RA_2: PROCESS
BEGIN
	RA(2) <= '0';
	WAIT FOR 260000 ps;
	RA(2) <= '1';
	WAIT FOR 480000 ps;
	RA(2) <= '0';
WAIT;
END PROCESS t_prcs_RA_2;
-- RA[1]
t_prcs_RA_1: PROCESS
BEGIN
	RA(1) <= '0';
	WAIT FOR 500000 ps;
	RA(1) <= '1';
WAIT;
END PROCESS t_prcs_RA_1;
-- RA[0]
t_prcs_RA_0: PROCESS
BEGIN
	RA(0) <= '1';
	WAIT FOR 260000 ps;
	RA(0) <= '0';
	WAIT FOR 240000 ps;
	RA(0) <= '1';
	WAIT FOR 240000 ps;
	RA(0) <= '0';
WAIT;
END PROCESS t_prcs_RA_0;
-- RB[2]
t_prcs_RB_2: PROCESS
BEGIN
	RB(2) <= '0';
	WAIT FOR 260000 ps;
	RB(2) <= '1';
	WAIT FOR 240000 ps;
	RB(2) <= '0';
WAIT;
END PROCESS t_prcs_RB_2;
-- RB[1]
t_prcs_RB_1: PROCESS
BEGIN
	RB(1) <= '1';
	WAIT FOR 260000 ps;
	RB(1) <= '0';
	WAIT FOR 480000 ps;
	RB(1) <= '1';
WAIT;
END PROCESS t_prcs_RB_1;
-- RB[0]
t_prcs_RB_0: PROCESS
BEGIN
	RB(0) <= '0';
	WAIT FOR 260000 ps;
	RB(0) <= '1';
	WAIT FOR 240000 ps;
	RB(0) <= '0';
	WAIT FOR 240000 ps;
	RB(0) <= '1';
WAIT;
END PROCESS t_prcs_RB_0;
-- RC[2]
t_prcs_RC_2: PROCESS
BEGIN
	RC(2) <= '0';
	WAIT FOR 260000 ps;
	RC(2) <= '1';
	WAIT FOR 240000 ps;
	RC(2) <= '0';
	WAIT FOR 240000 ps;
	RC(2) <= '1';
WAIT;
END PROCESS t_prcs_RC_2;
-- RC[1]
t_prcs_RC_1: PROCESS
BEGIN
	RC(1) <= '1';
	WAIT FOR 500000 ps;
	RC(1) <= '0';
WAIT;
END PROCESS t_prcs_RC_1;
-- RC[0]
t_prcs_RC_0: PROCESS
BEGIN
	RC(0) <= '1';
	WAIT FOR 260000 ps;
	RC(0) <= '0';
	WAIT FOR 240000 ps;
	RC(0) <= '1';
	WAIT FOR 240000 ps;
	RC(0) <= '0';
WAIT;
END PROCESS t_prcs_RC_0;
-- allbits[15]
t_prcs_allbits_15: PROCESS
BEGIN
	allbits(15) <= '0';
WAIT;
END PROCESS t_prcs_allbits_15;
-- allbits[14]
t_prcs_allbits_14: PROCESS
BEGIN
	allbits(14) <= '0';
WAIT;
END PROCESS t_prcs_allbits_14;
-- allbits[13]
t_prcs_allbits_13: PROCESS
BEGIN
	allbits(13) <= '0';
WAIT;
END PROCESS t_prcs_allbits_13;
-- allbits[12]
t_prcs_allbits_12: PROCESS
BEGIN
	allbits(12) <= '0';
WAIT;
END PROCESS t_prcs_allbits_12;
-- allbits[11]
t_prcs_allbits_11: PROCESS
BEGIN
	allbits(11) <= '0';
WAIT;
END PROCESS t_prcs_allbits_11;
-- allbits[10]
t_prcs_allbits_10: PROCESS
BEGIN
	allbits(10) <= '0';
WAIT;
END PROCESS t_prcs_allbits_10;
-- allbits[9]
t_prcs_allbits_9: PROCESS
BEGIN
	allbits(9) <= '0';
WAIT;
END PROCESS t_prcs_allbits_9;
-- allbits[8]
t_prcs_allbits_8: PROCESS
BEGIN
	allbits(8) <= '0';
WAIT;
END PROCESS t_prcs_allbits_8;
-- allbits[7]
t_prcs_allbits_7: PROCESS
BEGIN
	allbits(7) <= '0';
WAIT;
END PROCESS t_prcs_allbits_7;
-- allbits[6]
t_prcs_allbits_6: PROCESS
BEGIN
	allbits(6) <= '1';
WAIT;
END PROCESS t_prcs_allbits_6;
-- allbits[5]
t_prcs_allbits_5: PROCESS
BEGIN
	allbits(5) <= '1';
WAIT;
END PROCESS t_prcs_allbits_5;
-- allbits[4]
t_prcs_allbits_4: PROCESS
BEGIN
	allbits(4) <= '0';
WAIT;
END PROCESS t_prcs_allbits_4;
-- allbits[3]
t_prcs_allbits_3: PROCESS
BEGIN
	allbits(3) <= '0';
WAIT;
END PROCESS t_prcs_allbits_3;
-- allbits[2]
t_prcs_allbits_2: PROCESS
BEGIN
	allbits(2) <= '0';
WAIT;
END PROCESS t_prcs_allbits_2;
-- allbits[1]
t_prcs_allbits_1: PROCESS
BEGIN
	allbits(1) <= '0';
WAIT;
END PROCESS t_prcs_allbits_1;
-- allbits[0]
t_prcs_allbits_0: PROCESS
BEGIN
	allbits(0) <= '0';
WAIT;
END PROCESS t_prcs_allbits_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- valid
t_prcs_valid: PROCESS
BEGIN
	valid <= '0';
WAIT;
END PROCESS t_prcs_valid;

-- operate
t_prcs_operate: PROCESS
BEGIN
	operate <= '0';
	WAIT FOR 50000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
	WAIT FOR 140000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
	WAIT FOR 60000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
	WAIT FOR 140000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
	WAIT FOR 60000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
	WAIT FOR 140000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
	WAIT FOR 60000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
	WAIT FOR 140000 ps;
	operate <= '1';
	WAIT FOR 20000 ps;
	operate <= '0';
WAIT;
END PROCESS t_prcs_operate;

-- rc_ops
t_prcs_rc_ops: PROCESS
BEGIN
	rc_ops <= '1';
WAIT;
END PROCESS t_prcs_rc_ops;

-- const_ops
t_prcs_const_ops: PROCESS
BEGIN
	const_ops <= '0';
WAIT;
END PROCESS t_prcs_const_ops;

-- nand_op
t_prcs_nand_op: PROCESS
BEGIN
	nand_op <= '0';
	WAIT FOR 740000 ps;
	nand_op <= '1';
WAIT;
END PROCESS t_prcs_nand_op;

-- lw_op
t_prcs_lw_op: PROCESS
BEGIN
	lw_op <= '0';
WAIT;
END PROCESS t_prcs_lw_op;

-- sw_op
t_prcs_sw_op: PROCESS
BEGIN
	sw_op <= '0';
WAIT;
END PROCESS t_prcs_sw_op;

-- sln_ops
t_prcs_sln_ops: PROCESS
BEGIN
	sln_ops <= '0';
WAIT;
END PROCESS t_prcs_sln_ops;

-- fimC
t_prcs_fimC: PROCESS
BEGIN
	fimC <= '0';
WAIT;
END PROCESS t_prcs_fimC;
END pControle_arch;
