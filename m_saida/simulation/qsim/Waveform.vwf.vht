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
-- Generated on "11/29/2019 10:23:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          m_saida
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY m_saida_vhd_vec_tst IS
END m_saida_vhd_vec_tst;
ARCHITECTURE m_saida_arch OF m_saida_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DS0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DS1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DS2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DS3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL endOP_i : STD_LOGIC;
SIGNAL endOP_o : STD_LOGIC;
SIGNAL neg_o : STD_LOGIC;
SIGNAL over_i : STD_LOGIC;
SIGNAL over_o : STD_LOGIC;
SIGNAL result_i : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL zero_o : STD_LOGIC;
COMPONENT m_saida
	PORT (
	DS0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DS1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DS2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DS3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	endOP_i : IN STD_LOGIC;
	endOP_o : OUT STD_LOGIC;
	neg_o : OUT STD_LOGIC;
	over_i : IN STD_LOGIC;
	over_o : OUT STD_LOGIC;
	result_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	zero_o : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : m_saida
	PORT MAP (
-- list connections between master ports and signals
	DS0 => DS0,
	DS1 => DS1,
	DS2 => DS2,
	DS3 => DS3,
	endOP_i => endOP_i,
	endOP_o => endOP_o,
	neg_o => neg_o,
	over_i => over_i,
	over_o => over_o,
	result_i => result_i,
	zero_o => zero_o
	);
-- result_i[15]
t_prcs_result_i_15: PROCESS
BEGIN
	result_i(15) <= '0';
	WAIT FOR 480000 ps;
	result_i(15) <= '1';
	WAIT FOR 480000 ps;
	result_i(15) <= '0';
WAIT;
END PROCESS t_prcs_result_i_15;
-- result_i[14]
t_prcs_result_i_14: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		result_i(14) <= '0';
		WAIT FOR 240000 ps;
		result_i(14) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	result_i(14) <= '0';
WAIT;
END PROCESS t_prcs_result_i_14;
-- result_i[13]
t_prcs_result_i_13: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		result_i(13) <= '0';
		WAIT FOR 120000 ps;
		result_i(13) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	result_i(13) <= '0';
WAIT;
END PROCESS t_prcs_result_i_13;
-- result_i[12]
t_prcs_result_i_12: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		result_i(12) <= '0';
		WAIT FOR 60000 ps;
		result_i(12) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	result_i(12) <= '0';
WAIT;
END PROCESS t_prcs_result_i_12;
-- result_i[11]
t_prcs_result_i_11: PROCESS
BEGIN
	result_i(11) <= '0';
	WAIT FOR 480000 ps;
	result_i(11) <= '1';
	WAIT FOR 480000 ps;
	result_i(11) <= '0';
WAIT;
END PROCESS t_prcs_result_i_11;
-- result_i[10]
t_prcs_result_i_10: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		result_i(10) <= '0';
		WAIT FOR 240000 ps;
		result_i(10) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	result_i(10) <= '0';
WAIT;
END PROCESS t_prcs_result_i_10;
-- result_i[9]
t_prcs_result_i_9: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		result_i(9) <= '0';
		WAIT FOR 120000 ps;
		result_i(9) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	result_i(9) <= '0';
WAIT;
END PROCESS t_prcs_result_i_9;
-- result_i[8]
t_prcs_result_i_8: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		result_i(8) <= '0';
		WAIT FOR 60000 ps;
		result_i(8) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	result_i(8) <= '0';
WAIT;
END PROCESS t_prcs_result_i_8;
-- result_i[7]
t_prcs_result_i_7: PROCESS
BEGIN
	result_i(7) <= '0';
	WAIT FOR 480000 ps;
	result_i(7) <= '1';
	WAIT FOR 480000 ps;
	result_i(7) <= '0';
WAIT;
END PROCESS t_prcs_result_i_7;
-- result_i[6]
t_prcs_result_i_6: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		result_i(6) <= '0';
		WAIT FOR 240000 ps;
		result_i(6) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	result_i(6) <= '0';
WAIT;
END PROCESS t_prcs_result_i_6;
-- result_i[5]
t_prcs_result_i_5: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		result_i(5) <= '0';
		WAIT FOR 120000 ps;
		result_i(5) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	result_i(5) <= '0';
WAIT;
END PROCESS t_prcs_result_i_5;
-- result_i[4]
t_prcs_result_i_4: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		result_i(4) <= '0';
		WAIT FOR 60000 ps;
		result_i(4) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	result_i(4) <= '0';
WAIT;
END PROCESS t_prcs_result_i_4;
-- result_i[3]
t_prcs_result_i_3: PROCESS
BEGIN
	result_i(3) <= '0';
	WAIT FOR 480000 ps;
	result_i(3) <= '1';
	WAIT FOR 480000 ps;
	result_i(3) <= '0';
WAIT;
END PROCESS t_prcs_result_i_3;
-- result_i[2]
t_prcs_result_i_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		result_i(2) <= '0';
		WAIT FOR 240000 ps;
		result_i(2) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	result_i(2) <= '0';
WAIT;
END PROCESS t_prcs_result_i_2;
-- result_i[1]
t_prcs_result_i_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		result_i(1) <= '0';
		WAIT FOR 120000 ps;
		result_i(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	result_i(1) <= '0';
WAIT;
END PROCESS t_prcs_result_i_1;
-- result_i[0]
t_prcs_result_i_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		result_i(0) <= '0';
		WAIT FOR 60000 ps;
		result_i(0) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	result_i(0) <= '0';
WAIT;
END PROCESS t_prcs_result_i_0;

-- over_i
t_prcs_over_i: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		over_i <= '0';
		WAIT FOR 40000 ps;
		over_i <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	over_i <= '0';
WAIT;
END PROCESS t_prcs_over_i;

-- endOP_i
t_prcs_endOP_i: PROCESS
BEGIN
	endOP_i <= '1';
	WAIT FOR 40000 ps;
	endOP_i <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 11
	LOOP
		endOP_i <= '1';
		WAIT FOR 40000 ps;
		endOP_i <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	endOP_i <= '1';
WAIT;
END PROCESS t_prcs_endOP_i;
END m_saida_arch;
