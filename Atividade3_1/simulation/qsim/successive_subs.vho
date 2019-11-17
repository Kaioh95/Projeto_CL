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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/17/2019 14:50:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	successive_subs IS
    PORT (
	clk : IN std_logic;
	bt : IN std_logic;
	input : IN std_logic_vector(15 DOWNTO 0);
	Di0 : OUT std_logic_vector(6 DOWNTO 0);
	Di1 : OUT std_logic_vector(6 DOWNTO 0);
	Di2 : OUT std_logic_vector(6 DOWNTO 0);
	Di3 : OUT std_logic_vector(6 DOWNTO 0);
	Dq0 : OUT std_logic_vector(6 DOWNTO 0);
	Dq1 : OUT std_logic_vector(6 DOWNTO 0);
	Dq2 : OUT std_logic_vector(6 DOWNTO 0);
	Dq3 : OUT std_logic_vector(6 DOWNTO 0);
	Dr0 : OUT std_logic_vector(6 DOWNTO 0);
	Dr1 : OUT std_logic_vector(6 DOWNTO 0);
	Dr2 : OUT std_logic_vector(6 DOWNTO 0);
	Dr3 : OUT std_logic_vector(6 DOWNTO 0);
	quotient : OUT std_logic_vector(15 DOWNTO 0);
	rest : OUT std_logic_vector(15 DOWNTO 0)
	);
END successive_subs;

-- Design Ports Information
-- Di0[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di0[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di0[2]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di0[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di0[4]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di0[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di0[6]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di1[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di1[1]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di1[2]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di1[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di1[4]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di1[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di1[6]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di2[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di2[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di2[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di2[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di2[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di2[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di2[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di3[0]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di3[1]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di3[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di3[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di3[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di3[5]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di3[6]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq0[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq0[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq0[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq0[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq0[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq0[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq0[6]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq1[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq1[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq1[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq1[3]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq1[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq1[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq1[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq2[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq2[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq2[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq2[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq2[4]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq2[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq2[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq3[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq3[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq3[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq3[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq3[4]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq3[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dq3[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr0[0]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr0[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr0[2]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr0[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr0[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr0[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr0[6]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr1[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr1[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr1[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr1[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr1[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr1[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr1[6]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr2[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr2[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr2[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr2[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr2[4]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr2[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr2[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr3[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr3[1]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr3[2]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr3[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr3[4]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr3[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dr3[6]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[9]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[10]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[12]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[13]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[14]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[15]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[7]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[9]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[10]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[11]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[12]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[13]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[14]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF successive_subs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bt : std_logic;
SIGNAL ww_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Di0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Di1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Di2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Di3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dq0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dq1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dq2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dq3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dr0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dr1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dr2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dr3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_quotient : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rest : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Di0[0]~output_o\ : std_logic;
SIGNAL \Di0[1]~output_o\ : std_logic;
SIGNAL \Di0[2]~output_o\ : std_logic;
SIGNAL \Di0[3]~output_o\ : std_logic;
SIGNAL \Di0[4]~output_o\ : std_logic;
SIGNAL \Di0[5]~output_o\ : std_logic;
SIGNAL \Di0[6]~output_o\ : std_logic;
SIGNAL \Di1[0]~output_o\ : std_logic;
SIGNAL \Di1[1]~output_o\ : std_logic;
SIGNAL \Di1[2]~output_o\ : std_logic;
SIGNAL \Di1[3]~output_o\ : std_logic;
SIGNAL \Di1[4]~output_o\ : std_logic;
SIGNAL \Di1[5]~output_o\ : std_logic;
SIGNAL \Di1[6]~output_o\ : std_logic;
SIGNAL \Di2[0]~output_o\ : std_logic;
SIGNAL \Di2[1]~output_o\ : std_logic;
SIGNAL \Di2[2]~output_o\ : std_logic;
SIGNAL \Di2[3]~output_o\ : std_logic;
SIGNAL \Di2[4]~output_o\ : std_logic;
SIGNAL \Di2[5]~output_o\ : std_logic;
SIGNAL \Di2[6]~output_o\ : std_logic;
SIGNAL \Di3[0]~output_o\ : std_logic;
SIGNAL \Di3[1]~output_o\ : std_logic;
SIGNAL \Di3[2]~output_o\ : std_logic;
SIGNAL \Di3[3]~output_o\ : std_logic;
SIGNAL \Di3[4]~output_o\ : std_logic;
SIGNAL \Di3[5]~output_o\ : std_logic;
SIGNAL \Di3[6]~output_o\ : std_logic;
SIGNAL \Dq0[0]~output_o\ : std_logic;
SIGNAL \Dq0[1]~output_o\ : std_logic;
SIGNAL \Dq0[2]~output_o\ : std_logic;
SIGNAL \Dq0[3]~output_o\ : std_logic;
SIGNAL \Dq0[4]~output_o\ : std_logic;
SIGNAL \Dq0[5]~output_o\ : std_logic;
SIGNAL \Dq0[6]~output_o\ : std_logic;
SIGNAL \Dq1[0]~output_o\ : std_logic;
SIGNAL \Dq1[1]~output_o\ : std_logic;
SIGNAL \Dq1[2]~output_o\ : std_logic;
SIGNAL \Dq1[3]~output_o\ : std_logic;
SIGNAL \Dq1[4]~output_o\ : std_logic;
SIGNAL \Dq1[5]~output_o\ : std_logic;
SIGNAL \Dq1[6]~output_o\ : std_logic;
SIGNAL \Dq2[0]~output_o\ : std_logic;
SIGNAL \Dq2[1]~output_o\ : std_logic;
SIGNAL \Dq2[2]~output_o\ : std_logic;
SIGNAL \Dq2[3]~output_o\ : std_logic;
SIGNAL \Dq2[4]~output_o\ : std_logic;
SIGNAL \Dq2[5]~output_o\ : std_logic;
SIGNAL \Dq2[6]~output_o\ : std_logic;
SIGNAL \Dq3[0]~output_o\ : std_logic;
SIGNAL \Dq3[1]~output_o\ : std_logic;
SIGNAL \Dq3[2]~output_o\ : std_logic;
SIGNAL \Dq3[3]~output_o\ : std_logic;
SIGNAL \Dq3[4]~output_o\ : std_logic;
SIGNAL \Dq3[5]~output_o\ : std_logic;
SIGNAL \Dq3[6]~output_o\ : std_logic;
SIGNAL \Dr0[0]~output_o\ : std_logic;
SIGNAL \Dr0[1]~output_o\ : std_logic;
SIGNAL \Dr0[2]~output_o\ : std_logic;
SIGNAL \Dr0[3]~output_o\ : std_logic;
SIGNAL \Dr0[4]~output_o\ : std_logic;
SIGNAL \Dr0[5]~output_o\ : std_logic;
SIGNAL \Dr0[6]~output_o\ : std_logic;
SIGNAL \Dr1[0]~output_o\ : std_logic;
SIGNAL \Dr1[1]~output_o\ : std_logic;
SIGNAL \Dr1[2]~output_o\ : std_logic;
SIGNAL \Dr1[3]~output_o\ : std_logic;
SIGNAL \Dr1[4]~output_o\ : std_logic;
SIGNAL \Dr1[5]~output_o\ : std_logic;
SIGNAL \Dr1[6]~output_o\ : std_logic;
SIGNAL \Dr2[0]~output_o\ : std_logic;
SIGNAL \Dr2[1]~output_o\ : std_logic;
SIGNAL \Dr2[2]~output_o\ : std_logic;
SIGNAL \Dr2[3]~output_o\ : std_logic;
SIGNAL \Dr2[4]~output_o\ : std_logic;
SIGNAL \Dr2[5]~output_o\ : std_logic;
SIGNAL \Dr2[6]~output_o\ : std_logic;
SIGNAL \Dr3[0]~output_o\ : std_logic;
SIGNAL \Dr3[1]~output_o\ : std_logic;
SIGNAL \Dr3[2]~output_o\ : std_logic;
SIGNAL \Dr3[3]~output_o\ : std_logic;
SIGNAL \Dr3[4]~output_o\ : std_logic;
SIGNAL \Dr3[5]~output_o\ : std_logic;
SIGNAL \Dr3[6]~output_o\ : std_logic;
SIGNAL \quotient[0]~output_o\ : std_logic;
SIGNAL \quotient[1]~output_o\ : std_logic;
SIGNAL \quotient[2]~output_o\ : std_logic;
SIGNAL \quotient[3]~output_o\ : std_logic;
SIGNAL \quotient[4]~output_o\ : std_logic;
SIGNAL \quotient[5]~output_o\ : std_logic;
SIGNAL \quotient[6]~output_o\ : std_logic;
SIGNAL \quotient[7]~output_o\ : std_logic;
SIGNAL \quotient[8]~output_o\ : std_logic;
SIGNAL \quotient[9]~output_o\ : std_logic;
SIGNAL \quotient[10]~output_o\ : std_logic;
SIGNAL \quotient[11]~output_o\ : std_logic;
SIGNAL \quotient[12]~output_o\ : std_logic;
SIGNAL \quotient[13]~output_o\ : std_logic;
SIGNAL \quotient[14]~output_o\ : std_logic;
SIGNAL \quotient[15]~output_o\ : std_logic;
SIGNAL \rest[0]~output_o\ : std_logic;
SIGNAL \rest[1]~output_o\ : std_logic;
SIGNAL \rest[2]~output_o\ : std_logic;
SIGNAL \rest[3]~output_o\ : std_logic;
SIGNAL \rest[4]~output_o\ : std_logic;
SIGNAL \rest[5]~output_o\ : std_logic;
SIGNAL \rest[6]~output_o\ : std_logic;
SIGNAL \rest[7]~output_o\ : std_logic;
SIGNAL \rest[8]~output_o\ : std_logic;
SIGNAL \rest[9]~output_o\ : std_logic;
SIGNAL \rest[10]~output_o\ : std_logic;
SIGNAL \rest[11]~output_o\ : std_logic;
SIGNAL \rest[12]~output_o\ : std_logic;
SIGNAL \rest[13]~output_o\ : std_logic;
SIGNAL \rest[14]~output_o\ : std_logic;
SIGNAL \rest[15]~output_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \dispI0|Mux0~0_combout\ : std_logic;
SIGNAL \dispI0|Mux1~0_combout\ : std_logic;
SIGNAL \dispI0|Mux2~0_combout\ : std_logic;
SIGNAL \dispI0|Mux3~0_combout\ : std_logic;
SIGNAL \dispI0|Mux4~0_combout\ : std_logic;
SIGNAL \dispI0|Mux5~0_combout\ : std_logic;
SIGNAL \dispI0|Mux6~0_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \dispI1|Mux0~0_combout\ : std_logic;
SIGNAL \dispI1|Mux1~0_combout\ : std_logic;
SIGNAL \dispI1|Mux2~0_combout\ : std_logic;
SIGNAL \dispI1|Mux3~0_combout\ : std_logic;
SIGNAL \dispI1|Mux4~0_combout\ : std_logic;
SIGNAL \dispI1|Mux5~0_combout\ : std_logic;
SIGNAL \dispI1|Mux6~0_combout\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \dispI2|Mux0~0_combout\ : std_logic;
SIGNAL \dispI2|Mux1~0_combout\ : std_logic;
SIGNAL \dispI2|Mux2~0_combout\ : std_logic;
SIGNAL \dispI2|Mux3~0_combout\ : std_logic;
SIGNAL \dispI2|Mux4~0_combout\ : std_logic;
SIGNAL \dispI2|Mux5~0_combout\ : std_logic;
SIGNAL \dispI2|Mux6~0_combout\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \dispI3|Mux0~0_combout\ : std_logic;
SIGNAL \dispI3|Mux1~0_combout\ : std_logic;
SIGNAL \dispI3|Mux2~0_combout\ : std_logic;
SIGNAL \dispI3|Mux3~0_combout\ : std_logic;
SIGNAL \dispI3|Mux4~0_combout\ : std_logic;
SIGNAL \dispI3|Mux5~0_combout\ : std_logic;
SIGNAL \dispI3|Mux6~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bt~input_o\ : std_logic;
SIGNAL \i2|state[2]~0_combout\ : std_logic;
SIGNAL \i2|Mux2~0_combout\ : std_logic;
SIGNAL \i2|Mux2~1_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|Equal0~2_combout\ : std_logic;
SIGNAL \i1|reg_a~6_combout\ : std_logic;
SIGNAL \i2|Equal0~3_combout\ : std_logic;
SIGNAL \i2|Equal0~1_combout\ : std_logic;
SIGNAL \i2|ld_b~8_combout\ : std_logic;
SIGNAL \i2|ld_b~1_combout\ : std_logic;
SIGNAL \i2|ld_b~0_combout\ : std_logic;
SIGNAL \i2|ld_b~7_combout\ : std_logic;
SIGNAL \i2|ld_b~_emulated_q\ : std_logic;
SIGNAL \i2|ld_b~2_combout\ : std_logic;
SIGNAL \i2|Mux3~1_combout\ : std_logic;
SIGNAL \i2|clr~7_combout\ : std_logic;
SIGNAL \i2|clr~1_combout\ : std_logic;
SIGNAL \i2|clr~0_combout\ : std_logic;
SIGNAL \i2|clr~_emulated_q\ : std_logic;
SIGNAL \i2|clr~2_combout\ : std_logic;
SIGNAL \i1|reg_b~6_combout\ : std_logic;
SIGNAL \i1|process_0~1_combout\ : std_logic;
SIGNAL \i1|Add0~27_combout\ : std_logic;
SIGNAL \i1|reg_b~5_combout\ : std_logic;
SIGNAL \i1|Add0~23_combout\ : std_logic;
SIGNAL \i1|reg_b~4_combout\ : std_logic;
SIGNAL \i1|Add0~19_combout\ : std_logic;
SIGNAL \i1|reg_b~3_combout\ : std_logic;
SIGNAL \i1|Add0~15_combout\ : std_logic;
SIGNAL \i1|reg_b~2_combout\ : std_logic;
SIGNAL \i1|Add0~11_combout\ : std_logic;
SIGNAL \i1|reg_b~1_combout\ : std_logic;
SIGNAL \i1|Add0~7_combout\ : std_logic;
SIGNAL \i1|reg_b~0_combout\ : std_logic;
SIGNAL \i1|Add0~0_combout\ : std_logic;
SIGNAL \i1|reg_a~0_combout\ : std_logic;
SIGNAL \i1|process_0~2_combout\ : std_logic;
SIGNAL \i1|Add0~2_cout\ : std_logic;
SIGNAL \i1|Add0~4\ : std_logic;
SIGNAL \i1|Add0~8_combout\ : std_logic;
SIGNAL \i1|Add0~10_combout\ : std_logic;
SIGNAL \i1|Add0~6_combout\ : std_logic;
SIGNAL \i1|reg_a~1_combout\ : std_logic;
SIGNAL \i1|Add0~9\ : std_logic;
SIGNAL \i1|Add0~12_combout\ : std_logic;
SIGNAL \i1|Add0~14_combout\ : std_logic;
SIGNAL \i1|reg_a~2_combout\ : std_logic;
SIGNAL \i1|Add0~13\ : std_logic;
SIGNAL \i1|Add0~16_combout\ : std_logic;
SIGNAL \i1|Add0~18_combout\ : std_logic;
SIGNAL \i1|reg_a~3_combout\ : std_logic;
SIGNAL \i1|Add0~17\ : std_logic;
SIGNAL \i1|Add0~20_combout\ : std_logic;
SIGNAL \i1|Add0~22_combout\ : std_logic;
SIGNAL \i1|reg_a~4_combout\ : std_logic;
SIGNAL \i1|Add0~21\ : std_logic;
SIGNAL \i1|Add0~24_combout\ : std_logic;
SIGNAL \i1|Add0~26_combout\ : std_logic;
SIGNAL \i1|reg_a~5_combout\ : std_logic;
SIGNAL \i1|Add0~25\ : std_logic;
SIGNAL \i1|Add0~28_combout\ : std_logic;
SIGNAL \i1|Add0~30_combout\ : std_logic;
SIGNAL \i1|reg_a~7_combout\ : std_logic;
SIGNAL \i1|reg_b~7_combout\ : std_logic;
SIGNAL \i1|Add0~31_combout\ : std_logic;
SIGNAL \i1|Add0~29\ : std_logic;
SIGNAL \i1|Add0~32_combout\ : std_logic;
SIGNAL \i1|Add0~34_combout\ : std_logic;
SIGNAL \i1|Equal0~1_combout\ : std_logic;
SIGNAL \i1|reg_b~13_combout\ : std_logic;
SIGNAL \i1|Add0~55_combout\ : std_logic;
SIGNAL \i1|reg_a~13_combout\ : std_logic;
SIGNAL \i1|reg_b~12_combout\ : std_logic;
SIGNAL \i1|Add0~51_combout\ : std_logic;
SIGNAL \i1|reg_b~11_combout\ : std_logic;
SIGNAL \i1|Add0~47_combout\ : std_logic;
SIGNAL \i1|reg_b~10_combout\ : std_logic;
SIGNAL \i1|Add0~43_combout\ : std_logic;
SIGNAL \i1|reg_b~9_combout\ : std_logic;
SIGNAL \i1|Add0~39_combout\ : std_logic;
SIGNAL \i1|reg_b~8_combout\ : std_logic;
SIGNAL \i1|Add0~35_combout\ : std_logic;
SIGNAL \i1|Add0~33\ : std_logic;
SIGNAL \i1|Add0~36_combout\ : std_logic;
SIGNAL \i1|Add0~38_combout\ : std_logic;
SIGNAL \i1|reg_a~8_combout\ : std_logic;
SIGNAL \i1|Add0~37\ : std_logic;
SIGNAL \i1|Add0~40_combout\ : std_logic;
SIGNAL \i1|Add0~42_combout\ : std_logic;
SIGNAL \i1|reg_a~9_combout\ : std_logic;
SIGNAL \i1|Add0~41\ : std_logic;
SIGNAL \i1|Add0~44_combout\ : std_logic;
SIGNAL \i1|Add0~46_combout\ : std_logic;
SIGNAL \i1|reg_a~10_combout\ : std_logic;
SIGNAL \i1|Add0~45\ : std_logic;
SIGNAL \i1|Add0~48_combout\ : std_logic;
SIGNAL \i1|Add0~50_combout\ : std_logic;
SIGNAL \i1|reg_a~11_combout\ : std_logic;
SIGNAL \i1|Add0~49\ : std_logic;
SIGNAL \i1|Add0~52_combout\ : std_logic;
SIGNAL \i1|Add0~54_combout\ : std_logic;
SIGNAL \i1|reg_a~12_combout\ : std_logic;
SIGNAL \i1|Add0~53\ : std_logic;
SIGNAL \i1|Add0~56_combout\ : std_logic;
SIGNAL \i1|Add0~58_combout\ : std_logic;
SIGNAL \i1|Equal0~2_combout\ : std_logic;
SIGNAL \i1|reg_b~14_combout\ : std_logic;
SIGNAL \i1|Add0~59_combout\ : std_logic;
SIGNAL \i1|reg_a~14_combout\ : std_logic;
SIGNAL \i1|Add0~57\ : std_logic;
SIGNAL \i1|Add0~60_combout\ : std_logic;
SIGNAL \i1|Add0~62_combout\ : std_logic;
SIGNAL \i1|Equal0~3_combout\ : std_logic;
SIGNAL \i1|Equal0~4_combout\ : std_logic;
SIGNAL \i2|ld_a~7_combout\ : std_logic;
SIGNAL \i2|ld_a~1_combout\ : std_logic;
SIGNAL \i2|ld_a~3_combout\ : std_logic;
SIGNAL \i2|ld_a~0_combout\ : std_logic;
SIGNAL \i2|Mux3~2_combout\ : std_logic;
SIGNAL \i2|ld_a~_emulated_q\ : std_logic;
SIGNAL \i2|ld_a~2_combout\ : std_logic;
SIGNAL \i1|reg_a~15_combout\ : std_logic;
SIGNAL \i1|reg_b~15_combout\ : std_logic;
SIGNAL \i1|Add0~63_combout\ : std_logic;
SIGNAL \i1|Add0~61\ : std_logic;
SIGNAL \i1|Add0~64_combout\ : std_logic;
SIGNAL \i1|Add0~66_combout\ : std_logic;
SIGNAL \i1|process_0~3_combout\ : std_logic;
SIGNAL \i1|a_lt_z~combout\ : std_logic;
SIGNAL \i2|Mux1~1_combout\ : std_logic;
SIGNAL \i2|Equal0~0_combout\ : std_logic;
SIGNAL \i2|Mux1~2_combout\ : std_logic;
SIGNAL \i2|slt_a~0_combout\ : std_logic;
SIGNAL \i2|slt_a~1_combout\ : std_logic;
SIGNAL \i2|slt_a~2_combout\ : std_logic;
SIGNAL \i2|slt_a~q\ : std_logic;
SIGNAL \i1|Add0~3_combout\ : std_logic;
SIGNAL \i1|Add0~5_combout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i1|Equal0~5_combout\ : std_logic;
SIGNAL \i2|Mux3~3_combout\ : std_logic;
SIGNAL \i2|sub_add~0_combout\ : std_logic;
SIGNAL \i2|sub_add~q\ : std_logic;
SIGNAL \i2|Mux3~0_combout\ : std_logic;
SIGNAL \i2|cnt~0_combout\ : std_logic;
SIGNAL \i2|cnt~q\ : std_logic;
SIGNAL \i1|process_0~0_combout\ : std_logic;
SIGNAL \i1|quotient[0]~16_combout\ : std_logic;
SIGNAL \i1|quotient[3]~18_combout\ : std_logic;
SIGNAL \i1|quotient[0]~17\ : std_logic;
SIGNAL \i1|quotient[1]~19_combout\ : std_logic;
SIGNAL \i1|quotient[1]~20\ : std_logic;
SIGNAL \i1|quotient[2]~21_combout\ : std_logic;
SIGNAL \i1|quotient[2]~22\ : std_logic;
SIGNAL \i1|quotient[3]~23_combout\ : std_logic;
SIGNAL \dispQ0|Mux0~0_combout\ : std_logic;
SIGNAL \dispQ0|Mux1~0_combout\ : std_logic;
SIGNAL \dispQ0|Mux2~0_combout\ : std_logic;
SIGNAL \dispQ0|Mux3~0_combout\ : std_logic;
SIGNAL \dispQ0|Mux4~0_combout\ : std_logic;
SIGNAL \dispQ0|Mux5~0_combout\ : std_logic;
SIGNAL \dispQ0|Mux6~0_combout\ : std_logic;
SIGNAL \i1|quotient[3]~24\ : std_logic;
SIGNAL \i1|quotient[4]~25_combout\ : std_logic;
SIGNAL \i1|quotient[4]~26\ : std_logic;
SIGNAL \i1|quotient[5]~27_combout\ : std_logic;
SIGNAL \i1|quotient[5]~28\ : std_logic;
SIGNAL \i1|quotient[6]~29_combout\ : std_logic;
SIGNAL \i1|quotient[6]~30\ : std_logic;
SIGNAL \i1|quotient[7]~31_combout\ : std_logic;
SIGNAL \dispQ1|Mux0~0_combout\ : std_logic;
SIGNAL \dispQ1|Mux1~0_combout\ : std_logic;
SIGNAL \dispQ1|Mux2~0_combout\ : std_logic;
SIGNAL \dispQ1|Mux3~0_combout\ : std_logic;
SIGNAL \dispQ1|Mux4~0_combout\ : std_logic;
SIGNAL \dispQ1|Mux5~0_combout\ : std_logic;
SIGNAL \dispQ1|Mux6~0_combout\ : std_logic;
SIGNAL \i1|quotient[7]~32\ : std_logic;
SIGNAL \i1|quotient[8]~33_combout\ : std_logic;
SIGNAL \i1|quotient[8]~34\ : std_logic;
SIGNAL \i1|quotient[9]~35_combout\ : std_logic;
SIGNAL \i1|quotient[9]~36\ : std_logic;
SIGNAL \i1|quotient[10]~37_combout\ : std_logic;
SIGNAL \i1|quotient[10]~38\ : std_logic;
SIGNAL \i1|quotient[11]~39_combout\ : std_logic;
SIGNAL \dispQ2|Mux0~0_combout\ : std_logic;
SIGNAL \dispQ2|Mux1~0_combout\ : std_logic;
SIGNAL \dispQ2|Mux2~0_combout\ : std_logic;
SIGNAL \dispQ2|Mux3~0_combout\ : std_logic;
SIGNAL \dispQ2|Mux4~0_combout\ : std_logic;
SIGNAL \dispQ2|Mux5~0_combout\ : std_logic;
SIGNAL \dispQ2|Mux6~0_combout\ : std_logic;
SIGNAL \i1|quotient[11]~40\ : std_logic;
SIGNAL \i1|quotient[12]~41_combout\ : std_logic;
SIGNAL \i1|quotient[12]~42\ : std_logic;
SIGNAL \i1|quotient[13]~43_combout\ : std_logic;
SIGNAL \i1|quotient[13]~44\ : std_logic;
SIGNAL \i1|quotient[14]~45_combout\ : std_logic;
SIGNAL \i1|quotient[14]~46\ : std_logic;
SIGNAL \i1|quotient[15]~47_combout\ : std_logic;
SIGNAL \dispQ3|Mux0~0_combout\ : std_logic;
SIGNAL \dispQ3|Mux1~0_combout\ : std_logic;
SIGNAL \dispQ3|Mux2~0_combout\ : std_logic;
SIGNAL \dispQ3|Mux3~0_combout\ : std_logic;
SIGNAL \dispQ3|Mux4~0_combout\ : std_logic;
SIGNAL \dispQ3|Mux5~0_combout\ : std_logic;
SIGNAL \dispQ3|Mux6~0_combout\ : std_logic;
SIGNAL \dispR0|Mux0~0_combout\ : std_logic;
SIGNAL \dispR0|Mux1~0_combout\ : std_logic;
SIGNAL \dispR0|Mux2~0_combout\ : std_logic;
SIGNAL \dispR0|Mux3~0_combout\ : std_logic;
SIGNAL \dispR0|Mux4~0_combout\ : std_logic;
SIGNAL \dispR0|Mux5~0_combout\ : std_logic;
SIGNAL \dispR0|Mux6~0_combout\ : std_logic;
SIGNAL \dispR1|Mux0~0_combout\ : std_logic;
SIGNAL \dispR1|Mux1~0_combout\ : std_logic;
SIGNAL \dispR1|Mux2~0_combout\ : std_logic;
SIGNAL \dispR1|Mux3~0_combout\ : std_logic;
SIGNAL \dispR1|Mux4~0_combout\ : std_logic;
SIGNAL \dispR1|Mux5~0_combout\ : std_logic;
SIGNAL \dispR1|Mux6~0_combout\ : std_logic;
SIGNAL \dispR2|Mux0~0_combout\ : std_logic;
SIGNAL \dispR2|Mux1~0_combout\ : std_logic;
SIGNAL \dispR2|Mux2~0_combout\ : std_logic;
SIGNAL \dispR2|Mux3~0_combout\ : std_logic;
SIGNAL \dispR2|Mux4~0_combout\ : std_logic;
SIGNAL \dispR2|Mux5~0_combout\ : std_logic;
SIGNAL \dispR2|Mux6~0_combout\ : std_logic;
SIGNAL \dispR3|Mux0~0_combout\ : std_logic;
SIGNAL \dispR3|Mux1~0_combout\ : std_logic;
SIGNAL \dispR3|Mux2~0_combout\ : std_logic;
SIGNAL \dispR3|Mux3~0_combout\ : std_logic;
SIGNAL \dispR3|Mux4~0_combout\ : std_logic;
SIGNAL \dispR3|Mux5~0_combout\ : std_logic;
SIGNAL \dispR3|Mux6~0_combout\ : std_logic;
SIGNAL \i1|quotient\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i1|reg_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i1|reg_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|ALT_INV_ld_a~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_ld_b~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_clr~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_slt_a~2_combout\ : std_logic;
SIGNAL \i2|ALT_INV_cnt~0_combout\ : std_logic;
SIGNAL \dispR3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispR2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispR1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispR0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispQ3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispQ2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispQ1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispQ0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispI3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispI2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispI1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispI0|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_bt <= bt;
ww_input <= input;
Di0 <= ww_Di0;
Di1 <= ww_Di1;
Di2 <= ww_Di2;
Di3 <= ww_Di3;
Dq0 <= ww_Dq0;
Dq1 <= ww_Dq1;
Dq2 <= ww_Dq2;
Dq3 <= ww_Dq3;
Dr0 <= ww_Dr0;
Dr1 <= ww_Dr1;
Dr2 <= ww_Dr2;
Dr3 <= ww_Dr3;
quotient <= ww_quotient;
rest <= ww_rest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\i2|ALT_INV_ld_a~0_combout\ <= NOT \i2|ld_a~0_combout\;
\i2|ALT_INV_ld_b~0_combout\ <= NOT \i2|ld_b~0_combout\;
\i2|ALT_INV_clr~0_combout\ <= NOT \i2|clr~0_combout\;
\i2|ALT_INV_slt_a~2_combout\ <= NOT \i2|slt_a~2_combout\;
\i2|ALT_INV_cnt~0_combout\ <= NOT \i2|cnt~0_combout\;
\dispR3|ALT_INV_Mux6~0_combout\ <= NOT \dispR3|Mux6~0_combout\;
\dispR2|ALT_INV_Mux6~0_combout\ <= NOT \dispR2|Mux6~0_combout\;
\dispR1|ALT_INV_Mux6~0_combout\ <= NOT \dispR1|Mux6~0_combout\;
\dispR0|ALT_INV_Mux6~0_combout\ <= NOT \dispR0|Mux6~0_combout\;
\dispQ3|ALT_INV_Mux6~0_combout\ <= NOT \dispQ3|Mux6~0_combout\;
\dispQ2|ALT_INV_Mux6~0_combout\ <= NOT \dispQ2|Mux6~0_combout\;
\dispQ1|ALT_INV_Mux6~0_combout\ <= NOT \dispQ1|Mux6~0_combout\;
\dispQ0|ALT_INV_Mux6~0_combout\ <= NOT \dispQ0|Mux6~0_combout\;
\dispI3|ALT_INV_Mux6~0_combout\ <= NOT \dispI3|Mux6~0_combout\;
\dispI2|ALT_INV_Mux6~0_combout\ <= NOT \dispI2|Mux6~0_combout\;
\dispI1|ALT_INV_Mux6~0_combout\ <= NOT \dispI1|Mux6~0_combout\;
\dispI0|ALT_INV_Mux6~0_combout\ <= NOT \dispI0|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y46_N16
\Di0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Di0[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\Di0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Di0[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Di0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Di0[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Di0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Di0[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\Di0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Di0[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\Di0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Di0[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\Di0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Di0[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Di1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Di1[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\Di1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Di1[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\Di1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Di1[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Di1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Di1[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Di1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Di1[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\Di1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Di1[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Di1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Di1[6]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\Di2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Di2[0]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\Di2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Di2[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Di2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Di2[2]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Di2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Di2[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\Di2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Di2[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Di2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Di2[5]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\Di2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Di2[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\Di3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Di3[0]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\Di3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Di3[1]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\Di3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Di3[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Di3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Di3[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Di3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Di3[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Di3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Di3[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\Di3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispI3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Di3[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\Dq0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dq0[0]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\Dq0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dq0[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\Dq0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dq0[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\Dq0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dq0[3]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Dq0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dq0[4]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\Dq0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dq0[5]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\Dq0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dq0[6]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\Dq1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dq1[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\Dq1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dq1[1]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\Dq1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dq1[2]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Dq1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dq1[3]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Dq1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dq1[4]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\Dq1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dq1[5]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\Dq1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dq1[6]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Dq2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dq2[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\Dq2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dq2[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\Dq2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dq2[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\Dq2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dq2[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\Dq2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dq2[4]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Dq2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dq2[5]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\Dq2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dq2[6]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\Dq3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dq3[0]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\Dq3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dq3[1]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\Dq3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dq3[2]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\Dq3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dq3[3]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\Dq3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dq3[4]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\Dq3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dq3[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\Dq3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispQ3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dq3[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\Dr0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dr0[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Dr0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dr0[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\Dr0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dr0[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\Dr0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dr0[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\Dr0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dr0[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Dr0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dr0[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Dr0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dr0[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Dr1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dr1[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Dr1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dr1[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\Dr1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dr1[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\Dr1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dr1[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Dr1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dr1[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Dr1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dr1[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Dr1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dr1[6]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Dr2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dr2[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\Dr2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dr2[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Dr2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dr2[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\Dr2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dr2[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\Dr2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dr2[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\Dr2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dr2[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Dr2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dr2[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\Dr3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dr3[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\Dr3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dr3[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Dr3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dr3[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\Dr3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dr3[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Dr3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dr3[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Dr3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dr3[5]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\Dr3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispR3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dr3[6]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(0),
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(1),
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(2),
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(3),
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\quotient[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(4),
	devoe => ww_devoe,
	o => \quotient[4]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\quotient[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(5),
	devoe => ww_devoe,
	o => \quotient[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\quotient[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(6),
	devoe => ww_devoe,
	o => \quotient[6]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\quotient[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(7),
	devoe => ww_devoe,
	o => \quotient[7]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\quotient[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(8),
	devoe => ww_devoe,
	o => \quotient[8]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\quotient[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(9),
	devoe => ww_devoe,
	o => \quotient[9]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\quotient[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(10),
	devoe => ww_devoe,
	o => \quotient[10]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\quotient[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(11),
	devoe => ww_devoe,
	o => \quotient[11]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\quotient[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(12),
	devoe => ww_devoe,
	o => \quotient[12]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\quotient[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(13),
	devoe => ww_devoe,
	o => \quotient[13]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\quotient[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(14),
	devoe => ww_devoe,
	o => \quotient[14]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\quotient[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|quotient\(15),
	devoe => ww_devoe,
	o => \quotient[15]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\rest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(0),
	devoe => ww_devoe,
	o => \rest[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\rest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(1),
	devoe => ww_devoe,
	o => \rest[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\rest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(2),
	devoe => ww_devoe,
	o => \rest[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\rest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(3),
	devoe => ww_devoe,
	o => \rest[3]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\rest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(4),
	devoe => ww_devoe,
	o => \rest[4]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\rest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(5),
	devoe => ww_devoe,
	o => \rest[5]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\rest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(6),
	devoe => ww_devoe,
	o => \rest[6]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\rest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(7),
	devoe => ww_devoe,
	o => \rest[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\rest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(8),
	devoe => ww_devoe,
	o => \rest[8]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\rest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(9),
	devoe => ww_devoe,
	o => \rest[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\rest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(10),
	devoe => ww_devoe,
	o => \rest[10]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\rest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(11),
	devoe => ww_devoe,
	o => \rest[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\rest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(12),
	devoe => ww_devoe,
	o => \rest[12]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\rest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(13),
	devoe => ww_devoe,
	o => \rest[13]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\rest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(14),
	devoe => ww_devoe,
	o => \rest[14]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\rest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|reg_a\(15),
	devoe => ww_devoe,
	o => \rest[15]~output_o\);

-- Location: IOIBUF_X0_Y25_N22
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X7_Y30_N8
\dispI0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI0|Mux0~0_combout\ = (\input[3]~input_o\ & (\input[0]~input_o\ & (\input[1]~input_o\ $ (\input[2]~input_o\)))) # (!\input[3]~input_o\ & (!\input[1]~input_o\ & (\input[2]~input_o\ $ (\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[0]~input_o\,
	combout => \dispI0|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y30_N2
\dispI0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI0|Mux1~0_combout\ = (\input[3]~input_o\ & ((\input[0]~input_o\ & (\input[1]~input_o\)) # (!\input[0]~input_o\ & ((\input[2]~input_o\))))) # (!\input[3]~input_o\ & (\input[2]~input_o\ & (\input[1]~input_o\ $ (\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[0]~input_o\,
	combout => \dispI0|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y30_N12
\dispI0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI0|Mux2~0_combout\ = (\input[3]~input_o\ & (\input[2]~input_o\ & ((\input[1]~input_o\) # (!\input[0]~input_o\)))) # (!\input[3]~input_o\ & (\input[1]~input_o\ & (!\input[2]~input_o\ & !\input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[0]~input_o\,
	combout => \dispI0|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y30_N30
\dispI0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI0|Mux3~0_combout\ = (\input[1]~input_o\ & ((\input[2]~input_o\ & ((\input[0]~input_o\))) # (!\input[2]~input_o\ & (\input[3]~input_o\ & !\input[0]~input_o\)))) # (!\input[1]~input_o\ & (!\input[3]~input_o\ & (\input[2]~input_o\ $ 
-- (\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[0]~input_o\,
	combout => \dispI0|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y30_N16
\dispI0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI0|Mux4~0_combout\ = (\input[1]~input_o\ & (!\input[3]~input_o\ & ((\input[0]~input_o\)))) # (!\input[1]~input_o\ & ((\input[2]~input_o\ & (!\input[3]~input_o\)) # (!\input[2]~input_o\ & ((\input[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[0]~input_o\,
	combout => \dispI0|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y30_N14
\dispI0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI0|Mux5~0_combout\ = (\input[1]~input_o\ & (!\input[3]~input_o\ & ((\input[0]~input_o\) # (!\input[2]~input_o\)))) # (!\input[1]~input_o\ & (\input[0]~input_o\ & (\input[3]~input_o\ $ (!\input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[0]~input_o\,
	combout => \dispI0|Mux5~0_combout\);

-- Location: LCCOMB_X7_Y30_N28
\dispI0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI0|Mux6~0_combout\ = (\input[0]~input_o\ & ((\input[3]~input_o\) # (\input[1]~input_o\ $ (\input[2]~input_o\)))) # (!\input[0]~input_o\ & ((\input[1]~input_o\) # (\input[3]~input_o\ $ (\input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[2]~input_o\,
	datad => \input[0]~input_o\,
	combout => \dispI0|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X9_Y31_N0
\dispI1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI1|Mux0~0_combout\ = (\input[7]~input_o\ & (\input[4]~input_o\ & (\input[5]~input_o\ $ (\input[6]~input_o\)))) # (!\input[7]~input_o\ & (!\input[5]~input_o\ & (\input[4]~input_o\ $ (\input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \input[5]~input_o\,
	datac => \input[4]~input_o\,
	datad => \input[6]~input_o\,
	combout => \dispI1|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y31_N2
\dispI1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI1|Mux1~0_combout\ = (\input[7]~input_o\ & ((\input[4]~input_o\ & (\input[5]~input_o\)) # (!\input[4]~input_o\ & ((\input[6]~input_o\))))) # (!\input[7]~input_o\ & (\input[6]~input_o\ & (\input[5]~input_o\ $ (\input[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \input[5]~input_o\,
	datac => \input[4]~input_o\,
	datad => \input[6]~input_o\,
	combout => \dispI1|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y31_N28
\dispI1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI1|Mux2~0_combout\ = (\input[7]~input_o\ & (\input[6]~input_o\ & ((\input[5]~input_o\) # (!\input[4]~input_o\)))) # (!\input[7]~input_o\ & (\input[5]~input_o\ & (!\input[4]~input_o\ & !\input[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \input[5]~input_o\,
	datac => \input[4]~input_o\,
	datad => \input[6]~input_o\,
	combout => \dispI1|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y31_N18
\dispI1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI1|Mux3~0_combout\ = (\input[5]~input_o\ & ((\input[4]~input_o\ & ((\input[6]~input_o\))) # (!\input[4]~input_o\ & (\input[7]~input_o\ & !\input[6]~input_o\)))) # (!\input[5]~input_o\ & (!\input[7]~input_o\ & (\input[4]~input_o\ $ 
-- (\input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \input[5]~input_o\,
	datac => \input[4]~input_o\,
	datad => \input[6]~input_o\,
	combout => \dispI1|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y31_N24
\dispI1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI1|Mux4~0_combout\ = (\input[5]~input_o\ & (!\input[7]~input_o\ & (\input[4]~input_o\))) # (!\input[5]~input_o\ & ((\input[6]~input_o\ & (!\input[7]~input_o\)) # (!\input[6]~input_o\ & ((\input[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \input[5]~input_o\,
	datac => \input[4]~input_o\,
	datad => \input[6]~input_o\,
	combout => \dispI1|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y31_N14
\dispI1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI1|Mux5~0_combout\ = (\input[5]~input_o\ & (!\input[7]~input_o\ & ((\input[4]~input_o\) # (!\input[6]~input_o\)))) # (!\input[5]~input_o\ & (\input[4]~input_o\ & (\input[7]~input_o\ $ (!\input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \input[5]~input_o\,
	datac => \input[4]~input_o\,
	datad => \input[6]~input_o\,
	combout => \dispI1|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y31_N12
\dispI1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI1|Mux6~0_combout\ = (\input[4]~input_o\ & ((\input[7]~input_o\) # (\input[5]~input_o\ $ (\input[6]~input_o\)))) # (!\input[4]~input_o\ & ((\input[5]~input_o\) # (\input[7]~input_o\ $ (\input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \input[5]~input_o\,
	datac => \input[4]~input_o\,
	datad => \input[6]~input_o\,
	combout => \dispI1|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y34_N15
\input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: LCCOMB_X1_Y32_N28
\dispI2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI2|Mux0~0_combout\ = (\input[11]~input_o\ & (\input[8]~input_o\ & (\input[9]~input_o\ $ (\input[10]~input_o\)))) # (!\input[11]~input_o\ & (!\input[9]~input_o\ & (\input[8]~input_o\ $ (\input[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \input[8]~input_o\,
	datac => \input[11]~input_o\,
	datad => \input[10]~input_o\,
	combout => \dispI2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y32_N18
\dispI2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI2|Mux1~0_combout\ = (\input[9]~input_o\ & ((\input[8]~input_o\ & (\input[11]~input_o\)) # (!\input[8]~input_o\ & ((\input[10]~input_o\))))) # (!\input[9]~input_o\ & (\input[10]~input_o\ & (\input[8]~input_o\ $ (\input[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \input[8]~input_o\,
	datac => \input[11]~input_o\,
	datad => \input[10]~input_o\,
	combout => \dispI2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\dispI2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI2|Mux2~0_combout\ = (\input[11]~input_o\ & (\input[10]~input_o\ & ((\input[9]~input_o\) # (!\input[8]~input_o\)))) # (!\input[11]~input_o\ & (\input[9]~input_o\ & (!\input[8]~input_o\ & !\input[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \input[8]~input_o\,
	datac => \input[11]~input_o\,
	datad => \input[10]~input_o\,
	combout => \dispI2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y32_N6
\dispI2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI2|Mux3~0_combout\ = (\input[9]~input_o\ & ((\input[8]~input_o\ & ((\input[10]~input_o\))) # (!\input[8]~input_o\ & (\input[11]~input_o\ & !\input[10]~input_o\)))) # (!\input[9]~input_o\ & (!\input[11]~input_o\ & (\input[8]~input_o\ $ 
-- (\input[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \input[8]~input_o\,
	datac => \input[11]~input_o\,
	datad => \input[10]~input_o\,
	combout => \dispI2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y32_N20
\dispI2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI2|Mux4~0_combout\ = (\input[9]~input_o\ & (\input[8]~input_o\ & (!\input[11]~input_o\))) # (!\input[9]~input_o\ & ((\input[10]~input_o\ & ((!\input[11]~input_o\))) # (!\input[10]~input_o\ & (\input[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \input[8]~input_o\,
	datac => \input[11]~input_o\,
	datad => \input[10]~input_o\,
	combout => \dispI2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y32_N22
\dispI2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI2|Mux5~0_combout\ = (\input[9]~input_o\ & (!\input[11]~input_o\ & ((\input[8]~input_o\) # (!\input[10]~input_o\)))) # (!\input[9]~input_o\ & (\input[8]~input_o\ & (\input[11]~input_o\ $ (!\input[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \input[8]~input_o\,
	datac => \input[11]~input_o\,
	datad => \input[10]~input_o\,
	combout => \dispI2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y32_N16
\dispI2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI2|Mux6~0_combout\ = (\input[8]~input_o\ & ((\input[11]~input_o\) # (\input[9]~input_o\ $ (\input[10]~input_o\)))) # (!\input[8]~input_o\ & ((\input[9]~input_o\) # (\input[11]~input_o\ $ (\input[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \input[8]~input_o\,
	datac => \input[11]~input_o\,
	datad => \input[10]~input_o\,
	combout => \dispI2|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y19_N1
\input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\dispI3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI3|Mux0~0_combout\ = (\input[14]~input_o\ & (!\input[13]~input_o\ & (\input[12]~input_o\ $ (!\input[15]~input_o\)))) # (!\input[14]~input_o\ & (\input[12]~input_o\ & (\input[13]~input_o\ $ (!\input[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \input[12]~input_o\,
	datac => \input[13]~input_o\,
	datad => \input[15]~input_o\,
	combout => \dispI3|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\dispI3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI3|Mux1~0_combout\ = (\input[13]~input_o\ & ((\input[12]~input_o\ & ((\input[15]~input_o\))) # (!\input[12]~input_o\ & (\input[14]~input_o\)))) # (!\input[13]~input_o\ & (\input[14]~input_o\ & (\input[12]~input_o\ $ (\input[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \input[12]~input_o\,
	datac => \input[13]~input_o\,
	datad => \input[15]~input_o\,
	combout => \dispI3|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
\dispI3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI3|Mux2~0_combout\ = (\input[14]~input_o\ & (\input[15]~input_o\ & ((\input[13]~input_o\) # (!\input[12]~input_o\)))) # (!\input[14]~input_o\ & (!\input[12]~input_o\ & (\input[13]~input_o\ & !\input[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \input[12]~input_o\,
	datac => \input[13]~input_o\,
	datad => \input[15]~input_o\,
	combout => \dispI3|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\dispI3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI3|Mux3~0_combout\ = (\input[13]~input_o\ & ((\input[14]~input_o\ & (\input[12]~input_o\)) # (!\input[14]~input_o\ & (!\input[12]~input_o\ & \input[15]~input_o\)))) # (!\input[13]~input_o\ & (!\input[15]~input_o\ & (\input[14]~input_o\ $ 
-- (\input[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \input[12]~input_o\,
	datac => \input[13]~input_o\,
	datad => \input[15]~input_o\,
	combout => \dispI3|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\dispI3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI3|Mux4~0_combout\ = (\input[13]~input_o\ & (((\input[12]~input_o\ & !\input[15]~input_o\)))) # (!\input[13]~input_o\ & ((\input[14]~input_o\ & ((!\input[15]~input_o\))) # (!\input[14]~input_o\ & (\input[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \input[12]~input_o\,
	datac => \input[13]~input_o\,
	datad => \input[15]~input_o\,
	combout => \dispI3|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\dispI3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI3|Mux5~0_combout\ = (\input[14]~input_o\ & (\input[12]~input_o\ & (\input[13]~input_o\ $ (\input[15]~input_o\)))) # (!\input[14]~input_o\ & (!\input[15]~input_o\ & ((\input[12]~input_o\) # (\input[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \input[12]~input_o\,
	datac => \input[13]~input_o\,
	datad => \input[15]~input_o\,
	combout => \dispI3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\dispI3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispI3|Mux6~0_combout\ = (\input[12]~input_o\ & ((\input[15]~input_o\) # (\input[14]~input_o\ $ (\input[13]~input_o\)))) # (!\input[12]~input_o\ & ((\input[13]~input_o\) # (\input[14]~input_o\ $ (\input[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \input[12]~input_o\,
	datac => \input[13]~input_o\,
	datad => \input[15]~input_o\,
	combout => \dispI3|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y8_N22
\bt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt,
	o => \bt~input_o\);

-- Location: LCCOMB_X7_Y31_N28
\i2|state[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|state[2]~0_combout\ = (\i2|state\(1) & ((\i2|state\(0) & ((\bt~input_o\) # (!\i2|state\(2)))) # (!\i2|state\(0) & (\i2|state\(2))))) # (!\i2|state\(1) & (\i2|state\(0) & (\i2|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datab => \i2|state\(0),
	datac => \i2|state\(2),
	datad => \bt~input_o\,
	combout => \i2|state[2]~0_combout\);

-- Location: FF_X7_Y31_N29
\i2|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|state[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|state\(2));

-- Location: LCCOMB_X3_Y31_N2
\i2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux2~0_combout\ = (\i2|state\(1) & \i2|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datad => \i2|state\(0),
	combout => \i2|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y31_N30
\i2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux2~1_combout\ = (\i2|state\(2) & ((\bt~input_o\) # ((!\i2|Mux2~0_combout\)))) # (!\i2|state\(2) & ((\i2|Mux2~0_combout\ & ((\i1|Equal0~5_combout\))) # (!\i2|Mux2~0_combout\ & (\bt~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(2),
	datab => \bt~input_o\,
	datac => \i2|Mux2~0_combout\,
	datad => \i1|Equal0~5_combout\,
	combout => \i2|Mux2~1_combout\);

-- Location: FF_X7_Y31_N31
\i2|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|state\(0));

-- Location: LCCOMB_X7_Y31_N0
\i2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (\i2|state\(2) & ((\i2|state\(0) & ((\bt~input_o\))) # (!\i2|state\(0) & (!\i2|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datab => \i2|state\(0),
	datac => \i2|state\(2),
	datad => \bt~input_o\,
	combout => \i2|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y31_N22
\i2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~2_combout\ = (\i2|state\(1) & (!\i2|state\(0) & !\i2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(1),
	datac => \i2|state\(0),
	datad => \i2|state\(2),
	combout => \i2|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y31_N10
\i1|reg_a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~6_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(6))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[6]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(6),
	datab => \input[6]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~6_combout\);

-- Location: LCCOMB_X7_Y31_N24
\i2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~3_combout\ = (!\i2|state\(1) & (\i2|state\(0) & !\i2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(1),
	datac => \i2|state\(0),
	datad => \i2|state\(2),
	combout => \i2|Equal0~3_combout\);

-- Location: LCCOMB_X7_Y31_N16
\i2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~1_combout\ = (!\i2|state\(1) & (!\i2|state\(0) & !\i2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(1),
	datac => \i2|state\(0),
	datad => \i2|state\(2),
	combout => \i2|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y31_N4
\i2|ld_b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~8_combout\ = (\i2|Equal0~3_combout\) # ((\i2|Equal0~1_combout\) # ((\i2|state\(0) & \i2|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(0),
	datab => \i2|state\(2),
	datac => \i2|Equal0~3_combout\,
	datad => \i2|Equal0~1_combout\,
	combout => \i2|ld_b~8_combout\);

-- Location: LCCOMB_X7_Y31_N18
\i2|ld_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~1_combout\ = (!\i2|ld_b~8_combout\ & ((\i2|Equal0~2_combout\) # (\i2|ld_b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal0~2_combout\,
	datac => \i2|ld_b~8_combout\,
	datad => \i2|ld_b~1_combout\,
	combout => \i2|ld_b~1_combout\);

-- Location: LCCOMB_X7_Y31_N26
\i2|ld_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~0_combout\ = (\i2|ld_b~8_combout\) # (\i2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|ld_b~8_combout\,
	datad => \i2|Equal0~2_combout\,
	combout => \i2|ld_b~0_combout\);

-- Location: LCCOMB_X7_Y31_N10
\i2|ld_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~7_combout\ = (\i2|state\(2) & (!\i2|state\(0) & !\i2|state\(1))) # (!\i2|state\(2) & (\i2|state\(0) & \i2|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(2),
	datab => \i2|state\(0),
	datad => \i2|state\(1),
	combout => \i2|ld_b~7_combout\);

-- Location: FF_X6_Y31_N11
\i2|ld_b~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|ld_b~1_combout\,
	clrn => \i2|ALT_INV_ld_b~0_combout\,
	sload => VCC,
	ena => \i2|ld_b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|ld_b~_emulated_q\);

-- Location: LCCOMB_X6_Y31_N10
\i2|ld_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~2_combout\ = (!\i2|ld_b~8_combout\ & ((\i2|Equal0~2_combout\) # (\i2|ld_b~1_combout\ $ (\i2|ld_b~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~1_combout\,
	datab => \i2|Equal0~2_combout\,
	datac => \i2|ld_b~_emulated_q\,
	datad => \i2|ld_b~8_combout\,
	combout => \i2|ld_b~2_combout\);

-- Location: LCCOMB_X7_Y31_N6
\i2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~1_combout\ = (\i2|state\(0) & \i2|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|state\(0),
	datad => \i2|state\(2),
	combout => \i2|Mux3~1_combout\);

-- Location: LCCOMB_X7_Y31_N2
\i2|clr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~7_combout\ = (!\i2|Equal0~1_combout\ & ((\i2|Mux3~1_combout\) # ((\i2|Equal0~2_combout\) # (\i2|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Mux3~1_combout\,
	datab => \i2|Equal0~1_combout\,
	datac => \i2|Equal0~2_combout\,
	datad => \i2|Equal0~3_combout\,
	combout => \i2|clr~7_combout\);

-- Location: LCCOMB_X8_Y31_N16
\i2|clr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~1_combout\ = (!\i2|clr~7_combout\ & ((\i2|Equal0~1_combout\) # (\i2|clr~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|clr~7_combout\,
	datac => \i2|Equal0~1_combout\,
	datad => \i2|clr~1_combout\,
	combout => \i2|clr~1_combout\);

-- Location: LCCOMB_X7_Y31_N12
\i2|clr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~0_combout\ = (\i2|Equal0~1_combout\) # (\i2|clr~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal0~1_combout\,
	datad => \i2|clr~7_combout\,
	combout => \i2|clr~0_combout\);

-- Location: FF_X7_Y31_N13
\i2|clr~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|clr~1_combout\,
	clrn => \i2|ALT_INV_clr~0_combout\,
	sload => VCC,
	ena => \i2|ld_b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|clr~_emulated_q\);

-- Location: LCCOMB_X7_Y31_N14
\i2|clr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~2_combout\ = (!\i2|clr~7_combout\ & ((\i2|Equal0~1_combout\) # (\i2|clr~_emulated_q\ $ (\i2|clr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|clr~_emulated_q\,
	datab => \i2|Equal0~1_combout\,
	datac => \i2|clr~1_combout\,
	datad => \i2|clr~7_combout\,
	combout => \i2|clr~2_combout\);

-- Location: LCCOMB_X8_Y31_N24
\i1|reg_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~6_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[6]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[6]~input_o\,
	datac => \i1|reg_b\(6),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~6_combout\);

-- Location: FF_X8_Y31_N25
\i1|reg_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(6));

-- Location: LCCOMB_X8_Y31_N4
\i1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|process_0~1_combout\ = (!\i2|sub_add~q\ & (\i2|slt_a~q\ & \i2|ld_a~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|sub_add~q\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|process_0~1_combout\);

-- Location: LCCOMB_X6_Y31_N18
\i1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~27_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[6]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[6]~input_o\,
	datac => \i1|reg_b\(6),
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~27_combout\);

-- Location: LCCOMB_X6_Y31_N26
\i1|reg_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~5_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & ((\input[5]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|clr~2_combout\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(5),
	datad => \input[5]~input_o\,
	combout => \i1|reg_b~5_combout\);

-- Location: FF_X6_Y31_N27
\i1|reg_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(5));

-- Location: LCCOMB_X6_Y31_N16
\i1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~23_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[5]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[5]~input_o\,
	datac => \i1|reg_b\(5),
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~23_combout\);

-- Location: LCCOMB_X6_Y31_N22
\i1|reg_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~4_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[4]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[4]~input_o\,
	datac => \i1|reg_b\(4),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~4_combout\);

-- Location: FF_X6_Y31_N23
\i1|reg_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(4));

-- Location: LCCOMB_X6_Y31_N24
\i1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~19_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[4]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[4]~input_o\,
	datac => \i1|reg_b\(4),
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~19_combout\);

-- Location: LCCOMB_X8_Y31_N26
\i1|reg_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~3_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[3]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[3]~input_o\,
	datac => \i1|reg_b\(3),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~3_combout\);

-- Location: FF_X8_Y31_N27
\i1|reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(3));

-- Location: LCCOMB_X6_Y31_N12
\i1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~15_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[3]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \i1|reg_b\(3),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~15_combout\);

-- Location: LCCOMB_X8_Y31_N28
\i1|reg_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~2_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[2]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[2]~input_o\,
	datac => \i1|reg_b\(2),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~2_combout\);

-- Location: FF_X8_Y31_N29
\i1|reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(2));

-- Location: LCCOMB_X8_Y31_N22
\i1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~11_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[2]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \i1|reg_b\(2),
	datac => \i1|process_0~1_combout\,
	datad => \i2|ld_b~2_combout\,
	combout => \i1|Add0~11_combout\);

-- Location: LCCOMB_X6_Y31_N8
\i1|reg_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~1_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & ((\input[1]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|clr~2_combout\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(1),
	datad => \input[1]~input_o\,
	combout => \i1|reg_b~1_combout\);

-- Location: FF_X6_Y31_N9
\i1|reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(1));

-- Location: LCCOMB_X6_Y31_N2
\i1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~7_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[1]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \i1|reg_b\(1),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~7_combout\);

-- Location: LCCOMB_X8_Y31_N30
\i1|reg_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~0_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[0]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[0]~input_o\,
	datac => \i1|reg_b\(0),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~0_combout\);

-- Location: FF_X8_Y31_N31
\i1|reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(0));

-- Location: LCCOMB_X8_Y31_N14
\i1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~0_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[0]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_b\(0),
	datab => \input[0]~input_o\,
	datac => \i1|process_0~1_combout\,
	datad => \i2|ld_b~2_combout\,
	combout => \i1|Add0~0_combout\);

-- Location: LCCOMB_X5_Y31_N12
\i1|reg_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~0_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(0))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[0]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \i2|slt_a~q\,
	datac => \i1|reg_a\(0),
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~0_combout\);

-- Location: LCCOMB_X8_Y31_N8
\i1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|process_0~2_combout\ = (\i2|slt_a~q\ & \i2|ld_a~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|process_0~2_combout\);

-- Location: LCCOMB_X5_Y31_N16
\i1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~2_cout\ = CARRY((!\i2|sub_add~q\ & \i1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|sub_add~q\,
	datab => \i1|process_0~2_combout\,
	datad => VCC,
	cout => \i1|Add0~2_cout\);

-- Location: LCCOMB_X5_Y31_N18
\i1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~3_combout\ = (\i1|Add0~0_combout\ & ((\i1|reg_a~0_combout\ & (\i1|Add0~2_cout\ & VCC)) # (!\i1|reg_a~0_combout\ & (!\i1|Add0~2_cout\)))) # (!\i1|Add0~0_combout\ & ((\i1|reg_a~0_combout\ & (!\i1|Add0~2_cout\)) # (!\i1|reg_a~0_combout\ & 
-- ((\i1|Add0~2_cout\) # (GND)))))
-- \i1|Add0~4\ = CARRY((\i1|Add0~0_combout\ & (!\i1|reg_a~0_combout\ & !\i1|Add0~2_cout\)) # (!\i1|Add0~0_combout\ & ((!\i1|Add0~2_cout\) # (!\i1|reg_a~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~0_combout\,
	datab => \i1|reg_a~0_combout\,
	datad => VCC,
	cin => \i1|Add0~2_cout\,
	combout => \i1|Add0~3_combout\,
	cout => \i1|Add0~4\);

-- Location: LCCOMB_X5_Y31_N20
\i1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~8_combout\ = ((\i1|Add0~7_combout\ $ (\i1|reg_a~1_combout\ $ (!\i1|Add0~4\)))) # (GND)
-- \i1|Add0~9\ = CARRY((\i1|Add0~7_combout\ & ((\i1|reg_a~1_combout\) # (!\i1|Add0~4\))) # (!\i1|Add0~7_combout\ & (\i1|reg_a~1_combout\ & !\i1|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~7_combout\,
	datab => \i1|reg_a~1_combout\,
	datad => VCC,
	cin => \i1|Add0~4\,
	combout => \i1|Add0~8_combout\,
	cout => \i1|Add0~9\);

-- Location: LCCOMB_X4_Y31_N24
\i1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~10_combout\ = (\i2|slt_a~q\ & (\i1|Add0~8_combout\)) # (!\i2|slt_a~q\ & ((\input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Add0~8_combout\,
	datac => \i2|slt_a~q\,
	datad => \input[1]~input_o\,
	combout => \i1|Add0~10_combout\);

-- Location: LCCOMB_X4_Y30_N4
\i1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~6_combout\ = (\i2|ld_a~2_combout\) # (\i2|clr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|ld_a~2_combout\,
	datad => \i2|clr~2_combout\,
	combout => \i1|Add0~6_combout\);

-- Location: FF_X4_Y31_N25
\i1|reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~10_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(1));

-- Location: LCCOMB_X5_Y31_N14
\i1|reg_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~1_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(1))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[1]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \i1|reg_a\(1),
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~1_combout\);

-- Location: LCCOMB_X5_Y31_N22
\i1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~12_combout\ = (\i1|Add0~11_combout\ & ((\i1|reg_a~2_combout\ & (\i1|Add0~9\ & VCC)) # (!\i1|reg_a~2_combout\ & (!\i1|Add0~9\)))) # (!\i1|Add0~11_combout\ & ((\i1|reg_a~2_combout\ & (!\i1|Add0~9\)) # (!\i1|reg_a~2_combout\ & ((\i1|Add0~9\) # 
-- (GND)))))
-- \i1|Add0~13\ = CARRY((\i1|Add0~11_combout\ & (!\i1|reg_a~2_combout\ & !\i1|Add0~9\)) # (!\i1|Add0~11_combout\ & ((!\i1|Add0~9\) # (!\i1|reg_a~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~11_combout\,
	datab => \i1|reg_a~2_combout\,
	datad => VCC,
	cin => \i1|Add0~9\,
	combout => \i1|Add0~12_combout\,
	cout => \i1|Add0~13\);

-- Location: LCCOMB_X5_Y31_N0
\i1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~14_combout\ = (\i2|slt_a~q\ & (\i1|Add0~12_combout\)) # (!\i2|slt_a~q\ & ((\input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~12_combout\,
	datac => \input[2]~input_o\,
	datad => \i2|slt_a~q\,
	combout => \i1|Add0~14_combout\);

-- Location: FF_X5_Y31_N1
\i1|reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~14_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(2));

-- Location: LCCOMB_X8_Y31_N20
\i1|reg_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~2_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(2))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[2]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \input[2]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~2_combout\);

-- Location: LCCOMB_X5_Y31_N24
\i1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~16_combout\ = ((\i1|reg_a~3_combout\ $ (\i1|Add0~15_combout\ $ (!\i1|Add0~13\)))) # (GND)
-- \i1|Add0~17\ = CARRY((\i1|reg_a~3_combout\ & ((\i1|Add0~15_combout\) # (!\i1|Add0~13\))) # (!\i1|reg_a~3_combout\ & (\i1|Add0~15_combout\ & !\i1|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~3_combout\,
	datab => \i1|Add0~15_combout\,
	datad => VCC,
	cin => \i1|Add0~13\,
	combout => \i1|Add0~16_combout\,
	cout => \i1|Add0~17\);

-- Location: LCCOMB_X5_Y31_N4
\i1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~18_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~16_combout\))) # (!\i2|slt_a~q\ & (\input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datac => \input[3]~input_o\,
	datad => \i1|Add0~16_combout\,
	combout => \i1|Add0~18_combout\);

-- Location: FF_X5_Y31_N5
\i1|reg_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~18_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(3));

-- Location: LCCOMB_X5_Y31_N6
\i1|reg_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~3_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(3))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[3]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(3),
	datab => \input[3]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~3_combout\);

-- Location: LCCOMB_X5_Y31_N26
\i1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~20_combout\ = (\i1|reg_a~4_combout\ & ((\i1|Add0~19_combout\ & (\i1|Add0~17\ & VCC)) # (!\i1|Add0~19_combout\ & (!\i1|Add0~17\)))) # (!\i1|reg_a~4_combout\ & ((\i1|Add0~19_combout\ & (!\i1|Add0~17\)) # (!\i1|Add0~19_combout\ & ((\i1|Add0~17\) # 
-- (GND)))))
-- \i1|Add0~21\ = CARRY((\i1|reg_a~4_combout\ & (!\i1|Add0~19_combout\ & !\i1|Add0~17\)) # (!\i1|reg_a~4_combout\ & ((!\i1|Add0~17\) # (!\i1|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~4_combout\,
	datab => \i1|Add0~19_combout\,
	datad => VCC,
	cin => \i1|Add0~17\,
	combout => \i1|Add0~20_combout\,
	cout => \i1|Add0~21\);

-- Location: LCCOMB_X4_Y31_N6
\i1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~22_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~20_combout\))) # (!\i2|slt_a~q\ & (\input[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[4]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i1|Add0~20_combout\,
	combout => \i1|Add0~22_combout\);

-- Location: FF_X4_Y31_N7
\i1|reg_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~22_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(4));

-- Location: LCCOMB_X4_Y31_N14
\i1|reg_a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~4_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(4))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[4]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \input[4]~input_o\,
	datac => \i2|ld_a~2_combout\,
	datad => \i1|reg_a\(4),
	combout => \i1|reg_a~4_combout\);

-- Location: LCCOMB_X5_Y31_N28
\i1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~24_combout\ = ((\i1|reg_a~5_combout\ $ (\i1|Add0~23_combout\ $ (!\i1|Add0~21\)))) # (GND)
-- \i1|Add0~25\ = CARRY((\i1|reg_a~5_combout\ & ((\i1|Add0~23_combout\) # (!\i1|Add0~21\))) # (!\i1|reg_a~5_combout\ & (\i1|Add0~23_combout\ & !\i1|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~5_combout\,
	datab => \i1|Add0~23_combout\,
	datad => VCC,
	cin => \i1|Add0~21\,
	combout => \i1|Add0~24_combout\,
	cout => \i1|Add0~25\);

-- Location: LCCOMB_X5_Y31_N8
\i1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~26_combout\ = (\i2|slt_a~q\ & (\i1|Add0~24_combout\)) # (!\i2|slt_a~q\ & ((\input[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datac => \i1|Add0~24_combout\,
	datad => \input[5]~input_o\,
	combout => \i1|Add0~26_combout\);

-- Location: FF_X5_Y31_N9
\i1|reg_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~26_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(5));

-- Location: LCCOMB_X4_Y31_N26
\i1|reg_a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~5_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(5))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[5]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \input[5]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~5_combout\);

-- Location: LCCOMB_X5_Y31_N30
\i1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~28_combout\ = (\i1|reg_a~6_combout\ & ((\i1|Add0~27_combout\ & (\i1|Add0~25\ & VCC)) # (!\i1|Add0~27_combout\ & (!\i1|Add0~25\)))) # (!\i1|reg_a~6_combout\ & ((\i1|Add0~27_combout\ & (!\i1|Add0~25\)) # (!\i1|Add0~27_combout\ & ((\i1|Add0~25\) # 
-- (GND)))))
-- \i1|Add0~29\ = CARRY((\i1|reg_a~6_combout\ & (!\i1|Add0~27_combout\ & !\i1|Add0~25\)) # (!\i1|reg_a~6_combout\ & ((!\i1|Add0~25\) # (!\i1|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~6_combout\,
	datab => \i1|Add0~27_combout\,
	datad => VCC,
	cin => \i1|Add0~25\,
	combout => \i1|Add0~28_combout\,
	cout => \i1|Add0~29\);

-- Location: LCCOMB_X5_Y31_N10
\i1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~30_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~28_combout\))) # (!\i2|slt_a~q\ & (\input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datac => \input[6]~input_o\,
	datad => \i1|Add0~28_combout\,
	combout => \i1|Add0~30_combout\);

-- Location: FF_X5_Y31_N11
\i1|reg_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~30_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(6));

-- Location: LCCOMB_X4_Y30_N20
\i1|reg_a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~7_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(7))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[7]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(7),
	datab => \input[7]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~7_combout\);

-- Location: LCCOMB_X6_Y31_N28
\i1|reg_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~7_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[7]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[7]~input_o\,
	datac => \i1|reg_b\(7),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~7_combout\);

-- Location: FF_X6_Y31_N29
\i1|reg_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(7));

-- Location: LCCOMB_X6_Y31_N30
\i1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~31_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[7]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \i1|reg_b\(7),
	datac => \input[7]~input_o\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~31_combout\);

-- Location: LCCOMB_X5_Y30_N0
\i1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~32_combout\ = ((\i1|reg_a~7_combout\ $ (\i1|Add0~31_combout\ $ (!\i1|Add0~29\)))) # (GND)
-- \i1|Add0~33\ = CARRY((\i1|reg_a~7_combout\ & ((\i1|Add0~31_combout\) # (!\i1|Add0~29\))) # (!\i1|reg_a~7_combout\ & (\i1|Add0~31_combout\ & !\i1|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~7_combout\,
	datab => \i1|Add0~31_combout\,
	datad => VCC,
	cin => \i1|Add0~29\,
	combout => \i1|Add0~32_combout\,
	cout => \i1|Add0~33\);

-- Location: LCCOMB_X5_Y30_N30
\i1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~34_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~32_combout\))) # (!\i2|slt_a~q\ & (\input[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|slt_a~q\,
	datac => \input[7]~input_o\,
	datad => \i1|Add0~32_combout\,
	combout => \i1|Add0~34_combout\);

-- Location: FF_X5_Y30_N31
\i1|reg_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~34_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(7));

-- Location: LCCOMB_X4_Y31_N22
\i1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~1_combout\ = (!\i1|reg_a\(6) & (!\i1|reg_a\(7) & (!\i1|reg_a\(5) & !\i1|reg_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(6),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(5),
	datad => \i1|reg_a\(4),
	combout => \i1|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y30_N24
\i1|reg_b~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~13_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[13]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[13]~input_o\,
	datac => \i1|reg_b\(13),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~13_combout\);

-- Location: FF_X6_Y30_N25
\i1|reg_b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(13));

-- Location: LCCOMB_X6_Y30_N2
\i1|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~55_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[13]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[13]~input_o\,
	datab => \i1|reg_b\(13),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~55_combout\);

-- Location: LCCOMB_X6_Y30_N12
\i1|reg_a~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~13_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(13))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[13]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[13]~input_o\,
	datab => \i1|reg_a\(13),
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~13_combout\);

-- Location: LCCOMB_X6_Y30_N28
\i1|reg_b~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~12_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[12]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[12]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(12),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~12_combout\);

-- Location: FF_X6_Y30_N29
\i1|reg_b[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(12));

-- Location: LCCOMB_X6_Y30_N10
\i1|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~51_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[12]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[12]~input_o\,
	datab => \i1|reg_b\(12),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~51_combout\);

-- Location: LCCOMB_X6_Y30_N16
\i1|reg_b~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~11_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[11]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[11]~input_o\,
	datab => \i2|clr~2_combout\,
	datac => \i1|reg_b\(11),
	datad => \i2|ld_b~2_combout\,
	combout => \i1|reg_b~11_combout\);

-- Location: FF_X6_Y30_N17
\i1|reg_b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(11));

-- Location: LCCOMB_X6_Y30_N6
\i1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~47_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[11]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[11]~input_o\,
	datab => \i1|reg_b\(11),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~47_combout\);

-- Location: LCCOMB_X6_Y30_N0
\i1|reg_b~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~10_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[10]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[10]~input_o\,
	datab => \i2|clr~2_combout\,
	datac => \i1|reg_b\(10),
	datad => \i2|ld_b~2_combout\,
	combout => \i1|reg_b~10_combout\);

-- Location: FF_X6_Y30_N1
\i1|reg_b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(10));

-- Location: LCCOMB_X6_Y31_N20
\i1|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~43_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[10]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \i1|reg_b\(10),
	datac => \input[10]~input_o\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~43_combout\);

-- Location: LCCOMB_X6_Y31_N0
\i1|reg_b~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~9_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[9]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(9),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~9_combout\);

-- Location: FF_X6_Y31_N1
\i1|reg_b[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(9));

-- Location: LCCOMB_X6_Y31_N6
\i1|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~39_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[9]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \i1|reg_b\(9),
	datac => \input[9]~input_o\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~39_combout\);

-- Location: LCCOMB_X6_Y31_N4
\i1|reg_b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~8_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[8]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[8]~input_o\,
	datab => \i2|clr~2_combout\,
	datac => \i1|reg_b\(8),
	datad => \i2|ld_b~2_combout\,
	combout => \i1|reg_b~8_combout\);

-- Location: FF_X6_Y31_N5
\i1|reg_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(8));

-- Location: LCCOMB_X6_Y31_N14
\i1|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~35_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[8]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \i1|reg_b\(8),
	datac => \input[8]~input_o\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~35_combout\);

-- Location: LCCOMB_X5_Y30_N2
\i1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~36_combout\ = (\i1|reg_a~8_combout\ & ((\i1|Add0~35_combout\ & (\i1|Add0~33\ & VCC)) # (!\i1|Add0~35_combout\ & (!\i1|Add0~33\)))) # (!\i1|reg_a~8_combout\ & ((\i1|Add0~35_combout\ & (!\i1|Add0~33\)) # (!\i1|Add0~35_combout\ & ((\i1|Add0~33\) # 
-- (GND)))))
-- \i1|Add0~37\ = CARRY((\i1|reg_a~8_combout\ & (!\i1|Add0~35_combout\ & !\i1|Add0~33\)) # (!\i1|reg_a~8_combout\ & ((!\i1|Add0~33\) # (!\i1|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~8_combout\,
	datab => \i1|Add0~35_combout\,
	datad => VCC,
	cin => \i1|Add0~33\,
	combout => \i1|Add0~36_combout\,
	cout => \i1|Add0~37\);

-- Location: LCCOMB_X5_Y30_N20
\i1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~38_combout\ = (\i2|slt_a~q\ & (\i1|Add0~36_combout\)) # (!\i2|slt_a~q\ & ((\input[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|slt_a~q\,
	datac => \i1|Add0~36_combout\,
	datad => \input[8]~input_o\,
	combout => \i1|Add0~38_combout\);

-- Location: FF_X5_Y30_N21
\i1|reg_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~38_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(8));

-- Location: LCCOMB_X4_Y30_N26
\i1|reg_a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~8_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(8))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[8]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[8]~input_o\,
	datab => \i1|reg_a\(8),
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~8_combout\);

-- Location: LCCOMB_X5_Y30_N4
\i1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~40_combout\ = ((\i1|reg_a~9_combout\ $ (\i1|Add0~39_combout\ $ (!\i1|Add0~37\)))) # (GND)
-- \i1|Add0~41\ = CARRY((\i1|reg_a~9_combout\ & ((\i1|Add0~39_combout\) # (!\i1|Add0~37\))) # (!\i1|reg_a~9_combout\ & (\i1|Add0~39_combout\ & !\i1|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~9_combout\,
	datab => \i1|Add0~39_combout\,
	datad => VCC,
	cin => \i1|Add0~37\,
	combout => \i1|Add0~40_combout\,
	cout => \i1|Add0~41\);

-- Location: LCCOMB_X5_Y30_N24
\i1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~42_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~40_combout\))) # (!\i2|slt_a~q\ & (\input[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[9]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i1|Add0~40_combout\,
	combout => \i1|Add0~42_combout\);

-- Location: FF_X5_Y30_N25
\i1|reg_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~42_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(9));

-- Location: LCCOMB_X4_Y30_N12
\i1|reg_a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~9_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(9))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[9]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(9),
	datab => \input[9]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~9_combout\);

-- Location: LCCOMB_X5_Y30_N6
\i1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~44_combout\ = (\i1|reg_a~10_combout\ & ((\i1|Add0~43_combout\ & (\i1|Add0~41\ & VCC)) # (!\i1|Add0~43_combout\ & (!\i1|Add0~41\)))) # (!\i1|reg_a~10_combout\ & ((\i1|Add0~43_combout\ & (!\i1|Add0~41\)) # (!\i1|Add0~43_combout\ & ((\i1|Add0~41\) # 
-- (GND)))))
-- \i1|Add0~45\ = CARRY((\i1|reg_a~10_combout\ & (!\i1|Add0~43_combout\ & !\i1|Add0~41\)) # (!\i1|reg_a~10_combout\ & ((!\i1|Add0~41\) # (!\i1|Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~10_combout\,
	datab => \i1|Add0~43_combout\,
	datad => VCC,
	cin => \i1|Add0~41\,
	combout => \i1|Add0~44_combout\,
	cout => \i1|Add0~45\);

-- Location: LCCOMB_X5_Y30_N22
\i1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~46_combout\ = (\i2|slt_a~q\ & (\i1|Add0~44_combout\)) # (!\i2|slt_a~q\ & ((\input[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~44_combout\,
	datab => \input[10]~input_o\,
	datac => \i2|slt_a~q\,
	combout => \i1|Add0~46_combout\);

-- Location: FF_X5_Y30_N23
\i1|reg_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~46_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(10));

-- Location: LCCOMB_X6_Y30_N30
\i1|reg_a~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~10_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(10))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[10]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[10]~input_o\,
	datab => \i1|reg_a\(10),
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~10_combout\);

-- Location: LCCOMB_X5_Y30_N8
\i1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~48_combout\ = ((\i1|reg_a~11_combout\ $ (\i1|Add0~47_combout\ $ (!\i1|Add0~45\)))) # (GND)
-- \i1|Add0~49\ = CARRY((\i1|reg_a~11_combout\ & ((\i1|Add0~47_combout\) # (!\i1|Add0~45\))) # (!\i1|reg_a~11_combout\ & (\i1|Add0~47_combout\ & !\i1|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~11_combout\,
	datab => \i1|Add0~47_combout\,
	datad => VCC,
	cin => \i1|Add0~45\,
	combout => \i1|Add0~48_combout\,
	cout => \i1|Add0~49\);

-- Location: LCCOMB_X5_Y30_N26
\i1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~50_combout\ = (\i2|slt_a~q\ & (\i1|Add0~48_combout\)) # (!\i2|slt_a~q\ & ((\input[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~48_combout\,
	datab => \i2|slt_a~q\,
	datac => \input[11]~input_o\,
	combout => \i1|Add0~50_combout\);

-- Location: FF_X5_Y30_N27
\i1|reg_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~50_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(11));

-- Location: LCCOMB_X4_Y30_N10
\i1|reg_a~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~11_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(11))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[11]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i2|slt_a~q\,
	datac => \input[11]~input_o\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~11_combout\);

-- Location: LCCOMB_X5_Y30_N10
\i1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~52_combout\ = (\i1|reg_a~12_combout\ & ((\i1|Add0~51_combout\ & (\i1|Add0~49\ & VCC)) # (!\i1|Add0~51_combout\ & (!\i1|Add0~49\)))) # (!\i1|reg_a~12_combout\ & ((\i1|Add0~51_combout\ & (!\i1|Add0~49\)) # (!\i1|Add0~51_combout\ & ((\i1|Add0~49\) # 
-- (GND)))))
-- \i1|Add0~53\ = CARRY((\i1|reg_a~12_combout\ & (!\i1|Add0~51_combout\ & !\i1|Add0~49\)) # (!\i1|reg_a~12_combout\ & ((!\i1|Add0~49\) # (!\i1|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~12_combout\,
	datab => \i1|Add0~51_combout\,
	datad => VCC,
	cin => \i1|Add0~49\,
	combout => \i1|Add0~52_combout\,
	cout => \i1|Add0~53\);

-- Location: LCCOMB_X4_Y30_N0
\i1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~54_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~52_combout\))) # (!\i2|slt_a~q\ & (\input[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[12]~input_o\,
	datab => \i2|slt_a~q\,
	datac => \i1|Add0~52_combout\,
	combout => \i1|Add0~54_combout\);

-- Location: FF_X4_Y30_N1
\i1|reg_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~54_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(12));

-- Location: LCCOMB_X4_Y30_N14
\i1|reg_a~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~12_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(12))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[12]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(12),
	datab => \i2|slt_a~q\,
	datac => \input[12]~input_o\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~12_combout\);

-- Location: LCCOMB_X5_Y30_N12
\i1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~56_combout\ = ((\i1|Add0~55_combout\ $ (\i1|reg_a~13_combout\ $ (!\i1|Add0~53\)))) # (GND)
-- \i1|Add0~57\ = CARRY((\i1|Add0~55_combout\ & ((\i1|reg_a~13_combout\) # (!\i1|Add0~53\))) # (!\i1|Add0~55_combout\ & (\i1|reg_a~13_combout\ & !\i1|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~55_combout\,
	datab => \i1|reg_a~13_combout\,
	datad => VCC,
	cin => \i1|Add0~53\,
	combout => \i1|Add0~56_combout\,
	cout => \i1|Add0~57\);

-- Location: LCCOMB_X5_Y30_N28
\i1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~58_combout\ = (\i2|slt_a~q\ & (\i1|Add0~56_combout\)) # (!\i2|slt_a~q\ & ((\input[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|slt_a~q\,
	datac => \i1|Add0~56_combout\,
	datad => \input[13]~input_o\,
	combout => \i1|Add0~58_combout\);

-- Location: FF_X5_Y30_N29
\i1|reg_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~58_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(13));

-- Location: LCCOMB_X4_Y31_N30
\i1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~2_combout\ = (!\i1|reg_a\(9) & (!\i1|reg_a\(10) & (!\i1|reg_a\(11) & !\i1|reg_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(9),
	datab => \i1|reg_a\(10),
	datac => \i1|reg_a\(11),
	datad => \i1|reg_a\(8),
	combout => \i1|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y30_N26
\i1|reg_b~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~14_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[14]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[14]~input_o\,
	datac => \i1|reg_b\(14),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~14_combout\);

-- Location: FF_X6_Y30_N27
\i1|reg_b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(14));

-- Location: LCCOMB_X6_Y30_N20
\i1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~59_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[14]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_b\(14),
	datab => \input[14]~input_o\,
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~59_combout\);

-- Location: LCCOMB_X4_Y30_N6
\i1|reg_a~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~14_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(14))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[14]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \i1|reg_a\(14),
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~14_combout\);

-- Location: LCCOMB_X5_Y30_N14
\i1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~60_combout\ = (\i1|Add0~59_combout\ & ((\i1|reg_a~14_combout\ & (\i1|Add0~57\ & VCC)) # (!\i1|reg_a~14_combout\ & (!\i1|Add0~57\)))) # (!\i1|Add0~59_combout\ & ((\i1|reg_a~14_combout\ & (!\i1|Add0~57\)) # (!\i1|reg_a~14_combout\ & ((\i1|Add0~57\) 
-- # (GND)))))
-- \i1|Add0~61\ = CARRY((\i1|Add0~59_combout\ & (!\i1|reg_a~14_combout\ & !\i1|Add0~57\)) # (!\i1|Add0~59_combout\ & ((!\i1|Add0~57\) # (!\i1|reg_a~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~59_combout\,
	datab => \i1|reg_a~14_combout\,
	datad => VCC,
	cin => \i1|Add0~57\,
	combout => \i1|Add0~60_combout\,
	cout => \i1|Add0~61\);

-- Location: LCCOMB_X4_Y30_N2
\i1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~62_combout\ = (\i2|slt_a~q\ & (\i1|Add0~60_combout\)) # (!\i2|slt_a~q\ & ((\input[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|slt_a~q\,
	datac => \i1|Add0~60_combout\,
	datad => \input[14]~input_o\,
	combout => \i1|Add0~62_combout\);

-- Location: FF_X4_Y30_N3
\i1|reg_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~62_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(14));

-- Location: LCCOMB_X4_Y31_N18
\i1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~3_combout\ = (!\i1|reg_a\(13) & (!\i1|reg_a\(12) & (\i1|Equal0~2_combout\ & !\i1|reg_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(13),
	datab => \i1|reg_a\(12),
	datac => \i1|Equal0~2_combout\,
	datad => \i1|reg_a\(14),
	combout => \i1|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y31_N28
\i1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~4_combout\ = (\i1|Equal0~1_combout\ & (\i1|Equal0~3_combout\ & \i1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~1_combout\,
	datab => \i1|Equal0~3_combout\,
	datac => \i1|Equal0~0_combout\,
	combout => \i1|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y31_N6
\i2|ld_a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~7_combout\ = (\i2|Equal0~1_combout\) # ((!\i2|Equal0~3_combout\ & ((\i2|Equal0~2_combout\) # (\i2|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Equal0~2_combout\,
	datab => \i2|Mux3~1_combout\,
	datac => \i2|Equal0~1_combout\,
	datad => \i2|Equal0~3_combout\,
	combout => \i2|ld_a~7_combout\);

-- Location: LCCOMB_X8_Y31_N2
\i2|ld_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~1_combout\ = (!\i2|ld_a~7_combout\ & ((\i2|Equal0~3_combout\) # (\i2|ld_a~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal0~3_combout\,
	datac => \i2|ld_a~7_combout\,
	datad => \i2|ld_a~1_combout\,
	combout => \i2|ld_a~1_combout\);

-- Location: LCCOMB_X8_Y31_N12
\i2|ld_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~3_combout\ = \i2|ld_a~1_combout\ $ (((\i2|state\(1) & ((\i1|reg_a\(15)) # (!\i1|Equal0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|Equal0~4_combout\,
	datac => \i2|state\(1),
	datad => \i2|ld_a~1_combout\,
	combout => \i2|ld_a~3_combout\);

-- Location: LCCOMB_X8_Y31_N0
\i2|ld_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~0_combout\ = (\i2|Equal0~3_combout\) # (\i2|ld_a~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|Equal0~3_combout\,
	datad => \i2|ld_a~7_combout\,
	combout => \i2|ld_a~0_combout\);

-- Location: LCCOMB_X3_Y31_N8
\i2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~2_combout\ = (\i2|state\(2) & (!\i2|state\(0) & !\i2|state\(1))) # (!\i2|state\(2) & (\i2|state\(0) & \i2|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(2),
	datab => \i2|state\(0),
	datad => \i2|state\(1),
	combout => \i2|Mux3~2_combout\);

-- Location: FF_X8_Y31_N13
\i2|ld_a~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|ld_a~3_combout\,
	clrn => \i2|ALT_INV_ld_a~0_combout\,
	ena => \i2|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|ld_a~_emulated_q\);

-- Location: LCCOMB_X8_Y31_N18
\i2|ld_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~2_combout\ = (!\i2|ld_a~7_combout\ & ((\i2|Equal0~3_combout\) # (\i2|ld_a~_emulated_q\ $ (\i2|ld_a~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_a~_emulated_q\,
	datab => \i2|Equal0~3_combout\,
	datac => \i2|ld_a~1_combout\,
	datad => \i2|ld_a~7_combout\,
	combout => \i2|ld_a~2_combout\);

-- Location: LCCOMB_X4_Y30_N18
\i1|reg_a~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~15_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(15))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[15]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \input[15]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~15_combout\);

-- Location: LCCOMB_X6_Y30_N18
\i1|reg_b~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~15_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[15]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[15]~input_o\,
	datac => \i1|reg_b\(15),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~15_combout\);

-- Location: FF_X6_Y30_N19
\i1|reg_b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(15));

-- Location: LCCOMB_X6_Y30_N4
\i1|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~63_combout\ = \i1|process_0~1_combout\ $ (((\i2|ld_b~2_combout\ & (\input[15]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[15]~input_o\,
	datab => \i1|reg_b\(15),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~1_combout\,
	combout => \i1|Add0~63_combout\);

-- Location: LCCOMB_X5_Y30_N16
\i1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~64_combout\ = \i1|reg_a~15_combout\ $ (\i1|Add0~61\ $ (!\i1|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~15_combout\,
	datad => \i1|Add0~63_combout\,
	cin => \i1|Add0~61\,
	combout => \i1|Add0~64_combout\);

-- Location: LCCOMB_X5_Y30_N18
\i1|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~66_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~64_combout\))) # (!\i2|slt_a~q\ & (\input[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[15]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i1|Add0~64_combout\,
	combout => \i1|Add0~66_combout\);

-- Location: FF_X5_Y30_N19
\i1|reg_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~66_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(15));

-- Location: LCCOMB_X4_Y31_N20
\i1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|process_0~3_combout\ = (\i1|reg_a\(15)) # ((\i1|Equal0~0_combout\ & (\i1|Equal0~1_combout\ & \i1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~0_combout\,
	datab => \i1|reg_a\(15),
	datac => \i1|Equal0~1_combout\,
	datad => \i1|Equal0~3_combout\,
	combout => \i1|process_0~3_combout\);

-- Location: LCCOMB_X4_Y31_N8
\i1|a_lt_z\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|a_lt_z~combout\ = (\i1|Equal0~5_combout\ & ((\i1|a_lt_z~combout\))) # (!\i1|Equal0~5_combout\ & (\i1|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|process_0~3_combout\,
	datac => \i1|a_lt_z~combout\,
	datad => \i1|Equal0~5_combout\,
	combout => \i1|a_lt_z~combout\);

-- Location: LCCOMB_X4_Y31_N4
\i2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~1_combout\ = (\i2|state\(1) & (((\i1|a_lt_z~combout\ & !\i1|Equal0~5_combout\)))) # (!\i2|state\(1) & (!\bt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt~input_o\,
	datab => \i1|a_lt_z~combout\,
	datac => \i1|Equal0~5_combout\,
	datad => \i2|state\(1),
	combout => \i2|Mux1~1_combout\);

-- Location: LCCOMB_X3_Y31_N18
\i2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~0_combout\ = (\i2|state\(0) & !\i2|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(0),
	datac => \i2|state\(2),
	combout => \i2|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y31_N8
\i2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~2_combout\ = (\i2|Mux1~0_combout\) # ((\i2|Equal0~2_combout\) # ((\i2|Mux1~1_combout\ & \i2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Mux1~0_combout\,
	datab => \i2|Equal0~2_combout\,
	datac => \i2|Mux1~1_combout\,
	datad => \i2|Equal0~0_combout\,
	combout => \i2|Mux1~2_combout\);

-- Location: FF_X7_Y31_N9
\i2|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|state\(1));

-- Location: LCCOMB_X3_Y31_N4
\i2|slt_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|slt_a~0_combout\ = (\i2|slt_a~q\ & (((\i2|state\(0)) # (\i2|state\(1))) # (!\i2|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(2),
	datab => \i2|state\(0),
	datac => \i2|slt_a~q\,
	datad => \i2|state\(1),
	combout => \i2|slt_a~0_combout\);

-- Location: LCCOMB_X3_Y31_N26
\i2|slt_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|slt_a~1_combout\ = (\i2|slt_a~0_combout\) # ((\i2|state\(1) & (\i2|Equal0~0_combout\ & !\i1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datab => \i2|Equal0~0_combout\,
	datac => \i2|slt_a~0_combout\,
	datad => \i1|Equal0~5_combout\,
	combout => \i2|slt_a~1_combout\);

-- Location: LCCOMB_X3_Y31_N0
\i2|slt_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|slt_a~2_combout\ = (!\i2|state\(2) & !\i2|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(2),
	datad => \i2|state\(1),
	combout => \i2|slt_a~2_combout\);

-- Location: FF_X3_Y31_N27
\i2|slt_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|slt_a~1_combout\,
	clrn => \i2|ALT_INV_slt_a~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|slt_a~q\);

-- Location: LCCOMB_X5_Y31_N2
\i1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~5_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~3_combout\))) # (!\i2|slt_a~q\ & (\input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i1|Add0~3_combout\,
	combout => \i1|Add0~5_combout\);

-- Location: FF_X5_Y31_N3
\i1|reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~5_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(0));

-- Location: LCCOMB_X4_Y31_N12
\i1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = (!\i1|reg_a\(0) & (!\i1|reg_a\(3) & (!\i1|reg_a\(2) & !\i1|reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(0),
	datab => \i1|reg_a\(3),
	datac => \i1|reg_a\(2),
	datad => \i1|reg_a\(1),
	combout => \i1|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y31_N10
\i1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~5_combout\ = (\i1|Equal0~0_combout\ & (!\i1|reg_a\(15) & (\i1|Equal0~1_combout\ & \i1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~0_combout\,
	datab => \i1|reg_a\(15),
	datac => \i1|Equal0~1_combout\,
	datad => \i1|Equal0~3_combout\,
	combout => \i1|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y31_N14
\i2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~3_combout\ = (!\i2|state\(2) & (\i2|state\(0) & \i2|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(2),
	datab => \i2|state\(0),
	datad => \i2|state\(1),
	combout => \i2|Mux3~3_combout\);

-- Location: LCCOMB_X4_Y31_N0
\i2|sub_add~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|sub_add~0_combout\ = (\i1|Equal0~5_combout\ & (((\i2|sub_add~q\)))) # (!\i1|Equal0~5_combout\ & ((\i2|Mux3~3_combout\ & (\i1|a_lt_z~combout\)) # (!\i2|Mux3~3_combout\ & ((\i2|sub_add~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~5_combout\,
	datab => \i2|Mux3~3_combout\,
	datac => \i1|a_lt_z~combout\,
	datad => \i2|sub_add~q\,
	combout => \i2|sub_add~0_combout\);

-- Location: FF_X8_Y31_N9
\i2|sub_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|sub_add~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|sub_add~q\);

-- Location: LCCOMB_X3_Y31_N10
\i2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\i2|state\(1) & ((\i1|reg_a\(15)) # (!\i1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datab => \i1|Equal0~4_combout\,
	datad => \i1|reg_a\(15),
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y31_N20
\i2|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|cnt~0_combout\ = (\i2|Equal0~3_combout\) # ((\i2|Equal0~1_combout\) # ((\i2|Equal0~2_combout\) # (\i2|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Equal0~3_combout\,
	datab => \i2|Equal0~1_combout\,
	datac => \i2|Equal0~2_combout\,
	datad => \i2|Mux3~1_combout\,
	combout => \i2|cnt~0_combout\);

-- Location: FF_X3_Y31_N11
\i2|cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|Mux3~0_combout\,
	clrn => \i2|ALT_INV_cnt~0_combout\,
	ena => \i2|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|cnt~q\);

-- Location: LCCOMB_X3_Y31_N20
\i1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|process_0~0_combout\ = (!\i2|sub_add~q\ & \i2|cnt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|sub_add~q\,
	datad => \i2|cnt~q\,
	combout => \i1|process_0~0_combout\);

-- Location: LCCOMB_X1_Y51_N0
\i1|quotient[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[0]~16_combout\ = \i1|quotient\(0) $ (VCC)
-- \i1|quotient[0]~17\ = CARRY(\i1|quotient\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|quotient\(0),
	datad => VCC,
	combout => \i1|quotient[0]~16_combout\,
	cout => \i1|quotient[0]~17\);

-- Location: LCCOMB_X2_Y31_N12
\i1|quotient[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[3]~18_combout\ = (\i2|cnt~q\) # (\i2|clr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|cnt~q\,
	datac => \i2|clr~2_combout\,
	combout => \i1|quotient[3]~18_combout\);

-- Location: FF_X1_Y51_N1
\i1|quotient[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[0]~16_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(0));

-- Location: LCCOMB_X1_Y51_N2
\i1|quotient[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[1]~19_combout\ = (\i1|quotient\(1) & ((\i1|process_0~0_combout\ & (!\i1|quotient[0]~17\)) # (!\i1|process_0~0_combout\ & (\i1|quotient[0]~17\ & VCC)))) # (!\i1|quotient\(1) & ((\i1|process_0~0_combout\ & ((\i1|quotient[0]~17\) # (GND))) # 
-- (!\i1|process_0~0_combout\ & (!\i1|quotient[0]~17\))))
-- \i1|quotient[1]~20\ = CARRY((\i1|quotient\(1) & (\i1|process_0~0_combout\ & !\i1|quotient[0]~17\)) # (!\i1|quotient\(1) & ((\i1|process_0~0_combout\) # (!\i1|quotient[0]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(1),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[0]~17\,
	combout => \i1|quotient[1]~19_combout\,
	cout => \i1|quotient[1]~20\);

-- Location: FF_X1_Y51_N3
\i1|quotient[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[1]~19_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(1));

-- Location: LCCOMB_X1_Y51_N4
\i1|quotient[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[2]~21_combout\ = ((\i1|quotient\(2) $ (\i1|process_0~0_combout\ $ (\i1|quotient[1]~20\)))) # (GND)
-- \i1|quotient[2]~22\ = CARRY((\i1|quotient\(2) & ((!\i1|quotient[1]~20\) # (!\i1|process_0~0_combout\))) # (!\i1|quotient\(2) & (!\i1|process_0~0_combout\ & !\i1|quotient[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(2),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[1]~20\,
	combout => \i1|quotient[2]~21_combout\,
	cout => \i1|quotient[2]~22\);

-- Location: FF_X1_Y51_N5
\i1|quotient[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[2]~21_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(2));

-- Location: LCCOMB_X1_Y51_N6
\i1|quotient[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[3]~23_combout\ = (\i1|quotient\(3) & ((\i1|process_0~0_combout\ & (!\i1|quotient[2]~22\)) # (!\i1|process_0~0_combout\ & (\i1|quotient[2]~22\ & VCC)))) # (!\i1|quotient\(3) & ((\i1|process_0~0_combout\ & ((\i1|quotient[2]~22\) # (GND))) # 
-- (!\i1|process_0~0_combout\ & (!\i1|quotient[2]~22\))))
-- \i1|quotient[3]~24\ = CARRY((\i1|quotient\(3) & (\i1|process_0~0_combout\ & !\i1|quotient[2]~22\)) # (!\i1|quotient\(3) & ((\i1|process_0~0_combout\) # (!\i1|quotient[2]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[2]~22\,
	combout => \i1|quotient[3]~23_combout\,
	cout => \i1|quotient[3]~24\);

-- Location: FF_X1_Y51_N7
\i1|quotient[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[3]~23_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(3));

-- Location: LCCOMB_X1_Y52_N16
\dispQ0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ0|Mux0~0_combout\ = (\i1|quotient\(3) & (\i1|quotient\(0) & (\i1|quotient\(1) $ (\i1|quotient\(2))))) # (!\i1|quotient\(3) & (!\i1|quotient\(1) & (\i1|quotient\(0) $ (\i1|quotient\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|quotient\(0),
	datac => \i1|quotient\(1),
	datad => \i1|quotient\(2),
	combout => \dispQ0|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y52_N26
\dispQ0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ0|Mux1~0_combout\ = (\i1|quotient\(3) & ((\i1|quotient\(0) & (\i1|quotient\(1))) # (!\i1|quotient\(0) & ((\i1|quotient\(2)))))) # (!\i1|quotient\(3) & (\i1|quotient\(2) & (\i1|quotient\(0) $ (\i1|quotient\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|quotient\(0),
	datac => \i1|quotient\(1),
	datad => \i1|quotient\(2),
	combout => \dispQ0|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y52_N12
\dispQ0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ0|Mux2~0_combout\ = (\i1|quotient\(3) & (\i1|quotient\(2) & ((\i1|quotient\(1)) # (!\i1|quotient\(0))))) # (!\i1|quotient\(3) & (!\i1|quotient\(0) & (\i1|quotient\(1) & !\i1|quotient\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|quotient\(0),
	datac => \i1|quotient\(1),
	datad => \i1|quotient\(2),
	combout => \dispQ0|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y52_N2
\dispQ0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ0|Mux3~0_combout\ = (\i1|quotient\(1) & ((\i1|quotient\(0) & ((\i1|quotient\(2)))) # (!\i1|quotient\(0) & (\i1|quotient\(3) & !\i1|quotient\(2))))) # (!\i1|quotient\(1) & (!\i1|quotient\(3) & (\i1|quotient\(0) $ (\i1|quotient\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|quotient\(0),
	datac => \i1|quotient\(1),
	datad => \i1|quotient\(2),
	combout => \dispQ0|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y52_N4
\dispQ0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ0|Mux4~0_combout\ = (\i1|quotient\(1) & (!\i1|quotient\(3) & (\i1|quotient\(0)))) # (!\i1|quotient\(1) & ((\i1|quotient\(2) & (!\i1|quotient\(3))) # (!\i1|quotient\(2) & ((\i1|quotient\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|quotient\(0),
	datac => \i1|quotient\(1),
	datad => \i1|quotient\(2),
	combout => \dispQ0|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y52_N10
\dispQ0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ0|Mux5~0_combout\ = (\i1|quotient\(0) & (\i1|quotient\(3) $ (((\i1|quotient\(1)) # (!\i1|quotient\(2)))))) # (!\i1|quotient\(0) & (!\i1|quotient\(3) & (\i1|quotient\(1) & !\i1|quotient\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|quotient\(0),
	datac => \i1|quotient\(1),
	datad => \i1|quotient\(2),
	combout => \dispQ0|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y52_N20
\dispQ0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ0|Mux6~0_combout\ = (\i1|quotient\(0) & ((\i1|quotient\(3)) # (\i1|quotient\(1) $ (\i1|quotient\(2))))) # (!\i1|quotient\(0) & ((\i1|quotient\(1)) # (\i1|quotient\(3) $ (\i1|quotient\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(3),
	datab => \i1|quotient\(0),
	datac => \i1|quotient\(1),
	datad => \i1|quotient\(2),
	combout => \dispQ0|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y51_N8
\i1|quotient[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[4]~25_combout\ = ((\i1|quotient\(4) $ (\i1|process_0~0_combout\ $ (\i1|quotient[3]~24\)))) # (GND)
-- \i1|quotient[4]~26\ = CARRY((\i1|quotient\(4) & ((!\i1|quotient[3]~24\) # (!\i1|process_0~0_combout\))) # (!\i1|quotient\(4) & (!\i1|process_0~0_combout\ & !\i1|quotient[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(4),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[3]~24\,
	combout => \i1|quotient[4]~25_combout\,
	cout => \i1|quotient[4]~26\);

-- Location: FF_X1_Y51_N9
\i1|quotient[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[4]~25_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(4));

-- Location: LCCOMB_X1_Y51_N10
\i1|quotient[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[5]~27_combout\ = (\i1|quotient\(5) & ((\i1|process_0~0_combout\ & (!\i1|quotient[4]~26\)) # (!\i1|process_0~0_combout\ & (\i1|quotient[4]~26\ & VCC)))) # (!\i1|quotient\(5) & ((\i1|process_0~0_combout\ & ((\i1|quotient[4]~26\) # (GND))) # 
-- (!\i1|process_0~0_combout\ & (!\i1|quotient[4]~26\))))
-- \i1|quotient[5]~28\ = CARRY((\i1|quotient\(5) & (\i1|process_0~0_combout\ & !\i1|quotient[4]~26\)) # (!\i1|quotient\(5) & ((\i1|process_0~0_combout\) # (!\i1|quotient[4]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(5),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[4]~26\,
	combout => \i1|quotient[5]~27_combout\,
	cout => \i1|quotient[5]~28\);

-- Location: FF_X1_Y51_N11
\i1|quotient[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[5]~27_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(5));

-- Location: LCCOMB_X1_Y51_N12
\i1|quotient[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[6]~29_combout\ = ((\i1|quotient\(6) $ (\i1|process_0~0_combout\ $ (\i1|quotient[5]~28\)))) # (GND)
-- \i1|quotient[6]~30\ = CARRY((\i1|quotient\(6) & ((!\i1|quotient[5]~28\) # (!\i1|process_0~0_combout\))) # (!\i1|quotient\(6) & (!\i1|process_0~0_combout\ & !\i1|quotient[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(6),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[5]~28\,
	combout => \i1|quotient[6]~29_combout\,
	cout => \i1|quotient[6]~30\);

-- Location: FF_X1_Y51_N13
\i1|quotient[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[6]~29_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(6));

-- Location: LCCOMB_X1_Y51_N14
\i1|quotient[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[7]~31_combout\ = (\i1|process_0~0_combout\ & ((\i1|quotient\(7) & (!\i1|quotient[6]~30\)) # (!\i1|quotient\(7) & ((\i1|quotient[6]~30\) # (GND))))) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(7) & (\i1|quotient[6]~30\ & VCC)) # 
-- (!\i1|quotient\(7) & (!\i1|quotient[6]~30\))))
-- \i1|quotient[7]~32\ = CARRY((\i1|process_0~0_combout\ & ((!\i1|quotient[6]~30\) # (!\i1|quotient\(7)))) # (!\i1|process_0~0_combout\ & (!\i1|quotient\(7) & !\i1|quotient[6]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(7),
	datad => VCC,
	cin => \i1|quotient[6]~30\,
	combout => \i1|quotient[7]~31_combout\,
	cout => \i1|quotient[7]~32\);

-- Location: FF_X1_Y51_N15
\i1|quotient[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[7]~31_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(7));

-- Location: LCCOMB_X1_Y64_N28
\dispQ1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ1|Mux0~0_combout\ = (\i1|quotient\(7) & (\i1|quotient\(4) & (\i1|quotient\(6) $ (\i1|quotient\(5))))) # (!\i1|quotient\(7) & (!\i1|quotient\(5) & (\i1|quotient\(6) $ (\i1|quotient\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|quotient\(6),
	datac => \i1|quotient\(4),
	datad => \i1|quotient\(5),
	combout => \dispQ1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y64_N22
\dispQ1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ1|Mux1~0_combout\ = (\i1|quotient\(7) & ((\i1|quotient\(4) & ((\i1|quotient\(5)))) # (!\i1|quotient\(4) & (\i1|quotient\(6))))) # (!\i1|quotient\(7) & (\i1|quotient\(6) & (\i1|quotient\(4) $ (\i1|quotient\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|quotient\(6),
	datac => \i1|quotient\(4),
	datad => \i1|quotient\(5),
	combout => \dispQ1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y64_N12
\dispQ1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ1|Mux2~0_combout\ = (\i1|quotient\(7) & (\i1|quotient\(6) & ((\i1|quotient\(5)) # (!\i1|quotient\(4))))) # (!\i1|quotient\(7) & (!\i1|quotient\(6) & (!\i1|quotient\(4) & \i1|quotient\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|quotient\(6),
	datac => \i1|quotient\(4),
	datad => \i1|quotient\(5),
	combout => \dispQ1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y64_N10
\dispQ1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ1|Mux3~0_combout\ = (\i1|quotient\(5) & ((\i1|quotient\(6) & ((\i1|quotient\(4)))) # (!\i1|quotient\(6) & (\i1|quotient\(7) & !\i1|quotient\(4))))) # (!\i1|quotient\(5) & (!\i1|quotient\(7) & (\i1|quotient\(6) $ (\i1|quotient\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|quotient\(6),
	datac => \i1|quotient\(4),
	datad => \i1|quotient\(5),
	combout => \dispQ1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y64_N4
\dispQ1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ1|Mux4~0_combout\ = (\i1|quotient\(5) & (!\i1|quotient\(7) & ((\i1|quotient\(4))))) # (!\i1|quotient\(5) & ((\i1|quotient\(6) & (!\i1|quotient\(7))) # (!\i1|quotient\(6) & ((\i1|quotient\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|quotient\(6),
	datac => \i1|quotient\(4),
	datad => \i1|quotient\(5),
	combout => \dispQ1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y64_N14
\dispQ1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ1|Mux5~0_combout\ = (\i1|quotient\(6) & (\i1|quotient\(4) & (\i1|quotient\(7) $ (\i1|quotient\(5))))) # (!\i1|quotient\(6) & (!\i1|quotient\(7) & ((\i1|quotient\(4)) # (\i1|quotient\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|quotient\(6),
	datac => \i1|quotient\(4),
	datad => \i1|quotient\(5),
	combout => \dispQ1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y64_N20
\dispQ1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ1|Mux6~0_combout\ = (\i1|quotient\(4) & ((\i1|quotient\(7)) # (\i1|quotient\(6) $ (\i1|quotient\(5))))) # (!\i1|quotient\(4) & ((\i1|quotient\(5)) # (\i1|quotient\(7) $ (\i1|quotient\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|quotient\(6),
	datac => \i1|quotient\(4),
	datad => \i1|quotient\(5),
	combout => \dispQ1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y51_N16
\i1|quotient[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[8]~33_combout\ = ((\i1|quotient\(8) $ (\i1|process_0~0_combout\ $ (\i1|quotient[7]~32\)))) # (GND)
-- \i1|quotient[8]~34\ = CARRY((\i1|quotient\(8) & ((!\i1|quotient[7]~32\) # (!\i1|process_0~0_combout\))) # (!\i1|quotient\(8) & (!\i1|process_0~0_combout\ & !\i1|quotient[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(8),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[7]~32\,
	combout => \i1|quotient[8]~33_combout\,
	cout => \i1|quotient[8]~34\);

-- Location: FF_X1_Y51_N17
\i1|quotient[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[8]~33_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(8));

-- Location: LCCOMB_X1_Y51_N18
\i1|quotient[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[9]~35_combout\ = (\i1|process_0~0_combout\ & ((\i1|quotient\(9) & (!\i1|quotient[8]~34\)) # (!\i1|quotient\(9) & ((\i1|quotient[8]~34\) # (GND))))) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(9) & (\i1|quotient[8]~34\ & VCC)) # 
-- (!\i1|quotient\(9) & (!\i1|quotient[8]~34\))))
-- \i1|quotient[9]~36\ = CARRY((\i1|process_0~0_combout\ & ((!\i1|quotient[8]~34\) # (!\i1|quotient\(9)))) # (!\i1|process_0~0_combout\ & (!\i1|quotient\(9) & !\i1|quotient[8]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(9),
	datad => VCC,
	cin => \i1|quotient[8]~34\,
	combout => \i1|quotient[9]~35_combout\,
	cout => \i1|quotient[9]~36\);

-- Location: FF_X1_Y51_N19
\i1|quotient[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[9]~35_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(9));

-- Location: LCCOMB_X1_Y51_N20
\i1|quotient[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[10]~37_combout\ = ((\i1|process_0~0_combout\ $ (\i1|quotient\(10) $ (\i1|quotient[9]~36\)))) # (GND)
-- \i1|quotient[10]~38\ = CARRY((\i1|process_0~0_combout\ & (\i1|quotient\(10) & !\i1|quotient[9]~36\)) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(10)) # (!\i1|quotient[9]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(10),
	datad => VCC,
	cin => \i1|quotient[9]~36\,
	combout => \i1|quotient[10]~37_combout\,
	cout => \i1|quotient[10]~38\);

-- Location: FF_X1_Y51_N21
\i1|quotient[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[10]~37_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(10));

-- Location: LCCOMB_X1_Y51_N22
\i1|quotient[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[11]~39_combout\ = (\i1|process_0~0_combout\ & ((\i1|quotient\(11) & (!\i1|quotient[10]~38\)) # (!\i1|quotient\(11) & ((\i1|quotient[10]~38\) # (GND))))) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(11) & (\i1|quotient[10]~38\ & VCC)) # 
-- (!\i1|quotient\(11) & (!\i1|quotient[10]~38\))))
-- \i1|quotient[11]~40\ = CARRY((\i1|process_0~0_combout\ & ((!\i1|quotient[10]~38\) # (!\i1|quotient\(11)))) # (!\i1|process_0~0_combout\ & (!\i1|quotient\(11) & !\i1|quotient[10]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(11),
	datad => VCC,
	cin => \i1|quotient[10]~38\,
	combout => \i1|quotient[11]~39_combout\,
	cout => \i1|quotient[11]~40\);

-- Location: FF_X1_Y51_N23
\i1|quotient[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[11]~39_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(11));

-- Location: LCCOMB_X3_Y69_N4
\dispQ2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ2|Mux0~0_combout\ = (\i1|quotient\(11) & (\i1|quotient\(8) & (\i1|quotient\(9) $ (\i1|quotient\(10))))) # (!\i1|quotient\(11) & (!\i1|quotient\(9) & (\i1|quotient\(8) $ (\i1|quotient\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|quotient\(8),
	datac => \i1|quotient\(11),
	datad => \i1|quotient\(10),
	combout => \dispQ2|Mux0~0_combout\);

-- Location: LCCOMB_X3_Y69_N26
\dispQ2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ2|Mux1~0_combout\ = (\i1|quotient\(9) & ((\i1|quotient\(8) & (\i1|quotient\(11))) # (!\i1|quotient\(8) & ((\i1|quotient\(10)))))) # (!\i1|quotient\(9) & (\i1|quotient\(10) & (\i1|quotient\(8) $ (\i1|quotient\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|quotient\(8),
	datac => \i1|quotient\(11),
	datad => \i1|quotient\(10),
	combout => \dispQ2|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y69_N0
\dispQ2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ2|Mux2~0_combout\ = (\i1|quotient\(11) & (\i1|quotient\(10) & ((\i1|quotient\(9)) # (!\i1|quotient\(8))))) # (!\i1|quotient\(11) & (\i1|quotient\(9) & (!\i1|quotient\(8) & !\i1|quotient\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|quotient\(8),
	datac => \i1|quotient\(11),
	datad => \i1|quotient\(10),
	combout => \dispQ2|Mux2~0_combout\);

-- Location: LCCOMB_X3_Y69_N2
\dispQ2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ2|Mux3~0_combout\ = (\i1|quotient\(9) & ((\i1|quotient\(8) & ((\i1|quotient\(10)))) # (!\i1|quotient\(8) & (\i1|quotient\(11) & !\i1|quotient\(10))))) # (!\i1|quotient\(9) & (!\i1|quotient\(11) & (\i1|quotient\(8) $ (\i1|quotient\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|quotient\(8),
	datac => \i1|quotient\(11),
	datad => \i1|quotient\(10),
	combout => \dispQ2|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y69_N8
\dispQ2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ2|Mux4~0_combout\ = (\i1|quotient\(9) & (\i1|quotient\(8) & (!\i1|quotient\(11)))) # (!\i1|quotient\(9) & ((\i1|quotient\(10) & ((!\i1|quotient\(11)))) # (!\i1|quotient\(10) & (\i1|quotient\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|quotient\(8),
	datac => \i1|quotient\(11),
	datad => \i1|quotient\(10),
	combout => \dispQ2|Mux4~0_combout\);

-- Location: LCCOMB_X3_Y69_N14
\dispQ2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ2|Mux5~0_combout\ = (\i1|quotient\(9) & (!\i1|quotient\(11) & ((\i1|quotient\(8)) # (!\i1|quotient\(10))))) # (!\i1|quotient\(9) & (\i1|quotient\(8) & (\i1|quotient\(11) $ (!\i1|quotient\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|quotient\(8),
	datac => \i1|quotient\(11),
	datad => \i1|quotient\(10),
	combout => \dispQ2|Mux5~0_combout\);

-- Location: LCCOMB_X3_Y69_N12
\dispQ2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ2|Mux6~0_combout\ = (\i1|quotient\(8) & ((\i1|quotient\(11)) # (\i1|quotient\(9) $ (\i1|quotient\(10))))) # (!\i1|quotient\(8) & ((\i1|quotient\(9)) # (\i1|quotient\(11) $ (\i1|quotient\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|quotient\(8),
	datac => \i1|quotient\(11),
	datad => \i1|quotient\(10),
	combout => \dispQ2|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y51_N24
\i1|quotient[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[12]~41_combout\ = ((\i1|process_0~0_combout\ $ (\i1|quotient\(12) $ (\i1|quotient[11]~40\)))) # (GND)
-- \i1|quotient[12]~42\ = CARRY((\i1|process_0~0_combout\ & (\i1|quotient\(12) & !\i1|quotient[11]~40\)) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(12)) # (!\i1|quotient[11]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(12),
	datad => VCC,
	cin => \i1|quotient[11]~40\,
	combout => \i1|quotient[12]~41_combout\,
	cout => \i1|quotient[12]~42\);

-- Location: FF_X1_Y51_N25
\i1|quotient[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[12]~41_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(12));

-- Location: LCCOMB_X1_Y51_N26
\i1|quotient[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[13]~43_combout\ = (\i1|process_0~0_combout\ & ((\i1|quotient\(13) & (!\i1|quotient[12]~42\)) # (!\i1|quotient\(13) & ((\i1|quotient[12]~42\) # (GND))))) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(13) & (\i1|quotient[12]~42\ & VCC)) # 
-- (!\i1|quotient\(13) & (!\i1|quotient[12]~42\))))
-- \i1|quotient[13]~44\ = CARRY((\i1|process_0~0_combout\ & ((!\i1|quotient[12]~42\) # (!\i1|quotient\(13)))) # (!\i1|process_0~0_combout\ & (!\i1|quotient\(13) & !\i1|quotient[12]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(13),
	datad => VCC,
	cin => \i1|quotient[12]~42\,
	combout => \i1|quotient[13]~43_combout\,
	cout => \i1|quotient[13]~44\);

-- Location: FF_X1_Y51_N27
\i1|quotient[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[13]~43_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(13));

-- Location: LCCOMB_X1_Y51_N28
\i1|quotient[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[14]~45_combout\ = ((\i1|process_0~0_combout\ $ (\i1|quotient\(14) $ (\i1|quotient[13]~44\)))) # (GND)
-- \i1|quotient[14]~46\ = CARRY((\i1|process_0~0_combout\ & (\i1|quotient\(14) & !\i1|quotient[13]~44\)) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(14)) # (!\i1|quotient[13]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(14),
	datad => VCC,
	cin => \i1|quotient[13]~44\,
	combout => \i1|quotient[14]~45_combout\,
	cout => \i1|quotient[14]~46\);

-- Location: FF_X1_Y51_N29
\i1|quotient[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[14]~45_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(14));

-- Location: LCCOMB_X1_Y51_N30
\i1|quotient[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[15]~47_combout\ = \i1|quotient\(15) $ (\i1|quotient[14]~46\ $ (!\i1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datad => \i1|process_0~0_combout\,
	cin => \i1|quotient[14]~46\,
	combout => \i1|quotient[15]~47_combout\);

-- Location: FF_X1_Y51_N31
\i1|quotient[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|quotient[15]~47_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|quotient[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(15));

-- Location: LCCOMB_X1_Y53_N12
\dispQ3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ3|Mux0~0_combout\ = (\i1|quotient\(15) & (\i1|quotient\(12) & (\i1|quotient\(13) $ (\i1|quotient\(14))))) # (!\i1|quotient\(15) & (!\i1|quotient\(13) & (\i1|quotient\(14) $ (\i1|quotient\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datab => \i1|quotient\(13),
	datac => \i1|quotient\(14),
	datad => \i1|quotient\(12),
	combout => \dispQ3|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y53_N10
\dispQ3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ3|Mux1~0_combout\ = (\i1|quotient\(15) & ((\i1|quotient\(12) & (\i1|quotient\(13))) # (!\i1|quotient\(12) & ((\i1|quotient\(14)))))) # (!\i1|quotient\(15) & (\i1|quotient\(14) & (\i1|quotient\(13) $ (\i1|quotient\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datab => \i1|quotient\(13),
	datac => \i1|quotient\(14),
	datad => \i1|quotient\(12),
	combout => \dispQ3|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y53_N0
\dispQ3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ3|Mux2~0_combout\ = (\i1|quotient\(15) & (\i1|quotient\(14) & ((\i1|quotient\(13)) # (!\i1|quotient\(12))))) # (!\i1|quotient\(15) & (\i1|quotient\(13) & (!\i1|quotient\(14) & !\i1|quotient\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datab => \i1|quotient\(13),
	datac => \i1|quotient\(14),
	datad => \i1|quotient\(12),
	combout => \dispQ3|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y53_N22
\dispQ3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ3|Mux3~0_combout\ = (\i1|quotient\(13) & ((\i1|quotient\(14) & ((\i1|quotient\(12)))) # (!\i1|quotient\(14) & (\i1|quotient\(15) & !\i1|quotient\(12))))) # (!\i1|quotient\(13) & (!\i1|quotient\(15) & (\i1|quotient\(14) $ (\i1|quotient\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datab => \i1|quotient\(13),
	datac => \i1|quotient\(14),
	datad => \i1|quotient\(12),
	combout => \dispQ3|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y53_N16
\dispQ3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ3|Mux4~0_combout\ = (\i1|quotient\(13) & (!\i1|quotient\(15) & ((\i1|quotient\(12))))) # (!\i1|quotient\(13) & ((\i1|quotient\(14) & (!\i1|quotient\(15))) # (!\i1|quotient\(14) & ((\i1|quotient\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datab => \i1|quotient\(13),
	datac => \i1|quotient\(14),
	datad => \i1|quotient\(12),
	combout => \dispQ3|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y53_N26
\dispQ3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ3|Mux5~0_combout\ = (\i1|quotient\(13) & (!\i1|quotient\(15) & ((\i1|quotient\(12)) # (!\i1|quotient\(14))))) # (!\i1|quotient\(13) & (\i1|quotient\(12) & (\i1|quotient\(15) $ (!\i1|quotient\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datab => \i1|quotient\(13),
	datac => \i1|quotient\(14),
	datad => \i1|quotient\(12),
	combout => \dispQ3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y53_N20
\dispQ3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispQ3|Mux6~0_combout\ = (\i1|quotient\(12) & ((\i1|quotient\(15)) # (\i1|quotient\(13) $ (\i1|quotient\(14))))) # (!\i1|quotient\(12) & ((\i1|quotient\(13)) # (\i1|quotient\(15) $ (\i1|quotient\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(15),
	datab => \i1|quotient\(13),
	datac => \i1|quotient\(14),
	datad => \i1|quotient\(12),
	combout => \dispQ3|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y26_N28
\dispR0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR0|Mux0~0_combout\ = (\i1|reg_a\(2) & (!\i1|reg_a\(1) & (\i1|reg_a\(0) $ (!\i1|reg_a\(3))))) # (!\i1|reg_a\(2) & (\i1|reg_a\(0) & (\i1|reg_a\(1) $ (!\i1|reg_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(0),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(3),
	combout => \dispR0|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y26_N26
\dispR0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR0|Mux1~0_combout\ = (\i1|reg_a\(1) & ((\i1|reg_a\(0) & ((\i1|reg_a\(3)))) # (!\i1|reg_a\(0) & (\i1|reg_a\(2))))) # (!\i1|reg_a\(1) & (\i1|reg_a\(2) & (\i1|reg_a\(0) $ (\i1|reg_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(0),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(3),
	combout => \dispR0|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y26_N4
\dispR0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR0|Mux2~0_combout\ = (\i1|reg_a\(2) & (\i1|reg_a\(3) & ((\i1|reg_a\(1)) # (!\i1|reg_a\(0))))) # (!\i1|reg_a\(2) & (!\i1|reg_a\(0) & (\i1|reg_a\(1) & !\i1|reg_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(0),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(3),
	combout => \dispR0|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y26_N18
\dispR0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR0|Mux3~0_combout\ = (\i1|reg_a\(1) & ((\i1|reg_a\(2) & (\i1|reg_a\(0))) # (!\i1|reg_a\(2) & (!\i1|reg_a\(0) & \i1|reg_a\(3))))) # (!\i1|reg_a\(1) & (!\i1|reg_a\(3) & (\i1|reg_a\(2) $ (\i1|reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(0),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(3),
	combout => \dispR0|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\dispR0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR0|Mux4~0_combout\ = (\i1|reg_a\(1) & (((\i1|reg_a\(0) & !\i1|reg_a\(3))))) # (!\i1|reg_a\(1) & ((\i1|reg_a\(2) & ((!\i1|reg_a\(3)))) # (!\i1|reg_a\(2) & (\i1|reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(0),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(3),
	combout => \dispR0|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\dispR0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR0|Mux5~0_combout\ = (\i1|reg_a\(2) & (\i1|reg_a\(0) & (\i1|reg_a\(1) $ (\i1|reg_a\(3))))) # (!\i1|reg_a\(2) & (!\i1|reg_a\(3) & ((\i1|reg_a\(0)) # (\i1|reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(0),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(3),
	combout => \dispR0|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\dispR0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR0|Mux6~0_combout\ = (\i1|reg_a\(0) & ((\i1|reg_a\(3)) # (\i1|reg_a\(2) $ (\i1|reg_a\(1))))) # (!\i1|reg_a\(0) & ((\i1|reg_a\(1)) # (\i1|reg_a\(2) $ (\i1|reg_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(0),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(3),
	combout => \dispR0|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y31_N10
\dispR1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR1|Mux0~0_combout\ = (\i1|reg_a\(7) & (\i1|reg_a\(4) & (\i1|reg_a\(5) $ (\i1|reg_a\(6))))) # (!\i1|reg_a\(7) & (!\i1|reg_a\(5) & (\i1|reg_a\(6) $ (\i1|reg_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(6),
	datad => \i1|reg_a\(4),
	combout => \dispR1|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y31_N8
\dispR1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR1|Mux1~0_combout\ = (\i1|reg_a\(5) & ((\i1|reg_a\(4) & (\i1|reg_a\(7))) # (!\i1|reg_a\(4) & ((\i1|reg_a\(6)))))) # (!\i1|reg_a\(5) & (\i1|reg_a\(6) & (\i1|reg_a\(7) $ (\i1|reg_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(6),
	datad => \i1|reg_a\(4),
	combout => \dispR1|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y31_N30
\dispR1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR1|Mux2~0_combout\ = (\i1|reg_a\(7) & (\i1|reg_a\(6) & ((\i1|reg_a\(5)) # (!\i1|reg_a\(4))))) # (!\i1|reg_a\(7) & (\i1|reg_a\(5) & (!\i1|reg_a\(6) & !\i1|reg_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(6),
	datad => \i1|reg_a\(4),
	combout => \dispR1|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y31_N20
\dispR1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR1|Mux3~0_combout\ = (\i1|reg_a\(5) & ((\i1|reg_a\(6) & ((\i1|reg_a\(4)))) # (!\i1|reg_a\(6) & (\i1|reg_a\(7) & !\i1|reg_a\(4))))) # (!\i1|reg_a\(5) & (!\i1|reg_a\(7) & (\i1|reg_a\(6) $ (\i1|reg_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(6),
	datad => \i1|reg_a\(4),
	combout => \dispR1|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y31_N22
\dispR1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR1|Mux4~0_combout\ = (\i1|reg_a\(5) & (!\i1|reg_a\(7) & ((\i1|reg_a\(4))))) # (!\i1|reg_a\(5) & ((\i1|reg_a\(6) & (!\i1|reg_a\(7))) # (!\i1|reg_a\(6) & ((\i1|reg_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(6),
	datad => \i1|reg_a\(4),
	combout => \dispR1|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y31_N4
\dispR1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR1|Mux5~0_combout\ = (\i1|reg_a\(5) & (!\i1|reg_a\(7) & ((\i1|reg_a\(4)) # (!\i1|reg_a\(6))))) # (!\i1|reg_a\(5) & (\i1|reg_a\(4) & (\i1|reg_a\(7) $ (!\i1|reg_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(6),
	datad => \i1|reg_a\(4),
	combout => \dispR1|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y31_N16
\dispR1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR1|Mux6~0_combout\ = (\i1|reg_a\(4) & ((\i1|reg_a\(7)) # (\i1|reg_a\(5) $ (\i1|reg_a\(6))))) # (!\i1|reg_a\(4) & ((\i1|reg_a\(5)) # (\i1|reg_a\(7) $ (\i1|reg_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(5),
	datab => \i1|reg_a\(7),
	datac => \i1|reg_a\(6),
	datad => \i1|reg_a\(4),
	combout => \dispR1|Mux6~0_combout\);

-- Location: LCCOMB_X3_Y31_N12
\dispR2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR2|Mux0~0_combout\ = (\i1|reg_a\(11) & (\i1|reg_a\(8) & (\i1|reg_a\(9) $ (\i1|reg_a\(10))))) # (!\i1|reg_a\(11) & (!\i1|reg_a\(9) & (\i1|reg_a\(8) $ (\i1|reg_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i1|reg_a\(8),
	datac => \i1|reg_a\(9),
	datad => \i1|reg_a\(10),
	combout => \dispR2|Mux0~0_combout\);

-- Location: LCCOMB_X3_Y31_N6
\dispR2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR2|Mux1~0_combout\ = (\i1|reg_a\(11) & ((\i1|reg_a\(8) & (\i1|reg_a\(9))) # (!\i1|reg_a\(8) & ((\i1|reg_a\(10)))))) # (!\i1|reg_a\(11) & (\i1|reg_a\(10) & (\i1|reg_a\(8) $ (\i1|reg_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i1|reg_a\(8),
	datac => \i1|reg_a\(9),
	datad => \i1|reg_a\(10),
	combout => \dispR2|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y31_N16
\dispR2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR2|Mux2~0_combout\ = (\i1|reg_a\(11) & (\i1|reg_a\(10) & ((\i1|reg_a\(9)) # (!\i1|reg_a\(8))))) # (!\i1|reg_a\(11) & (!\i1|reg_a\(8) & (\i1|reg_a\(9) & !\i1|reg_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i1|reg_a\(8),
	datac => \i1|reg_a\(9),
	datad => \i1|reg_a\(10),
	combout => \dispR2|Mux2~0_combout\);

-- Location: LCCOMB_X3_Y31_N30
\dispR2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR2|Mux3~0_combout\ = (\i1|reg_a\(9) & ((\i1|reg_a\(8) & ((\i1|reg_a\(10)))) # (!\i1|reg_a\(8) & (\i1|reg_a\(11) & !\i1|reg_a\(10))))) # (!\i1|reg_a\(9) & (!\i1|reg_a\(11) & (\i1|reg_a\(8) $ (\i1|reg_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i1|reg_a\(8),
	datac => \i1|reg_a\(9),
	datad => \i1|reg_a\(10),
	combout => \dispR2|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y31_N28
\dispR2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR2|Mux4~0_combout\ = (\i1|reg_a\(9) & (!\i1|reg_a\(11) & (\i1|reg_a\(8)))) # (!\i1|reg_a\(9) & ((\i1|reg_a\(10) & (!\i1|reg_a\(11))) # (!\i1|reg_a\(10) & ((\i1|reg_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i1|reg_a\(8),
	datac => \i1|reg_a\(9),
	datad => \i1|reg_a\(10),
	combout => \dispR2|Mux4~0_combout\);

-- Location: LCCOMB_X3_Y31_N22
\dispR2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR2|Mux5~0_combout\ = (\i1|reg_a\(8) & (\i1|reg_a\(11) $ (((\i1|reg_a\(9)) # (!\i1|reg_a\(10)))))) # (!\i1|reg_a\(8) & (!\i1|reg_a\(11) & (\i1|reg_a\(9) & !\i1|reg_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i1|reg_a\(8),
	datac => \i1|reg_a\(9),
	datad => \i1|reg_a\(10),
	combout => \dispR2|Mux5~0_combout\);

-- Location: LCCOMB_X3_Y31_N24
\dispR2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR2|Mux6~0_combout\ = (\i1|reg_a\(8) & ((\i1|reg_a\(11)) # (\i1|reg_a\(9) $ (\i1|reg_a\(10))))) # (!\i1|reg_a\(8) & ((\i1|reg_a\(9)) # (\i1|reg_a\(11) $ (\i1|reg_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(11),
	datab => \i1|reg_a\(8),
	datac => \i1|reg_a\(9),
	datad => \i1|reg_a\(10),
	combout => \dispR2|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y30_N22
\dispR3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR3|Mux0~0_combout\ = (\i1|reg_a\(15) & (\i1|reg_a\(12) & (\i1|reg_a\(13) $ (\i1|reg_a\(14))))) # (!\i1|reg_a\(15) & (!\i1|reg_a\(13) & (\i1|reg_a\(14) $ (\i1|reg_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(14),
	datad => \i1|reg_a\(12),
	combout => \dispR3|Mux0~0_combout\);

-- Location: LCCOMB_X4_Y30_N28
\dispR3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR3|Mux1~0_combout\ = (\i1|reg_a\(15) & ((\i1|reg_a\(12) & (\i1|reg_a\(13))) # (!\i1|reg_a\(12) & ((\i1|reg_a\(14)))))) # (!\i1|reg_a\(15) & (\i1|reg_a\(14) & (\i1|reg_a\(13) $ (\i1|reg_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(14),
	datad => \i1|reg_a\(12),
	combout => \dispR3|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y30_N24
\dispR3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR3|Mux2~0_combout\ = (\i1|reg_a\(15) & (\i1|reg_a\(14) & ((\i1|reg_a\(13)) # (!\i1|reg_a\(12))))) # (!\i1|reg_a\(15) & (\i1|reg_a\(13) & (!\i1|reg_a\(14) & !\i1|reg_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(14),
	datad => \i1|reg_a\(12),
	combout => \dispR3|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y31_N2
\dispR3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR3|Mux3~0_combout\ = (\i1|reg_a\(13) & ((\i1|reg_a\(12) & ((\i1|reg_a\(14)))) # (!\i1|reg_a\(12) & (\i1|reg_a\(15) & !\i1|reg_a\(14))))) # (!\i1|reg_a\(13) & (!\i1|reg_a\(15) & (\i1|reg_a\(12) $ (\i1|reg_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(12),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(15),
	datad => \i1|reg_a\(14),
	combout => \dispR3|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y30_N16
\dispR3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR3|Mux4~0_combout\ = (\i1|reg_a\(13) & (!\i1|reg_a\(15) & ((\i1|reg_a\(12))))) # (!\i1|reg_a\(13) & ((\i1|reg_a\(14) & (!\i1|reg_a\(15))) # (!\i1|reg_a\(14) & ((\i1|reg_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(14),
	datad => \i1|reg_a\(12),
	combout => \dispR3|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y30_N30
\dispR3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR3|Mux5~0_combout\ = (\i1|reg_a\(13) & (!\i1|reg_a\(15) & ((\i1|reg_a\(12)) # (!\i1|reg_a\(14))))) # (!\i1|reg_a\(13) & (\i1|reg_a\(12) & (\i1|reg_a\(15) $ (!\i1|reg_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(14),
	datad => \i1|reg_a\(12),
	combout => \dispR3|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y30_N8
\dispR3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispR3|Mux6~0_combout\ = (\i1|reg_a\(12) & ((\i1|reg_a\(15)) # (\i1|reg_a\(13) $ (\i1|reg_a\(14))))) # (!\i1|reg_a\(12) & ((\i1|reg_a\(13)) # (\i1|reg_a\(15) $ (\i1|reg_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(14),
	datad => \i1|reg_a\(12),
	combout => \dispR3|Mux6~0_combout\);

ww_Di0(0) <= \Di0[0]~output_o\;

ww_Di0(1) <= \Di0[1]~output_o\;

ww_Di0(2) <= \Di0[2]~output_o\;

ww_Di0(3) <= \Di0[3]~output_o\;

ww_Di0(4) <= \Di0[4]~output_o\;

ww_Di0(5) <= \Di0[5]~output_o\;

ww_Di0(6) <= \Di0[6]~output_o\;

ww_Di1(0) <= \Di1[0]~output_o\;

ww_Di1(1) <= \Di1[1]~output_o\;

ww_Di1(2) <= \Di1[2]~output_o\;

ww_Di1(3) <= \Di1[3]~output_o\;

ww_Di1(4) <= \Di1[4]~output_o\;

ww_Di1(5) <= \Di1[5]~output_o\;

ww_Di1(6) <= \Di1[6]~output_o\;

ww_Di2(0) <= \Di2[0]~output_o\;

ww_Di2(1) <= \Di2[1]~output_o\;

ww_Di2(2) <= \Di2[2]~output_o\;

ww_Di2(3) <= \Di2[3]~output_o\;

ww_Di2(4) <= \Di2[4]~output_o\;

ww_Di2(5) <= \Di2[5]~output_o\;

ww_Di2(6) <= \Di2[6]~output_o\;

ww_Di3(0) <= \Di3[0]~output_o\;

ww_Di3(1) <= \Di3[1]~output_o\;

ww_Di3(2) <= \Di3[2]~output_o\;

ww_Di3(3) <= \Di3[3]~output_o\;

ww_Di3(4) <= \Di3[4]~output_o\;

ww_Di3(5) <= \Di3[5]~output_o\;

ww_Di3(6) <= \Di3[6]~output_o\;

ww_Dq0(0) <= \Dq0[0]~output_o\;

ww_Dq0(1) <= \Dq0[1]~output_o\;

ww_Dq0(2) <= \Dq0[2]~output_o\;

ww_Dq0(3) <= \Dq0[3]~output_o\;

ww_Dq0(4) <= \Dq0[4]~output_o\;

ww_Dq0(5) <= \Dq0[5]~output_o\;

ww_Dq0(6) <= \Dq0[6]~output_o\;

ww_Dq1(0) <= \Dq1[0]~output_o\;

ww_Dq1(1) <= \Dq1[1]~output_o\;

ww_Dq1(2) <= \Dq1[2]~output_o\;

ww_Dq1(3) <= \Dq1[3]~output_o\;

ww_Dq1(4) <= \Dq1[4]~output_o\;

ww_Dq1(5) <= \Dq1[5]~output_o\;

ww_Dq1(6) <= \Dq1[6]~output_o\;

ww_Dq2(0) <= \Dq2[0]~output_o\;

ww_Dq2(1) <= \Dq2[1]~output_o\;

ww_Dq2(2) <= \Dq2[2]~output_o\;

ww_Dq2(3) <= \Dq2[3]~output_o\;

ww_Dq2(4) <= \Dq2[4]~output_o\;

ww_Dq2(5) <= \Dq2[5]~output_o\;

ww_Dq2(6) <= \Dq2[6]~output_o\;

ww_Dq3(0) <= \Dq3[0]~output_o\;

ww_Dq3(1) <= \Dq3[1]~output_o\;

ww_Dq3(2) <= \Dq3[2]~output_o\;

ww_Dq3(3) <= \Dq3[3]~output_o\;

ww_Dq3(4) <= \Dq3[4]~output_o\;

ww_Dq3(5) <= \Dq3[5]~output_o\;

ww_Dq3(6) <= \Dq3[6]~output_o\;

ww_Dr0(0) <= \Dr0[0]~output_o\;

ww_Dr0(1) <= \Dr0[1]~output_o\;

ww_Dr0(2) <= \Dr0[2]~output_o\;

ww_Dr0(3) <= \Dr0[3]~output_o\;

ww_Dr0(4) <= \Dr0[4]~output_o\;

ww_Dr0(5) <= \Dr0[5]~output_o\;

ww_Dr0(6) <= \Dr0[6]~output_o\;

ww_Dr1(0) <= \Dr1[0]~output_o\;

ww_Dr1(1) <= \Dr1[1]~output_o\;

ww_Dr1(2) <= \Dr1[2]~output_o\;

ww_Dr1(3) <= \Dr1[3]~output_o\;

ww_Dr1(4) <= \Dr1[4]~output_o\;

ww_Dr1(5) <= \Dr1[5]~output_o\;

ww_Dr1(6) <= \Dr1[6]~output_o\;

ww_Dr2(0) <= \Dr2[0]~output_o\;

ww_Dr2(1) <= \Dr2[1]~output_o\;

ww_Dr2(2) <= \Dr2[2]~output_o\;

ww_Dr2(3) <= \Dr2[3]~output_o\;

ww_Dr2(4) <= \Dr2[4]~output_o\;

ww_Dr2(5) <= \Dr2[5]~output_o\;

ww_Dr2(6) <= \Dr2[6]~output_o\;

ww_Dr3(0) <= \Dr3[0]~output_o\;

ww_Dr3(1) <= \Dr3[1]~output_o\;

ww_Dr3(2) <= \Dr3[2]~output_o\;

ww_Dr3(3) <= \Dr3[3]~output_o\;

ww_Dr3(4) <= \Dr3[4]~output_o\;

ww_Dr3(5) <= \Dr3[5]~output_o\;

ww_Dr3(6) <= \Dr3[6]~output_o\;

ww_quotient(0) <= \quotient[0]~output_o\;

ww_quotient(1) <= \quotient[1]~output_o\;

ww_quotient(2) <= \quotient[2]~output_o\;

ww_quotient(3) <= \quotient[3]~output_o\;

ww_quotient(4) <= \quotient[4]~output_o\;

ww_quotient(5) <= \quotient[5]~output_o\;

ww_quotient(6) <= \quotient[6]~output_o\;

ww_quotient(7) <= \quotient[7]~output_o\;

ww_quotient(8) <= \quotient[8]~output_o\;

ww_quotient(9) <= \quotient[9]~output_o\;

ww_quotient(10) <= \quotient[10]~output_o\;

ww_quotient(11) <= \quotient[11]~output_o\;

ww_quotient(12) <= \quotient[12]~output_o\;

ww_quotient(13) <= \quotient[13]~output_o\;

ww_quotient(14) <= \quotient[14]~output_o\;

ww_quotient(15) <= \quotient[15]~output_o\;

ww_rest(0) <= \rest[0]~output_o\;

ww_rest(1) <= \rest[1]~output_o\;

ww_rest(2) <= \rest[2]~output_o\;

ww_rest(3) <= \rest[3]~output_o\;

ww_rest(4) <= \rest[4]~output_o\;

ww_rest(5) <= \rest[5]~output_o\;

ww_rest(6) <= \rest[6]~output_o\;

ww_rest(7) <= \rest[7]~output_o\;

ww_rest(8) <= \rest[8]~output_o\;

ww_rest(9) <= \rest[9]~output_o\;

ww_rest(10) <= \rest[10]~output_o\;

ww_rest(11) <= \rest[11]~output_o\;

ww_rest(12) <= \rest[12]~output_o\;

ww_rest(13) <= \rest[13]~output_o\;

ww_rest(14) <= \rest[14]~output_o\;

ww_rest(15) <= \rest[15]~output_o\;
END structure;


