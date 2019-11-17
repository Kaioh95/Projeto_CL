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
-- Generated on "11/16/2019 22:37:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pc_vhd_vec_tst IS
END pc_vhd_vec_tst;
ARCHITECTURE pc_arch OF pc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_e_z : STD_LOGIC;
SIGNAL a_lt_z : STD_LOGIC;
SIGNAL bt : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL cnt : STD_LOGIC;
SIGNAL ld_a : STD_LOGIC;
SIGNAL ld_b : STD_LOGIC;
SIGNAL slt_a : STD_LOGIC;
SIGNAL sub_add : STD_LOGIC;
SIGNAL ud : STD_LOGIC;
COMPONENT pc
	PORT (
	a_e_z : IN STD_LOGIC;
	a_lt_z : IN STD_LOGIC;
	bt : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	clr : OUT STD_LOGIC;
	cnt : OUT STD_LOGIC;
	ld_a : OUT STD_LOGIC;
	ld_b : OUT STD_LOGIC;
	slt_a : OUT STD_LOGIC;
	sub_add : OUT STD_LOGIC;
	ud : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pc
	PORT MAP (
-- list connections between master ports and signals
	a_e_z => a_e_z,
	a_lt_z => a_lt_z,
	bt => bt,
	clk => clk,
	clr => clr,
	cnt => cnt,
	ld_a => ld_a,
	ld_b => ld_b,
	slt_a => slt_a,
	sub_add => sub_add,
	ud => ud
	);

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
	WAIT FOR 90000 ps;
	bt <= '1';
	WAIT FOR 20000 ps;
	bt <= '0';
	WAIT FOR 100000 ps;
	bt <= '1';
	WAIT FOR 20000 ps;
	bt <= '0';
WAIT;
END PROCESS t_prcs_bt;

-- a_e_z
t_prcs_a_e_z: PROCESS
BEGIN
	a_e_z <= '0';
WAIT;
END PROCESS t_prcs_a_e_z;

-- a_lt_z
t_prcs_a_lt_z: PROCESS
BEGIN
	a_lt_z <= '0';
	WAIT FOR 570000 ps;
	a_lt_z <= '1';
	WAIT FOR 20000 ps;
	a_lt_z <= '0';
WAIT;
END PROCESS t_prcs_a_lt_z;
END pc_arch;
