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
-- Generated on "11/12/2019 19:07:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA_Tester
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_Tester_vhd_vec_tst IS
END ULA_Tester_vhd_vec_tst;
ARCHITECTURE ULA_Tester_arch OF ULA_Tester_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DA0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DA1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DA2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DA3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DB0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DB1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DB2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DB3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DS0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DS1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DS2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DS3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL M : STD_LOGIC;
SIGNAL Overflow : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
COMPONENT ULA_Tester
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DA0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DA1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DA2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DA3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DB0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DB1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DB2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DB3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DS0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DS1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DS2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DS3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	M : IN STD_LOGIC;
	Overflow : OUT STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ULA_Tester
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	DA0 => DA0,
	DA1 => DA1,
	DA2 => DA2,
	DA3 => DA3,
	DB0 => DB0,
	DB1 => DB1,
	DB2 => DB2,
	DB3 => DB3,
	DS0 => DS0,
	DS1 => DS1,
	DS2 => DS2,
	DS3 => DS3,
	M => M,
	Overflow => Overflow,
	S0 => S0,
	S1 => S1
	);
-- A[15]
t_prcs_A_15: PROCESS
BEGIN
	A(15) <= '0';
WAIT;
END PROCESS t_prcs_A_15;
-- A[14]
t_prcs_A_14: PROCESS
BEGIN
	A(14) <= '0';
	WAIT FOR 120000 ps;
	A(14) <= '1';
	WAIT FOR 120000 ps;
	A(14) <= '0';
WAIT;
END PROCESS t_prcs_A_14;
-- A[13]
t_prcs_A_13: PROCESS
BEGIN
	A(13) <= '0';
WAIT;
END PROCESS t_prcs_A_13;
-- A[12]
t_prcs_A_12: PROCESS
BEGIN
	A(12) <= '0';
	WAIT FOR 120000 ps;
	A(12) <= '1';
	WAIT FOR 120000 ps;
	A(12) <= '0';
WAIT;
END PROCESS t_prcs_A_12;
-- A[11]
t_prcs_A_11: PROCESS
BEGIN
	A(11) <= '0';
WAIT;
END PROCESS t_prcs_A_11;
-- A[10]
t_prcs_A_10: PROCESS
BEGIN
	A(10) <= '0';
	WAIT FOR 120000 ps;
	A(10) <= '1';
	WAIT FOR 120000 ps;
	A(10) <= '0';
WAIT;
END PROCESS t_prcs_A_10;
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	A(9) <= '0';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	A(8) <= '0';
	WAIT FOR 120000 ps;
	A(8) <= '1';
	WAIT FOR 120000 ps;
	A(8) <= '0';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
	WAIT FOR 120000 ps;
	A(6) <= '1';
	WAIT FOR 120000 ps;
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
	WAIT FOR 120000 ps;
	A(4) <= '1';
	WAIT FOR 120000 ps;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '1';
	WAIT FOR 120000 ps;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
	WAIT FOR 120000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[15]
t_prcs_B_15: PROCESS
BEGIN
	B(15) <= '0';
WAIT;
END PROCESS t_prcs_B_15;
-- B[14]
t_prcs_B_14: PROCESS
BEGIN
	B(14) <= '0';
	WAIT FOR 120000 ps;
	B(14) <= '1';
	WAIT FOR 120000 ps;
	B(14) <= '0';
WAIT;
END PROCESS t_prcs_B_14;
-- B[13]
t_prcs_B_13: PROCESS
BEGIN
	B(13) <= '0';
WAIT;
END PROCESS t_prcs_B_13;
-- B[12]
t_prcs_B_12: PROCESS
BEGIN
	B(12) <= '0';
	WAIT FOR 120000 ps;
	B(12) <= '1';
	WAIT FOR 120000 ps;
	B(12) <= '0';
WAIT;
END PROCESS t_prcs_B_12;
-- B[11]
t_prcs_B_11: PROCESS
BEGIN
	B(11) <= '0';
WAIT;
END PROCESS t_prcs_B_11;
-- B[10]
t_prcs_B_10: PROCESS
BEGIN
	B(10) <= '0';
	WAIT FOR 120000 ps;
	B(10) <= '1';
	WAIT FOR 120000 ps;
	B(10) <= '0';
WAIT;
END PROCESS t_prcs_B_10;
-- B[9]
t_prcs_B_9: PROCESS
BEGIN
	B(9) <= '0';
WAIT;
END PROCESS t_prcs_B_9;
-- B[8]
t_prcs_B_8: PROCESS
BEGIN
	B(8) <= '0';
	WAIT FOR 120000 ps;
	B(8) <= '1';
	WAIT FOR 120000 ps;
	B(8) <= '0';
WAIT;
END PROCESS t_prcs_B_8;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
	WAIT FOR 120000 ps;
	B(6) <= '1';
	WAIT FOR 120000 ps;
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
	WAIT FOR 120000 ps;
	B(4) <= '1';
	WAIT FOR 120000 ps;
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '1';
	WAIT FOR 120000 ps;
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
	WAIT FOR 120000 ps;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;

-- M
t_prcs_M: PROCESS
BEGIN
	M <= '0';
	WAIT FOR 240000 ps;
	M <= '1';
WAIT;
END PROCESS t_prcs_M;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
	WAIT FOR 240000 ps;
	S1 <= '1';
WAIT;
END PROCESS t_prcs_S1;

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '0';
	WAIT FOR 240000 ps;
	S0 <= '1';
WAIT;
END PROCESS t_prcs_S0;
END ULA_Tester_arch;
