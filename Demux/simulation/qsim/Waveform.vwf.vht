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
-- Generated on "11/28/2019 21:15:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demuxOP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demuxOP_vhd_vec_tst IS
END demuxOP_vhd_vec_tst;
ARCHITECTURE demuxOP_arch OF demuxOP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL const_ops : STD_LOGIC;
SIGNAL lw_op : STD_LOGIC;
SIGNAL nand_op : STD_LOGIC;
SIGNAL OP : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rc_ops : STD_LOGIC;
SIGNAL sln_ops : STD_LOGIC;
SIGNAL slt_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sw_op : STD_LOGIC;
COMPONENT demuxOP
	PORT (
	const_ops : BUFFER STD_LOGIC;
	lw_op : BUFFER STD_LOGIC;
	nand_op : BUFFER STD_LOGIC;
	OP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	rc_ops : BUFFER STD_LOGIC;
	sln_ops : BUFFER STD_LOGIC;
	slt_op : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	sw_op : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : demuxOP
	PORT MAP (
-- list connections between master ports and signals
	const_ops => const_ops,
	lw_op => lw_op,
	nand_op => nand_op,
	OP => OP,
	rc_ops => rc_ops,
	sln_ops => sln_ops,
	slt_op => slt_op,
	sw_op => sw_op
	);
-- OP[3]
t_prcs_OP_3: PROCESS
BEGIN
	OP(3) <= '0';
	WAIT FOR 320000 ps;
	OP(3) <= '1';
	WAIT FOR 320000 ps;
	OP(3) <= '0';
	WAIT FOR 320000 ps;
	OP(3) <= '1';
WAIT;
END PROCESS t_prcs_OP_3;
-- OP[2]
t_prcs_OP_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		OP(2) <= '0';
		WAIT FOR 160000 ps;
		OP(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	OP(2) <= '0';
WAIT;
END PROCESS t_prcs_OP_2;
-- OP[1]
t_prcs_OP_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		OP(1) <= '0';
		WAIT FOR 80000 ps;
		OP(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	OP(1) <= '0';
WAIT;
END PROCESS t_prcs_OP_1;
-- OP[0]
t_prcs_OP_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		OP(0) <= '0';
		WAIT FOR 40000 ps;
		OP(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	OP(0) <= '0';
WAIT;
END PROCESS t_prcs_OP_0;
END demuxOP_arch;
