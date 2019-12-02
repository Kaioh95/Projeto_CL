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
-- Generated on "12/01/2019 21:25:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top_level
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_level_vhd_vec_tst IS
END top_level_vhd_vec_tst;
ARCHITECTURE top_level_arch OF top_level_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL led_endOP : STD_LOGIC;
SIGNAL led_neg : STD_LOGIC;
SIGNAL led_over : STD_LOGIC;
SIGNAL led_zero : STD_LOGIC;
SIGNAL operate : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL Rhex0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Rhex1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Rhex2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Rhex3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
COMPONENT top_level
	PORT (
	clock : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	led_endOP : BUFFER STD_LOGIC;
	led_neg : BUFFER STD_LOGIC;
	led_over : BUFFER STD_LOGIC;
	led_zero : BUFFER STD_LOGIC;
	operate : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	Rhex0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Rhex1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Rhex2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Rhex3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	valid : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : top_level
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	input => input,
	led_endOP => led_endOP,
	led_neg => led_neg,
	led_over => led_over,
	led_zero => led_zero,
	operate => operate,
	reset => reset,
	Rhex0 => Rhex0,
	Rhex1 => Rhex1,
	Rhex2 => Rhex2,
	Rhex3 => Rhex3,
	valid => valid
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
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
	WAIT FOR 290000 ps;
	input(14) <= '1';
	WAIT FOR 370000 ps;
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
	WAIT FOR 660000 ps;
	input(12) <= '1';
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
	WAIT FOR 290000 ps;
	input(6) <= '1';
	WAIT FOR 180000 ps;
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
	input(1) <= '1';
	WAIT FOR 150000 ps;
	input(1) <= '0';
	WAIT FOR 10000 ps;
	input(1) <= '1';
	WAIT FOR 130000 ps;
	input(1) <= '0';
	WAIT FOR 370000 ps;
	input(1) <= '1';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
	WAIT FOR 150000 ps;
	input(0) <= '1';
	WAIT FOR 10000 ps;
	input(0) <= '0';
WAIT;
END PROCESS t_prcs_input_0;

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
	WAIT FOR 70000 ps;
	valid <= '1';
	WAIT FOR 10000 ps;
	valid <= '0';
	WAIT FOR 170000 ps;
	valid <= '1';
	WAIT FOR 10000 ps;
	valid <= '0';
WAIT;
END PROCESS t_prcs_valid;

-- operate
t_prcs_operate: PROCESS
BEGIN
	operate <= '0';
	WAIT FOR 310000 ps;
	operate <= '1';
	WAIT FOR 10000 ps;
	operate <= '0';
	WAIT FOR 90000 ps;
	operate <= '1';
	WAIT FOR 10000 ps;
	operate <= '0';
	WAIT FOR 60000 ps;
	operate <= '1';
	WAIT FOR 10000 ps;
	operate <= '0';
	WAIT FOR 90000 ps;
	operate <= '1';
	WAIT FOR 10000 ps;
	operate <= '0';
	WAIT FOR 130000 ps;
	operate <= '1';
	WAIT FOR 10000 ps;
	operate <= '0';
WAIT;
END PROCESS t_prcs_operate;
END top_level_arch;
