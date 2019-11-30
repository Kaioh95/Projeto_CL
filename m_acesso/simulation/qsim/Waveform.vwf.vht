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
-- Generated on "11/29/2019 20:19:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          m_acesso
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY m_acesso_vhd_vec_tst IS
END m_acesso_vhd_vec_tst;
ARCHITECTURE m_acesso_arch OF m_acesso_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_i : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL addr_o : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data_i : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data_o : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL r_data_i : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL r_data_o : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL wren_i : STD_LOGIC;
SIGNAL wren_o : STD_LOGIC;
COMPONENT m_acesso
	PORT (
	addr_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	addr_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	r_data_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	r_data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	wren_i : IN STD_LOGIC;
	wren_o : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : m_acesso
	PORT MAP (
-- list connections between master ports and signals
	addr_i => addr_i,
	addr_o => addr_o,
	data_i => data_i,
	data_o => data_o,
	r_data_i => r_data_i,
	r_data_o => r_data_o,
	wren_i => wren_i,
	wren_o => wren_o
	);
-- r_data_i[15]
t_prcs_r_data_i_15: PROCESS
BEGIN
	r_data_i(15) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(15) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(15) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(15) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_15;
-- r_data_i[14]
t_prcs_r_data_i_14: PROCESS
BEGIN
	r_data_i(14) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(14) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(14) <= '1';
	WAIT FOR 360000 ps;
	r_data_i(14) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(14) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_14;
-- r_data_i[13]
t_prcs_r_data_i_13: PROCESS
BEGIN
	r_data_i(13) <= '1';
	WAIT FOR 600000 ps;
	r_data_i(13) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(13) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(13) <= '0';
WAIT;
END PROCESS t_prcs_r_data_i_13;
-- r_data_i[12]
t_prcs_r_data_i_12: PROCESS
BEGIN
	r_data_i(12) <= '1';
	WAIT FOR 360000 ps;
	r_data_i(12) <= '0';
	WAIT FOR 360000 ps;
	r_data_i(12) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(12) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(12) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_12;
-- r_data_i[11]
t_prcs_r_data_i_11: PROCESS
BEGIN
	r_data_i(11) <= '0';
	WAIT FOR 360000 ps;
	r_data_i(11) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(11) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(11) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_11;
-- r_data_i[10]
t_prcs_r_data_i_10: PROCESS
BEGIN
	r_data_i(10) <= '1';
	WAIT FOR 360000 ps;
	r_data_i(10) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(10) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(10) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(10) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_10;
-- r_data_i[9]
t_prcs_r_data_i_9: PROCESS
BEGIN
	r_data_i(9) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(9) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(9) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(9) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(9) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(9) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_9;
-- r_data_i[8]
t_prcs_r_data_i_8: PROCESS
BEGIN
	r_data_i(8) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(8) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(8) <= '1';
	WAIT FOR 360000 ps;
	r_data_i(8) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(8) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(8) <= '0';
WAIT;
END PROCESS t_prcs_r_data_i_8;
-- r_data_i[7]
t_prcs_r_data_i_7: PROCESS
BEGIN
	r_data_i(7) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(7) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(7) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(7) <= '1';
	WAIT FOR 360000 ps;
	r_data_i(7) <= '0';
WAIT;
END PROCESS t_prcs_r_data_i_7;
-- r_data_i[6]
t_prcs_r_data_i_6: PROCESS
BEGIN
	r_data_i(6) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(6) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(6) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(6) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_6;
-- r_data_i[5]
t_prcs_r_data_i_5: PROCESS
BEGIN
	r_data_i(5) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(5) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(5) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(5) <= '1';
	WAIT FOR 480000 ps;
	r_data_i(5) <= '0';
WAIT;
END PROCESS t_prcs_r_data_i_5;
-- r_data_i[4]
t_prcs_r_data_i_4: PROCESS
BEGIN
	r_data_i(4) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(4) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(4) <= '0';
	WAIT FOR 720000 ps;
	r_data_i(4) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_4;
-- r_data_i[3]
t_prcs_r_data_i_3: PROCESS
BEGIN
	r_data_i(3) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(3) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(3) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(3) <= '0';
	WAIT FOR 360000 ps;
	r_data_i(3) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_3;
-- r_data_i[2]
t_prcs_r_data_i_2: PROCESS
BEGIN
	r_data_i(2) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(2) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(2) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(2) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(2) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(2) <= '0';
WAIT;
END PROCESS t_prcs_r_data_i_2;
-- r_data_i[1]
t_prcs_r_data_i_1: PROCESS
BEGIN
	r_data_i(1) <= '1';
	WAIT FOR 120000 ps;
	r_data_i(1) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(1) <= '1';
	WAIT FOR 360000 ps;
	r_data_i(1) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(1) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_1;
-- r_data_i[0]
t_prcs_r_data_i_0: PROCESS
BEGIN
	r_data_i(0) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(0) <= '0';
	WAIT FOR 240000 ps;
	r_data_i(0) <= '1';
	WAIT FOR 240000 ps;
	r_data_i(0) <= '0';
	WAIT FOR 120000 ps;
	r_data_i(0) <= '1';
WAIT;
END PROCESS t_prcs_r_data_i_0;
-- data_i[15]
t_prcs_data_i_15: PROCESS
BEGIN
	data_i(15) <= '0';
	WAIT FOR 120000 ps;
	data_i(15) <= '1';
	WAIT FOR 120000 ps;
	data_i(15) <= '0';
	WAIT FOR 240000 ps;
	data_i(15) <= '1';
	WAIT FOR 360000 ps;
	data_i(15) <= '0';
	WAIT FOR 120000 ps;
	data_i(15) <= '1';
WAIT;
END PROCESS t_prcs_data_i_15;
-- data_i[14]
t_prcs_data_i_14: PROCESS
BEGIN
	data_i(14) <= '0';
	WAIT FOR 120000 ps;
	data_i(14) <= '1';
	WAIT FOR 240000 ps;
	data_i(14) <= '0';
	WAIT FOR 120000 ps;
	data_i(14) <= '1';
	WAIT FOR 120000 ps;
	data_i(14) <= '0';
	WAIT FOR 240000 ps;
	data_i(14) <= '1';
WAIT;
END PROCESS t_prcs_data_i_14;
-- data_i[13]
t_prcs_data_i_13: PROCESS
BEGIN
	data_i(13) <= '0';
	WAIT FOR 240000 ps;
	data_i(13) <= '1';
	WAIT FOR 120000 ps;
	data_i(13) <= '0';
	WAIT FOR 240000 ps;
	data_i(13) <= '1';
	WAIT FOR 360000 ps;
	data_i(13) <= '0';
WAIT;
END PROCESS t_prcs_data_i_13;
-- data_i[12]
t_prcs_data_i_12: PROCESS
BEGIN
	data_i(12) <= '1';
	WAIT FOR 240000 ps;
	data_i(12) <= '0';
	WAIT FOR 120000 ps;
	data_i(12) <= '1';
	WAIT FOR 240000 ps;
	data_i(12) <= '0';
WAIT;
END PROCESS t_prcs_data_i_12;
-- data_i[11]
t_prcs_data_i_11: PROCESS
BEGIN
	data_i(11) <= '1';
	WAIT FOR 240000 ps;
	data_i(11) <= '0';
	WAIT FOR 120000 ps;
	data_i(11) <= '1';
	WAIT FOR 360000 ps;
	data_i(11) <= '0';
	WAIT FOR 120000 ps;
	data_i(11) <= '1';
	WAIT FOR 120000 ps;
	data_i(11) <= '0';
WAIT;
END PROCESS t_prcs_data_i_11;
-- data_i[10]
t_prcs_data_i_10: PROCESS
BEGIN
	data_i(10) <= '1';
	WAIT FOR 120000 ps;
	data_i(10) <= '0';
	WAIT FOR 480000 ps;
	data_i(10) <= '1';
	WAIT FOR 120000 ps;
	data_i(10) <= '0';
WAIT;
END PROCESS t_prcs_data_i_10;
-- data_i[9]
t_prcs_data_i_9: PROCESS
BEGIN
	data_i(9) <= '1';
	WAIT FOR 600000 ps;
	data_i(9) <= '0';
WAIT;
END PROCESS t_prcs_data_i_9;
-- data_i[8]
t_prcs_data_i_8: PROCESS
BEGIN
	data_i(8) <= '0';
	WAIT FOR 120000 ps;
	data_i(8) <= '1';
	WAIT FOR 720000 ps;
	data_i(8) <= '0';
WAIT;
END PROCESS t_prcs_data_i_8;
-- data_i[7]
t_prcs_data_i_7: PROCESS
BEGIN
	data_i(7) <= '1';
	WAIT FOR 120000 ps;
	data_i(7) <= '0';
	WAIT FOR 120000 ps;
	data_i(7) <= '1';
	WAIT FOR 240000 ps;
	data_i(7) <= '0';
	WAIT FOR 240000 ps;
	data_i(7) <= '1';
WAIT;
END PROCESS t_prcs_data_i_7;
-- data_i[6]
t_prcs_data_i_6: PROCESS
BEGIN
	data_i(6) <= '1';
	WAIT FOR 120000 ps;
	data_i(6) <= '0';
	WAIT FOR 240000 ps;
	data_i(6) <= '1';
	WAIT FOR 120000 ps;
	data_i(6) <= '0';
	WAIT FOR 480000 ps;
	data_i(6) <= '1';
WAIT;
END PROCESS t_prcs_data_i_6;
-- data_i[5]
t_prcs_data_i_5: PROCESS
BEGIN
	data_i(5) <= '0';
	WAIT FOR 480000 ps;
	data_i(5) <= '1';
	WAIT FOR 120000 ps;
	data_i(5) <= '0';
	WAIT FOR 240000 ps;
	data_i(5) <= '1';
	WAIT FOR 120000 ps;
	data_i(5) <= '0';
WAIT;
END PROCESS t_prcs_data_i_5;
-- data_i[4]
t_prcs_data_i_4: PROCESS
BEGIN
	data_i(4) <= '1';
	WAIT FOR 240000 ps;
	data_i(4) <= '0';
	WAIT FOR 120000 ps;
	data_i(4) <= '1';
	WAIT FOR 120000 ps;
	data_i(4) <= '0';
	WAIT FOR 120000 ps;
	data_i(4) <= '1';
WAIT;
END PROCESS t_prcs_data_i_4;
-- data_i[3]
t_prcs_data_i_3: PROCESS
BEGIN
	data_i(3) <= '1';
	WAIT FOR 360000 ps;
	data_i(3) <= '0';
	WAIT FOR 360000 ps;
	data_i(3) <= '1';
WAIT;
END PROCESS t_prcs_data_i_3;
-- data_i[2]
t_prcs_data_i_2: PROCESS
BEGIN
	data_i(2) <= '0';
	WAIT FOR 120000 ps;
	data_i(2) <= '1';
	WAIT FOR 240000 ps;
	data_i(2) <= '0';
	WAIT FOR 120000 ps;
	data_i(2) <= '1';
	WAIT FOR 480000 ps;
	data_i(2) <= '0';
WAIT;
END PROCESS t_prcs_data_i_2;
-- data_i[1]
t_prcs_data_i_1: PROCESS
BEGIN
	data_i(1) <= '0';
	WAIT FOR 120000 ps;
	data_i(1) <= '1';
	WAIT FOR 240000 ps;
	data_i(1) <= '0';
	WAIT FOR 120000 ps;
	data_i(1) <= '1';
	WAIT FOR 120000 ps;
	data_i(1) <= '0';
WAIT;
END PROCESS t_prcs_data_i_1;
-- data_i[0]
t_prcs_data_i_0: PROCESS
BEGIN
	data_i(0) <= '1';
	WAIT FOR 240000 ps;
	data_i(0) <= '0';
	WAIT FOR 120000 ps;
	data_i(0) <= '1';
	WAIT FOR 120000 ps;
	data_i(0) <= '0';
	WAIT FOR 480000 ps;
	data_i(0) <= '1';
WAIT;
END PROCESS t_prcs_data_i_0;
-- addr_i[15]
t_prcs_addr_i_15: PROCESS
BEGIN
	addr_i(15) <= '0';
	WAIT FOR 120000 ps;
	addr_i(15) <= '1';
	WAIT FOR 120000 ps;
	addr_i(15) <= '0';
	WAIT FOR 120000 ps;
	addr_i(15) <= '1';
	WAIT FOR 240000 ps;
	addr_i(15) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_15;
-- addr_i[14]
t_prcs_addr_i_14: PROCESS
BEGIN
	addr_i(14) <= '0';
	WAIT FOR 120000 ps;
	addr_i(14) <= '1';
	WAIT FOR 360000 ps;
	addr_i(14) <= '0';
	WAIT FOR 480000 ps;
	addr_i(14) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_14;
-- addr_i[13]
t_prcs_addr_i_13: PROCESS
BEGIN
	addr_i(13) <= '1';
	WAIT FOR 240000 ps;
	addr_i(13) <= '0';
	WAIT FOR 240000 ps;
	addr_i(13) <= '1';
	WAIT FOR 240000 ps;
	addr_i(13) <= '0';
	WAIT FOR 240000 ps;
	addr_i(13) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_13;
-- addr_i[12]
t_prcs_addr_i_12: PROCESS
BEGIN
	addr_i(12) <= '1';
	WAIT FOR 240000 ps;
	addr_i(12) <= '0';
	WAIT FOR 360000 ps;
	addr_i(12) <= '1';
	WAIT FOR 120000 ps;
	addr_i(12) <= '0';
	WAIT FOR 120000 ps;
	addr_i(12) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_12;
-- addr_i[11]
t_prcs_addr_i_11: PROCESS
BEGIN
	addr_i(11) <= '0';
	WAIT FOR 120000 ps;
	addr_i(11) <= '1';
	WAIT FOR 120000 ps;
	addr_i(11) <= '0';
	WAIT FOR 120000 ps;
	addr_i(11) <= '1';
	WAIT FOR 120000 ps;
	addr_i(11) <= '0';
	WAIT FOR 360000 ps;
	addr_i(11) <= '1';
	WAIT FOR 120000 ps;
	addr_i(11) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_11;
-- addr_i[10]
t_prcs_addr_i_10: PROCESS
BEGIN
	addr_i(10) <= '0';
	WAIT FOR 120000 ps;
	addr_i(10) <= '1';
	WAIT FOR 360000 ps;
	addr_i(10) <= '0';
	WAIT FOR 120000 ps;
	addr_i(10) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_10;
-- addr_i[9]
t_prcs_addr_i_9: PROCESS
BEGIN
	addr_i(9) <= '1';
	WAIT FOR 120000 ps;
	addr_i(9) <= '0';
	WAIT FOR 240000 ps;
	addr_i(9) <= '1';
	WAIT FOR 240000 ps;
	addr_i(9) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_9;
-- addr_i[8]
t_prcs_addr_i_8: PROCESS
BEGIN
	addr_i(8) <= '0';
	WAIT FOR 120000 ps;
	addr_i(8) <= '1';
	WAIT FOR 360000 ps;
	addr_i(8) <= '0';
	WAIT FOR 120000 ps;
	addr_i(8) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_8;
-- addr_i[7]
t_prcs_addr_i_7: PROCESS
BEGIN
	addr_i(7) <= '0';
	WAIT FOR 120000 ps;
	addr_i(7) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_7;
-- addr_i[6]
t_prcs_addr_i_6: PROCESS
BEGIN
	addr_i(6) <= '1';
	WAIT FOR 240000 ps;
	addr_i(6) <= '0';
	WAIT FOR 120000 ps;
	addr_i(6) <= '1';
	WAIT FOR 120000 ps;
	addr_i(6) <= '0';
	WAIT FOR 240000 ps;
	addr_i(6) <= '1';
	WAIT FOR 120000 ps;
	addr_i(6) <= '0';
	WAIT FOR 120000 ps;
	addr_i(6) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_6;
-- addr_i[5]
t_prcs_addr_i_5: PROCESS
BEGIN
	addr_i(5) <= '1';
	WAIT FOR 120000 ps;
	addr_i(5) <= '0';
	WAIT FOR 480000 ps;
	addr_i(5) <= '1';
	WAIT FOR 120000 ps;
	addr_i(5) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_5;
-- addr_i[4]
t_prcs_addr_i_4: PROCESS
BEGIN
	addr_i(4) <= '1';
	WAIT FOR 120000 ps;
	addr_i(4) <= '0';
	WAIT FOR 360000 ps;
	addr_i(4) <= '1';
	WAIT FOR 120000 ps;
	addr_i(4) <= '0';
	WAIT FOR 240000 ps;
	addr_i(4) <= '1';
	WAIT FOR 120000 ps;
	addr_i(4) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_4;
-- addr_i[3]
t_prcs_addr_i_3: PROCESS
BEGIN
	addr_i(3) <= '1';
	WAIT FOR 360000 ps;
	addr_i(3) <= '0';
	WAIT FOR 120000 ps;
	addr_i(3) <= '1';
	WAIT FOR 120000 ps;
	addr_i(3) <= '0';
	WAIT FOR 120000 ps;
	addr_i(3) <= '1';
	WAIT FOR 120000 ps;
	addr_i(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_3;
-- addr_i[2]
t_prcs_addr_i_2: PROCESS
BEGIN
	addr_i(2) <= '1';
	WAIT FOR 120000 ps;
	addr_i(2) <= '0';
	WAIT FOR 240000 ps;
	addr_i(2) <= '1';
	WAIT FOR 240000 ps;
	addr_i(2) <= '0';
	WAIT FOR 240000 ps;
	addr_i(2) <= '1';
	WAIT FOR 120000 ps;
	addr_i(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_2;
-- addr_i[1]
t_prcs_addr_i_1: PROCESS
BEGIN
	addr_i(1) <= '1';
	WAIT FOR 120000 ps;
	addr_i(1) <= '0';
	WAIT FOR 240000 ps;
	addr_i(1) <= '1';
	WAIT FOR 120000 ps;
	addr_i(1) <= '0';
	WAIT FOR 120000 ps;
	addr_i(1) <= '1';
	WAIT FOR 120000 ps;
	addr_i(1) <= '0';
	WAIT FOR 240000 ps;
	addr_i(1) <= '1';
WAIT;
END PROCESS t_prcs_addr_i_1;
-- addr_i[0]
t_prcs_addr_i_0: PROCESS
BEGIN
	addr_i(0) <= '0';
	WAIT FOR 600000 ps;
	addr_i(0) <= '1';
	WAIT FOR 120000 ps;
	addr_i(0) <= '0';
	WAIT FOR 120000 ps;
	addr_i(0) <= '1';
	WAIT FOR 120000 ps;
	addr_i(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_i_0;

-- wren_i
t_prcs_wren_i: PROCESS
BEGIN
LOOP
	wren_i <= '0';
	WAIT FOR 20000 ps;
	wren_i <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_wren_i;
END m_acesso_arch;
