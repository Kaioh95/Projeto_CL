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
-- Generated on "11/29/2019 21:23:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          countDec
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY countDec_vhd_vec_tst IS
END countDec_vhd_vec_tst;
ARCHITECTURE countDec_arch OF countDec_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC;
SIGNAL fc : STD_LOGIC;
SIGNAL i : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rd : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT countDec
	PORT (
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	count : IN STD_LOGIC;
	fc : OUT STD_LOGIC;
	i : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	rd : IN STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : countDec
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	count => count,
	fc => fc,
	i => i,
	rd => rd,
	s => s
	);
-- i[5]
t_prcs_i_5: PROCESS
BEGIN
	i(5) <= '0';
WAIT;
END PROCESS t_prcs_i_5;
-- i[4]
t_prcs_i_4: PROCESS
BEGIN
	i(4) <= '0';
WAIT;
END PROCESS t_prcs_i_4;
-- i[3]
t_prcs_i_3: PROCESS
BEGIN
	i(3) <= '0';
WAIT;
END PROCESS t_prcs_i_3;
-- i[2]
t_prcs_i_2: PROCESS
BEGIN
	i(2) <= '0';
WAIT;
END PROCESS t_prcs_i_2;
-- i[1]
t_prcs_i_1: PROCESS
BEGIN
	i(1) <= '1';
WAIT;
END PROCESS t_prcs_i_1;
-- i[0]
t_prcs_i_0: PROCESS
BEGIN
	i(0) <= '1';
WAIT;
END PROCESS t_prcs_i_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- rd
t_prcs_rd: PROCESS
BEGIN
	rd <= '0';
	WAIT FOR 30000 ps;
	rd <= '1';
	WAIT FOR 20000 ps;
	rd <= '0';
WAIT;
END PROCESS t_prcs_rd;

-- count
t_prcs_count: PROCESS
BEGIN
	count <= '0';
	WAIT FOR 110000 ps;
	count <= '1';
	WAIT FOR 20000 ps;
	count <= '0';
	WAIT FOR 60000 ps;
	count <= '1';
	WAIT FOR 20000 ps;
	count <= '0';
	WAIT FOR 60000 ps;
	count <= '1';
	WAIT FOR 20000 ps;
	count <= '0';
	WAIT FOR 60000 ps;
	count <= '1';
	WAIT FOR 20000 ps;
	count <= '0';
	WAIT FOR 60000 ps;
	count <= '1';
	WAIT FOR 20000 ps;
	count <= '0';
WAIT;
END PROCESS t_prcs_count;

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;
END countDec_arch;
