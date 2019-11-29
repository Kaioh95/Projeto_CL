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
-- Generated on "11/28/2019 22:40:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          m_entrada
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY m_entrada_vhd_vec_tst IS
END m_entrada_vhd_vec_tst;
ARCHITECTURE m_entrada_arch OF m_entrada_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL allbits : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL operate : STD_LOGIC;
SIGNAL operate_o : STD_LOGIC;
SIGNAL RA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RB : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL reset_o : STD_LOGIC;
SIGNAL valid : STD_LOGIC;
SIGNAL valid_o : STD_LOGIC;
COMPONENT m_entrada
	PORT (
	allbits : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	opcode : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	operate : IN STD_LOGIC;
	operate_o : OUT STD_LOGIC;
	RA : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RB : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RC : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	reset_o : OUT STD_LOGIC;
	valid : IN STD_LOGIC;
	valid_o : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : m_entrada
	PORT MAP (
-- list connections between master ports and signals
	allbits => allbits,
	input => input,
	opcode => opcode,
	operate => operate,
	operate_o => operate_o,
	RA => RA,
	RB => RB,
	RC => RC,
	reset => reset,
	reset_o => reset_o,
	valid => valid,
	valid_o => valid_o
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
	WAIT FOR 480000 ps;
	input(14) <= '1';
	WAIT FOR 490000 ps;
	input(14) <= '0';
WAIT;
END PROCESS t_prcs_input_14;
-- input[13]
t_prcs_input_13: PROCESS
BEGIN
	input(13) <= '0';
	WAIT FOR 240000 ps;
	input(13) <= '1';
	WAIT FOR 240000 ps;
	input(13) <= '0';
	WAIT FOR 240000 ps;
	input(13) <= '1';
	WAIT FOR 250000 ps;
	input(13) <= '0';
WAIT;
END PROCESS t_prcs_input_13;
-- input[12]
t_prcs_input_12: PROCESS
BEGIN
	input(12) <= '0';
	WAIT FOR 120000 ps;
	input(12) <= '1';
	WAIT FOR 120000 ps;
	input(12) <= '0';
	WAIT FOR 120000 ps;
	input(12) <= '1';
	WAIT FOR 120000 ps;
	input(12) <= '0';
	WAIT FOR 120000 ps;
	input(12) <= '1';
	WAIT FOR 120000 ps;
	input(12) <= '0';
	WAIT FOR 120000 ps;
	input(12) <= '1';
	WAIT FOR 130000 ps;
	input(12) <= '0';
WAIT;
END PROCESS t_prcs_input_12;
-- input[11]
t_prcs_input_11: PROCESS
BEGIN
	input(11) <= '0';
	WAIT FOR 480000 ps;
	input(11) <= '1';
	WAIT FOR 490000 ps;
	input(11) <= '0';
WAIT;
END PROCESS t_prcs_input_11;
-- input[10]
t_prcs_input_10: PROCESS
BEGIN
	input(10) <= '0';
	WAIT FOR 240000 ps;
	input(10) <= '1';
	WAIT FOR 240000 ps;
	input(10) <= '0';
	WAIT FOR 240000 ps;
	input(10) <= '1';
	WAIT FOR 250000 ps;
	input(10) <= '0';
WAIT;
END PROCESS t_prcs_input_10;
-- input[9]
t_prcs_input_9: PROCESS
BEGIN
	input(9) <= '0';
	WAIT FOR 120000 ps;
	input(9) <= '1';
	WAIT FOR 120000 ps;
	input(9) <= '0';
	WAIT FOR 120000 ps;
	input(9) <= '1';
	WAIT FOR 120000 ps;
	input(9) <= '0';
	WAIT FOR 120000 ps;
	input(9) <= '1';
	WAIT FOR 120000 ps;
	input(9) <= '0';
	WAIT FOR 120000 ps;
	input(9) <= '1';
	WAIT FOR 130000 ps;
	input(9) <= '0';
WAIT;
END PROCESS t_prcs_input_9;
-- input[8]
t_prcs_input_8: PROCESS
BEGIN
	input(8) <= '1';
	WAIT FOR 480000 ps;
	input(8) <= '0';
WAIT;
END PROCESS t_prcs_input_8;
-- input[7]
t_prcs_input_7: PROCESS
BEGIN
	input(7) <= '1';
	WAIT FOR 240000 ps;
	input(7) <= '0';
	WAIT FOR 240000 ps;
	input(7) <= '1';
	WAIT FOR 240000 ps;
	input(7) <= '0';
WAIT;
END PROCESS t_prcs_input_7;
-- input[6]
t_prcs_input_6: PROCESS
BEGIN
	input(6) <= '1';
	WAIT FOR 120000 ps;
	input(6) <= '0';
	WAIT FOR 120000 ps;
	input(6) <= '1';
	WAIT FOR 120000 ps;
	input(6) <= '0';
	WAIT FOR 120000 ps;
	input(6) <= '1';
	WAIT FOR 120000 ps;
	input(6) <= '0';
	WAIT FOR 120000 ps;
	input(6) <= '1';
	WAIT FOR 120000 ps;
	input(6) <= '0';
WAIT;
END PROCESS t_prcs_input_6;
-- input[5]
t_prcs_input_5: PROCESS
BEGIN
	input(5) <= '0';
	WAIT FOR 480000 ps;
	input(5) <= '1';
	WAIT FOR 490000 ps;
	input(5) <= '0';
WAIT;
END PROCESS t_prcs_input_5;
-- input[4]
t_prcs_input_4: PROCESS
BEGIN
	input(4) <= '0';
	WAIT FOR 240000 ps;
	input(4) <= '1';
	WAIT FOR 240000 ps;
	input(4) <= '0';
	WAIT FOR 240000 ps;
	input(4) <= '1';
	WAIT FOR 250000 ps;
	input(4) <= '0';
WAIT;
END PROCESS t_prcs_input_4;
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	input(3) <= '0';
	WAIT FOR 120000 ps;
	input(3) <= '1';
	WAIT FOR 120000 ps;
	input(3) <= '0';
	WAIT FOR 120000 ps;
	input(3) <= '1';
	WAIT FOR 120000 ps;
	input(3) <= '0';
	WAIT FOR 120000 ps;
	input(3) <= '1';
	WAIT FOR 120000 ps;
	input(3) <= '0';
	WAIT FOR 120000 ps;
	input(3) <= '1';
	WAIT FOR 130000 ps;
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
	input(0) <= '1';
WAIT;
END PROCESS t_prcs_input_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		reset <= '0';
		WAIT FOR 160000 ps;
		reset <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- valid
t_prcs_valid: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		valid <= '0';
		WAIT FOR 80000 ps;
		valid <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	valid <= '0';
WAIT;
END PROCESS t_prcs_valid;

-- operate
t_prcs_operate: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		operate <= '0';
		WAIT FOR 40000 ps;
		operate <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	operate <= '0';
WAIT;
END PROCESS t_prcs_operate;
END m_entrada_arch;
