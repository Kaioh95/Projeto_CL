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

-- DATE "11/15/2019 11:47:14"

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
-- DA0[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA0[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[0]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[1]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[2]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[4]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[5]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[0]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[4]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[5]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3[6]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB0[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB1[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[0]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[2]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[3]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[5]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB2[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[0]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[1]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[2]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[3]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[4]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[5]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB3[6]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
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
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \dispA1|Mux0~0_combout\ : std_logic;
SIGNAL \dispA1|Mux1~0_combout\ : std_logic;
SIGNAL \dispA1|Mux2~0_combout\ : std_logic;
SIGNAL \dispA1|Mux3~0_combout\ : std_logic;
SIGNAL \dispA1|Mux4~0_combout\ : std_logic;
SIGNAL \dispA1|Mux5~0_combout\ : std_logic;
SIGNAL \dispA1|Mux6~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \dispA2|Mux0~0_combout\ : std_logic;
SIGNAL \dispA2|Mux1~0_combout\ : std_logic;
SIGNAL \dispA2|Mux2~0_combout\ : std_logic;
SIGNAL \dispA2|Mux3~0_combout\ : std_logic;
SIGNAL \dispA2|Mux4~0_combout\ : std_logic;
SIGNAL \dispA2|Mux5~0_combout\ : std_logic;
SIGNAL \dispA2|Mux6~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
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
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \dispB2|Mux0~0_combout\ : std_logic;
SIGNAL \dispB2|Mux1~0_combout\ : std_logic;
SIGNAL \dispB2|Mux2~0_combout\ : std_logic;
SIGNAL \dispB2|Mux3~0_combout\ : std_logic;
SIGNAL \dispB2|Mux4~0_combout\ : std_logic;
SIGNAL \dispB2|Mux5~0_combout\ : std_logic;
SIGNAL \dispB2|Mux6~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \dispB3|Mux0~0_combout\ : std_logic;
SIGNAL \dispB3|Mux1~0_combout\ : std_logic;
SIGNAL \dispB3|Mux2~0_combout\ : std_logic;
SIGNAL \dispB3|Mux3~0_combout\ : std_logic;
SIGNAL \dispB3|Mux4~0_combout\ : std_logic;
SIGNAL \dispB3|Mux5~0_combout\ : std_logic;
SIGNAL \dispB3|Mux6~0_combout\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \ulaOP|l1|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o0|cout~3_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \ulaOP|o0|cout~6_combout\ : std_logic;
SIGNAL \ulaOP|l1|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l1|Xi~5_combout\ : std_logic;
SIGNAL \ulaOP|o1|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l2|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l2|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l2|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o2|s~combout\ : std_logic;
SIGNAL \ulaOP|des~0_combout\ : std_logic;
SIGNAL \ulaOP|o1|s~combout\ : std_logic;
SIGNAL \ulaOP|l3|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o2|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l3|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l3|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o3|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux13~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux13~3_combout\ : std_logic;
SIGNAL \ulaOP|o0|s~2_combout\ : std_logic;
SIGNAL \ulaOP|o0|s~3_combout\ : std_logic;
SIGNAL \ulaOP|o0|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux14~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux14~3_combout\ : std_logic;
SIGNAL \ulaOP|l4|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o3|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l4|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l4|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o4|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux12~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux12~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux15~0_combout\ : std_logic;
SIGNAL \dispS0|Mux0~0_combout\ : std_logic;
SIGNAL \dispS0|Mux1~0_combout\ : std_logic;
SIGNAL \dispS0|Mux2~0_combout\ : std_logic;
SIGNAL \dispS0|Mux3~0_combout\ : std_logic;
SIGNAL \dispS0|Mux4~0_combout\ : std_logic;
SIGNAL \dispS0|Mux5~0_combout\ : std_logic;
SIGNAL \dispS0|Mux6~0_combout\ : std_logic;
SIGNAL \ulaOP|l6|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l6|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l6|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l5|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l5|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l5|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o4|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|o5|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|o6|s~combout\ : std_logic;
SIGNAL \ulaOP|l7|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o6|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l7|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l7|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o7|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l8|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l8|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l8|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o8|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux8~2_combout\ : std_logic;
SIGNAL \ulaOP|o7|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux8~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux10~2_combout\ : std_logic;
SIGNAL \ulaOP|o5|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux10~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux11~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux11~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux9~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux9~3_combout\ : std_logic;
SIGNAL \dispS1|Mux0~0_combout\ : std_logic;
SIGNAL \dispS1|Mux1~0_combout\ : std_logic;
SIGNAL \dispS1|Mux2~0_combout\ : std_logic;
SIGNAL \dispS1|Mux3~0_combout\ : std_logic;
SIGNAL \dispS1|Mux4~0_combout\ : std_logic;
SIGNAL \dispS1|Mux5~0_combout\ : std_logic;
SIGNAL \dispS1|Mux6~0_combout\ : std_logic;
SIGNAL \ulaOP|l9|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l9|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o8|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l9|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o9|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l10|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l10|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|l10|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o10|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l11|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l11|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l11|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o11|s~combout\ : std_logic;
SIGNAL \ulaOP|o10|s~combout\ : std_logic;
SIGNAL \ulaOP|l12|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l12|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o11|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l12|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|o12|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux4~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux4~3_combout\ : std_logic;
SIGNAL \ulaOP|o9|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux7~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux7~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux6~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux6~3_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux5~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux5~3_combout\ : std_logic;
SIGNAL \dispS2|Mux0~0_combout\ : std_logic;
SIGNAL \dispS2|Mux1~0_combout\ : std_logic;
SIGNAL \dispS2|Mux2~0_combout\ : std_logic;
SIGNAL \dispS2|Mux3~0_combout\ : std_logic;
SIGNAL \dispS2|Mux4~0_combout\ : std_logic;
SIGNAL \dispS2|Mux5~0_combout\ : std_logic;
SIGNAL \dispS2|Mux6~0_combout\ : std_logic;
SIGNAL \ulaOP|l14|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l13|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l13|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l13|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o12|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|o13|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l14|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l14|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o14|cout~0_combout\ : std_logic;
SIGNAL \ulaOP|l15|Yi~0_combout\ : std_logic;
SIGNAL \ulaOP|l15|Xi~3_combout\ : std_logic;
SIGNAL \ulaOP|l15|Xi~4_combout\ : std_logic;
SIGNAL \ulaOP|o15|s~combout\ : std_logic;
SIGNAL \ulaOP|o14|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux0~0_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux1~0_combout\ : std_logic;
SIGNAL \ulaOP|o13|s~combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux1~1_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux1~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux3~2_combout\ : std_logic;
SIGNAL \ulaOP|shift|Mux3~3_combout\ : std_logic;
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X89_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X74_Y0_N23
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

-- Location: IOOBUF_X74_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X115_Y34_N23
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

-- Location: IOOBUF_X115_Y31_N2
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

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X115_Y26_N16
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

-- Location: IOOBUF_X115_Y31_N9
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

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X115_Y33_N2
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

-- Location: IOOBUF_X115_Y8_N23
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

-- Location: IOOBUF_X115_Y16_N9
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

-- Location: IOOBUF_X115_Y11_N2
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

-- Location: IOOBUF_X115_Y8_N16
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

-- Location: IOOBUF_X113_Y0_N9
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

-- Location: IOOBUF_X115_Y12_N2
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

-- Location: IOOBUF_X115_Y12_N9
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

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X107_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N2
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

-- Location: IOOBUF_X83_Y0_N23
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

-- Location: IOOBUF_X83_Y0_N16
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X85_Y0_N9
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

-- Location: IOOBUF_X87_Y0_N16
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

-- Location: IOOBUF_X98_Y0_N16
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X79_Y0_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X115_Y36_N9
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

-- Location: IOOBUF_X115_Y45_N23
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

-- Location: IOOBUF_X115_Y46_N2
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

-- Location: IOOBUF_X115_Y36_N16
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

-- Location: IOOBUF_X115_Y35_N16
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

-- Location: IOOBUF_X115_Y36_N2
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

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X115_Y44_N9
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X115_Y45_N16
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X115_Y44_N2
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y30_N2
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y22_N2
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X115_Y20_N2
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOIBUF_X115_Y5_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X110_Y8_N8
\dispA0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux0~0_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[0]~input_o\ $ (!\A[3]~input_o\)))) # (!\A[2]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y8_N2
\dispA0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux1~0_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & ((\A[3]~input_o\))) # (!\A[0]~input_o\ & (\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\A[2]~input_o\ & (\A[0]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y8_N12
\dispA0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux2~0_combout\ = (\A[2]~input_o\ & (\A[3]~input_o\ & ((\A[1]~input_o\) # (!\A[0]~input_o\)))) # (!\A[2]~input_o\ & (\A[1]~input_o\ & (!\A[0]~input_o\ & !\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y8_N14
\dispA0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux3~0_combout\ = (\A[1]~input_o\ & ((\A[2]~input_o\ & (\A[0]~input_o\)) # (!\A[2]~input_o\ & (!\A[0]~input_o\ & \A[3]~input_o\)))) # (!\A[1]~input_o\ & (!\A[3]~input_o\ & (\A[2]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y8_N24
\dispA0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux4~0_combout\ = (\A[1]~input_o\ & (((\A[0]~input_o\ & !\A[3]~input_o\)))) # (!\A[1]~input_o\ & ((\A[2]~input_o\ & ((!\A[3]~input_o\))) # (!\A[2]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y8_N26
\dispA0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux5~0_combout\ = (\A[1]~input_o\ & (!\A[3]~input_o\ & ((\A[0]~input_o\) # (!\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\A[2]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y8_N20
\dispA0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA0|Mux6~0_combout\ = (\A[0]~input_o\ & ((\A[3]~input_o\) # (\A[1]~input_o\ $ (\A[2]~input_o\)))) # (!\A[0]~input_o\ & ((\A[1]~input_o\) # (\A[2]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \dispA0|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X109_Y11_N24
\dispA1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux0~0_combout\ = (\A[6]~input_o\ & (!\A[5]~input_o\ & (\A[4]~input_o\ $ (!\A[7]~input_o\)))) # (!\A[6]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ $ (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \dispA1|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y11_N10
\dispA1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux1~0_combout\ = (\A[5]~input_o\ & ((\A[4]~input_o\ & ((\A[7]~input_o\))) # (!\A[4]~input_o\ & (\A[6]~input_o\)))) # (!\A[5]~input_o\ & (\A[6]~input_o\ & (\A[4]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \dispA1|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y11_N20
\dispA1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux2~0_combout\ = (\A[6]~input_o\ & (\A[7]~input_o\ & ((\A[5]~input_o\) # (!\A[4]~input_o\)))) # (!\A[6]~input_o\ & (!\A[4]~input_o\ & (\A[5]~input_o\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \dispA1|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y11_N22
\dispA1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux3~0_combout\ = (\A[5]~input_o\ & ((\A[4]~input_o\ & (\A[6]~input_o\)) # (!\A[4]~input_o\ & (!\A[6]~input_o\ & \A[7]~input_o\)))) # (!\A[5]~input_o\ & (!\A[7]~input_o\ & (\A[4]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \dispA1|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y11_N8
\dispA1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux4~0_combout\ = (\A[5]~input_o\ & (\A[4]~input_o\ & ((!\A[7]~input_o\)))) # (!\A[5]~input_o\ & ((\A[6]~input_o\ & ((!\A[7]~input_o\))) # (!\A[6]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \dispA1|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y11_N18
\dispA1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux5~0_combout\ = (\A[4]~input_o\ & (\A[7]~input_o\ $ (((\A[5]~input_o\) # (!\A[6]~input_o\))))) # (!\A[4]~input_o\ & (!\A[6]~input_o\ & (\A[5]~input_o\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \dispA1|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y11_N28
\dispA1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1|Mux6~0_combout\ = (\A[4]~input_o\ & ((\A[7]~input_o\) # (\A[6]~input_o\ $ (\A[5]~input_o\)))) # (!\A[4]~input_o\ & ((\A[5]~input_o\) # (\A[6]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \dispA1|Mux6~0_combout\);

-- Location: IOIBUF_X58_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X114_Y34_N24
\dispA2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux0~0_combout\ = (\A[10]~input_o\ & (!\A[9]~input_o\ & (\A[8]~input_o\ $ (!\A[11]~input_o\)))) # (!\A[10]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ $ (!\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \dispA2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y34_N18
\dispA2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux1~0_combout\ = (\A[9]~input_o\ & ((\A[8]~input_o\ & ((\A[11]~input_o\))) # (!\A[8]~input_o\ & (\A[10]~input_o\)))) # (!\A[9]~input_o\ & (\A[10]~input_o\ & (\A[8]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \dispA2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y34_N4
\dispA2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux2~0_combout\ = (\A[10]~input_o\ & (\A[11]~input_o\ & ((\A[9]~input_o\) # (!\A[8]~input_o\)))) # (!\A[10]~input_o\ & (!\A[8]~input_o\ & (\A[9]~input_o\ & !\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \dispA2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y34_N22
\dispA2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux3~0_combout\ = (\A[9]~input_o\ & ((\A[8]~input_o\ & (\A[10]~input_o\)) # (!\A[8]~input_o\ & (!\A[10]~input_o\ & \A[11]~input_o\)))) # (!\A[9]~input_o\ & (!\A[11]~input_o\ & (\A[8]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \dispA2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y34_N8
\dispA2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux4~0_combout\ = (\A[9]~input_o\ & (\A[8]~input_o\ & ((!\A[11]~input_o\)))) # (!\A[9]~input_o\ & ((\A[10]~input_o\ & ((!\A[11]~input_o\))) # (!\A[10]~input_o\ & (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \dispA2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y34_N10
\dispA2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux5~0_combout\ = (\A[8]~input_o\ & (\A[11]~input_o\ $ (((\A[9]~input_o\) # (!\A[10]~input_o\))))) # (!\A[8]~input_o\ & (\A[9]~input_o\ & (!\A[10]~input_o\ & !\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \dispA2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y34_N28
\dispA2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA2|Mux6~0_combout\ = (\A[8]~input_o\ & ((\A[11]~input_o\) # (\A[9]~input_o\ $ (\A[10]~input_o\)))) # (!\A[8]~input_o\ & ((\A[9]~input_o\) # (\A[10]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \dispA2|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y22_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X114_Y12_N8
\dispA3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux0~0_combout\ = (\A[14]~input_o\ & (!\A[13]~input_o\ & (\A[15]~input_o\ $ (!\A[12]~input_o\)))) # (!\A[14]~input_o\ & (\A[12]~input_o\ & (\A[15]~input_o\ $ (!\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \dispA3|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y12_N10
\dispA3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux1~0_combout\ = (\A[15]~input_o\ & ((\A[12]~input_o\ & ((\A[13]~input_o\))) # (!\A[12]~input_o\ & (\A[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\A[13]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \dispA3|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y12_N20
\dispA3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux2~0_combout\ = (\A[14]~input_o\ & (\A[15]~input_o\ & ((\A[13]~input_o\) # (!\A[12]~input_o\)))) # (!\A[14]~input_o\ & (!\A[15]~input_o\ & (\A[13]~input_o\ & !\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \dispA3|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y12_N6
\dispA3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux3~0_combout\ = (\A[13]~input_o\ & ((\A[14]~input_o\ & ((\A[12]~input_o\))) # (!\A[14]~input_o\ & (\A[15]~input_o\ & !\A[12]~input_o\)))) # (!\A[13]~input_o\ & (!\A[15]~input_o\ & (\A[14]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \dispA3|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y12_N0
\dispA3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux4~0_combout\ = (\A[13]~input_o\ & (((!\A[15]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & ((\A[14]~input_o\ & (!\A[15]~input_o\)) # (!\A[14]~input_o\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \dispA3|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y12_N2
\dispA3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux5~0_combout\ = (\A[14]~input_o\ & (\A[12]~input_o\ & (\A[15]~input_o\ $ (\A[13]~input_o\)))) # (!\A[14]~input_o\ & (!\A[15]~input_o\ & ((\A[13]~input_o\) # (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \dispA3|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y12_N4
\dispA3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA3|Mux6~0_combout\ = (\A[12]~input_o\ & ((\A[15]~input_o\) # (\A[14]~input_o\ $ (\A[13]~input_o\)))) # (!\A[12]~input_o\ & ((\A[13]~input_o\) # (\A[14]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \dispA3|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X109_Y8_N16
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

-- Location: LCCOMB_X109_Y8_N18
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

-- Location: LCCOMB_X109_Y8_N12
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

-- Location: LCCOMB_X109_Y8_N22
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

-- Location: LCCOMB_X109_Y8_N8
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

-- Location: LCCOMB_X109_Y8_N26
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

-- Location: LCCOMB_X109_Y8_N20
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

-- Location: IOIBUF_X115_Y18_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X110_Y11_N16
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

-- Location: LCCOMB_X110_Y11_N26
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

-- Location: LCCOMB_X110_Y11_N20
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

-- Location: LCCOMB_X110_Y11_N14
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

-- Location: LCCOMB_X110_Y11_N24
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

-- Location: LCCOMB_X110_Y11_N2
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

-- Location: LCCOMB_X110_Y11_N28
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

-- Location: IOIBUF_X115_Y32_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X114_Y36_N16
\dispB2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux0~0_combout\ = (\B[11]~input_o\ & (\B[8]~input_o\ & (\B[9]~input_o\ $ (\B[10]~input_o\)))) # (!\B[11]~input_o\ & (!\B[9]~input_o\ & (\B[10]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y36_N2
\dispB2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux1~0_combout\ = (\B[11]~input_o\ & ((\B[8]~input_o\ & (\B[9]~input_o\)) # (!\B[8]~input_o\ & ((\B[10]~input_o\))))) # (!\B[11]~input_o\ & (\B[10]~input_o\ & (\B[9]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y36_N4
\dispB2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux2~0_combout\ = (\B[11]~input_o\ & (\B[10]~input_o\ & ((\B[9]~input_o\) # (!\B[8]~input_o\)))) # (!\B[11]~input_o\ & (\B[9]~input_o\ & (!\B[10]~input_o\ & !\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y36_N14
\dispB2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux3~0_combout\ = (\B[9]~input_o\ & ((\B[10]~input_o\ & ((\B[8]~input_o\))) # (!\B[10]~input_o\ & (\B[11]~input_o\ & !\B[8]~input_o\)))) # (!\B[9]~input_o\ & (!\B[11]~input_o\ & (\B[10]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\dispB2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux4~0_combout\ = (\B[9]~input_o\ & (!\B[11]~input_o\ & ((\B[8]~input_o\)))) # (!\B[9]~input_o\ & ((\B[10]~input_o\ & (!\B[11]~input_o\)) # (!\B[10]~input_o\ & ((\B[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y36_N18
\dispB2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux5~0_combout\ = (\B[9]~input_o\ & (!\B[11]~input_o\ & ((\B[8]~input_o\) # (!\B[10]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\B[11]~input_o\ $ (!\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y36_N12
\dispB2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB2|Mux6~0_combout\ = (\B[8]~input_o\ & ((\B[11]~input_o\) # (\B[9]~input_o\ $ (\B[10]~input_o\)))) # (!\B[8]~input_o\ & ((\B[9]~input_o\) # (\B[11]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \dispB2|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y48_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X114_Y40_N16
\dispB3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux0~0_combout\ = (\B[14]~input_o\ & (!\B[13]~input_o\ & (\B[12]~input_o\ $ (!\B[15]~input_o\)))) # (!\B[14]~input_o\ & (\B[12]~input_o\ & (\B[13]~input_o\ $ (!\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \dispB3|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y40_N10
\dispB3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux1~0_combout\ = (\B[13]~input_o\ & ((\B[12]~input_o\ & ((\B[15]~input_o\))) # (!\B[12]~input_o\ & (\B[14]~input_o\)))) # (!\B[13]~input_o\ & (\B[14]~input_o\ & (\B[12]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \dispB3|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y40_N4
\dispB3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux2~0_combout\ = (\B[14]~input_o\ & (\B[15]~input_o\ & ((\B[13]~input_o\) # (!\B[12]~input_o\)))) # (!\B[14]~input_o\ & (!\B[12]~input_o\ & (\B[13]~input_o\ & !\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \dispB3|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y40_N14
\dispB3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux3~0_combout\ = (\B[13]~input_o\ & ((\B[12]~input_o\ & (\B[14]~input_o\)) # (!\B[12]~input_o\ & (!\B[14]~input_o\ & \B[15]~input_o\)))) # (!\B[13]~input_o\ & (!\B[15]~input_o\ & (\B[12]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \dispB3|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y40_N8
\dispB3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux4~0_combout\ = (\B[13]~input_o\ & (\B[12]~input_o\ & ((!\B[15]~input_o\)))) # (!\B[13]~input_o\ & ((\B[14]~input_o\ & ((!\B[15]~input_o\))) # (!\B[14]~input_o\ & (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \dispB3|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y40_N2
\dispB3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux5~0_combout\ = (\B[12]~input_o\ & (\B[15]~input_o\ $ (((\B[13]~input_o\) # (!\B[14]~input_o\))))) # (!\B[12]~input_o\ & (!\B[14]~input_o\ & (\B[13]~input_o\ & !\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \dispB3|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y40_N28
\dispB3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB3|Mux6~0_combout\ = (\B[12]~input_o\ & ((\B[15]~input_o\) # (\B[14]~input_o\ $ (\B[13]~input_o\)))) # (!\B[12]~input_o\ & ((\B[13]~input_o\) # (\B[14]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \dispB3|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X109_Y8_N6
\ulaOP|l1|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l1|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[1]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l1|Yi~0_combout\);

-- Location: LCCOMB_X110_Y8_N16
\ulaOP|o0|cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|cout~3_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \ulaOP|o0|cout~3_combout\);

-- Location: IOIBUF_X115_Y42_N15
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X110_Y8_N10
\ulaOP|o0|cout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|cout~6_combout\ = (\ulaOP|o0|cout~3_combout\ & (!\M~input_o\ & !\S1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulaOP|o0|cout~3_combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|o0|cout~6_combout\);

-- Location: LCCOMB_X109_Y8_N28
\ulaOP|l1|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l1|Xi~4_combout\ = (\M~input_o\ & ((\B[1]~input_o\) # ((\S0~input_o\ & \S1~input_o\)))) # (!\M~input_o\ & (((!\S0~input_o\ & !\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \M~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l1|Xi~4_combout\);

-- Location: LCCOMB_X109_Y8_N14
\ulaOP|l1|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l1|Xi~5_combout\ = (\ulaOP|l1|Xi~4_combout\ & ((\A[1]~input_o\ & ((!\S1~input_o\))) # (!\A[1]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))) # (!\ulaOP|l1|Xi~4_combout\ & (\A[1]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \ulaOP|l1|Xi~4_combout\,
	datac => \A[1]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l1|Xi~5_combout\);

-- Location: LCCOMB_X109_Y8_N10
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

-- Location: LCCOMB_X109_Y8_N4
\ulaOP|l2|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l2|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[2]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l2|Yi~0_combout\);

-- Location: LCCOMB_X110_Y8_N0
\ulaOP|l2|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l2|Xi~3_combout\ = (\A[2]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[2]~input_o\))))) # (!\A[2]~input_o\ & ((\S0~input_o\ & ((\B[2]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[2]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l2|Xi~3_combout\);

-- Location: LCCOMB_X110_Y8_N18
\ulaOP|l2|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l2|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l2|Xi~3_combout\))) # (!\M~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|l2|Xi~3_combout\,
	combout => \ulaOP|l2|Xi~4_combout\);

-- Location: LCCOMB_X109_Y8_N30
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

-- Location: LCCOMB_X113_Y34_N0
\ulaOP|des~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|des~0_combout\ = (!\M~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datac => \S1~input_o\,
	combout => \ulaOP|des~0_combout\);

-- Location: LCCOMB_X109_Y8_N0
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

-- Location: LCCOMB_X110_Y8_N6
\ulaOP|l3|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l3|Yi~0_combout\ = (\S1~input_o\) # (\B[3]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l3|Yi~0_combout\);

-- Location: LCCOMB_X109_Y8_N24
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

-- Location: LCCOMB_X110_Y8_N28
\ulaOP|l3|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l3|Xi~3_combout\ = (\A[3]~input_o\ & (\S1~input_o\ $ (((\B[3]~input_o\) # (\S0~input_o\))))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[3]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l3|Xi~3_combout\);

-- Location: LCCOMB_X110_Y8_N30
\ulaOP|l3|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l3|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l3|Xi~3_combout\))) # (!\M~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ulaOP|l3|Xi~3_combout\,
	datac => \M~input_o\,
	combout => \ulaOP|l3|Xi~4_combout\);

-- Location: LCCOMB_X110_Y11_N22
\ulaOP|o3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o3|s~combout\ = \ulaOP|o2|cout~0_combout\ $ (\ulaOP|l3|Xi~4_combout\ $ (((\ulaOP|l3|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l3|Yi~0_combout\,
	datab => \ulaOP|o2|cout~0_combout\,
	datac => \ulaOP|l3|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o3|s~combout\);

-- Location: LCCOMB_X109_Y30_N20
\ulaOP|shift|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux13~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o3|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o1|s~combout\,
	datad => \ulaOP|o3|s~combout\,
	combout => \ulaOP|shift|Mux13~2_combout\);

-- Location: LCCOMB_X109_Y30_N28
\ulaOP|shift|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux13~3_combout\ = (\ulaOP|shift|Mux13~2_combout\) # ((\ulaOP|o2|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o2|s~combout\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|shift|Mux13~2_combout\,
	combout => \ulaOP|shift|Mux13~3_combout\);

-- Location: LCCOMB_X110_Y8_N4
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

-- Location: LCCOMB_X110_Y8_N22
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

-- Location: LCCOMB_X109_Y8_N2
\ulaOP|o0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o0|s~combout\ = (\B[0]~input_o\ & ((\ulaOP|o0|s~3_combout\))) # (!\B[0]~input_o\ & (\ulaOP|o0|s~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o0|s~2_combout\,
	datab => \ulaOP|o0|s~3_combout\,
	datad => \B[0]~input_o\,
	combout => \ulaOP|o0|s~combout\);

-- Location: LCCOMB_X109_Y30_N18
\ulaOP|shift|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux14~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o2|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o0|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \ulaOP|o2|s~combout\,
	datac => \ulaOP|o0|s~combout\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux14~2_combout\);

-- Location: LCCOMB_X109_Y30_N2
\ulaOP|shift|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux14~3_combout\ = (\ulaOP|shift|Mux14~2_combout\) # ((\ulaOP|o1|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o1|s~combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \ulaOP|shift|Mux14~2_combout\,
	combout => \ulaOP|shift|Mux14~3_combout\);

-- Location: LCCOMB_X110_Y11_N10
\ulaOP|l4|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l4|Yi~0_combout\ = (\S1~input_o\) # (\B[4]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l4|Yi~0_combout\);

-- Location: LCCOMB_X110_Y11_N0
\ulaOP|o3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o3|cout~0_combout\ = (\ulaOP|o2|cout~0_combout\ & ((\ulaOP|l3|Xi~4_combout\) # ((!\ulaOP|l3|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o2|cout~0_combout\ & (!\ulaOP|l3|Yi~0_combout\ & (\ulaOP|l3|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l3|Yi~0_combout\,
	datab => \ulaOP|o2|cout~0_combout\,
	datac => \ulaOP|l3|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o3|cout~0_combout\);

-- Location: LCCOMB_X109_Y11_N16
\ulaOP|l4|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l4|Xi~3_combout\ = (\A[4]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[4]~input_o\))))) # (!\A[4]~input_o\ & ((\S0~input_o\ & ((\B[4]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[4]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l4|Xi~3_combout\);

-- Location: LCCOMB_X109_Y11_N26
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

-- Location: LCCOMB_X110_Y11_N12
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

-- Location: LCCOMB_X109_Y30_N22
\ulaOP|shift|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux12~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o4|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o2|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \ulaOP|o4|s~combout\,
	datac => \ulaOP|o2|s~combout\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux12~2_combout\);

-- Location: LCCOMB_X109_Y30_N14
\ulaOP|shift|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux12~3_combout\ = (\ulaOP|shift|Mux12~2_combout\) # ((\ulaOP|o3|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux12~2_combout\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|o3|s~combout\,
	combout => \ulaOP|shift|Mux12~3_combout\);

-- Location: LCCOMB_X109_Y30_N24
\ulaOP|shift|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux15~0_combout\ = (\ulaOP|des~0_combout\ & (!\ulaOP|o1|s~combout\ & ((\S0~input_o\)))) # (!\ulaOP|des~0_combout\ & (((!\ulaOP|o0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o1|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o0|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux15~0_combout\);

-- Location: LCCOMB_X109_Y57_N0
\dispS0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux0~0_combout\ = (\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux14~3_combout\ $ (!\ulaOP|shift|Mux12~3_combout\)))) # (!\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux14~3_combout\ & 
-- (\ulaOP|shift|Mux12~3_combout\ $ (\ulaOP|shift|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux13~3_combout\,
	datab => \ulaOP|shift|Mux14~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux15~0_combout\,
	combout => \dispS0|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y57_N2
\dispS0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux1~0_combout\ = (\ulaOP|shift|Mux14~3_combout\ & ((\ulaOP|shift|Mux13~3_combout\) # (\ulaOP|shift|Mux12~3_combout\ $ (\ulaOP|shift|Mux15~0_combout\)))) # (!\ulaOP|shift|Mux14~3_combout\ & ((\ulaOP|shift|Mux15~0_combout\ & 
-- ((\ulaOP|shift|Mux12~3_combout\))) # (!\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux13~3_combout\,
	datab => \ulaOP|shift|Mux14~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux15~0_combout\,
	combout => \dispS0|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y57_N12
\dispS0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux2~0_combout\ = (\ulaOP|shift|Mux13~3_combout\ & ((\ulaOP|shift|Mux14~3_combout\) # ((\ulaOP|shift|Mux15~0_combout\) # (!\ulaOP|shift|Mux12~3_combout\)))) # (!\ulaOP|shift|Mux13~3_combout\ & ((\ulaOP|shift|Mux12~3_combout\) # 
-- ((\ulaOP|shift|Mux14~3_combout\ & \ulaOP|shift|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux13~3_combout\,
	datab => \ulaOP|shift|Mux14~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux15~0_combout\,
	combout => \dispS0|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y57_N30
\dispS0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux3~0_combout\ = (\ulaOP|shift|Mux14~3_combout\ & (\ulaOP|shift|Mux12~3_combout\ & (\ulaOP|shift|Mux13~3_combout\ $ (!\ulaOP|shift|Mux15~0_combout\)))) # (!\ulaOP|shift|Mux14~3_combout\ & ((\ulaOP|shift|Mux13~3_combout\ & 
-- (!\ulaOP|shift|Mux12~3_combout\ & !\ulaOP|shift|Mux15~0_combout\)) # (!\ulaOP|shift|Mux13~3_combout\ & ((\ulaOP|shift|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux13~3_combout\,
	datab => \ulaOP|shift|Mux14~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux15~0_combout\,
	combout => \dispS0|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y57_N24
\dispS0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux4~0_combout\ = (\ulaOP|shift|Mux14~3_combout\ & ((\ulaOP|shift|Mux13~3_combout\ & ((\ulaOP|shift|Mux15~0_combout\))) # (!\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux12~3_combout\)))) # (!\ulaOP|shift|Mux14~3_combout\ & 
-- (((\ulaOP|shift|Mux12~3_combout\ & \ulaOP|shift|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux13~3_combout\,
	datab => \ulaOP|shift|Mux14~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux15~0_combout\,
	combout => \dispS0|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y57_N26
\dispS0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux5~0_combout\ = (\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux12~3_combout\ & ((\ulaOP|shift|Mux15~0_combout\) # (!\ulaOP|shift|Mux14~3_combout\)))) # (!\ulaOP|shift|Mux13~3_combout\ & (\ulaOP|shift|Mux15~0_combout\ & 
-- (\ulaOP|shift|Mux14~3_combout\ $ (\ulaOP|shift|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux13~3_combout\,
	datab => \ulaOP|shift|Mux14~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux15~0_combout\,
	combout => \dispS0|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y57_N4
\dispS0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS0|Mux6~0_combout\ = (\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux12~3_combout\ & (\ulaOP|shift|Mux13~3_combout\ $ (!\ulaOP|shift|Mux14~3_combout\)))) # (!\ulaOP|shift|Mux15~0_combout\ & (\ulaOP|shift|Mux14~3_combout\ & 
-- (\ulaOP|shift|Mux13~3_combout\ $ (!\ulaOP|shift|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux13~3_combout\,
	datab => \ulaOP|shift|Mux14~3_combout\,
	datac => \ulaOP|shift|Mux12~3_combout\,
	datad => \ulaOP|shift|Mux15~0_combout\,
	combout => \dispS0|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y11_N0
\ulaOP|l6|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l6|Xi~3_combout\ = (\A[6]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[6]~input_o\))))) # (!\A[6]~input_o\ & ((\S0~input_o\ & ((\B[6]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[6]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l6|Xi~3_combout\);

-- Location: LCCOMB_X109_Y11_N2
\ulaOP|l6|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l6|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l6|Xi~3_combout\)) # (!\M~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulaOP|l6|Xi~3_combout\,
	datac => \M~input_o\,
	datad => \A[6]~input_o\,
	combout => \ulaOP|l6|Xi~4_combout\);

-- Location: LCCOMB_X110_Y11_N6
\ulaOP|l6|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l6|Yi~0_combout\ = (\S1~input_o\) # (\B[6]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l6|Yi~0_combout\);

-- Location: LCCOMB_X109_Y11_N4
\ulaOP|l5|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l5|Xi~3_combout\ = (\A[5]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[5]~input_o\))))) # (!\A[5]~input_o\ & ((\S0~input_o\ & ((\B[5]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[5]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l5|Xi~3_combout\);

-- Location: LCCOMB_X109_Y11_N14
\ulaOP|l5|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l5|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l5|Xi~3_combout\))) # (!\M~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \A[5]~input_o\,
	datac => \ulaOP|l5|Xi~3_combout\,
	combout => \ulaOP|l5|Xi~4_combout\);

-- Location: LCCOMB_X110_Y11_N8
\ulaOP|l5|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l5|Yi~0_combout\ = (\S1~input_o\) # (\B[5]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l5|Yi~0_combout\);

-- Location: LCCOMB_X110_Y11_N30
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

-- Location: LCCOMB_X110_Y11_N4
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

-- Location: LCCOMB_X110_Y15_N24
\ulaOP|o6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o6|s~combout\ = \ulaOP|l6|Xi~4_combout\ $ (\ulaOP|o5|cout~0_combout\ $ (((\M~input_o\) # (\ulaOP|l6|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l6|Xi~4_combout\,
	datab => \M~input_o\,
	datac => \ulaOP|l6|Yi~0_combout\,
	datad => \ulaOP|o5|cout~0_combout\,
	combout => \ulaOP|o6|s~combout\);

-- Location: LCCOMB_X109_Y11_N30
\ulaOP|l7|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l7|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[7]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l7|Yi~0_combout\);

-- Location: LCCOMB_X110_Y15_N2
\ulaOP|o6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o6|cout~0_combout\ = (\ulaOP|l6|Xi~4_combout\ & ((\ulaOP|o5|cout~0_combout\) # ((!\M~input_o\ & !\ulaOP|l6|Yi~0_combout\)))) # (!\ulaOP|l6|Xi~4_combout\ & (!\M~input_o\ & (!\ulaOP|l6|Yi~0_combout\ & \ulaOP|o5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l6|Xi~4_combout\,
	datab => \M~input_o\,
	datac => \ulaOP|l6|Yi~0_combout\,
	datad => \ulaOP|o5|cout~0_combout\,
	combout => \ulaOP|o6|cout~0_combout\);

-- Location: LCCOMB_X109_Y11_N12
\ulaOP|l7|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l7|Xi~3_combout\ = (\A[7]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[7]~input_o\))))) # (!\A[7]~input_o\ & ((\S0~input_o\ & ((\B[7]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[7]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l7|Xi~3_combout\);

-- Location: LCCOMB_X109_Y11_N6
\ulaOP|l7|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l7|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l7|Xi~3_combout\)) # (!\M~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l7|Xi~3_combout\,
	datab => \A[7]~input_o\,
	datac => \M~input_o\,
	combout => \ulaOP|l7|Xi~4_combout\);

-- Location: LCCOMB_X113_Y34_N12
\ulaOP|o7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o7|cout~0_combout\ = (\ulaOP|o6|cout~0_combout\ & ((\ulaOP|l7|Xi~4_combout\) # ((!\ulaOP|l7|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o6|cout~0_combout\ & (!\ulaOP|l7|Yi~0_combout\ & (\ulaOP|l7|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l7|Yi~0_combout\,
	datab => \ulaOP|o6|cout~0_combout\,
	datac => \ulaOP|l7|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o7|cout~0_combout\);

-- Location: LCCOMB_X114_Y34_N16
\ulaOP|l8|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l8|Xi~3_combout\ = (\S1~input_o\ & (\A[8]~input_o\ $ (((\B[8]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[8]~input_o\ & ((\S0~input_o\) # (\A[8]~input_o\))) # (!\B[8]~input_o\ & (\S0~input_o\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \A[8]~input_o\,
	combout => \ulaOP|l8|Xi~3_combout\);

-- Location: LCCOMB_X114_Y34_N26
\ulaOP|l8|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l8|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l8|Xi~3_combout\)) # (!\M~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulaOP|l8|Xi~3_combout\,
	datac => \A[8]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l8|Xi~4_combout\);

-- Location: LCCOMB_X113_Y34_N14
\ulaOP|l8|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l8|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \B[8]~input_o\,
	combout => \ulaOP|l8|Yi~0_combout\);

-- Location: LCCOMB_X113_Y34_N16
\ulaOP|o8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o8|s~combout\ = \ulaOP|o7|cout~0_combout\ $ (\ulaOP|l8|Xi~4_combout\ $ (((\ulaOP|l8|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o7|cout~0_combout\,
	datab => \ulaOP|l8|Xi~4_combout\,
	datac => \ulaOP|l8|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o8|s~combout\);

-- Location: LCCOMB_X109_Y30_N30
\ulaOP|shift|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux8~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o8|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o6|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o6|s~combout\,
	datad => \ulaOP|o8|s~combout\,
	combout => \ulaOP|shift|Mux8~2_combout\);

-- Location: LCCOMB_X113_Y34_N2
\ulaOP|o7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o7|s~combout\ = \ulaOP|o6|cout~0_combout\ $ (\ulaOP|l7|Xi~4_combout\ $ (((\ulaOP|l7|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l7|Yi~0_combout\,
	datab => \ulaOP|o6|cout~0_combout\,
	datac => \ulaOP|l7|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o7|s~combout\);

-- Location: LCCOMB_X109_Y30_N6
\ulaOP|shift|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux8~3_combout\ = (\ulaOP|shift|Mux8~2_combout\) # ((\ulaOP|o7|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~2_combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \ulaOP|o7|s~combout\,
	combout => \ulaOP|shift|Mux8~3_combout\);

-- Location: LCCOMB_X109_Y30_N26
\ulaOP|shift|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux10~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o6|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o4|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o6|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o4|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux10~2_combout\);

-- Location: LCCOMB_X110_Y11_N18
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

-- Location: LCCOMB_X109_Y30_N10
\ulaOP|shift|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux10~3_combout\ = (\ulaOP|shift|Mux10~2_combout\) # ((\ulaOP|o5|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux10~2_combout\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|o5|s~combout\,
	combout => \ulaOP|shift|Mux10~3_combout\);

-- Location: LCCOMB_X109_Y30_N16
\ulaOP|shift|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux11~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o5|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \ulaOP|o3|s~combout\,
	datac => \ulaOP|o5|s~combout\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux11~2_combout\);

-- Location: LCCOMB_X109_Y30_N8
\ulaOP|shift|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux11~3_combout\ = (\ulaOP|shift|Mux11~2_combout\) # ((\ulaOP|o4|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o4|s~combout\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \ulaOP|shift|Mux11~2_combout\,
	combout => \ulaOP|shift|Mux11~3_combout\);

-- Location: LCCOMB_X109_Y30_N12
\ulaOP|shift|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux9~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o7|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o5|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o7|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o5|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux9~2_combout\);

-- Location: LCCOMB_X109_Y30_N4
\ulaOP|shift|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux9~3_combout\ = (\ulaOP|shift|Mux9~2_combout\) # ((\ulaOP|o6|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o6|s~combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \ulaOP|shift|Mux9~2_combout\,
	combout => \ulaOP|shift|Mux9~3_combout\);

-- Location: LCCOMB_X114_Y26_N0
\dispS1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux0~0_combout\ = (\ulaOP|shift|Mux8~3_combout\ & (\ulaOP|shift|Mux10~3_combout\ & (\ulaOP|shift|Mux11~3_combout\ $ (\ulaOP|shift|Mux9~3_combout\)))) # (!\ulaOP|shift|Mux8~3_combout\ & (!\ulaOP|shift|Mux11~3_combout\ & 
-- (\ulaOP|shift|Mux10~3_combout\ $ (\ulaOP|shift|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux9~3_combout\,
	combout => \dispS1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y26_N2
\dispS1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux1~0_combout\ = (\ulaOP|shift|Mux8~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\) # (\ulaOP|shift|Mux10~3_combout\ $ (!\ulaOP|shift|Mux11~3_combout\)))) # (!\ulaOP|shift|Mux8~3_combout\ & ((\ulaOP|shift|Mux11~3_combout\ & 
-- ((\ulaOP|shift|Mux9~3_combout\))) # (!\ulaOP|shift|Mux11~3_combout\ & (\ulaOP|shift|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux9~3_combout\,
	combout => \dispS1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y26_N28
\dispS1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux2~0_combout\ = (\ulaOP|shift|Mux8~3_combout\ & ((\ulaOP|shift|Mux10~3_combout\) # ((!\ulaOP|shift|Mux9~3_combout\) # (!\ulaOP|shift|Mux11~3_combout\)))) # (!\ulaOP|shift|Mux8~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\) # 
-- ((\ulaOP|shift|Mux10~3_combout\ & !\ulaOP|shift|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux9~3_combout\,
	combout => \dispS1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y26_N22
\dispS1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux3~0_combout\ = (\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux11~3_combout\ $ (!\ulaOP|shift|Mux9~3_combout\)) # (!\ulaOP|shift|Mux8~3_combout\))) # (!\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux11~3_combout\ & 
-- ((\ulaOP|shift|Mux8~3_combout\) # (!\ulaOP|shift|Mux9~3_combout\))) # (!\ulaOP|shift|Mux11~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux9~3_combout\,
	combout => \dispS1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y26_N8
\dispS1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux4~0_combout\ = (\ulaOP|shift|Mux10~3_combout\ & ((\ulaOP|shift|Mux9~3_combout\ & ((!\ulaOP|shift|Mux11~3_combout\))) # (!\ulaOP|shift|Mux9~3_combout\ & (\ulaOP|shift|Mux8~3_combout\)))) # (!\ulaOP|shift|Mux10~3_combout\ & 
-- (\ulaOP|shift|Mux8~3_combout\ & (!\ulaOP|shift|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux9~3_combout\,
	combout => \dispS1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y26_N18
\dispS1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux5~0_combout\ = (\ulaOP|shift|Mux10~3_combout\ & (!\ulaOP|shift|Mux11~3_combout\ & (\ulaOP|shift|Mux8~3_combout\ $ (!\ulaOP|shift|Mux9~3_combout\)))) # (!\ulaOP|shift|Mux10~3_combout\ & (\ulaOP|shift|Mux8~3_combout\ & 
-- ((\ulaOP|shift|Mux9~3_combout\) # (!\ulaOP|shift|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux9~3_combout\,
	combout => \dispS1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y26_N12
\dispS1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS1|Mux6~0_combout\ = (\ulaOP|shift|Mux11~3_combout\ & (\ulaOP|shift|Mux10~3_combout\ & (\ulaOP|shift|Mux8~3_combout\ $ (!\ulaOP|shift|Mux9~3_combout\)))) # (!\ulaOP|shift|Mux11~3_combout\ & (\ulaOP|shift|Mux8~3_combout\ & 
-- (\ulaOP|shift|Mux10~3_combout\ $ (!\ulaOP|shift|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux8~3_combout\,
	datab => \ulaOP|shift|Mux10~3_combout\,
	datac => \ulaOP|shift|Mux11~3_combout\,
	datad => \ulaOP|shift|Mux9~3_combout\,
	combout => \dispS1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y34_N12
\ulaOP|l9|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l9|Xi~3_combout\ = (\S1~input_o\ & (\A[9]~input_o\ $ (((\S0~input_o\) # (\B[9]~input_o\))))) # (!\S1~input_o\ & ((\S0~input_o\ & ((\B[9]~input_o\) # (\A[9]~input_o\))) # (!\S0~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[9]~input_o\,
	datac => \S1~input_o\,
	datad => \A[9]~input_o\,
	combout => \ulaOP|l9|Xi~3_combout\);

-- Location: LCCOMB_X114_Y34_N6
\ulaOP|l9|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l9|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l9|Xi~3_combout\)) # (!\M~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l9|Xi~3_combout\,
	datab => \A[9]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l9|Xi~4_combout\);

-- Location: LCCOMB_X113_Y34_N18
\ulaOP|o8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o8|cout~0_combout\ = (\ulaOP|o7|cout~0_combout\ & ((\ulaOP|l8|Xi~4_combout\) # ((!\ulaOP|l8|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o7|cout~0_combout\ & (\ulaOP|l8|Xi~4_combout\ & (!\ulaOP|l8|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o7|cout~0_combout\,
	datab => \ulaOP|l8|Xi~4_combout\,
	datac => \ulaOP|l8|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o8|cout~0_combout\);

-- Location: LCCOMB_X114_Y34_N30
\ulaOP|l9|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l9|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[9]~input_o\,
	datac => \S1~input_o\,
	combout => \ulaOP|l9|Yi~0_combout\);

-- Location: LCCOMB_X113_Y34_N30
\ulaOP|o9|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o9|cout~0_combout\ = (\ulaOP|l9|Xi~4_combout\ & ((\ulaOP|o8|cout~0_combout\) # ((!\ulaOP|l9|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|l9|Xi~4_combout\ & (\ulaOP|o8|cout~0_combout\ & (!\ulaOP|l9|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l9|Xi~4_combout\,
	datab => \ulaOP|o8|cout~0_combout\,
	datac => \ulaOP|l9|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o9|cout~0_combout\);

-- Location: LCCOMB_X114_Y34_N0
\ulaOP|l10|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l10|Xi~3_combout\ = (\S1~input_o\ & (\A[10]~input_o\ $ (((\S0~input_o\) # (\B[10]~input_o\))))) # (!\S1~input_o\ & ((\S0~input_o\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # (!\S0~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[10]~input_o\,
	datac => \S1~input_o\,
	datad => \A[10]~input_o\,
	combout => \ulaOP|l10|Xi~3_combout\);

-- Location: LCCOMB_X114_Y34_N2
\ulaOP|l10|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l10|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l10|Xi~3_combout\)) # (!\M~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulaOP|l10|Xi~3_combout\,
	datac => \A[10]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l10|Xi~4_combout\);

-- Location: LCCOMB_X114_Y36_N30
\ulaOP|l10|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l10|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[10]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l10|Yi~0_combout\);

-- Location: LCCOMB_X114_Y36_N10
\ulaOP|o10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o10|cout~0_combout\ = (\ulaOP|o9|cout~0_combout\ & ((\ulaOP|l10|Xi~4_combout\) # ((!\ulaOP|l10|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o9|cout~0_combout\ & (\ulaOP|l10|Xi~4_combout\ & (!\ulaOP|l10|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o9|cout~0_combout\,
	datab => \ulaOP|l10|Xi~4_combout\,
	datac => \ulaOP|l10|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o10|cout~0_combout\);

-- Location: LCCOMB_X114_Y36_N28
\ulaOP|l11|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l11|Yi~0_combout\ = (\S1~input_o\) # (\B[11]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \ulaOP|l11|Yi~0_combout\);

-- Location: LCCOMB_X114_Y34_N20
\ulaOP|l11|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l11|Xi~3_combout\ = (\A[11]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[11]~input_o\))))) # (!\A[11]~input_o\ & ((\S1~input_o\ & ((\S0~input_o\) # (\B[11]~input_o\))) # (!\S1~input_o\ & (\S0~input_o\ & \B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \B[11]~input_o\,
	combout => \ulaOP|l11|Xi~3_combout\);

-- Location: LCCOMB_X114_Y34_N14
\ulaOP|l11|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l11|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l11|Xi~3_combout\))) # (!\M~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \ulaOP|l11|Xi~3_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|l11|Xi~4_combout\);

-- Location: LCCOMB_X114_Y36_N6
\ulaOP|o11|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o11|s~combout\ = \ulaOP|o10|cout~0_combout\ $ (\ulaOP|l11|Xi~4_combout\ $ (((\ulaOP|l11|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o10|cout~0_combout\,
	datab => \ulaOP|l11|Yi~0_combout\,
	datac => \ulaOP|l11|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o11|s~combout\);

-- Location: LCCOMB_X114_Y36_N0
\ulaOP|o10|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o10|s~combout\ = \ulaOP|o9|cout~0_combout\ $ (\ulaOP|l10|Xi~4_combout\ $ (((\ulaOP|l10|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o9|cout~0_combout\,
	datab => \ulaOP|l10|Xi~4_combout\,
	datac => \ulaOP|l10|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o10|s~combout\);

-- Location: LCCOMB_X114_Y40_N20
\ulaOP|l12|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l12|Xi~3_combout\ = (\A[12]~input_o\ & (\S1~input_o\ $ (((\B[12]~input_o\) # (\S0~input_o\))))) # (!\A[12]~input_o\ & ((\B[12]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[12]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \S0~input_o\,
	datac => \A[12]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l12|Xi~3_combout\);

-- Location: LCCOMB_X114_Y40_N22
\ulaOP|l12|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l12|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l12|Xi~3_combout\)) # (!\M~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulaOP|l12|Xi~3_combout\,
	datac => \A[12]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l12|Xi~4_combout\);

-- Location: LCCOMB_X114_Y36_N24
\ulaOP|o11|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o11|cout~0_combout\ = (\ulaOP|o10|cout~0_combout\ & ((\ulaOP|l11|Xi~4_combout\) # ((!\ulaOP|l11|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o10|cout~0_combout\ & (!\ulaOP|l11|Yi~0_combout\ & (\ulaOP|l11|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o10|cout~0_combout\,
	datab => \ulaOP|l11|Yi~0_combout\,
	datac => \ulaOP|l11|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o11|cout~0_combout\);

-- Location: LCCOMB_X114_Y40_N6
\ulaOP|l12|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l12|Yi~0_combout\ = (\S1~input_o\) # (\B[12]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l12|Yi~0_combout\);

-- Location: LCCOMB_X110_Y36_N8
\ulaOP|o12|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o12|s~combout\ = \ulaOP|l12|Xi~4_combout\ $ (\ulaOP|o11|cout~0_combout\ $ (((\ulaOP|l12|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l12|Xi~4_combout\,
	datab => \ulaOP|o11|cout~0_combout\,
	datac => \ulaOP|l12|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o12|s~combout\);

-- Location: LCCOMB_X114_Y36_N26
\ulaOP|shift|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux4~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o12|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o10|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|des~0_combout\,
	datab => \ulaOP|o10|s~combout\,
	datac => \ulaOP|o12|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux4~2_combout\);

-- Location: LCCOMB_X114_Y36_N22
\ulaOP|shift|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux4~3_combout\ = (\ulaOP|shift|Mux4~2_combout\) # ((\ulaOP|o11|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o11|s~combout\,
	datab => \M~input_o\,
	datac => \ulaOP|shift|Mux4~2_combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux4~3_combout\);

-- Location: LCCOMB_X113_Y34_N20
\ulaOP|o9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o9|s~combout\ = \ulaOP|l9|Xi~4_combout\ $ (\ulaOP|o8|cout~0_combout\ $ (((\ulaOP|l9|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l9|Xi~4_combout\,
	datab => \ulaOP|o8|cout~0_combout\,
	datac => \ulaOP|l9|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o9|s~combout\);

-- Location: LCCOMB_X109_Y30_N0
\ulaOP|shift|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux7~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o9|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o7|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \ulaOP|o9|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux7~2_combout\);

-- Location: LCCOMB_X113_Y34_N8
\ulaOP|shift|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux7~3_combout\ = (\ulaOP|shift|Mux7~2_combout\) # ((\ulaOP|o8|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \ulaOP|shift|Mux7~2_combout\,
	datac => \S1~input_o\,
	datad => \ulaOP|o8|s~combout\,
	combout => \ulaOP|shift|Mux7~3_combout\);

-- Location: LCCOMB_X113_Y34_N24
\ulaOP|shift|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux6~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o10|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o8|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|des~0_combout\,
	datab => \ulaOP|o8|s~combout\,
	datac => \ulaOP|o10|s~combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux6~2_combout\);

-- Location: LCCOMB_X113_Y34_N26
\ulaOP|shift|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux6~3_combout\ = (\ulaOP|shift|Mux6~2_combout\) # ((\ulaOP|o9|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \ulaOP|shift|Mux6~2_combout\,
	datac => \S1~input_o\,
	datad => \ulaOP|o9|s~combout\,
	combout => \ulaOP|shift|Mux6~3_combout\);

-- Location: LCCOMB_X113_Y34_N10
\ulaOP|shift|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux5~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o11|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o9|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o11|s~combout\,
	datab => \ulaOP|o9|s~combout\,
	datac => \ulaOP|des~0_combout\,
	datad => \S0~input_o\,
	combout => \ulaOP|shift|Mux5~2_combout\);

-- Location: LCCOMB_X113_Y34_N28
\ulaOP|shift|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux5~3_combout\ = (\ulaOP|shift|Mux5~2_combout\) # ((\ulaOP|o10|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux5~2_combout\,
	datab => \S1~input_o\,
	datac => \ulaOP|o10|s~combout\,
	datad => \M~input_o\,
	combout => \ulaOP|shift|Mux5~3_combout\);

-- Location: LCCOMB_X114_Y22_N8
\dispS2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux0~0_combout\ = (\ulaOP|shift|Mux4~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ & (\ulaOP|shift|Mux7~3_combout\ $ (\ulaOP|shift|Mux5~3_combout\)))) # (!\ulaOP|shift|Mux4~3_combout\ & (!\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ $ 
-- (\ulaOP|shift|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux4~3_combout\,
	datab => \ulaOP|shift|Mux7~3_combout\,
	datac => \ulaOP|shift|Mux6~3_combout\,
	datad => \ulaOP|shift|Mux5~3_combout\,
	combout => \dispS2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y22_N18
\dispS2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux1~0_combout\ = (\ulaOP|shift|Mux4~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\) # (\ulaOP|shift|Mux7~3_combout\ $ (!\ulaOP|shift|Mux6~3_combout\)))) # (!\ulaOP|shift|Mux4~3_combout\ & ((\ulaOP|shift|Mux7~3_combout\ & 
-- ((\ulaOP|shift|Mux5~3_combout\))) # (!\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux4~3_combout\,
	datab => \ulaOP|shift|Mux7~3_combout\,
	datac => \ulaOP|shift|Mux6~3_combout\,
	datad => \ulaOP|shift|Mux5~3_combout\,
	combout => \dispS2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\dispS2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux2~0_combout\ = (\ulaOP|shift|Mux4~3_combout\ & (((\ulaOP|shift|Mux6~3_combout\) # (!\ulaOP|shift|Mux5~3_combout\)) # (!\ulaOP|shift|Mux7~3_combout\))) # (!\ulaOP|shift|Mux4~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\) # 
-- ((!\ulaOP|shift|Mux7~3_combout\ & \ulaOP|shift|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux4~3_combout\,
	datab => \ulaOP|shift|Mux7~3_combout\,
	datac => \ulaOP|shift|Mux6~3_combout\,
	datad => \ulaOP|shift|Mux5~3_combout\,
	combout => \dispS2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y22_N14
\dispS2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux3~0_combout\ = (\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux7~3_combout\ $ (!\ulaOP|shift|Mux5~3_combout\)) # (!\ulaOP|shift|Mux4~3_combout\))) # (!\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux7~3_combout\ & 
-- ((\ulaOP|shift|Mux4~3_combout\) # (!\ulaOP|shift|Mux5~3_combout\))) # (!\ulaOP|shift|Mux7~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux4~3_combout\,
	datab => \ulaOP|shift|Mux7~3_combout\,
	datac => \ulaOP|shift|Mux6~3_combout\,
	datad => \ulaOP|shift|Mux5~3_combout\,
	combout => \dispS2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y22_N0
\dispS2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux4~0_combout\ = (\ulaOP|shift|Mux6~3_combout\ & ((\ulaOP|shift|Mux5~3_combout\ & ((!\ulaOP|shift|Mux7~3_combout\))) # (!\ulaOP|shift|Mux5~3_combout\ & (\ulaOP|shift|Mux4~3_combout\)))) # (!\ulaOP|shift|Mux6~3_combout\ & 
-- (\ulaOP|shift|Mux4~3_combout\ & (!\ulaOP|shift|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux4~3_combout\,
	datab => \ulaOP|shift|Mux7~3_combout\,
	datac => \ulaOP|shift|Mux6~3_combout\,
	datad => \ulaOP|shift|Mux5~3_combout\,
	combout => \dispS2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y22_N10
\dispS2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux5~0_combout\ = (\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux4~3_combout\ & (!\ulaOP|shift|Mux6~3_combout\ & \ulaOP|shift|Mux5~3_combout\))) # (!\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux4~3_combout\ $ (((\ulaOP|shift|Mux6~3_combout\ & 
-- !\ulaOP|shift|Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux4~3_combout\,
	datab => \ulaOP|shift|Mux7~3_combout\,
	datac => \ulaOP|shift|Mux6~3_combout\,
	datad => \ulaOP|shift|Mux5~3_combout\,
	combout => \dispS2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\dispS2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS2|Mux6~0_combout\ = (\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ & (\ulaOP|shift|Mux4~3_combout\ $ (!\ulaOP|shift|Mux5~3_combout\)))) # (!\ulaOP|shift|Mux7~3_combout\ & (\ulaOP|shift|Mux4~3_combout\ & (\ulaOP|shift|Mux6~3_combout\ $ 
-- (!\ulaOP|shift|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux4~3_combout\,
	datab => \ulaOP|shift|Mux7~3_combout\,
	datac => \ulaOP|shift|Mux6~3_combout\,
	datad => \ulaOP|shift|Mux5~3_combout\,
	combout => \dispS2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y40_N24
\ulaOP|l14|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l14|Yi~0_combout\ = (\S1~input_o\) # (\B[14]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l14|Yi~0_combout\);

-- Location: LCCOMB_X110_Y36_N12
\ulaOP|l13|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l13|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[13]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l13|Yi~0_combout\);

-- Location: LCCOMB_X110_Y36_N20
\ulaOP|l13|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l13|Xi~3_combout\ = (\A[13]~input_o\ & (\S1~input_o\ $ (((\B[13]~input_o\) # (\S0~input_o\))))) # (!\A[13]~input_o\ & ((\B[13]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[13]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l13|Xi~3_combout\);

-- Location: LCCOMB_X110_Y36_N14
\ulaOP|l13|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l13|Xi~4_combout\ = (\M~input_o\ & ((\ulaOP|l13|Xi~3_combout\))) # (!\M~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \ulaOP|l13|Xi~3_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|l13|Xi~4_combout\);

-- Location: LCCOMB_X110_Y36_N10
\ulaOP|o12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o12|cout~0_combout\ = (\ulaOP|l12|Xi~4_combout\ & ((\ulaOP|o11|cout~0_combout\) # ((!\ulaOP|l12|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|l12|Xi~4_combout\ & (\ulaOP|o11|cout~0_combout\ & (!\ulaOP|l12|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l12|Xi~4_combout\,
	datab => \ulaOP|o11|cout~0_combout\,
	datac => \ulaOP|l12|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o12|cout~0_combout\);

-- Location: LCCOMB_X110_Y36_N18
\ulaOP|o13|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o13|cout~0_combout\ = (\ulaOP|l13|Xi~4_combout\ & ((\ulaOP|o12|cout~0_combout\) # ((!\ulaOP|l13|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|l13|Xi~4_combout\ & (!\ulaOP|l13|Yi~0_combout\ & (!\M~input_o\ & \ulaOP|o12|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l13|Yi~0_combout\,
	datab => \M~input_o\,
	datac => \ulaOP|l13|Xi~4_combout\,
	datad => \ulaOP|o12|cout~0_combout\,
	combout => \ulaOP|o13|cout~0_combout\);

-- Location: LCCOMB_X114_Y40_N0
\ulaOP|l14|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l14|Xi~3_combout\ = (\A[14]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[14]~input_o\))))) # (!\A[14]~input_o\ & ((\S0~input_o\ & ((\B[14]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[14]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l14|Xi~3_combout\);

-- Location: LCCOMB_X114_Y40_N26
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

-- Location: LCCOMB_X110_Y36_N16
\ulaOP|o14|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o14|cout~0_combout\ = (\ulaOP|o13|cout~0_combout\ & ((\ulaOP|l14|Xi~4_combout\) # ((!\ulaOP|l14|Yi~0_combout\ & !\M~input_o\)))) # (!\ulaOP|o13|cout~0_combout\ & (!\ulaOP|l14|Yi~0_combout\ & (\ulaOP|l14|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l14|Yi~0_combout\,
	datab => \ulaOP|o13|cout~0_combout\,
	datac => \ulaOP|l14|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o14|cout~0_combout\);

-- Location: LCCOMB_X114_Y40_N18
\ulaOP|l15|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l15|Yi~0_combout\ = (\S1~input_o\) # (\B[15]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|l15|Yi~0_combout\);

-- Location: LCCOMB_X114_Y40_N12
\ulaOP|l15|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l15|Xi~3_combout\ = (\S1~input_o\ & (\A[15]~input_o\ $ (((\S0~input_o\) # (\B[15]~input_o\))))) # (!\S1~input_o\ & ((\S0~input_o\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) # (!\S0~input_o\ & (\A[15]~input_o\ & \B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \ulaOP|l15|Xi~3_combout\);

-- Location: LCCOMB_X114_Y40_N30
\ulaOP|l15|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|l15|Xi~4_combout\ = (\M~input_o\ & (\ulaOP|l15|Xi~3_combout\)) # (!\M~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l15|Xi~3_combout\,
	datac => \A[15]~input_o\,
	datad => \M~input_o\,
	combout => \ulaOP|l15|Xi~4_combout\);

-- Location: LCCOMB_X113_Y34_N4
\ulaOP|o15|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o15|s~combout\ = \ulaOP|o14|cout~0_combout\ $ (\ulaOP|l15|Xi~4_combout\ $ (((\ulaOP|l15|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o14|cout~0_combout\,
	datab => \ulaOP|l15|Yi~0_combout\,
	datac => \ulaOP|l15|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o15|s~combout\);

-- Location: LCCOMB_X110_Y36_N4
\ulaOP|o14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o14|s~combout\ = \ulaOP|o13|cout~0_combout\ $ (\ulaOP|l14|Xi~4_combout\ $ (((\ulaOP|l14|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l14|Yi~0_combout\,
	datab => \ulaOP|o13|cout~0_combout\,
	datac => \ulaOP|l14|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \ulaOP|o14|s~combout\);

-- Location: LCCOMB_X110_Y36_N6
\ulaOP|shift|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux0~0_combout\ = (\ulaOP|des~0_combout\ & (((\ulaOP|o14|s~combout\) # (\S0~input_o\)))) # (!\ulaOP|des~0_combout\ & (\ulaOP|o15|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o15|s~combout\,
	datab => \ulaOP|o14|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y36_N20
\ulaOP|shift|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux1~0_combout\ = (!\M~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y36_N22
\ulaOP|o13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|o13|s~combout\ = \ulaOP|l13|Xi~4_combout\ $ (\ulaOP|o12|cout~0_combout\ $ (((\ulaOP|l13|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|l13|Yi~0_combout\,
	datab => \M~input_o\,
	datac => \ulaOP|l13|Xi~4_combout\,
	datad => \ulaOP|o12|cout~0_combout\,
	combout => \ulaOP|o13|s~combout\);

-- Location: LCCOMB_X110_Y36_N2
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

-- Location: LCCOMB_X110_Y36_N28
\ulaOP|shift|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux1~2_combout\ = (\ulaOP|shift|Mux1~0_combout\ & (((\ulaOP|shift|Mux1~1_combout\)))) # (!\ulaOP|shift|Mux1~0_combout\ & ((\ulaOP|o14|s~combout\) # ((!\S0~input_o\ & \ulaOP|shift|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux1~0_combout\,
	datab => \ulaOP|o14|s~combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|shift|Mux1~1_combout\,
	combout => \ulaOP|shift|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y36_N24
\ulaOP|shift|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux3~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & (\ulaOP|o13|s~combout\)) # (!\S0~input_o\ & ((\ulaOP|o11|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o13|s~combout\,
	datab => \ulaOP|des~0_combout\,
	datac => \S0~input_o\,
	datad => \ulaOP|o11|s~combout\,
	combout => \ulaOP|shift|Mux3~2_combout\);

-- Location: LCCOMB_X110_Y36_N0
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

-- Location: LCCOMB_X110_Y36_N30
\ulaOP|shift|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux2~2_combout\ = (\ulaOP|des~0_combout\ & ((\S0~input_o\ & ((\ulaOP|o14|s~combout\))) # (!\S0~input_o\ & (\ulaOP|o12|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \ulaOP|o12|s~combout\,
	datac => \ulaOP|o14|s~combout\,
	datad => \ulaOP|des~0_combout\,
	combout => \ulaOP|shift|Mux2~2_combout\);

-- Location: LCCOMB_X110_Y36_N26
\ulaOP|shift|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|shift|Mux2~3_combout\ = (\ulaOP|shift|Mux2~2_combout\) # ((\ulaOP|o13|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o13|s~combout\,
	datab => \M~input_o\,
	datac => \ulaOP|shift|Mux2~2_combout\,
	datad => \S1~input_o\,
	combout => \ulaOP|shift|Mux2~3_combout\);

-- Location: LCCOMB_X110_Y29_N0
\dispS3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux0~0_combout\ = (\ulaOP|shift|Mux0~0_combout\ & (\ulaOP|shift|Mux2~3_combout\ & (\ulaOP|shift|Mux1~2_combout\ $ (\ulaOP|shift|Mux3~3_combout\)))) # (!\ulaOP|shift|Mux0~0_combout\ & (!\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux1~2_combout\ $ 
-- (\ulaOP|shift|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux0~0_combout\,
	datab => \ulaOP|shift|Mux1~2_combout\,
	datac => \ulaOP|shift|Mux3~3_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y29_N10
\dispS3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux1~0_combout\ = (\ulaOP|shift|Mux0~0_combout\ & ((\ulaOP|shift|Mux1~2_combout\) # (\ulaOP|shift|Mux3~3_combout\ $ (!\ulaOP|shift|Mux2~3_combout\)))) # (!\ulaOP|shift|Mux0~0_combout\ & ((\ulaOP|shift|Mux3~3_combout\ & 
-- (\ulaOP|shift|Mux1~2_combout\)) # (!\ulaOP|shift|Mux3~3_combout\ & ((\ulaOP|shift|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux0~0_combout\,
	datab => \ulaOP|shift|Mux1~2_combout\,
	datac => \ulaOP|shift|Mux3~3_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y29_N12
\dispS3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux2~0_combout\ = (\ulaOP|shift|Mux0~0_combout\ & (((\ulaOP|shift|Mux2~3_combout\) # (!\ulaOP|shift|Mux3~3_combout\)) # (!\ulaOP|shift|Mux1~2_combout\))) # (!\ulaOP|shift|Mux0~0_combout\ & ((\ulaOP|shift|Mux1~2_combout\) # 
-- ((!\ulaOP|shift|Mux3~3_combout\ & \ulaOP|shift|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux0~0_combout\,
	datab => \ulaOP|shift|Mux1~2_combout\,
	datac => \ulaOP|shift|Mux3~3_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y29_N30
\dispS3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux3~0_combout\ = (\ulaOP|shift|Mux2~3_combout\ & ((\ulaOP|shift|Mux1~2_combout\ $ (!\ulaOP|shift|Mux3~3_combout\)) # (!\ulaOP|shift|Mux0~0_combout\))) # (!\ulaOP|shift|Mux2~3_combout\ & ((\ulaOP|shift|Mux1~2_combout\ & 
-- ((\ulaOP|shift|Mux0~0_combout\) # (!\ulaOP|shift|Mux3~3_combout\))) # (!\ulaOP|shift|Mux1~2_combout\ & ((\ulaOP|shift|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux0~0_combout\,
	datab => \ulaOP|shift|Mux1~2_combout\,
	datac => \ulaOP|shift|Mux3~3_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y29_N8
\dispS3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux4~0_combout\ = (\ulaOP|shift|Mux2~3_combout\ & ((\ulaOP|shift|Mux1~2_combout\ & ((!\ulaOP|shift|Mux3~3_combout\))) # (!\ulaOP|shift|Mux1~2_combout\ & (\ulaOP|shift|Mux0~0_combout\)))) # (!\ulaOP|shift|Mux2~3_combout\ & 
-- (\ulaOP|shift|Mux0~0_combout\ & ((!\ulaOP|shift|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux0~0_combout\,
	datab => \ulaOP|shift|Mux1~2_combout\,
	datac => \ulaOP|shift|Mux3~3_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y29_N2
\dispS3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux5~0_combout\ = (\ulaOP|shift|Mux1~2_combout\ & (\ulaOP|shift|Mux0~0_combout\ & ((!\ulaOP|shift|Mux2~3_combout\) # (!\ulaOP|shift|Mux3~3_combout\)))) # (!\ulaOP|shift|Mux1~2_combout\ & (!\ulaOP|shift|Mux3~3_combout\ & 
-- (\ulaOP|shift|Mux0~0_combout\ $ (\ulaOP|shift|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux0~0_combout\,
	datab => \ulaOP|shift|Mux1~2_combout\,
	datac => \ulaOP|shift|Mux3~3_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y29_N4
\dispS3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispS3|Mux6~0_combout\ = (\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux2~3_combout\ & (\ulaOP|shift|Mux0~0_combout\ $ (!\ulaOP|shift|Mux1~2_combout\)))) # (!\ulaOP|shift|Mux3~3_combout\ & (\ulaOP|shift|Mux0~0_combout\ & (\ulaOP|shift|Mux1~2_combout\ $ 
-- (!\ulaOP|shift|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|shift|Mux0~0_combout\,
	datab => \ulaOP|shift|Mux1~2_combout\,
	datac => \ulaOP|shift|Mux3~3_combout\,
	datad => \ulaOP|shift|Mux2~3_combout\,
	combout => \dispS3|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y34_N22
\ulaOP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ulaOP|Cout~0_combout\ = (\ulaOP|o14|cout~0_combout\ & (!\ulaOP|l15|Xi~4_combout\ & ((\ulaOP|l15|Yi~0_combout\) # (\M~input_o\)))) # (!\ulaOP|o14|cout~0_combout\ & (!\ulaOP|l15|Yi~0_combout\ & (\ulaOP|l15|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulaOP|o14|cout~0_combout\,
	datab => \ulaOP|l15|Yi~0_combout\,
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


