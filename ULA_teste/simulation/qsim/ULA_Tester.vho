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

-- DATE "11/12/2019 19:51:55"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA_Tester IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	DA0 : BUFFER std_logic_vector(6 DOWNTO 0);
	DA1 : BUFFER std_logic_vector(6 DOWNTO 0);
	DA2 : BUFFER std_logic_vector(6 DOWNTO 0);
	DA3 : BUFFER std_logic_vector(6 DOWNTO 0);
	DB0 : BUFFER std_logic_vector(6 DOWNTO 0);
	DB1 : BUFFER std_logic_vector(6 DOWNTO 0);
	DB2 : BUFFER std_logic_vector(6 DOWNTO 0);
	DB3 : BUFFER std_logic_vector(6 DOWNTO 0);
	M : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	DS0 : BUFFER std_logic_vector(6 DOWNTO 0);
	DS1 : BUFFER std_logic_vector(6 DOWNTO 0);
	DS2 : BUFFER std_logic_vector(6 DOWNTO 0);
	DS3 : BUFFER std_logic_vector(6 DOWNTO 0);
	Overflow : BUFFER std_logic
	);
END ULA_Tester;

-- Design Ports Information
-- DA0[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[1]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[3]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[4]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[5]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[6]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[2]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[3]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[4]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[5]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[6]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[4]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[0]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[1]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[2]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[3]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[4]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[5]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[6]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[0]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[1]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[4]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[6]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[1]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[3]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[4]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[6]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[2]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[3]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[4]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[5]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[6]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[5]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA_Tester IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DA0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DA1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DA2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DA3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DB0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DB1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DB2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DB3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_DS0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DS1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DS2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DS3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \DA0[0]~output_o\ : std_logic;
SIGNAL \DA0[1]~output_o\ : std_logic;
SIGNAL \DA0[2]~output_o\ : std_logic;
SIGNAL \DA0[3]~output_o\ : std_logic;
SIGNAL \DA0[4]~output_o\ : std_logic;
SIGNAL \DA0[5]~output_o\ : std_logic;
SIGNAL \DA0[6]~output_o\ : std_logic;
SIGNAL \DA1[0]~output_o\ : std_logic;
SIGNAL \DA1[1]~output_o\ : std_logic;
SIGNAL \DA1[2]~output_o\ : std_logic;
SIGNAL \DA1[3]~output_o\ : std_logic;
SIGNAL \DA1[4]~output_o\ : std_logic;
SIGNAL \DA1[5]~output_o\ : std_logic;
SIGNAL \DA1[6]~output_o\ : std_logic;
SIGNAL \DA2[0]~output_o\ : std_logic;
SIGNAL \DA2[1]~output_o\ : std_logic;
SIGNAL \DA2[2]~output_o\ : std_logic;
SIGNAL \DA2[3]~output_o\ : std_logic;
SIGNAL \DA2[4]~output_o\ : std_logic;
SIGNAL \DA2[5]~output_o\ : std_logic;
SIGNAL \DA2[6]~output_o\ : std_logic;
SIGNAL \DA3[0]~output_o\ : std_logic;
SIGNAL \DA3[1]~output_o\ : std_logic;
SIGNAL \DA3[2]~output_o\ : std_logic;
SIGNAL \DA3[3]~output_o\ : std_logic;
SIGNAL \DA3[4]~output_o\ : std_logic;
SIGNAL \DA3[5]~output_o\ : std_logic;
SIGNAL \DA3[6]~output_o\ : std_logic;
SIGNAL \DB0[0]~output_o\ : std_logic;
SIGNAL \DB0[1]~output_o\ : std_logic;
SIGNAL \DB0[2]~output_o\ : std_logic;
SIGNAL \DB0[3]~output_o\ : std_logic;
SIGNAL \DB0[4]~output_o\ : std_logic;
SIGNAL \DB0[5]~output_o\ : std_logic;
SIGNAL \DB0[6]~output_o\ : std_logic;
SIGNAL \DB1[0]~output_o\ : std_logic;
SIGNAL \DB1[1]~output_o\ : std_logic;
SIGNAL \DB1[2]~output_o\ : std_logic;
SIGNAL \DB1[3]~output_o\ : std_logic;
SIGNAL \DB1[4]~output_o\ : std_logic;
SIGNAL \DB1[5]~output_o\ : std_logic;
SIGNAL \DB1[6]~output_o\ : std_logic;
SIGNAL \DB2[0]~output_o\ : std_logic;
SIGNAL \DB2[1]~output_o\ : std_logic;
SIGNAL \DB2[2]~output_o\ : std_logic;
SIGNAL \DB2[3]~output_o\ : std_logic;
SIGNAL \DB2[4]~output_o\ : std_logic;
SIGNAL \DB2[5]~output_o\ : std_logic;
SIGNAL \DB2[6]~output_o\ : std_logic;
SIGNAL \DB3[0]~output_o\ : std_logic;
SIGNAL \DB3[1]~output_o\ : std_logic;
SIGNAL \DB3[2]~output_o\ : std_logic;
SIGNAL \DB3[3]~output_o\ : std_logic;
SIGNAL \DB3[4]~output_o\ : std_logic;
SIGNAL \DB3[5]~output_o\ : std_logic;
SIGNAL \DB3[6]~output_o\ : std_logic;
SIGNAL \DS0[0]~output_o\ : std_logic;
SIGNAL \DS0[1]~output_o\ : std_logic;
SIGNAL \DS0[2]~output_o\ : std_logic;
SIGNAL \DS0[3]~output_o\ : std_logic;
SIGNAL \DS0[4]~output_o\ : std_logic;
SIGNAL \DS0[5]~output_o\ : std_logic;
SIGNAL \DS0[6]~output_o\ : std_logic;
SIGNAL \DS1[0]~output_o\ : std_logic;
SIGNAL \DS1[1]~output_o\ : std_logic;
SIGNAL \DS1[2]~output_o\ : std_logic;
SIGNAL \DS1[3]~output_o\ : std_logic;
SIGNAL \DS1[4]~output_o\ : std_logic;
SIGNAL \DS1[5]~output_o\ : std_logic;
SIGNAL \DS1[6]~output_o\ : std_logic;
SIGNAL \DS2[0]~output_o\ : std_logic;
SIGNAL \DS2[1]~output_o\ : std_logic;
SIGNAL \DS2[2]~output_o\ : std_logic;
SIGNAL \DS2[3]~output_o\ : std_logic;
SIGNAL \DS2[4]~output_o\ : std_logic;
SIGNAL \DS2[5]~output_o\ : std_logic;
SIGNAL \DS2[6]~output_o\ : std_logic;
SIGNAL \DS3[0]~output_o\ : std_logic;
SIGNAL \DS3[1]~output_o\ : std_logic;
SIGNAL \DS3[2]~output_o\ : std_logic;
SIGNAL \DS3[3]~output_o\ : std_logic;
SIGNAL \DS3[4]~output_o\ : std_logic;
SIGNAL \DS3[5]~output_o\ : std_logic;
SIGNAL \DS3[6]~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \dispA0|Mux0~0_combout\ : std_logic;
SIGNAL \dispA0|Mux1~0_combout\ : std_logic;
SIGNAL \dispA0|Mux2~0_combout\ : std_logic;
SIGNAL \dispA0|Mux3~0_combout\ : std_logic;
SIGNAL \dispA0|Mux4~0_combout\ : std_logic;
SIGNAL \dispA0|Mux5~0_combout\ : std_logic;
SIGNAL \dispA0|Mux6~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \dispA1|Mux0~0_combout\ : std_logic;
SIGNAL \dispA1|Mux1~0_combout\ : std_logic;
SIGNAL \dispA1|Mux2~0_combout\ : std_logic;
SIGNAL \dispA1|Mux3~0_combout\ : std_logic;
SIGNAL \dispA1|Mux4~0_combout\ : std_logic;
SIGNAL \dispA1|Mux5~0_combout\ : std_logic;
SIGNAL \dispA1|Mux6~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \dispA2|Mux0~0_combout\ : std_logic;
SIGNAL \dispA2|Mux1~0_combout\ : std_logic;
SIGNAL \dispA2|Mux2~0_combout\ : std_logic;
SIGNAL \dispA2|Mux3~0_combout\ : std_logic;
SIGNAL \dispA2|Mux4~0_combout\ : std_logic;
SIGNAL \dispA2|Mux5~0_combout\ : std_logic;
SIGNAL \dispA2|Mux6~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \dispA3|Mux0~0_combout\ : std_logic;
SIGNAL \dispA3|Mux1~0_combout\ : std_logic;
SIGNAL \dispA3|Mux2~0_combout\ : std_logic;
SIGNAL \dispA3|Mux3~0_combout\ : std_logic;
SIGNAL \dispA3|Mux4~0_combout\ : std_logic;
SIGNAL \dispA3|Mux5~0_combout\ : std_logic;
SIGNAL \dispA3|Mux6~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \dispB0|Mux0~0_combout\ : std_logic;
SIGNAL \dispB0|Mux1~0_combout\ : std_logic;
SIGNAL \dispB0|Mux2~0_combout\ : std_logic;
SIGNAL \dispB0|Mux3~0_combout\ : std_logic;
SIGNAL \dispB0|Mux4~0_combout\ : std_logic;
SIGNAL \dispB0|Mux5~0_combout\ : std_logic;
SIGNAL \dispB0|Mux6~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \dispB1|Mux0~0_combout\ : std_logic;
SIGNAL \dispB1|Mux1~0_combout\ : std_logic;
SIGNAL \dispB1|Mux2~0_combout\ : std_logic;
SIGNAL \dispB1|Mux3~0_combout\ : std_logic;
SIGNAL \dispB1|Mux4~0_combout\ : std_logic;
SIGNAL \dispB1|Mux5~0_combout\ : std_logic;
SIGNAL \dispB1|Mux6~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \dispB2|Mux0~0_combout\ : std_logic;
SIGNAL \dispB2|Mux1~0_combout\ : std_logic;
SIGNAL \dispB2|Mux2~0_combout\ : std_logic;
SIGNAL \dispB2|Mux3~0_combout\ : std_logic;
SIGNAL \dispB2|Mux4~0_combout\ : std_logic;
SIGNAL \dispB2|Mux5~0_combout\ : std_logic;
SIGNAL \dispB2|Mux6~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \dispB3|Mux0~0_combout\ : std_logic;
SIGNAL \dispB3|Mux1~0_combout\ : std_logic;
SIGNAL \dispB3|Mux2~0_combout\ : std_logic;
SIGNAL \dispB3|Mux3~0_combout\ : std_logic;
SIGNAL \dispB3|Mux4~0_combout\ : std_logic;
SIGNAL \dispB3|Mux5~0_combout\ : std_logic;
SIGNAL \dispB3|Mux6~0_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \ulaOP|des~0_combout\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \ulaOP|l1|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o0|cout~3_combout\ : std_logic;
SIGNAL \ulaOP|o0|cout~6_combout\ : std_logic;
SIGNAL \ulaOP|l1|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l1|Xi~5_combout\ : std_logic;
SIGNAL \ulaOP|o1|s~combout\ : std_logic;
SIGNAL \ulaOP|o0|s~3_combout\ : std_logic;
SIGNAL \ulaOP|o0|s~2_combout\ : std_logic;
SIGNAL \ulaOP|o0|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux15~0_combout\ : std_logic;
SIGNAL \ulaOP|o1|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l2|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l2|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l2|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o2|s~combout\ : std_logic;
SIGNAL \ulaOP|o2|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l3|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l3|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l3|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o3|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux13~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux13~3_combout\ : std_logic;
SIGNAL \ulaOP|l4|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o3|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l4|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l4|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o4|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux12~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux12~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux14~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux14~3_combout\ : std_logic;
SIGNAL \dispS0|Mux0~0_combout\ : std_logic;
SIGNAL \dispS0|Mux1~0_combout\ : std_logic;
SIGNAL \dispS0|Mux2~0_combout\ : std_logic;
SIGNAL \dispS0|Mux3~0_combout\ : std_logic;
SIGNAL \dispS0|Mux4~0_combout\ : std_logic;
SIGNAL \dispS0|Mux5~0_combout\ : std_logic;
SIGNAL \dispS0|Mux6~0_combout\ : std_logic;
SIGNAL \ulaOP|l5|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l5|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l5|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o4|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|o5|s~combout\ : std_logic;
SIGNAL \ulaOP|l7|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l7|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l7|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o5|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l6|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l6|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l6|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o6|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|o7|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux9~2_combout\ : std_logic;
SIGNAL \ulaOP|o6|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux9~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux10~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux10~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux11~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux11~3_combout\ : std_logic;
SIGNAL \ulaOP|l8|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o7|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l8|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l8|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o8|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux8~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux8~3_combout\ : std_logic;
SIGNAL \dispS1|Mux0~0_combout\ : std_logic;
SIGNAL \dispS1|Mux1~0_combout\ : std_logic;
SIGNAL \dispS1|Mux2~0_combout\ : std_logic;
SIGNAL \dispS1|Mux3~0_combout\ : std_logic;
SIGNAL \dispS1|Mux4~0_combout\ : std_logic;
SIGNAL \dispS1|Mux5~0_combout\ : std_logic;
SIGNAL \dispS1|Mux6~0_combout\ : std_logic;
SIGNAL \ulaOP|l10|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l10|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l10|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o8|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l9|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l9|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l9|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o9|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|o10|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux6~2_combout\ : std_logic;
SIGNAL \ulaOP|o9|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux6~3_combout\ : std_logic;
SIGNAL \ulaOP|o10|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l11|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l11|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l11|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o11|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux5~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux5~3_combout\ : std_logic;
SIGNAL \ulaOP|o11|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l12|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l12|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l12|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o12|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux4~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux4~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux7~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux7~3_combout\ : std_logic;
SIGNAL \dispS2|Mux0~0_combout\ : std_logic;
SIGNAL \dispS2|Mux1~0_combout\ : std_logic;
SIGNAL \dispS2|Mux2~0_combout\ : std_logic;
SIGNAL \dispS2|Mux3~0_combout\ : std_logic;
SIGNAL \dispS2|Mux4~0_combout\ : std_logic;
SIGNAL \dispS2|Mux5~0_combout\ : std_logic;
SIGNAL \dispS2|Mux6~0_combout\ : std_logic;
SIGNAL \ulaOP|l13|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l13|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o12|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l13|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o13|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux3~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux3~3_combout\ : std_logic;
SIGNAL \ulaOP|l15|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o13|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l14|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l14|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l14|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o14|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l15|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l15|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o15|s~combout\ : std_logic;
SIGNAL \ulaOP|o14|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux0~0_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux1~1_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux1~0_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux1~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux2~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux2~3_combout\ : std_logic;
SIGNAL \dispS3|Mux0~0_combout\ : std_logic;
SIGNAL \dispS3|Mux1~0_combout\ : std_logic;
SIGNAL \dispS3|Mux2~0_combout\ : std_logic;
SIGNAL \dispS3|Mux3~0_combout\ : std_logic;
SIGNAL \dispS3|Mux4~0_combout\ : std_logic;
SIGNAL \dispS3|Mux5~0_combout\ : std_logic;
SIGNAL \dispS3|Mux6~0_combout\ : std_logic;
SIGNAL \ulaOP|Cout~0_combout\ : std_logic;
SIGNAL \dispS3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dispS3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dispS3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dispS2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dispS2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dispS2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dispS1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dispS1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dispS1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dispS0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dispS0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dispB3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispB2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispB1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispB0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispA3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispA2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispA1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \dispA0|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
DA0 <= ww_DA0;
DA1 <= ww_DA1;
DA2 <= ww_DA2;
DA3 <= ww_DA3;
DB0 <= ww_DB0;
DB1 <= ww_DB1;
DB2 <= ww_DB2;
DB3 <= ww_DB3;
ww_M <= M;
ww_S1 <= S1;
ww_S0 <= S0;
DS0 <= ww_DS0;
DS1 <= ww_DS1;
DS2 <= ww_DS2;
DS3 <= ww_DS3;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dispS3|ALT_INV_Mux3~0_combout\ <= NOT \dispS3|Mux3~0_combout\;
\dispS3|ALT_INV_Mux2~0_combout\ <= NOT \dispS3|Mux2~0_combout\;
\dispS3|ALT_INV_Mux1~0_combout\ <= NOT \dispS3|Mux1~0_combout\;
\dispS2|ALT_INV_Mux3~0_combout\ <= NOT \dispS2|Mux3~0_combout\;
\dispS2|ALT_INV_Mux2~0_combout\ <= NOT \dispS2|Mux2~0_combout\;
\dispS2|ALT_INV_Mux1~0_combout\ <= NOT \dispS2|Mux1~0_combout\;
\dispS1|ALT_INV_Mux3~0_combout\ <= NOT \dispS1|Mux3~0_combout\;
\dispS1|ALT_INV_Mux2~0_combout\ <= NOT \dispS1|Mux2~0_combout\;
\dispS1|ALT_INV_Mux1~0_combout\ <= NOT \dispS1|Mux1~0_combout\;
\dispS0|ALT_INV_Mux2~0_combout\ <= NOT \dispS0|Mux2~0_combout\;
\dispS0|ALT_INV_Mux1~0_combout\ <= NOT \dispS0|Mux1~0_combout\;
\dispB3|ALT_INV_Mux6~0_combout\ <= NOT \dispB3|Mux6~0_combout\;
\dispB2|ALT_INV_Mux6~0_combout\ <= NOT \dispB2|Mux6~0_combout\;
\dispB1|ALT_INV_Mux6~0_combout\ <= NOT \dispB1|Mux6~0_combout\;
\dispB0|ALT_INV_Mux6~0_combout\ <= NOT \dispB0|Mux6~0_combout\;
\dispA3|ALT_INV_Mux6~0_combout\ <= NOT \dispA3|Mux6~0_combout\;
\dispA2|ALT_INV_Mux6~0_combout\ <= NOT \dispA2|Mux6~0_combout\;
\dispA1|ALT_INV_Mux6~0_combout\ <= NOT \dispA1|Mux6~0_combout\;
\dispA0|ALT_INV_Mux6~0_combout\ <= NOT \dispA0|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y58_N23
\DA0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DA0[0]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\DA0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DA0[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\DA0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DA0[2]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\DA0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DA0[3]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\DA0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DA0[4]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\DA0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DA0[5]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\DA0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DA0[6]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\DA1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DA1[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\DA1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DA1[1]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\DA1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DA1[2]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\DA1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DA1[3]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\DA1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DA1[4]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\DA1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DA1[5]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\DA1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DA1[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\DA2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DA2[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\DA2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DA2[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\DA2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DA2[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\DA2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DA2[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\DA2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DA2[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\DA2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DA2[5]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\DA2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DA2[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\DA3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DA3[0]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\DA3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DA3[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\DA3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DA3[2]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\DA3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DA3[3]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\DA3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DA3[4]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\DA3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DA3[5]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\DA3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DA3[6]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\DB0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DB0[0]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\DB0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DB0[1]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\DB0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DB0[2]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\DB0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DB0[3]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\DB0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DB0[4]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\DB0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DB0[5]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\DB0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DB0[6]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\DB1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DB1[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\DB1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DB1[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\DB1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DB1[2]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\DB1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DB1[3]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\DB1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DB1[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\DB1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DB1[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\DB1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DB1[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\DB2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DB2[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\DB2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DB2[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\DB2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DB2[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\DB2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DB2[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\DB2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DB2[4]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\DB2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DB2[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\DB2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DB2[6]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\DB3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DB3[0]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\DB3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DB3[1]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\DB3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DB3[2]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\DB3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DB3[3]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\DB3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DB3[4]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\DB3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DB3[5]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\DB3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DB3[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\DS0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS0[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\DS0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS0|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\DS0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS0|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS0[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\DS0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS0[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\DS0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS0[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\DS0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS0[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\DS0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS0[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\DS1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS1[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\DS1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS1[1]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\DS1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS1|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS1[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\DS1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS1|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS1[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\DS1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS1[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\DS1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS1[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\DS1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS1[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\DS2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS2[0]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\DS2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS2[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\DS2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS2[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\DS2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS2|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS2[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\DS2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS2[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\DS2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS2[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\DS2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS2[6]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\DS3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS3[0]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\DS3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS3[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\DS3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS3[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\DS3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS3|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS3[3]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\DS3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS3[4]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\DS3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS3[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\DS3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispS3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS3[6]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOIBUF_X115_Y37_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X114_Y61_N8
\dispA0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux0~0_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[0]~input_o\ $ (!\A[3]~input_o\)))) # (!\A[2]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y61_N26
\dispA0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux1~0_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & ((\A[3]~input_o\))) # (!\A[0]~input_o\ & (\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\A[2]~input_o\ & (\A[0]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y61_N20
\dispA0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux2~0_combout\ = (\A[2]~input_o\ & (\A[3]~input_o\ & ((\A[1]~input_o\) # (!\A[0]~input_o\)))) # (!\A[2]~input_o\ & (\A[1]~input_o\ & (!\A[0]~input_o\ & !\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y61_N14
\dispA0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux3~0_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & (\A[2]~input_o\)) # (!\A[0]~input_o\ & (!\A[2]~input_o\ & \A[3]~input_o\)))) # (!\A[1]~input_o\ & (!\A[3]~input_o\ & (\A[0]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y61_N24
\dispA0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux4~0_combout\ = (\A[1]~input_o\ & (\A[0]~input_o\ & ((!\A[3]~input_o\)))) # (!\A[1]~input_o\ & ((\A[2]~input_o\ & ((!\A[3]~input_o\))) # (!\A[2]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y61_N2
\dispA0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux5~0_combout\ = (\A[1]~input_o\ & (!\A[3]~input_o\ & ((\A[0]~input_o\) # (!\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\A[2]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y61_N28
\dispA0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux6~0_combout\ = (\A[0]~input_o\ & ((\A[3]~input_o\) # (\A[1]~input_o\ $ (\A[2]~input_o\)))) # (!\A[0]~input_o\ & ((\A[1]~input_o\) # (\A[2]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux6~0_combout\);

-- Location: IOIBUF_X102_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X98_Y69_N8
\dispA1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux0~0_combout\ = (\A[6]~input_o\ & (!\A[5]~input_o\ & (\A[4]~input_o\ $ (!\A[7]~input_o\)))) # (!\A[6]~input_o\ & (\A[4]~input_o\ & (\A[7]~input_o\ $ (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \dispA1|Mux0~0_combout\);

-- Location: LCCOMB_X98_Y69_N18
\dispA1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux1~0_combout\ = (\A[7]~input_o\ & ((\A[4]~input_o\ & ((\A[5]~input_o\))) # (!\A[4]~input_o\ & (\A[6]~input_o\)))) # (!\A[7]~input_o\ & (\A[6]~input_o\ & (\A[4]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \dispA1|Mux1~0_combout\);

-- Location: LCCOMB_X98_Y69_N20
\dispA1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux2~0_combout\ = (\A[6]~input_o\ & (\A[7]~input_o\ & ((\A[5]~input_o\) # (!\A[4]~input_o\)))) # (!\A[6]~input_o\ & (!\A[4]~input_o\ & (!\A[7]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \dispA1|Mux2~0_combout\);

-- Location: LCCOMB_X98_Y69_N6
\dispA1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux3~0_combout\ = (\A[5]~input_o\ & ((\A[4]~input_o\ & (\A[6]~input_o\)) # (!\A[4]~input_o\ & (!\A[6]~input_o\ & \A[7]~input_o\)))) # (!\A[5]~input_o\ & (!\A[7]~input_o\ & (\A[4]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \dispA1|Mux3~0_combout\);

-- Location: LCCOMB_X98_Y69_N0
\dispA1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux4~0_combout\ = (\A[5]~input_o\ & (\A[4]~input_o\ & ((!\A[7]~input_o\)))) # (!\A[5]~input_o\ & ((\A[6]~input_o\ & ((!\A[7]~input_o\))) # (!\A[6]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \dispA1|Mux4~0_combout\);

-- Location: LCCOMB_X98_Y69_N26
\dispA1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux5~0_combout\ = (\A[4]~input_o\ & (\A[7]~input_o\ $ (((\A[5]~input_o\) # (!\A[6]~input_o\))))) # (!\A[4]~input_o\ & (!\A[6]~input_o\ & (!\A[7]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \dispA1|Mux5~0_combout\);

-- Location: LCCOMB_X98_Y69_N4
\dispA1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux6~0_combout\ = (\A[4]~input_o\ & ((\A[7]~input_o\) # (\A[6]~input_o\ $ (\A[5]~input_o\)))) # (!\A[4]~input_o\ & ((\A[5]~input_o\) # (\A[6]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \dispA1|Mux6~0_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X88_Y69_N24
\dispA2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux0~0_combout\ = (\A[11]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ $ (\A[10]~input_o\)))) # (!\A[11]~input_o\ & (!\A[9]~input_o\ & (\A[8]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \dispA2|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y69_N2
\dispA2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux1~0_combout\ = (\A[11]~input_o\ & ((\A[8]~input_o\ & (\A[9]~input_o\)) # (!\A[8]~input_o\ & ((\A[10]~input_o\))))) # (!\A[11]~input_o\ & (\A[10]~input_o\ & (\A[8]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \dispA2|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y69_N4
\dispA2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux2~0_combout\ = (\A[11]~input_o\ & (\A[10]~input_o\ & ((\A[9]~input_o\) # (!\A[8]~input_o\)))) # (!\A[11]~input_o\ & (!\A[8]~input_o\ & (\A[9]~input_o\ & !\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \dispA2|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y69_N30
\dispA2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux3~0_combout\ = (\A[9]~input_o\ & ((\A[8]~input_o\ & ((\A[10]~input_o\))) # (!\A[8]~input_o\ & (\A[11]~input_o\ & !\A[10]~input_o\)))) # (!\A[9]~input_o\ & (!\A[11]~input_o\ & (\A[8]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \dispA2|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y69_N8
\dispA2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux4~0_combout\ = (\A[9]~input_o\ & (!\A[11]~input_o\ & (\A[8]~input_o\))) # (!\A[9]~input_o\ & ((\A[10]~input_o\ & (!\A[11]~input_o\)) # (!\A[10]~input_o\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \dispA2|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y69_N26
\dispA2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux5~0_combout\ = (\A[8]~input_o\ & (\A[11]~input_o\ $ (((\A[9]~input_o\) # (!\A[10]~input_o\))))) # (!\A[8]~input_o\ & (!\A[11]~input_o\ & (\A[9]~input_o\ & !\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \dispA2|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y69_N28
\dispA2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux6~0_combout\ = (\A[8]~input_o\ & ((\A[11]~input_o\) # (\A[9]~input_o\ $ (\A[10]~input_o\)))) # (!\A[8]~input_o\ & ((\A[9]~input_o\) # (\A[11]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \dispA2|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y52_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X114_Y51_N8
\dispA3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux0~0_combout\ = (\A[15]~input_o\ & (\A[12]~input_o\ & (\A[13]~input_o\ $ (\A[14]~input_o\)))) # (!\A[15]~input_o\ & (!\A[13]~input_o\ & (\A[12]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \dispA3|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y51_N18
\dispA3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux1~0_combout\ = (\A[15]~input_o\ & ((\A[12]~input_o\ & (\A[13]~input_o\)) # (!\A[12]~input_o\ & ((\A[14]~input_o\))))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\A[12]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \dispA3|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y51_N4
\dispA3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux2~0_combout\ = (\A[15]~input_o\ & (\A[14]~input_o\ & ((\A[13]~input_o\) # (!\A[12]~input_o\)))) # (!\A[15]~input_o\ & (!\A[12]~input_o\ & (\A[13]~input_o\ & !\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \dispA3|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y51_N14
\dispA3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux3~0_combout\ = (\A[13]~input_o\ & ((\A[12]~input_o\ & ((\A[14]~input_o\))) # (!\A[12]~input_o\ & (\A[15]~input_o\ & !\A[14]~input_o\)))) # (!\A[13]~input_o\ & (!\A[15]~input_o\ & (\A[12]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \dispA3|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y51_N16
\dispA3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux4~0_combout\ = (\A[13]~input_o\ & (!\A[15]~input_o\ & (\A[12]~input_o\))) # (!\A[13]~input_o\ & ((\A[14]~input_o\ & (!\A[15]~input_o\)) # (!\A[14]~input_o\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \dispA3|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y51_N2
\dispA3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux5~0_combout\ = (\A[12]~input_o\ & (\A[15]~input_o\ $ (((\A[13]~input_o\) # (!\A[14]~input_o\))))) # (!\A[12]~input_o\ & (!\A[15]~input_o\ & (\A[13]~input_o\ & !\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \dispA3|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y51_N12
\dispA3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux6~0_combout\ = (\A[12]~input_o\ & ((\A[15]~input_o\) # (\A[13]~input_o\ $ (\A[14]~input_o\)))) # (!\A[12]~input_o\ & ((\A[13]~input_o\) # (\A[15]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \dispA3|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y62_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X109_Y69_N24
\dispB0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB0|Mux0~0_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\B[3]~input_o\ $ (!\B[0]~input_o\)))) # (!\B[2]~input_o\ & (\B[0]~input_o\ & (\B[3]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \dispB0|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y69_N26
\dispB0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB0|Mux1~0_combout\ = (\B[3]~input_o\ & ((\B[0]~input_o\ & ((\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\B[1]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \dispB0|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y69_N12
\dispB0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB0|Mux2~0_combout\ = (\B[2]~input_o\ & (\B[3]~input_o\ & ((\B[1]~input_o\) # (!\B[0]~input_o\)))) # (!\B[2]~input_o\ & (!\B[3]~input_o\ & (\B[1]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \dispB0|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y69_N30
\dispB0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB0|Mux3~0_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & ((\B[0]~input_o\))) # (!\B[2]~input_o\ & (\B[3]~input_o\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & (!\B[3]~input_o\ & (\B[2]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \dispB0|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y69_N8
\dispB0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB0|Mux4~0_combout\ = (\B[1]~input_o\ & (((!\B[3]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & (!\B[3]~input_o\)) # (!\B[2]~input_o\ & ((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \dispB0|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y69_N2
\dispB0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB0|Mux5~0_combout\ = (\B[2]~input_o\ & (\B[0]~input_o\ & (\B[3]~input_o\ $ (\B[1]~input_o\)))) # (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \dispB0|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y69_N4
\dispB0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB0|Mux6~0_combout\ = (\B[0]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\ $ (\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \dispB0|Mux6~0_combout\);

-- Location: IOIBUF_X83_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X99_Y69_N0
\dispB1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1|Mux0~0_combout\ = (\B[7]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ $ (\B[6]~input_o\)))) # (!\B[7]~input_o\ & (!\B[5]~input_o\ & (\B[4]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \dispB1|Mux0~0_combout\);

-- Location: LCCOMB_X99_Y69_N26
\dispB1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1|Mux1~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & (\B[7]~input_o\)) # (!\B[4]~input_o\ & ((\B[6]~input_o\))))) # (!\B[5]~input_o\ & (\B[6]~input_o\ & (\B[4]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \dispB1|Mux1~0_combout\);

-- Location: LCCOMB_X99_Y69_N28
\dispB1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1|Mux2~0_combout\ = (\B[7]~input_o\ & (\B[6]~input_o\ & ((\B[5]~input_o\) # (!\B[4]~input_o\)))) # (!\B[7]~input_o\ & (!\B[4]~input_o\ & (\B[5]~input_o\ & !\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \dispB1|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y69_N14
\dispB1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1|Mux3~0_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\B[6]~input_o\))) # (!\B[4]~input_o\ & (\B[7]~input_o\ & !\B[6]~input_o\)))) # (!\B[5]~input_o\ & (!\B[7]~input_o\ & (\B[4]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \dispB1|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y69_N24
\dispB1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1|Mux4~0_combout\ = (\B[5]~input_o\ & (\B[4]~input_o\ & (!\B[7]~input_o\))) # (!\B[5]~input_o\ & ((\B[6]~input_o\ & ((!\B[7]~input_o\))) # (!\B[6]~input_o\ & (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \dispB1|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y69_N2
\dispB1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1|Mux5~0_combout\ = (\B[4]~input_o\ & (\B[7]~input_o\ $ (((\B[5]~input_o\) # (!\B[6]~input_o\))))) # (!\B[4]~input_o\ & (\B[5]~input_o\ & (!\B[7]~input_o\ & !\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \dispB1|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y69_N12
\dispB1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1|Mux6~0_combout\ = (\B[4]~input_o\ & ((\B[7]~input_o\) # (\B[5]~input_o\ $ (\B[6]~input_o\)))) # (!\B[4]~input_o\ & ((\B[5]~input_o\) # (\B[7]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \dispB1|Mux6~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X89_Y69_N24
\dispB2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux0~0_combout\ = (\B[11]~input_o\ & (\B[8]~input_o\ & (\B[10]~input_o\ $ (\B[9]~input_o\)))) # (!\B[11]~input_o\ & (!\B[9]~input_o\ & (\B[10]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux0~0_combout\);

-- Location: LCCOMB_X89_Y69_N26
\dispB2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux1~0_combout\ = (\B[11]~input_o\ & ((\B[8]~input_o\ & ((\B[9]~input_o\))) # (!\B[8]~input_o\ & (\B[10]~input_o\)))) # (!\B[11]~input_o\ & (\B[10]~input_o\ & (\B[9]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux1~0_combout\);

-- Location: LCCOMB_X89_Y69_N4
\dispB2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux2~0_combout\ = (\B[11]~input_o\ & (\B[10]~input_o\ & ((\B[9]~input_o\) # (!\B[8]~input_o\)))) # (!\B[11]~input_o\ & (!\B[10]~input_o\ & (\B[9]~input_o\ & !\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux2~0_combout\);

-- Location: LCCOMB_X89_Y69_N14
\dispB2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux3~0_combout\ = (\B[9]~input_o\ & ((\B[10]~input_o\ & ((\B[8]~input_o\))) # (!\B[10]~input_o\ & (\B[11]~input_o\ & !\B[8]~input_o\)))) # (!\B[9]~input_o\ & (!\B[11]~input_o\ & (\B[10]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux3~0_combout\);

-- Location: LCCOMB_X89_Y69_N0
\dispB2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux4~0_combout\ = (\B[9]~input_o\ & (!\B[11]~input_o\ & ((\B[8]~input_o\)))) # (!\B[9]~input_o\ & ((\B[10]~input_o\ & (!\B[11]~input_o\)) # (!\B[10]~input_o\ & ((\B[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux4~0_combout\);

-- Location: LCCOMB_X89_Y69_N2
\dispB2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux5~0_combout\ = (\B[10]~input_o\ & (\B[8]~input_o\ & (\B[11]~input_o\ $ (\B[9]~input_o\)))) # (!\B[10]~input_o\ & (!\B[11]~input_o\ & ((\B[9]~input_o\) # (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux5~0_combout\);

-- Location: LCCOMB_X89_Y69_N12
\dispB2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux6~0_combout\ = (\B[8]~input_o\ & ((\B[11]~input_o\) # (\B[10]~input_o\ $ (\B[9]~input_o\)))) # (!\B[8]~input_o\ & ((\B[9]~input_o\) # (\B[11]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y55_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X114_Y63_N0
\dispB3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux0~0_combout\ = (\B[15]~input_o\ & (\B[12]~input_o\ & (\B[13]~input_o\ $ (\B[14]~input_o\)))) # (!\B[15]~input_o\ & (!\B[13]~input_o\ & (\B[12]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \dispB3|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y63_N18
\dispB3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux1~0_combout\ = (\B[13]~input_o\ & ((\B[12]~input_o\ & (\B[15]~input_o\)) # (!\B[12]~input_o\ & ((\B[14]~input_o\))))) # (!\B[13]~input_o\ & (\B[14]~input_o\ & (\B[12]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \dispB3|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y63_N4
\dispB3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux2~0_combout\ = (\B[15]~input_o\ & (\B[14]~input_o\ & ((\B[13]~input_o\) # (!\B[12]~input_o\)))) # (!\B[15]~input_o\ & (\B[13]~input_o\ & (!\B[12]~input_o\ & !\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \dispB3|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y63_N14
\dispB3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux3~0_combout\ = (\B[13]~input_o\ & ((\B[12]~input_o\ & ((\B[14]~input_o\))) # (!\B[12]~input_o\ & (\B[15]~input_o\ & !\B[14]~input_o\)))) # (!\B[13]~input_o\ & (!\B[15]~input_o\ & (\B[12]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \dispB3|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y63_N8
\dispB3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux4~0_combout\ = (\B[13]~input_o\ & (\B[12]~input_o\ & (!\B[15]~input_o\))) # (!\B[13]~input_o\ & ((\B[14]~input_o\ & ((!\B[15]~input_o\))) # (!\B[14]~input_o\ & (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \dispB3|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y63_N2
\dispB3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux5~0_combout\ = (\B[13]~input_o\ & (!\B[15]~input_o\ & ((\B[12]~input_o\) # (!\B[14]~input_o\)))) # (!\B[13]~input_o\ & (\B[12]~input_o\ & (\B[15]~input_o\ $ (!\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \dispB3|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y63_N20
\dispB3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux6~0_combout\ = (\B[12]~input_o\ & ((\B[15]~input_o\) # (\B[13]~input_o\ $ (\B[14]~input_o\)))) # (!\B[12]~input_o\ & ((\B[13]~input_o\) # (\B[15]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \dispB3|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y66_N15
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X91_Y69_N16
\ulaOP|des~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|des~0_combout\ = (!\M~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|des~0_combout\);

-- Location: IOIBUF_X115_Y61_N22
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X109_Y69_N22
\ulaOP|l1|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l1|Yi~0_combout\ = (\S1~input_o\) # (\B[1]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \ulaOP|l1|Yi~0_combout\);

-- Location: LCCOMB_X114_Y61_N30
\ulaOP|o0|cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|cout~3_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ulaOP|o0|cout~3_combout\);

-- Location: LCCOMB_X114_Y61_N0
\ulaOP|o0|cout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|cout~6_combout\ = (!\M~input_o\ & (\ulaOP|o0|cout~3_combout\ & !\S1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \ulaOP|o0|cout~3_combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|o0|cout~6_combout\);

-- Location: LCCOMB_X109_Y69_N20
\ulaOP|l1|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l1|Xi~4_combout\ = (\M~input_o\ & ((\B[1]~input_o\) # ((\S1~input_o\ & \S0~input_o\)))) # (!\M~input_o\ & (!\S1~input_o\ & ((!\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[1]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \ulaOP|l1|Xi~4_combout\);

-- Location: LCCOMB_X109_Y69_N6
\ulaOP|l1|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l1|Xi~5_combout\ = (\A[1]~input_o\ & ((\ulaOP|l1|Xi~4_combout\ & (!\S1~input_o\)) # (!\ulaOP|l1|Xi~4_combout\ & ((\S1~input_o\) # (\S0~input_o\))))) # (!\A[1]~input_o\ & (\ulaOP|l1|Xi~4_combout\ & ((\S1~input_o\) # (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ulaOP|l1|Xi~4_combout\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \ulaOP|l1|Xi~5_combout\);

-- Location: LCCOMB_X109_Y69_N16
\ulaOP|o1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o1|s~combout\ = \ulaOP|o0|cout~6_combout\ $ (\ulaOP|l1|Xi~5_combout\ $ (((\ulaOP|l1|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l1|Yi~0_combout\,
	datab => \ulaOP|o0|cout~6_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|l1|Xi~5_combout\,
	combout => \ulaOP|o1|s~combout\);

-- Location: LCCOMB_X114_Y61_N12
\ulaOP|o0|s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|s~3_combout\ = (\M~input_o\ & ((\A[0]~input_o\ & ((\S1~input_o\))) # (!\A[0]~input_o\ & (!\S0~input_o\ & !\S1~input_o\)))) # (!\M~input_o\ & ((\A[0]~input_o\ $ (\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \M~input_o\,
	datac => \A[0]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|o0|s~3_combout\);

-- Location: LCCOMB_X114_Y61_N18
\ulaOP|o0|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|s~2_combout\ = (\S0~input_o\ & (\A[0]~input_o\ $ (((!\S1~input_o\) # (!\M~input_o\))))) # (!\S0~input_o\ & (((\M~input_o\ & !\S1~input_o\)) # (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \M~input_o\,
	datac => \A[0]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|o0|s~2_combout\);

-- Location: LCCOMB_X114_Y61_N6
\ulaOP|o0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|s~combout\ = (\B[0]~input_o\ & (\ulaOP|o0|s~3_combout\)) # (!\B[0]~input_o\ & ((\ulaOP|o0|s~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o0|s~3_combout\,
	datab => \ulaOP|o0|s~2_combout\,
	datad => \B[0]~input_o\,
	combout => \ulaOP|o0|s~combout\);

-- Location: LCCOMB_X92_Y69_N8
\ulaOP|shift|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux15~0_combout\ = (\ulaOP|des~0_combout\ & (!\ulaOP|o1|s~combout\ & (\S0~input_o\))) # (!\ulaOP|des~0_combout\ & (((!\ulaOP|o0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|des~0_combout\,
	datab => \ulaOP|o1|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|o0|s~combout\,
	combout => \ulaOP|shift|Mux15~0_combout\);

-- Location: LCCOMB_X109_Y69_N10
\ulaOP|o1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o1|cout~0_combout\ = (\ulaOP|o0|cout~6_combout\ & ((\ulaOP|l1|Xi~5_combout\) # ((!\ulaOP|l1|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o0|cout~6_combout\ & (!\ulaOP|l1|Yi~0_combout\ & (!\M~input_o\ & \ulaOP|l1|Xi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l1|Yi~0_combout\,
	datab => \ulaOP|o0|cout~6_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|l1|Xi~5_combout\,
	combout => \ulaOP|o1|cout~0_combout\);

-- Location: LCCOMB_X109_Y69_N28
\ulaOP|l2|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l2|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \B[2]~input_o\,
	combout => \ulaOP|l2|Yi~0_combout\);

-- Location: LCCOMB_X114_Y61_N22
\ulaOP|l2|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l2|Xi~3_combout\ = (\A[2]~input_o\ & (\S1~input_o\ $ (((\B[2]~input_o\) # (\S0~input_o\))))) # (!\A[2]~input_o\ & ((\B[2]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[2]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \S0~input_o\,
	datac => \A[2]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l2|Xi~3_combout\);

-- Location: LCCOMB_X114_Y61_N16
\ulaOP|l2|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l2|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l2|Xi~3_combout\))) # (!\M~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \M~input_o\,
	datac => \ulaOP|l2|Xi~3_combout\,
	combout => \ulaOP|l2|Xi~4_combout\);

-- Location: LCCOMB_X109_Y69_N14
\ulaOP|o2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o2|s~combout\ = \ulaOP|o1|cout~0_combout\ $ (\ulaOP|l2|Xi~4_combout\ $ (((\ulaOP|l2|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o1|cout~0_combout\,
	datab => \ulaOP|l2|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|l2|Xi~4_combout\,
	combout => \ulaOP|o2|s~combout\);

-- Location: LCCOMB_X109_Y69_N0
\ulaOP|o2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o2|cout~0_combout\ = (\ulaOP|o1|cout~0_combout\ & ((\ulaOP|l2|Xi~4_combout\) # ((!\ulaOP|l2|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o1|cout~0_combout\ & (!\ulaOP|l2|Yi~0_combout\ & (!\M~input_o\ & \ulaOP|l2|Xi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o1|cout~0_combout\,
	datab => \ulaOP|l2|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|l2|Xi~4_combout\,
	combout => \ulaOP|o2|cout~0_combout\);

-- Location: LCCOMB_X114_Y61_N10
\ulaOP|l3|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l3|Xi~3_combout\ = (\S1~input_o\ & (\A[3]~input_o\ $ (((\S0~input_o\) # (\B[3]~input_o\))))) # (!\S1~input_o\ & ((\A[3]~input_o\ & ((\S0~input_o\) # (\B[3]~input_o\))) # (!\A[3]~input_o\ & (\S0~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A[3]~input_o\,
	datac => \S0~input_o\,
	datad => \B[3]~input_o\,
	combout => \ulaOP|l3|Xi~3_combout\);

-- Location: LCCOMB_X114_Y61_N4
\ulaOP|l3|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l3|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l3|Xi~3_combout\)) # (!\M~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l3|Xi~3_combout\,
	datab => \A[3]~input_o\,
	datac => \M~input_o\,
	combout => \ulaOP|l3|Xi~4_combout\);

-- Location: LCCOMB_X109_Y69_N18
\ulaOP|l3|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l3|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \B[3]~input_o\,
	combout => \ulaOP|l3|Yi~0_combout\);

-- Location: LCCOMB_X99_Y69_N6
\ulaOP|o3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o3|s~combout\ = \ulaOP|o2|cout~0_combout\ $ (\ulaOP|l3|Xi~4_combout\ $ (((\ulaOP|l3|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o2|cout~0_combout\,
	datab => \ulaOP|l3|Xi~4_combout\,
	datac => \ulaOP|l3|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o3|s~combout\);

-- Location: LCCOMB_X92_Y69_N4
\ulaOP|shift|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux13~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o3|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|des~0_combout\,
	datab => \S0~input_o\,
	datac => \ulaOP|o1|s~combout\,
	datad => \ulaOP|o3|s~combout\,
	combout => \ulaOP|shift|Mux13~2_combout\);

-- Location: LCCOMB_X92_Y69_N28
\ulaOP|shift|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux13~3_combout\ = (\ulaOP|shift|Mux13~2_combout\) # ((\ulaOP|o2|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o2|s~combout\,
	datab => \ulaOP|shift|Mux13~2_combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux13~3_combout\);

-- Location: LCCOMB_X99_Y69_N10
\ulaOP|l4|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l4|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \B[4]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l4|Yi~0_combout\);

-- Location: LCCOMB_X99_Y69_N16
\ulaOP|o3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o3|cout~0_combout\ = (\ulaOP|o2|cout~0_combout\ & ((\ulaOP|l3|Xi~4_combout\) # ((!\ulaOP|l3|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o2|cout~0_combout\ & (\ulaOP|l3|Xi~4_combout\ & (!\ulaOP|l3|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o2|cout~0_combout\,
	datab => \ulaOP|l3|Xi~4_combout\,
	datac => \ulaOP|l3|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o3|cout~0_combout\);

-- Location: LCCOMB_X98_Y69_N24
\ulaOP|l4|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l4|Xi~3_combout\ = (\A[4]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[4]~input_o\))))) # (!\A[4]~input_o\ & ((\S0~input_o\ & ((\B[4]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[4]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \S0~input_o\,
	datac => \B[4]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l4|Xi~3_combout\);

-- Location: LCCOMB_X98_Y69_N2
\ulaOP|l4|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l4|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l4|Xi~3_combout\))) # (!\M~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ulaOP|l4|Xi~3_combout\,
	datac => \M~input_o\,
	combout => \ulaOP|l4|Xi~4_combout\);

-- Location: LCCOMB_X99_Y69_N20
\ulaOP|o4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o4|s~combout\ = \ulaOP|o3|cout~0_combout\ $ (\ulaOP|l4|Xi~4_combout\ $ (((\ulaOP|l4|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l4|Yi~0_combout\,
	datab => \ulaOP|o3|cout~0_combout\,
	datac => \ulaOP|l4|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o4|s~combout\);

-- Location: LCCOMB_X92_Y69_N6
\ulaOP|shift|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux12~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o4|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o2|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o4|s~combout\,
	datab => \S0~input_o\,
	datac => \ulaOP|o2|s~combout\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux12~2_combout\);

-- Location: LCCOMB_X92_Y69_N30
\ulaOP|shift|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux12~3_combout\ = (\ulaOP|shift|Mux12~2_combout\) # ((\ulaOP|o3|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux12~2_combout\,
	datab => \ulaOP|o3|s~combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux12~3_combout\);

-- Location: LCCOMB_X92_Y69_N2
\ulaOP|shift|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux14~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o2|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o0|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o2|s~combout\,
	datab => \ulaOP|o0|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux14~2_combout\);

-- Location: LCCOMB_X92_Y69_N26
\ulaOP|shift|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux14~3_combout\ = (\ulaOP|shift|Mux14~2_combout\) # ((\ulaOP|o1|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux14~2_combout\,
	datab => \ulaOP|o1|s~combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux14~3_combout\);

-- Location: LCCOMB_X77_Y69_N24
\dispS0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux0~0_combout\ = (\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux12~3_combout\ $ (!\ulaOP|shift|Mux14~3_combout\)))) # (!\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux14~3_combout\ & 
-- (\ulaOP|shift|Mux15~0_combout\ $ (\ulaOP|shift|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux15~0_combout\,
	datab => \ulaOP|shift|Mux13~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux14~3_combout\,
	combout => \dispS0|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y69_N26
\dispS0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux1~0_combout\ = (\ulaOP|shift|Mux12~3_combout\ & ((\ulaOP|shift|Mux13~3_combout\) # (\ulaOP|shift|Mux15~0_combout\ $ (\ulaOP|shift|Mux14~3_combout\)))) # (!\ulaOP|shift|Mux12~3_combout\ & ((\ulaOP|shift|Mux15~0_combout\ & 
-- ((\ulaOP|shift|Mux14~3_combout\))) # (!\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux15~0_combout\,
	datab => \ulaOP|shift|Mux13~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux14~3_combout\,
	combout => \dispS0|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y69_N28
\dispS0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux2~0_combout\ = (\ulaOP|shift|Mux13~3_combout\ & ((\ulaOP|shift|Mux15~0_combout\) # ((\ulaOP|shift|Mux14~3_combout\) # (!\ulaOP|shift|Mux12~3_combout\)))) # (!\ulaOP|shift|Mux13~3_combout\ & ((\ulaOP|shift|Mux12~3_combout\) # 
-- ((\ulaOP|shift|Mux15~0_combout\ & \ulaOP|shift|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux15~0_combout\,
	datab => \ulaOP|shift|Mux13~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux14~3_combout\,
	combout => \dispS0|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y69_N14
\dispS0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux3~0_combout\ = (\ulaOP|shift|Mux14~3_combout\ & (\ulaOP|shift|Mux12~3_combout\ & (\ulaOP|shift|Mux15~0_combout\ $ (!\ulaOP|shift|Mux13~3_combout\)))) # (!\ulaOP|shift|Mux14~3_combout\ & ((\ulaOP|shift|Mux15~0_combout\ & 
-- (!\ulaOP|shift|Mux13~3_combout\)) # (!\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux13~3_combout\ & !\ulaOP|shift|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux15~0_combout\,
	datab => \ulaOP|shift|Mux13~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux14~3_combout\,
	combout => \dispS0|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y69_N0
\dispS0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux4~0_combout\ = (\ulaOP|shift|Mux14~3_combout\ & ((\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux15~0_combout\)) # (!\ulaOP|shift|Mux13~3_combout\ & ((\ulaOP|shift|Mux12~3_combout\))))) # (!\ulaOP|shift|Mux14~3_combout\ & 
-- (\ulaOP|shift|Mux15~0_combout\ & ((\ulaOP|shift|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux15~0_combout\,
	datab => \ulaOP|shift|Mux13~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux14~3_combout\,
	combout => \dispS0|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y69_N2
\dispS0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux5~0_combout\ = (\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux12~3_combout\ $ (((!\ulaOP|shift|Mux13~3_combout\ & \ulaOP|shift|Mux14~3_combout\))))) # (!\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux13~3_combout\ & 
-- (\ulaOP|shift|Mux12~3_combout\ & !\ulaOP|shift|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux15~0_combout\,
	datab => \ulaOP|shift|Mux13~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux14~3_combout\,
	combout => \dispS0|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y69_N12
\dispS0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux6~0_combout\ = (\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux12~3_combout\ & (\ulaOP|shift|Mux13~3_combout\ $ (!\ulaOP|shift|Mux14~3_combout\)))) # (!\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux14~3_combout\ & 
-- (\ulaOP|shift|Mux13~3_combout\ $ (!\ulaOP|shift|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux15~0_combout\,
	datab => \ulaOP|shift|Mux13~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux14~3_combout\,
	combout => \dispS0|Mux6~0_combout\);

-- Location: LCCOMB_X98_Y69_N12
\ulaOP|l5|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l5|Xi~3_combout\ = (\A[5]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[5]~input_o\))))) # (!\A[5]~input_o\ & ((\S0~input_o\ & ((\B[5]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[5]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \S0~input_o\,
	datac => \B[5]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l5|Xi~3_combout\);

-- Location: LCCOMB_X98_Y69_N14
\ulaOP|l5|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l5|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l5|Xi~3_combout\)) # (!\M~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l5|Xi~3_combout\,
	datac => \M~input_o\,
	datad => \A[5]~input_o\,
	combout => \ulaOP|l5|Xi~4_combout\);

-- Location: LCCOMB_X99_Y69_N8
\ulaOP|l5|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l5|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \B[5]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l5|Yi~0_combout\);

-- Location: LCCOMB_X99_Y69_N30
\ulaOP|o4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o4|cout~0_combout\ = (\ulaOP|o3|cout~0_combout\ & ((\ulaOP|l4|Xi~4_combout\) # ((!\ulaOP|l4|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o3|cout~0_combout\ & (!\ulaOP|l4|Yi~0_combout\ & (\ulaOP|l4|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l4|Yi~0_combout\,
	datab => \ulaOP|o3|cout~0_combout\,
	datac => \ulaOP|l4|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o4|cout~0_combout\);

-- Location: LCCOMB_X99_Y69_N18
\ulaOP|o5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o5|s~combout\ = \ulaOP|l5|Xi~4_combout\ $ (\ulaOP|o4|cout~0_combout\ $ (((\ulaOP|l5|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l5|Xi~4_combout\,
	datab => \ulaOP|l5|Yi~0_combout\,
	datac => \ulaOP|o4|cout~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o5|s~combout\);

-- Location: LCCOMB_X98_Y69_N22
\ulaOP|l7|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l7|Yi~0_combout\ = (\S1~input_o\) # (\B[7]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l7|Yi~0_combout\);

-- Location: LCCOMB_X98_Y69_N28
\ulaOP|l7|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l7|Xi~3_combout\ = (\A[7]~input_o\ & (\S1~input_o\ $ (((\B[7]~input_o\) # (\S0~input_o\))))) # (!\A[7]~input_o\ & ((\B[7]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[7]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \S0~input_o\,
	datac => \A[7]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l7|Xi~3_combout\);

-- Location: LCCOMB_X98_Y69_N30
\ulaOP|l7|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l7|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l7|Xi~3_combout\))) # (!\M~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ulaOP|l7|Xi~3_combout\,
	datac => \M~input_o\,
	combout => \ulaOP|l7|Xi~4_combout\);

-- Location: LCCOMB_X99_Y69_N4
\ulaOP|o5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o5|cout~0_combout\ = (\ulaOP|l5|Xi~4_combout\ & ((\ulaOP|o4|cout~0_combout\) # ((!\ulaOP|l5|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|l5|Xi~4_combout\ & (!\ulaOP|l5|Yi~0_combout\ & (\ulaOP|o4|cout~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l5|Xi~4_combout\,
	datab => \ulaOP|l5|Yi~0_combout\,
	datac => \ulaOP|o4|cout~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o5|cout~0_combout\);

-- Location: LCCOMB_X99_Y69_N22
\ulaOP|l6|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l6|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \B[6]~input_o\,
	combout => \ulaOP|l6|Yi~0_combout\);

-- Location: LCCOMB_X98_Y69_N16
\ulaOP|l6|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l6|Xi~3_combout\ = (\A[6]~input_o\ & (\S1~input_o\ $ (((\B[6]~input_o\) # (\S0~input_o\))))) # (!\A[6]~input_o\ & ((\B[6]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[6]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \S0~input_o\,
	datac => \A[6]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l6|Xi~3_combout\);

-- Location: LCCOMB_X98_Y69_N10
\ulaOP|l6|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l6|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l6|Xi~3_combout\))) # (!\M~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|l6|Xi~3_combout\,
	combout => \ulaOP|l6|Xi~4_combout\);

-- Location: LCCOMB_X97_Y69_N26
\ulaOP|o6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o6|cout~0_combout\ = (\ulaOP|o5|cout~0_combout\ & ((\ulaOP|l6|Xi~4_combout\) # ((!\ulaOP|l6|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o5|cout~0_combout\ & (!\ulaOP|l6|Yi~0_combout\ & (\ulaOP|l6|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o5|cout~0_combout\,
	datab => \ulaOP|l6|Yi~0_combout\,
	datac => \ulaOP|l6|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o6|cout~0_combout\);

-- Location: LCCOMB_X91_Y69_N10
\ulaOP|o7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o7|s~combout\ = \ulaOP|l7|Xi~4_combout\ $ (\ulaOP|o6|cout~0_combout\ $ (((\ulaOP|l7|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l7|Yi~0_combout\,
	datab => \ulaOP|l7|Xi~4_combout\,
	datac => \ulaOP|o6|cout~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o7|s~combout\);

-- Location: LCCOMB_X92_Y69_N12
\ulaOP|shift|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux9~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o7|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o5|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|des~0_combout\,
	datab => \S0~input_o\,
	datac => \ulaOP|o5|s~combout\,
	datad => \ulaOP|o7|s~combout\,
	combout => \ulaOP|shift|Mux9~2_combout\);

-- Location: LCCOMB_X97_Y69_N24
\ulaOP|o6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o6|s~combout\ = \ulaOP|o5|cout~0_combout\ $ (\ulaOP|l6|Xi~4_combout\ $ (((\ulaOP|l6|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o5|cout~0_combout\,
	datab => \ulaOP|l6|Yi~0_combout\,
	datac => \ulaOP|l6|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o6|s~combout\);

-- Location: LCCOMB_X92_Y69_N20
\ulaOP|shift|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux9~3_combout\ = (\ulaOP|shift|Mux9~2_combout\) # ((\ulaOP|o6|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~2_combout\,
	datab => \M~input_o\,
	datac => \ulaOP|o6|s~combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux9~3_combout\);

-- Location: LCCOMB_X92_Y69_N18
\ulaOP|shift|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux10~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o6|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o4|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o6|s~combout\,
	datab => \S0~input_o\,
	datac => \ulaOP|o4|s~combout\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux10~2_combout\);

-- Location: LCCOMB_X92_Y69_N10
\ulaOP|shift|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux10~3_combout\ = (\ulaOP|shift|Mux10~2_combout\) # ((\ulaOP|o5|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o5|s~combout\,
	datab => \ulaOP|shift|Mux10~2_combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux10~3_combout\);

-- Location: LCCOMB_X92_Y69_N0
\ulaOP|shift|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux11~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o5|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o3|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o5|s~combout\,
	datab => \ulaOP|o3|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux11~2_combout\);

-- Location: LCCOMB_X92_Y69_N16
\ulaOP|shift|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux11~3_combout\ = (\ulaOP|shift|Mux11~2_combout\) # ((\ulaOP|o4|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o4|s~combout\,
	datab => \ulaOP|shift|Mux11~2_combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux11~3_combout\);

-- Location: LCCOMB_X91_Y69_N30
\ulaOP|l8|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l8|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[8]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l8|Yi~0_combout\);

-- Location: LCCOMB_X91_Y69_N28
\ulaOP|o7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o7|cout~0_combout\ = (\ulaOP|l7|Xi~4_combout\ & ((\ulaOP|o6|cout~0_combout\) # ((!\ulaOP|l7|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|l7|Xi~4_combout\ & (!\ulaOP|l7|Yi~0_combout\ & (\ulaOP|o6|cout~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l7|Yi~0_combout\,
	datab => \ulaOP|l7|Xi~4_combout\,
	datac => \ulaOP|o6|cout~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o7|cout~0_combout\);

-- Location: LCCOMB_X88_Y69_N16
\ulaOP|l8|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l8|Xi~3_combout\ = (\A[8]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[8]~input_o\))))) # (!\A[8]~input_o\ & ((\S0~input_o\ & ((\B[8]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[8]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l8|Xi~3_combout\);

-- Location: LCCOMB_X88_Y69_N10
\ulaOP|l8|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l8|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l8|Xi~3_combout\))) # (!\M~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|l8|Xi~3_combout\,
	combout => \ulaOP|l8|Xi~4_combout\);

-- Location: LCCOMB_X91_Y69_N8
\ulaOP|o8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o8|s~combout\ = \ulaOP|o7|cout~0_combout\ $ (\ulaOP|l8|Xi~4_combout\ $ (((\ulaOP|l8|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l8|Yi~0_combout\,
	datab => \ulaOP|o7|cout~0_combout\,
	datac => \ulaOP|l8|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o8|s~combout\);

-- Location: LCCOMB_X92_Y69_N22
\ulaOP|shift|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux8~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o8|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o6|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|des~0_combout\,
	datab => \S0~input_o\,
	datac => \ulaOP|o6|s~combout\,
	datad => \ulaOP|o8|s~combout\,
	combout => \ulaOP|shift|Mux8~2_combout\);

-- Location: LCCOMB_X92_Y69_N14
\ulaOP|shift|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux8~3_combout\ = (\ulaOP|shift|Mux8~2_combout\) # ((\ulaOP|o7|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o7|s~combout\,
	datab => \M~input_o\,
	datac => \ulaOP|shift|Mux8~2_combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux8~3_combout\);

-- Location: LCCOMB_X69_Y69_N16
\dispS1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux0~0_combout\ = (\ulaOP|shift|Mux9~3_combout\ & (!\ulaOP|shift|Mux11~3_combout\ & (\ulaOP|shift|Mux10~3_combout\ $ (!\ulaOP|shift|Mux8~3_combout\)))) # (!\ulaOP|shift|Mux9~3_combout\ & (\ulaOP|shift|Mux10~3_combout\ & 
-- (\ulaOP|shift|Mux11~3_combout\ $ (!\ulaOP|shift|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux8~3_combout\,
	combout => \dispS1|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y69_N10
\dispS1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux1~0_combout\ = (\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\) # (\ulaOP|shift|Mux11~3_combout\ $ (!\ulaOP|shift|Mux8~3_combout\)))) # (!\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux11~3_combout\ & 
-- (\ulaOP|shift|Mux9~3_combout\)) # (!\ulaOP|shift|Mux11~3_combout\ & ((\ulaOP|shift|Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux8~3_combout\,
	combout => \dispS1|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y69_N12
\dispS1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux2~0_combout\ = (\ulaOP|shift|Mux9~3_combout\ & ((\ulaOP|shift|Mux10~3_combout\) # ((!\ulaOP|shift|Mux8~3_combout\) # (!\ulaOP|shift|Mux11~3_combout\)))) # (!\ulaOP|shift|Mux9~3_combout\ & ((\ulaOP|shift|Mux8~3_combout\) # 
-- ((\ulaOP|shift|Mux10~3_combout\ & !\ulaOP|shift|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux8~3_combout\,
	combout => \dispS1|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y69_N14
\dispS1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux3~0_combout\ = (\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\ $ (!\ulaOP|shift|Mux11~3_combout\)) # (!\ulaOP|shift|Mux8~3_combout\))) # (!\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\ & 
-- ((\ulaOP|shift|Mux8~3_combout\) # (!\ulaOP|shift|Mux11~3_combout\))) # (!\ulaOP|shift|Mux9~3_combout\ & (\ulaOP|shift|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux8~3_combout\,
	combout => \dispS1|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y69_N0
\dispS1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux4~0_combout\ = (\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\ & (!\ulaOP|shift|Mux11~3_combout\)) # (!\ulaOP|shift|Mux9~3_combout\ & ((\ulaOP|shift|Mux8~3_combout\))))) # (!\ulaOP|shift|Mux10~3_combout\ & 
-- (((!\ulaOP|shift|Mux11~3_combout\ & \ulaOP|shift|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux8~3_combout\,
	combout => \dispS1|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y69_N2
\dispS1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux5~0_combout\ = (\ulaOP|shift|Mux9~3_combout\ & (\ulaOP|shift|Mux8~3_combout\ & ((!\ulaOP|shift|Mux11~3_combout\) # (!\ulaOP|shift|Mux10~3_combout\)))) # (!\ulaOP|shift|Mux9~3_combout\ & (!\ulaOP|shift|Mux11~3_combout\ & 
-- (\ulaOP|shift|Mux10~3_combout\ $ (\ulaOP|shift|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux8~3_combout\,
	combout => \dispS1|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y69_N4
\dispS1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux6~0_combout\ = (\ulaOP|shift|Mux11~3_combout\ & (\ulaOP|shift|Mux10~3_combout\ & (\ulaOP|shift|Mux9~3_combout\ $ (!\ulaOP|shift|Mux8~3_combout\)))) # (!\ulaOP|shift|Mux11~3_combout\ & (\ulaOP|shift|Mux8~3_combout\ & 
-- (\ulaOP|shift|Mux9~3_combout\ $ (!\ulaOP|shift|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux9~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux8~3_combout\,
	combout => \dispS1|Mux6~0_combout\);

-- Location: LCCOMB_X89_Y69_N30
\ulaOP|l10|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l10|Yi~0_combout\ = (\S1~input_o\) # (\B[10]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l10|Yi~0_combout\);

-- Location: LCCOMB_X88_Y69_N0
\ulaOP|l10|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l10|Xi~3_combout\ = (\A[10]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[10]~input_o\))))) # (!\A[10]~input_o\ & ((\S0~input_o\ & ((\B[10]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[10]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l10|Xi~3_combout\);

-- Location: LCCOMB_X88_Y69_N18
\ulaOP|l10|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l10|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l10|Xi~3_combout\))) # (!\M~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|l10|Xi~3_combout\,
	combout => \ulaOP|l10|Xi~4_combout\);

-- Location: LCCOMB_X91_Y69_N26
\ulaOP|o8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o8|cout~0_combout\ = (\ulaOP|o7|cout~0_combout\ & ((\ulaOP|l8|Xi~4_combout\) # ((!\ulaOP|l8|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o7|cout~0_combout\ & (!\ulaOP|l8|Yi~0_combout\ & (\ulaOP|l8|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l8|Yi~0_combout\,
	datab => \ulaOP|o7|cout~0_combout\,
	datac => \ulaOP|l8|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o8|cout~0_combout\);

-- Location: LCCOMB_X88_Y69_N20
\ulaOP|l9|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l9|Xi~3_combout\ = (\A[9]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[9]~input_o\))))) # (!\A[9]~input_o\ & ((\S0~input_o\ & ((\B[9]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[9]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l9|Xi~3_combout\);

-- Location: LCCOMB_X88_Y69_N22
\ulaOP|l9|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l9|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l9|Xi~3_combout\))) # (!\M~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|l9|Xi~3_combout\,
	combout => \ulaOP|l9|Xi~4_combout\);

-- Location: LCCOMB_X88_Y69_N6
\ulaOP|l9|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l9|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[9]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l9|Yi~0_combout\);

-- Location: LCCOMB_X91_Y69_N6
\ulaOP|o9|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o9|cout~0_combout\ = (\ulaOP|o8|cout~0_combout\ & ((\ulaOP|l9|Xi~4_combout\) # ((!\ulaOP|l9|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o8|cout~0_combout\ & (\ulaOP|l9|Xi~4_combout\ & (!\ulaOP|l9|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o8|cout~0_combout\,
	datab => \ulaOP|l9|Xi~4_combout\,
	datac => \ulaOP|l9|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o9|cout~0_combout\);

-- Location: LCCOMB_X89_Y69_N16
\ulaOP|o10|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o10|s~combout\ = \ulaOP|l10|Xi~4_combout\ $ (\ulaOP|o9|cout~0_combout\ $ (((\ulaOP|l10|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l10|Yi~0_combout\,
	datab => \ulaOP|l10|Xi~4_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|o9|cout~0_combout\,
	combout => \ulaOP|o10|s~combout\);

-- Location: LCCOMB_X91_Y69_N24
\ulaOP|shift|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux6~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o10|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o8|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o10|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o8|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux6~2_combout\);

-- Location: LCCOMB_X91_Y69_N12
\ulaOP|o9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o9|s~combout\ = \ulaOP|o8|cout~0_combout\ $ (\ulaOP|l9|Xi~4_combout\ $ (((\ulaOP|l9|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o8|cout~0_combout\,
	datab => \ulaOP|l9|Xi~4_combout\,
	datac => \ulaOP|l9|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o9|s~combout\);

-- Location: LCCOMB_X91_Y69_N4
\ulaOP|shift|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux6~3_combout\ = (\ulaOP|shift|Mux6~2_combout\) # ((\ulaOP|o9|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \ulaOP|shift|Mux6~2_combout\,
	datac => \ulaOP|o9|s~combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux6~3_combout\);

-- Location: LCCOMB_X89_Y69_N10
\ulaOP|o10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o10|cout~0_combout\ = (\ulaOP|l10|Xi~4_combout\ & ((\ulaOP|o9|cout~0_combout\) # ((!\ulaOP|l10|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|l10|Xi~4_combout\ & (!\ulaOP|l10|Yi~0_combout\ & (!\M~input_o\ & \ulaOP|o9|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l10|Yi~0_combout\,
	datab => \ulaOP|l10|Xi~4_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|o9|cout~0_combout\,
	combout => \ulaOP|o10|cout~0_combout\);

-- Location: LCCOMB_X89_Y69_N20
\ulaOP|l11|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l11|Yi~0_combout\ = (\S1~input_o\) # (\B[11]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l11|Yi~0_combout\);

-- Location: LCCOMB_X88_Y69_N12
\ulaOP|l11|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l11|Xi~3_combout\ = (\A[11]~input_o\ & (\S1~input_o\ $ (((\B[11]~input_o\) # (\S0~input_o\))))) # (!\A[11]~input_o\ & ((\B[11]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[11]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \S0~input_o\,
	datac => \A[11]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l11|Xi~3_combout\);

-- Location: LCCOMB_X88_Y69_N14
\ulaOP|l11|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l11|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l11|Xi~3_combout\)) # (!\M~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l11|Xi~3_combout\,
	datab => \M~input_o\,
	datac => \A[11]~input_o\,
	combout => \ulaOP|l11|Xi~4_combout\);

-- Location: LCCOMB_X89_Y69_N6
\ulaOP|o11|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o11|s~combout\ = \ulaOP|o10|cout~0_combout\ $ (\ulaOP|l11|Xi~4_combout\ $ (((\ulaOP|l11|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o10|cout~0_combout\,
	datab => \ulaOP|l11|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|l11|Xi~4_combout\,
	combout => \ulaOP|o11|s~combout\);

-- Location: LCCOMB_X91_Y69_N18
\ulaOP|shift|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux5~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o11|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o9|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o11|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o9|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux5~2_combout\);

-- Location: LCCOMB_X91_Y69_N22
\ulaOP|shift|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux5~3_combout\ = (\ulaOP|shift|Mux5~2_combout\) # ((\ulaOP|o10|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \ulaOP|shift|Mux5~2_combout\,
	datac => \ulaOP|o10|s~combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux5~3_combout\);

-- Location: LCCOMB_X89_Y69_N8
\ulaOP|o11|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o11|cout~0_combout\ = (\ulaOP|o10|cout~0_combout\ & ((\ulaOP|l11|Xi~4_combout\) # ((!\ulaOP|l11|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o10|cout~0_combout\ & (!\ulaOP|l11|Yi~0_combout\ & (!\M~input_o\ & \ulaOP|l11|Xi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o10|cout~0_combout\,
	datab => \ulaOP|l11|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \ulaOP|l11|Xi~4_combout\,
	combout => \ulaOP|o11|cout~0_combout\);

-- Location: LCCOMB_X114_Y63_N6
\ulaOP|l12|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l12|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[12]~input_o\,
	datac => \S1~input_o\,
	combout => \ulaOP|l12|Yi~0_combout\);

-- Location: LCCOMB_X114_Y63_N12
\ulaOP|l12|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l12|Xi~3_combout\ = (\A[12]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[12]~input_o\))))) # (!\A[12]~input_o\ & ((\S0~input_o\ & ((\S1~input_o\) # (\B[12]~input_o\))) # (!\S0~input_o\ & (\S1~input_o\ & \B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[12]~input_o\,
	datac => \S1~input_o\,
	datad => \B[12]~input_o\,
	combout => \ulaOP|l12|Xi~3_combout\);

-- Location: LCCOMB_X114_Y63_N22
\ulaOP|l12|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l12|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l12|Xi~3_combout\)) # (!\M~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l12|Xi~3_combout\,
	datab => \A[12]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l12|Xi~4_combout\);

-- Location: LCCOMB_X92_Y65_N8
\ulaOP|o12|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o12|s~combout\ = \ulaOP|o11|cout~0_combout\ $ (\ulaOP|l12|Xi~4_combout\ $ (((\ulaOP|l12|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o11|cout~0_combout\,
	datab => \ulaOP|l12|Yi~0_combout\,
	datac => \ulaOP|l12|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o12|s~combout\);

-- Location: LCCOMB_X89_Y69_N18
\ulaOP|shift|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux4~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o12|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o10|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o12|s~combout\,
	datab => \ulaOP|o10|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux4~2_combout\);

-- Location: LCCOMB_X89_Y69_N28
\ulaOP|shift|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux4~3_combout\ = (\ulaOP|shift|Mux4~2_combout\) # ((\ulaOP|o11|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o11|s~combout\,
	datab => \ulaOP|shift|Mux4~2_combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux4~3_combout\);

-- Location: LCCOMB_X92_Y69_N24
\ulaOP|shift|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux7~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o9|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o7|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o9|s~combout\,
	datab => \S0~input_o\,
	datac => \ulaOP|des~0_combout\,
	datad => \ulaOP|o7|s~combout\,
	combout => \ulaOP|shift|Mux7~2_combout\);

-- Location: LCCOMB_X91_Y69_N2
\ulaOP|shift|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux7~3_combout\ = (\ulaOP|shift|Mux7~2_combout\) # ((\ulaOP|o8|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \ulaOP|shift|Mux7~2_combout\,
	datac => \ulaOP|o8|s~combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux7~3_combout\);

-- Location: LCCOMB_X83_Y69_N24
\dispS2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux0~0_combout\ = (\ulaOP|shift|Mux5~3_combout\ & (!\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ $ (!\ulaOP|shift|Mux4~3_combout\)))) # (!\ulaOP|shift|Mux5~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ & (\ulaOP|shift|Mux4~3_combout\ 
-- $ (!\ulaOP|shift|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux6~3_combout\,
	datab => \ulaOP|shift|Mux5~3_combout\,
	datac => \ulaOP|shift|Mux4~3_combout\,
	datad => \ulaOP|shift|Mux7~3_combout\,
	combout => \dispS2|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y69_N2
\dispS2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux1~0_combout\ = (\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\) # (\ulaOP|shift|Mux4~3_combout\ $ (!\ulaOP|shift|Mux7~3_combout\)))) # (!\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux7~3_combout\ & 
-- (\ulaOP|shift|Mux5~3_combout\)) # (!\ulaOP|shift|Mux7~3_combout\ & ((\ulaOP|shift|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux6~3_combout\,
	datab => \ulaOP|shift|Mux5~3_combout\,
	datac => \ulaOP|shift|Mux4~3_combout\,
	datad => \ulaOP|shift|Mux7~3_combout\,
	combout => \dispS2|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y69_N12
\dispS2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux2~0_combout\ = (\ulaOP|shift|Mux5~3_combout\ & ((\ulaOP|shift|Mux6~3_combout\) # ((!\ulaOP|shift|Mux7~3_combout\) # (!\ulaOP|shift|Mux4~3_combout\)))) # (!\ulaOP|shift|Mux5~3_combout\ & ((\ulaOP|shift|Mux4~3_combout\) # 
-- ((\ulaOP|shift|Mux6~3_combout\ & !\ulaOP|shift|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux6~3_combout\,
	datab => \ulaOP|shift|Mux5~3_combout\,
	datac => \ulaOP|shift|Mux4~3_combout\,
	datad => \ulaOP|shift|Mux7~3_combout\,
	combout => \dispS2|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y69_N22
\dispS2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux3~0_combout\ = (\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\ $ (!\ulaOP|shift|Mux7~3_combout\)) # (!\ulaOP|shift|Mux4~3_combout\))) # (!\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\ & 
-- ((\ulaOP|shift|Mux4~3_combout\) # (!\ulaOP|shift|Mux7~3_combout\))) # (!\ulaOP|shift|Mux5~3_combout\ & ((\ulaOP|shift|Mux7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux6~3_combout\,
	datab => \ulaOP|shift|Mux5~3_combout\,
	datac => \ulaOP|shift|Mux4~3_combout\,
	datad => \ulaOP|shift|Mux7~3_combout\,
	combout => \dispS2|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y69_N0
\dispS2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux4~0_combout\ = (\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\ & ((!\ulaOP|shift|Mux7~3_combout\))) # (!\ulaOP|shift|Mux5~3_combout\ & (\ulaOP|shift|Mux4~3_combout\)))) # (!\ulaOP|shift|Mux6~3_combout\ & 
-- (((\ulaOP|shift|Mux4~3_combout\ & !\ulaOP|shift|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux6~3_combout\,
	datab => \ulaOP|shift|Mux5~3_combout\,
	datac => \ulaOP|shift|Mux4~3_combout\,
	datad => \ulaOP|shift|Mux7~3_combout\,
	combout => \dispS2|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y69_N10
\dispS2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux5~0_combout\ = (\ulaOP|shift|Mux6~3_combout\ & (!\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux5~3_combout\ $ (!\ulaOP|shift|Mux4~3_combout\)))) # (!\ulaOP|shift|Mux6~3_combout\ & (\ulaOP|shift|Mux4~3_combout\ & 
-- ((\ulaOP|shift|Mux5~3_combout\) # (!\ulaOP|shift|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux6~3_combout\,
	datab => \ulaOP|shift|Mux5~3_combout\,
	datac => \ulaOP|shift|Mux4~3_combout\,
	datad => \ulaOP|shift|Mux7~3_combout\,
	combout => \dispS2|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y69_N4
\dispS2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux6~0_combout\ = (\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ & (\ulaOP|shift|Mux5~3_combout\ $ (!\ulaOP|shift|Mux4~3_combout\)))) # (!\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux4~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ $ 
-- (!\ulaOP|shift|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux6~3_combout\,
	datab => \ulaOP|shift|Mux5~3_combout\,
	datac => \ulaOP|shift|Mux4~3_combout\,
	datad => \ulaOP|shift|Mux7~3_combout\,
	combout => \dispS2|Mux6~0_combout\);

-- Location: LCCOMB_X92_Y65_N12
\ulaOP|l13|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l13|Xi~3_combout\ = (\S1~input_o\ & (\A[13]~input_o\ $ (((\B[13]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[13]~input_o\ & ((\S0~input_o\) # (\A[13]~input_o\))) # (!\B[13]~input_o\ & (\S0~input_o\ & \A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \A[13]~input_o\,
	combout => \ulaOP|l13|Xi~3_combout\);

-- Location: LCCOMB_X92_Y65_N6
\ulaOP|l13|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l13|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l13|Xi~3_combout\)) # (!\M~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l13|Xi~3_combout\,
	datab => \A[13]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l13|Xi~4_combout\);

-- Location: LCCOMB_X92_Y65_N2
\ulaOP|o12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o12|cout~0_combout\ = (\ulaOP|o11|cout~0_combout\ & ((\ulaOP|l12|Xi~4_combout\) # ((!\ulaOP|l12|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o11|cout~0_combout\ & (!\ulaOP|l12|Yi~0_combout\ & (\ulaOP|l12|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o11|cout~0_combout\,
	datab => \ulaOP|l12|Yi~0_combout\,
	datac => \ulaOP|l12|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o12|cout~0_combout\);

-- Location: LCCOMB_X92_Y65_N4
\ulaOP|l13|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l13|Yi~0_combout\ = (\S1~input_o\) # (\B[13]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	combout => \ulaOP|l13|Yi~0_combout\);

-- Location: LCCOMB_X92_Y65_N22
\ulaOP|o13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o13|s~combout\ = \ulaOP|l13|Xi~4_combout\ $ (\ulaOP|o12|cout~0_combout\ $ (((\ulaOP|l13|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l13|Xi~4_combout\,
	datab => \ulaOP|o12|cout~0_combout\,
	datac => \ulaOP|l13|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o13|s~combout\);

-- Location: LCCOMB_X92_Y65_N24
\ulaOP|shift|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux3~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o13|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o11|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o13|s~combout\,
	datab => \ulaOP|o11|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux3~2_combout\);

-- Location: LCCOMB_X92_Y65_N16
\ulaOP|shift|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux3~3_combout\ = (\ulaOP|shift|Mux3~2_combout\) # ((\ulaOP|o12|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \ulaOP|shift|Mux3~2_combout\,
	datac => \ulaOP|o12|s~combout\,
	datad => \M~input_o\,
	combout => \ulaOP|shift|Mux3~3_combout\);

-- Location: LCCOMB_X114_Y63_N10
\ulaOP|l15|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l15|Yi~0_combout\ = (\S1~input_o\) # (\B[15]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \ulaOP|l15|Yi~0_combout\);

-- Location: LCCOMB_X92_Y65_N10
\ulaOP|o13|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o13|cout~0_combout\ = (\ulaOP|l13|Xi~4_combout\ & ((\ulaOP|o12|cout~0_combout\) # ((!\ulaOP|l13|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|l13|Xi~4_combout\ & (\ulaOP|o12|cout~0_combout\ & (!\ulaOP|l13|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l13|Xi~4_combout\,
	datab => \ulaOP|o12|cout~0_combout\,
	datac => \ulaOP|l13|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o13|cout~0_combout\);

-- Location: LCCOMB_X114_Y63_N16
\ulaOP|l14|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l14|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[14]~input_o\,
	datac => \S1~input_o\,
	combout => \ulaOP|l14|Yi~0_combout\);

-- Location: LCCOMB_X114_Y63_N24
\ulaOP|l14|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l14|Xi~3_combout\ = (\A[14]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[14]~input_o\))))) # (!\A[14]~input_o\ & ((\S0~input_o\ & ((\S1~input_o\) # (\B[14]~input_o\))) # (!\S0~input_o\ & (\S1~input_o\ & \B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[14]~input_o\,
	datac => \S1~input_o\,
	datad => \B[14]~input_o\,
	combout => \ulaOP|l14|Xi~3_combout\);

-- Location: LCCOMB_X114_Y63_N26
\ulaOP|l14|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l14|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l14|Xi~3_combout\)) # (!\M~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulaOP|l14|Xi~3_combout\,
	datac => \A[14]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l14|Xi~4_combout\);

-- Location: LCCOMB_X92_Y65_N0
\ulaOP|o14|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o14|cout~0_combout\ = (\ulaOP|o13|cout~0_combout\ & ((\ulaOP|l14|Xi~4_combout\) # ((!\ulaOP|l14|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o13|cout~0_combout\ & (!\ulaOP|l14|Yi~0_combout\ & (\ulaOP|l14|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o13|cout~0_combout\,
	datab => \ulaOP|l14|Yi~0_combout\,
	datac => \ulaOP|l14|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o14|cout~0_combout\);

-- Location: LCCOMB_X114_Y63_N28
\ulaOP|l15|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l15|Xi~3_combout\ = (\A[15]~input_o\ & (\S1~input_o\ $ (((\B[15]~input_o\) # (\S0~input_o\))))) # (!\A[15]~input_o\ & ((\B[15]~input_o\ & ((\S1~input_o\) # (\S0~input_o\))) # (!\B[15]~input_o\ & (\S1~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \ulaOP|l15|Xi~3_combout\);

-- Location: LCCOMB_X114_Y63_N30
\ulaOP|l15|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l15|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l15|Xi~3_combout\)) # (!\M~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulaOP|l15|Xi~3_combout\,
	datac => \A[15]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l15|Xi~4_combout\);

-- Location: LCCOMB_X91_Y69_N14
\ulaOP|o15|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o15|s~combout\ = \ulaOP|o14|cout~0_combout\ $ (\ulaOP|l15|Xi~4_combout\ $ (((\ulaOP|l15|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l15|Yi~0_combout\,
	datab => \ulaOP|o14|cout~0_combout\,
	datac => \ulaOP|l15|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o15|s~combout\);

-- Location: LCCOMB_X92_Y65_N28
\ulaOP|o14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o14|s~combout\ = \ulaOP|o13|cout~0_combout\ $ (\ulaOP|l14|Xi~4_combout\ $ (((\ulaOP|l14|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o13|cout~0_combout\,
	datab => \ulaOP|l14|Yi~0_combout\,
	datac => \ulaOP|l14|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o14|s~combout\);

-- Location: LCCOMB_X92_Y65_N14
\ulaOP|shift|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux0~0_combout\ = (\ulaOP|des~0_combout\ & (((\S0~input_o\) # (\ulaOP|o14|s~combout\)))) # (!\ulaOP|des~0_combout\ & (\ulaOP|o15|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o15|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|o14|s~combout\,
	combout => \ulaOP|shift|Mux0~0_combout\);

-- Location: LCCOMB_X92_Y65_N26
\ulaOP|shift|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux1~1_combout\ = (\S0~input_o\ & (((\ulaOP|o15|s~combout\)))) # (!\S0~input_o\ & (\ulaOP|o13|s~combout\ & (\ulaOP|des~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o13|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|o15|s~combout\,
	combout => \ulaOP|shift|Mux1~1_combout\);

-- Location: LCCOMB_X91_Y69_N20
\ulaOP|shift|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux1~0_combout\ = (!\M~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y65_N20
\ulaOP|shift|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux1~2_combout\ = (\ulaOP|shift|Mux1~0_combout\ & (\ulaOP|shift|Mux1~1_combout\)) # (!\ulaOP|shift|Mux1~0_combout\ & ((\ulaOP|o14|s~combout\) # ((\ulaOP|shift|Mux1~1_combout\ & !\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux1~1_combout\,
	datab => \ulaOP|shift|Mux1~0_combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|o14|s~combout\,
	combout => \ulaOP|shift|Mux1~2_combout\);

-- Location: LCCOMB_X92_Y65_N30
\ulaOP|shift|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux2~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o14|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o12|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|des~0_combout\,
	datab => \ulaOP|o12|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|o14|s~combout\,
	combout => \ulaOP|shift|Mux2~2_combout\);

-- Location: LCCOMB_X92_Y65_N18
\ulaOP|shift|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux2~3_combout\ = (\ulaOP|shift|Mux2~2_combout\) # ((\ulaOP|o13|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o13|s~combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \ulaOP|shift|Mux2~2_combout\,
	combout => \ulaOP|shift|Mux2~3_combout\);

-- Location: LCCOMB_X1_Y55_N24
\dispS3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux0~0_combout\ = (\ulaOP|shift|Mux0~0_combout\ & (\ulaOP|shift|Mux2~3_combout\ & (\ulaOP|shift|Mux3~3_combout\ $ (\ulaOP|shift|Mux1~2_combout\)))) # (!\ulaOP|shift|Mux0~0_combout\ & (!\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux1~2_combout\ $ 
-- (\ulaOP|shift|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux3~3_combout\,
	datab => \ulaOP|shift|Mux0~0_combout\,
	datac => \ulaOP|shift|Mux1~2_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y55_N10
\dispS3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux1~0_combout\ = (\ulaOP|shift|Mux0~0_combout\ & ((\ulaOP|shift|Mux1~2_combout\) # (\ulaOP|shift|Mux3~3_combout\ $ (!\ulaOP|shift|Mux2~3_combout\)))) # (!\ulaOP|shift|Mux0~0_combout\ & ((\ulaOP|shift|Mux3~3_combout\ & 
-- (\ulaOP|shift|Mux1~2_combout\)) # (!\ulaOP|shift|Mux3~3_combout\ & ((\ulaOP|shift|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux3~3_combout\,
	datab => \ulaOP|shift|Mux0~0_combout\,
	datac => \ulaOP|shift|Mux1~2_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y55_N20
\dispS3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux2~0_combout\ = (\ulaOP|shift|Mux0~0_combout\ & (((\ulaOP|shift|Mux2~3_combout\) # (!\ulaOP|shift|Mux1~2_combout\)) # (!\ulaOP|shift|Mux3~3_combout\))) # (!\ulaOP|shift|Mux0~0_combout\ & ((\ulaOP|shift|Mux1~2_combout\) # 
-- ((!\ulaOP|shift|Mux3~3_combout\ & \ulaOP|shift|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux3~3_combout\,
	datab => \ulaOP|shift|Mux0~0_combout\,
	datac => \ulaOP|shift|Mux1~2_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y55_N14
\dispS3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux3~0_combout\ = (\ulaOP|shift|Mux2~3_combout\ & ((\ulaOP|shift|Mux3~3_combout\ $ (!\ulaOP|shift|Mux1~2_combout\)) # (!\ulaOP|shift|Mux0~0_combout\))) # (!\ulaOP|shift|Mux2~3_combout\ & ((\ulaOP|shift|Mux3~3_combout\ & 
-- ((\ulaOP|shift|Mux0~0_combout\) # (!\ulaOP|shift|Mux1~2_combout\))) # (!\ulaOP|shift|Mux3~3_combout\ & ((\ulaOP|shift|Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux3~3_combout\,
	datab => \ulaOP|shift|Mux0~0_combout\,
	datac => \ulaOP|shift|Mux1~2_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y55_N16
\dispS3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux4~0_combout\ = (\ulaOP|shift|Mux2~3_combout\ & ((\ulaOP|shift|Mux1~2_combout\ & (!\ulaOP|shift|Mux3~3_combout\)) # (!\ulaOP|shift|Mux1~2_combout\ & ((\ulaOP|shift|Mux0~0_combout\))))) # (!\ulaOP|shift|Mux2~3_combout\ & 
-- (!\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux3~3_combout\,
	datab => \ulaOP|shift|Mux0~0_combout\,
	datac => \ulaOP|shift|Mux1~2_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y55_N26
\dispS3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux5~0_combout\ = (\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux0~0_combout\ & (\ulaOP|shift|Mux1~2_combout\ & !\ulaOP|shift|Mux2~3_combout\))) # (!\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux0~0_combout\ $ (((!\ulaOP|shift|Mux1~2_combout\ 
-- & \ulaOP|shift|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux3~3_combout\,
	datab => \ulaOP|shift|Mux0~0_combout\,
	datac => \ulaOP|shift|Mux1~2_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y55_N28
\dispS3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux6~0_combout\ = (\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux2~3_combout\ & (\ulaOP|shift|Mux0~0_combout\ $ (!\ulaOP|shift|Mux1~2_combout\)))) # (!\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux0~0_combout\ & (\ulaOP|shift|Mux1~2_combout\ $ 
-- (!\ulaOP|shift|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux3~3_combout\,
	datab => \ulaOP|shift|Mux0~0_combout\,
	datac => \ulaOP|shift|Mux1~2_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux6~0_combout\);

-- Location: LCCOMB_X91_Y69_N0
\ulaOP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|Cout~0_combout\ = (\ulaOP|o14|cout~0_combout\ & (!\ulaOP|l15|Xi~4_combout\ & ((\ulaOP|l15|Yi~0_combout\) # (\M~input_o\)))) # (!\ulaOP|o14|cout~0_combout\ & (!\ulaOP|l15|Yi~0_combout\ & (\ulaOP|l15|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l15|Yi~0_combout\,
	datab => \ulaOP|o14|cout~0_combout\,
	datac => \ulaOP|l15|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|Cout~0_combout\);

ww_DA0(0) <= \DA0[0]~output_o\;

ww_DA0(1) <= \DA0[1]~output_o\;

ww_DA0(2) <= \DA0[2]~output_o\;

ww_DA0(3) <= \DA0[3]~output_o\;

ww_DA0(4) <= \DA0[4]~output_o\;

ww_DA0(5) <= \DA0[5]~output_o\;

ww_DA0(6) <= \DA0[6]~output_o\;

ww_DA1(0) <= \DA1[0]~output_o\;

ww_DA1(1) <= \DA1[1]~output_o\;

ww_DA1(2) <= \DA1[2]~output_o\;

ww_DA1(3) <= \DA1[3]~output_o\;

ww_DA1(4) <= \DA1[4]~output_o\;

ww_DA1(5) <= \DA1[5]~output_o\;

ww_DA1(6) <= \DA1[6]~output_o\;

ww_DA2(0) <= \DA2[0]~output_o\;

ww_DA2(1) <= \DA2[1]~output_o\;

ww_DA2(2) <= \DA2[2]~output_o\;

ww_DA2(3) <= \DA2[3]~output_o\;

ww_DA2(4) <= \DA2[4]~output_o\;

ww_DA2(5) <= \DA2[5]~output_o\;

ww_DA2(6) <= \DA2[6]~output_o\;

ww_DA3(0) <= \DA3[0]~output_o\;

ww_DA3(1) <= \DA3[1]~output_o\;

ww_DA3(2) <= \DA3[2]~output_o\;

ww_DA3(3) <= \DA3[3]~output_o\;

ww_DA3(4) <= \DA3[4]~output_o\;

ww_DA3(5) <= \DA3[5]~output_o\;

ww_DA3(6) <= \DA3[6]~output_o\;

ww_DB0(0) <= \DB0[0]~output_o\;

ww_DB0(1) <= \DB0[1]~output_o\;

ww_DB0(2) <= \DB0[2]~output_o\;

ww_DB0(3) <= \DB0[3]~output_o\;

ww_DB0(4) <= \DB0[4]~output_o\;

ww_DB0(5) <= \DB0[5]~output_o\;

ww_DB0(6) <= \DB0[6]~output_o\;

ww_DB1(0) <= \DB1[0]~output_o\;

ww_DB1(1) <= \DB1[1]~output_o\;

ww_DB1(2) <= \DB1[2]~output_o\;

ww_DB1(3) <= \DB1[3]~output_o\;

ww_DB1(4) <= \DB1[4]~output_o\;

ww_DB1(5) <= \DB1[5]~output_o\;

ww_DB1(6) <= \DB1[6]~output_o\;

ww_DB2(0) <= \DB2[0]~output_o\;

ww_DB2(1) <= \DB2[1]~output_o\;

ww_DB2(2) <= \DB2[2]~output_o\;

ww_DB2(3) <= \DB2[3]~output_o\;

ww_DB2(4) <= \DB2[4]~output_o\;

ww_DB2(5) <= \DB2[5]~output_o\;

ww_DB2(6) <= \DB2[6]~output_o\;

ww_DB3(0) <= \DB3[0]~output_o\;

ww_DB3(1) <= \DB3[1]~output_o\;

ww_DB3(2) <= \DB3[2]~output_o\;

ww_DB3(3) <= \DB3[3]~output_o\;

ww_DB3(4) <= \DB3[4]~output_o\;

ww_DB3(5) <= \DB3[5]~output_o\;

ww_DB3(6) <= \DB3[6]~output_o\;

ww_DS0(0) <= \DS0[0]~output_o\;

ww_DS0(1) <= \DS0[1]~output_o\;

ww_DS0(2) <= \DS0[2]~output_o\;

ww_DS0(3) <= \DS0[3]~output_o\;

ww_DS0(4) <= \DS0[4]~output_o\;

ww_DS0(5) <= \DS0[5]~output_o\;

ww_DS0(6) <= \DS0[6]~output_o\;

ww_DS1(0) <= \DS1[0]~output_o\;

ww_DS1(1) <= \DS1[1]~output_o\;

ww_DS1(2) <= \DS1[2]~output_o\;

ww_DS1(3) <= \DS1[3]~output_o\;

ww_DS1(4) <= \DS1[4]~output_o\;

ww_DS1(5) <= \DS1[5]~output_o\;

ww_DS1(6) <= \DS1[6]~output_o\;

ww_DS2(0) <= \DS2[0]~output_o\;

ww_DS2(1) <= \DS2[1]~output_o\;

ww_DS2(2) <= \DS2[2]~output_o\;

ww_DS2(3) <= \DS2[3]~output_o\;

ww_DS2(4) <= \DS2[4]~output_o\;

ww_DS2(5) <= \DS2[5]~output_o\;

ww_DS2(6) <= \DS2[6]~output_o\;

ww_DS3(0) <= \DS3[0]~output_o\;

ww_DS3(1) <= \DS3[1]~output_o\;

ww_DS3(2) <= \DS3[2]~output_o\;

ww_DS3(3) <= \DS3[3]~output_o\;

ww_DS3(4) <= \DS3[4]~output_o\;

ww_DS3(5) <= \DS3[5]~output_o\;

ww_DS3(6) <= \DS3[6]~output_o\;

ww_Overflow <= \Overflow~output_o\;
END structure;


