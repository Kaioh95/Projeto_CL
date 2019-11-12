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
-- Generated on "11/11/2019 20:50:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hex_7seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hex_7seg_vhd_vec_tst IS
END hex_7seg_vhd_vec_tst;
ARCHITECTURE hex_7seg_arch OF hex_7seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL entrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL F : STD_LOGIC;
SIGNAL G : STD_LOGIC;
COMPONENT hex_7seg
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	C : OUT STD_LOGIC;
	D : OUT STD_LOGIC;
	E : OUT STD_LOGIC;
	entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	F : OUT STD_LOGIC;
	G : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : hex_7seg
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	E => E,
	entrada => entrada,
	F => F,
	G => G
	);
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '0';
	WAIT FOR 320000 ps;
	entrada(3) <= '1';
	WAIT FOR 320000 ps;
	entrada(3) <= '0';
	WAIT FOR 320000 ps;
	entrada(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		entrada(2) <= '0';
		WAIT FOR 160000 ps;
		entrada(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		entrada(1) <= '0';
		WAIT FOR 80000 ps;
		entrada(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		entrada(0) <= '0';
		WAIT FOR 40000 ps;
		entrada(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	entrada(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_0;
END hex_7seg_arch;
