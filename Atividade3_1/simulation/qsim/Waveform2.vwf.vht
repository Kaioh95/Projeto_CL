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
-- Generated on "11/16/2019 17:42:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          po
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY po_vhd_vec_tst IS
END po_vhd_vec_tst;
ARCHITECTURE po_arch OF po_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_e_z : STD_LOGIC;
SIGNAL a_lt_z : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL cnt : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ld_a : STD_LOGIC;
SIGNAL ld_b : STD_LOGIC;
SIGNAL quotient : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rest : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL slt_a : STD_LOGIC;
SIGNAL sub_add : STD_LOGIC;
SIGNAL ud : STD_LOGIC;
COMPONENT po
	PORT (
	a_e_z : OUT STD_LOGIC;
	a_lt_z : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	cnt : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ld_a : IN STD_LOGIC;
	ld_b : IN STD_LOGIC;
	quotient : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rest : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	slt_a : IN STD_LOGIC;
	sub_add : IN STD_LOGIC;
	ud : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : po
	PORT MAP (
-- list connections between master ports and signals
	a_e_z => a_e_z,
	a_lt_z => a_lt_z,
	clk => clk,
	clr => clr,
	cnt => cnt,
	input => input,
	ld_a => ld_a,
	ld_b => ld_b,
	quotient => quotient,
	rest => rest,
	slt_a => slt_a,
	sub_add => sub_add,
	ud => ud
	);
-- input[15]
t_prcs_input_15: PROCESS
BEGIN
	input(15) <= '0';
WAIT;
END PROCESS t_prcs_input_15;
-- input[14]
t_prcs_input_14: PROCESS
BEGIN
	input(14) <= '0';
WAIT;
END PROCESS t_prcs_input_14;
-- input[13]
t_prcs_input_13: PROCESS
BEGIN
	input(13) <= '0';
WAIT;
END PROCESS t_prcs_input_13;
-- input[12]
t_prcs_input_12: PROCESS
BEGIN
	input(12) <= '0';
WAIT;
END PROCESS t_prcs_input_12;
-- input[11]
t_prcs_input_11: PROCESS
BEGIN
	input(11) <= '0';
WAIT;
END PROCESS t_prcs_input_11;
-- input[10]
t_prcs_input_10: PROCESS
BEGIN
	input(10) <= '0';
WAIT;
END PROCESS t_prcs_input_10;
-- input[9]
t_prcs_input_9: PROCESS
BEGIN
	input(9) <= '0';
WAIT;
END PROCESS t_prcs_input_9;
-- input[8]
t_prcs_input_8: PROCESS
BEGIN
	input(8) <= '0';
WAIT;
END PROCESS t_prcs_input_8;
-- input[7]
t_prcs_input_7: PROCESS
BEGIN
	input(7) <= '0';
WAIT;
END PROCESS t_prcs_input_7;
-- input[6]
t_prcs_input_6: PROCESS
BEGIN
	input(6) <= '0';
WAIT;
END PROCESS t_prcs_input_6;
-- input[5]
t_prcs_input_5: PROCESS
BEGIN
	input(5) <= '0';
WAIT;
END PROCESS t_prcs_input_5;
-- input[4]
t_prcs_input_4: PROCESS
BEGIN
	input(4) <= '0';
WAIT;
END PROCESS t_prcs_input_4;
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	input(3) <= '1';
	WAIT FOR 190000 ps;
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	input(2) <= '0';
	WAIT FOR 190000 ps;
	input(2) <= '1';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
	WAIT FOR 190000 ps;
	input(0) <= '1';
WAIT;
END PROCESS t_prcs_input_0;

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

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
	WAIT FOR 10000 ps;
	clr <= '1';
	WAIT FOR 20000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- cnt
t_prcs_cnt: PROCESS
BEGIN
	cnt <= '0';
	WAIT FOR 320000 ps;
	cnt <= '1';
	WAIT FOR 70000 ps;
	cnt <= '0';
WAIT;
END PROCESS t_prcs_cnt;

-- ld_a
t_prcs_ld_a: PROCESS
BEGIN
	ld_a <= '0';
	WAIT FOR 50000 ps;
	ld_a <= '1';
	WAIT FOR 20000 ps;
	ld_a <= '0';
	WAIT FOR 250000 ps;
	ld_a <= '1';
	WAIT FOR 70000 ps;
	ld_a <= '0';
WAIT;
END PROCESS t_prcs_ld_a;

-- ld_b
t_prcs_ld_b: PROCESS
BEGIN
	ld_b <= '0';
	WAIT FOR 210000 ps;
	ld_b <= '1';
	WAIT FOR 20000 ps;
	ld_b <= '0';
WAIT;
END PROCESS t_prcs_ld_b;

-- slt_a
t_prcs_slt_a: PROCESS
BEGIN
	slt_a <= '0';
	WAIT FOR 320000 ps;
	slt_a <= '1';
WAIT;
END PROCESS t_prcs_slt_a;

-- sub_add
t_prcs_sub_add: PROCESS
BEGIN
	sub_add <= '0';
WAIT;
END PROCESS t_prcs_sub_add;

-- ud
t_prcs_ud: PROCESS
BEGIN
	ud <= '0';
WAIT;
END PROCESS t_prcs_ud;
END po_arch;
