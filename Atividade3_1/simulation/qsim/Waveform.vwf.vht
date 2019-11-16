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
-- Generated on "11/16/2019 19:24:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          successive_subs
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY successive_subs_vhd_vec_tst IS
END successive_subs_vhd_vec_tst;
ARCHITECTURE successive_subs_arch OF successive_subs_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bt : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL quotient : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rest : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sa_e_z : STD_LOGIC;
SIGNAL sa_lt_z : STD_LOGIC;
SIGNAL sclr : STD_LOGIC;
SIGNAL scnt : STD_LOGIC;
SIGNAL slb_b : STD_LOGIC;
SIGNAL sld_a : STD_LOGIC;
SIGNAL sslt_a : STD_LOGIC;
SIGNAL ssub_add : STD_LOGIC;
SIGNAL sud : STD_LOGIC;
COMPONENT successive_subs
	PORT (
	bt : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	quotient : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	rest : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	sa_e_z : BUFFER STD_LOGIC;
	sa_lt_z : BUFFER STD_LOGIC;
	sclr : BUFFER STD_LOGIC;
	scnt : BUFFER STD_LOGIC;
	slb_b : BUFFER STD_LOGIC;
	sld_a : BUFFER STD_LOGIC;
	sslt_a : BUFFER STD_LOGIC;
	ssub_add : BUFFER STD_LOGIC;
	sud : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : successive_subs
	PORT MAP (
-- list connections between master ports and signals
	bt => bt,
	clk => clk,
	input => input,
	quotient => quotient,
	rest => rest,
	sa_e_z => sa_e_z,
	sa_lt_z => sa_lt_z,
	sclr => sclr,
	scnt => scnt,
	slb_b => slb_b,
	sld_a => sld_a,
	sslt_a => sslt_a,
	ssub_add => ssub_add,
	sud => sud
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
	WAIT FOR 200000 ps;
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	input(2) <= '0';
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
	WAIT FOR 200000 ps;
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

-- bt
t_prcs_bt: PROCESS
BEGIN
	bt <= '0';
	WAIT FOR 10000 ps;
	bt <= '1';
	WAIT FOR 20000 ps;
	bt <= '0';
	WAIT FOR 220000 ps;
	bt <= '1';
	WAIT FOR 20000 ps;
	bt <= '0';
WAIT;
END PROCESS t_prcs_bt;
END successive_subs_arch;
