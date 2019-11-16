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

-- DATE "11/16/2019 10:19:53"

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
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	po IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	ld_a : IN std_logic;
	ld_b : IN std_logic;
	slt_a : IN std_logic;
	cnt : IN std_logic;
	ud : IN std_logic;
	sub_add : IN std_logic;
	input : IN std_logic_vector(15 DOWNTO 0);
	a_lt_z : OUT std_logic;
	a_e_z : OUT std_logic;
	quotient : OUT STD.STANDARD.integer range 0 TO 65536;
	rest : OUT std_logic_vector(15 DOWNTO 0)
	);
END po;

-- Design Ports Information
-- clr	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_lt_z	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_e_z	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[8]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[9]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[10]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[11]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[14]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[15]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[16]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[6]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[9]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[10]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[11]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[12]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[13]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_a	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_a	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_add	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_b	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ud	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF po IS
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
SIGNAL ww_clr : std_logic;
SIGNAL ww_ld_a : std_logic;
SIGNAL ww_ld_b : std_logic;
SIGNAL ww_slt_a : std_logic;
SIGNAL ww_cnt : std_logic;
SIGNAL ww_ud : std_logic;
SIGNAL ww_sub_add : std_logic;
SIGNAL ww_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_a_lt_z : std_logic;
SIGNAL ww_a_e_z : std_logic;
SIGNAL ww_quotient : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_rest : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \a_lt_z~output_o\ : std_logic;
SIGNAL \a_e_z~output_o\ : std_logic;
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
SIGNAL \quotient[16]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \ld_b~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reg_b~9_combout\ : std_logic;
SIGNAL \sub_add~input_o\ : std_logic;
SIGNAL \ld_a~input_o\ : std_logic;
SIGNAL \slt_a~input_o\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \reg_a~10_combout\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \reg_b~8_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \reg_b~7_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \reg_b~6_combout\ : std_logic;
SIGNAL \reg_b[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \reg_b~5_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \reg_b~4_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \reg_b~3_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \reg_b~2_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \reg_b~1_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \reg_b~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \reg_a[15]~1_combout\ : std_logic;
SIGNAL \reg_a~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \reg_a~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \reg_a~3_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \reg_a~4_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \reg_a~5_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \reg_a~6_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \reg_a~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \reg_a~8_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \reg_a~9_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \reg_b~11_combout\ : std_logic;
SIGNAL \reg_b[11]~feeder_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \reg_a~12_combout\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \reg_b~10_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \reg_a~11_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \reg_b~15_combout\ : std_logic;
SIGNAL \reg_b[15]~feeder_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \reg_a~16_combout\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \reg_b~14_combout\ : std_logic;
SIGNAL \reg_b[14]~feeder_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \reg_b~13_combout\ : std_logic;
SIGNAL \reg_b[13]~feeder_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \reg_b~12_combout\ : std_logic;
SIGNAL \reg_b[12]~feeder_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \reg_a~13_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \reg_a~14_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \reg_a~15_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \a_lt_z$latch~combout\ : std_logic;
SIGNAL \cnt~input_o\ : std_logic;
SIGNAL \count[15]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \quotient[0]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[0]~reg0_q\ : std_logic;
SIGNAL \ud~input_o\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \quotient[1]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[1]~reg0_q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \quotient[2]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[2]~reg0_q\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \quotient[3]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[3]~reg0_q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \quotient[4]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[4]~reg0_q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \quotient[5]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[5]~reg0_q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \quotient[6]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[6]~reg0_q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \quotient[7]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[7]~reg0_q\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \quotient[8]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[8]~reg0_q\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \quotient[9]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[9]~reg0_q\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \quotient[10]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[10]~reg0_q\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \quotient[11]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[11]~reg0_q\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \quotient[12]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[12]~reg0_q\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \quotient[13]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[13]~reg0_q\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \quotient[14]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[14]~reg0_q\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \quotient[15]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[15]~reg0_q\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \quotient[16]~reg0feeder_combout\ : std_logic;
SIGNAL \quotient[16]~reg0_q\ : std_logic;
SIGNAL reg_a : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(16 DOWNTO 0);
SIGNAL reg_b : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
ww_ld_a <= ld_a;
ww_ld_b <= ld_b;
ww_slt_a <= slt_a;
ww_cnt <= cnt;
ww_ud <= ud;
ww_sub_add <= sub_add;
ww_input <= input;
a_lt_z <= ww_a_lt_z;
a_e_z <= ww_a_e_z;
quotient <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_quotient));
rest <= ww_rest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y24_N9
\a_lt_z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_lt_z$latch~combout\,
	devoe => ww_devoe,
	o => \a_lt_z~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\a_e_z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => \a_e_z~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[0]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[1]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[2]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[3]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\quotient[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[4]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[4]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\quotient[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[5]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\quotient[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[6]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[6]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\quotient[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[7]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\quotient[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[8]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[8]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\quotient[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[9]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\quotient[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[10]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[10]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\quotient[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[11]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[11]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\quotient[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[12]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[12]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\quotient[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[13]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[13]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\quotient[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[14]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[14]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\quotient[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[15]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[15]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\quotient[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[16]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[16]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\rest[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(0),
	devoe => ww_devoe,
	o => \rest[0]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\rest[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(1),
	devoe => ww_devoe,
	o => \rest[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\rest[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(2),
	devoe => ww_devoe,
	o => \rest[2]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\rest[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(3),
	devoe => ww_devoe,
	o => \rest[3]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\rest[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(4),
	devoe => ww_devoe,
	o => \rest[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\rest[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(5),
	devoe => ww_devoe,
	o => \rest[5]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\rest[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(6),
	devoe => ww_devoe,
	o => \rest[6]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\rest[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(7),
	devoe => ww_devoe,
	o => \rest[7]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\rest[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(8),
	devoe => ww_devoe,
	o => \rest[8]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\rest[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(9),
	devoe => ww_devoe,
	o => \rest[9]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\rest[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(10),
	devoe => ww_devoe,
	o => \rest[10]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\rest[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(11),
	devoe => ww_devoe,
	o => \rest[11]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\rest[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(12),
	devoe => ww_devoe,
	o => \rest[12]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\rest[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(13),
	devoe => ww_devoe,
	o => \rest[13]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\rest[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(14),
	devoe => ww_devoe,
	o => \rest[14]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\rest[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_a(15),
	devoe => ww_devoe,
	o => \rest[15]~output_o\);

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

-- Location: IOIBUF_X0_Y26_N15
\input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\ld_b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_b,
	o => \ld_b~input_o\);

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

-- Location: LCCOMB_X3_Y44_N0
\reg_b~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~9_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & ((\input[9]~input_o\))) # (!\ld_b~input_o\ & (reg_b(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => reg_b(9),
	datac => \input[9]~input_o\,
	datad => \clk~input_o\,
	combout => \reg_b~9_combout\);

-- Location: FF_X3_Y44_N5
\reg_b[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(9));

-- Location: IOIBUF_X0_Y49_N8
\sub_add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub_add,
	o => \sub_add~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\ld_a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_a,
	o => \ld_a~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\slt_a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slt_a,
	o => \slt_a~input_o\);

-- Location: LCCOMB_X1_Y45_N6
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\sub_add~input_o\ & (\ld_a~input_o\ & \slt_a~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub_add~input_o\,
	datac => \ld_a~input_o\,
	datad => \slt_a~input_o\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X3_Y44_N4
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[9]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[9]~input_o\,
	datac => reg_b(9),
	datad => \process_0~1_combout\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X1_Y44_N26
\reg_a~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~10_combout\ = (\ld_a~input_o\ & ((\slt_a~input_o\ & (reg_a(9))) # (!\slt_a~input_o\ & ((\input[9]~input_o\))))) # (!\ld_a~input_o\ & (reg_a(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_a(9),
	datab => \input[9]~input_o\,
	datac => \ld_a~input_o\,
	datad => \slt_a~input_o\,
	combout => \reg_a~10_combout\);

-- Location: IOIBUF_X0_Y25_N22
\input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: LCCOMB_X3_Y44_N26
\reg_b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~8_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[8]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[8]~input_o\,
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(8),
	combout => \reg_b~8_combout\);

-- Location: FF_X3_Y44_N29
\reg_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(8));

-- Location: LCCOMB_X3_Y44_N28
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & ((\input[8]~input_o\))) # (!\ld_b~input_o\ & (reg_b(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \process_0~1_combout\,
	datac => reg_b(8),
	datad => \input[8]~input_o\,
	combout => \Add0~35_combout\);

-- Location: IOIBUF_X0_Y59_N22
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X3_Y44_N24
\reg_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~7_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & ((\input[7]~input_o\))) # (!\ld_b~input_o\ & (reg_b(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_b(7),
	datab => \ld_b~input_o\,
	datac => \input[7]~input_o\,
	datad => \clk~input_o\,
	combout => \reg_b~7_combout\);

-- Location: FF_X3_Y44_N13
\reg_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(7));

-- Location: LCCOMB_X3_Y44_N12
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[7]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \ld_b~input_o\,
	datac => reg_b(7),
	datad => \process_0~1_combout\,
	combout => \Add0~31_combout\);

-- Location: IOIBUF_X0_Y49_N1
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X3_Y45_N22
\reg_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~6_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & ((\input[6]~input_o\))) # (!\ld_b~input_o\ & (reg_b(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_b(6),
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => \input[6]~input_o\,
	combout => \reg_b~6_combout\);

-- Location: LCCOMB_X3_Y45_N12
\reg_b[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b[6]~feeder_combout\ = \reg_b~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b~6_combout\,
	combout => \reg_b[6]~feeder_combout\);

-- Location: FF_X3_Y45_N13
\reg_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_b[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(6));

-- Location: LCCOMB_X3_Y45_N2
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[6]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \ld_b~input_o\,
	datac => \input[6]~input_o\,
	datad => reg_b(6),
	combout => \Add0~27_combout\);

-- Location: IOIBUF_X0_Y47_N15
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X1_Y45_N14
\reg_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~5_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & ((\input[5]~input_o\))) # (!\ld_b~input_o\ & (reg_b(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => reg_b(5),
	datac => \clk~input_o\,
	datad => \input[5]~input_o\,
	combout => \reg_b~5_combout\);

-- Location: FF_X2_Y45_N15
\reg_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(5));

-- Location: LCCOMB_X2_Y45_N14
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[5]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[5]~input_o\,
	datac => reg_b(5),
	datad => \process_0~1_combout\,
	combout => \Add0~23_combout\);

-- Location: IOIBUF_X0_Y55_N8
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X1_Y45_N26
\reg_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~4_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[4]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[4]~input_o\,
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(4),
	combout => \reg_b~4_combout\);

-- Location: FF_X2_Y45_N5
\reg_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(4));

-- Location: LCCOMB_X2_Y45_N4
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[4]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[4]~input_o\,
	datac => reg_b(4),
	datad => \process_0~1_combout\,
	combout => \Add0~19_combout\);

-- Location: IOIBUF_X0_Y47_N22
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X1_Y45_N24
\reg_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~3_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[3]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => reg_b(3),
	datac => \clk~input_o\,
	datad => \ld_b~input_o\,
	combout => \reg_b~3_combout\);

-- Location: FF_X2_Y45_N3
\reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(3));

-- Location: LCCOMB_X2_Y45_N2
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[3]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[3]~input_o\,
	datac => reg_b(3),
	datad => \process_0~1_combout\,
	combout => \Add0~15_combout\);

-- Location: IOIBUF_X0_Y46_N22
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X3_Y45_N0
\reg_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~2_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[2]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(2),
	combout => \reg_b~2_combout\);

-- Location: FF_X2_Y45_N13
\reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(2));

-- Location: LCCOMB_X2_Y45_N12
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[2]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[2]~input_o\,
	datac => reg_b(2),
	datad => \process_0~1_combout\,
	combout => \Add0~11_combout\);

-- Location: IOIBUF_X0_Y52_N22
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X1_Y45_N8
\reg_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~1_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & ((\input[1]~input_o\))) # (!\ld_b~input_o\ & (reg_b(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => reg_b(1),
	datac => \clk~input_o\,
	datad => \input[1]~input_o\,
	combout => \reg_b~1_combout\);

-- Location: FF_X2_Y45_N9
\reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(1));

-- Location: LCCOMB_X2_Y45_N8
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[1]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[1]~input_o\,
	datac => reg_b(1),
	datad => \process_0~1_combout\,
	combout => \Add0~7_combout\);

-- Location: IOIBUF_X0_Y45_N15
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X1_Y45_N0
\reg_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~0_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & ((\input[0]~input_o\))) # (!\ld_b~input_o\ & (reg_b(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => reg_b(0),
	datac => \clk~input_o\,
	datad => \input[0]~input_o\,
	combout => \reg_b~0_combout\);

-- Location: FF_X2_Y45_N1
\reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(0));

-- Location: LCCOMB_X2_Y45_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\ld_b~input_o\ & (\input[0]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[0]~input_o\,
	datac => reg_b(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X2_Y45_N6
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \Add0~0_combout\ $ (((\ld_a~input_o\ & (\slt_a~input_o\ & !\sub_add~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_a~input_o\,
	datab => \slt_a~input_o\,
	datac => \sub_add~input_o\,
	datad => \Add0~0_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y45_N28
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ld_a~input_o\ & \slt_a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_a~input_o\,
	datad => \slt_a~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X2_Y45_N16
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY((\process_0~0_combout\ & !\sub_add~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \sub_add~input_o\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X2_Y45_N18
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~1_combout\ & ((\reg_a~0_combout\ & (\Add0~3_cout\ & VCC)) # (!\reg_a~0_combout\ & (!\Add0~3_cout\)))) # (!\Add0~1_combout\ & ((\reg_a~0_combout\ & (!\Add0~3_cout\)) # (!\reg_a~0_combout\ & ((\Add0~3_cout\) # (GND)))))
-- \Add0~5\ = CARRY((\Add0~1_combout\ & (!\reg_a~0_combout\ & !\Add0~3_cout\)) # (!\Add0~1_combout\ & ((!\Add0~3_cout\) # (!\reg_a~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \reg_a~0_combout\,
	datad => VCC,
	cin => \Add0~3_cout\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y45_N30
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\slt_a~input_o\ & ((\Add0~4_combout\))) # (!\slt_a~input_o\ & (\input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datac => \Add0~4_combout\,
	datad => \slt_a~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X1_Y44_N28
\reg_a[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a[15]~1_combout\ = (\clk~input_o\) # (\ld_a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datac => \ld_a~input_o\,
	combout => \reg_a[15]~1_combout\);

-- Location: FF_X1_Y45_N31
\reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(0));

-- Location: LCCOMB_X1_Y45_N22
\reg_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~0_combout\ = (\slt_a~input_o\ & (((reg_a(0))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[0]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \slt_a~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(0),
	combout => \reg_a~0_combout\);

-- Location: LCCOMB_X2_Y45_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\reg_a~2_combout\ $ (\Add0~7_combout\ $ (!\Add0~5\)))) # (GND)
-- \Add0~9\ = CARRY((\reg_a~2_combout\ & ((\Add0~7_combout\) # (!\Add0~5\))) # (!\reg_a~2_combout\ & (\Add0~7_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_a~2_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y44_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\slt_a~input_o\ & (\Add0~8_combout\)) # (!\slt_a~input_o\ & ((\input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \input[1]~input_o\,
	datad => \slt_a~input_o\,
	combout => \Add0~10_combout\);

-- Location: FF_X1_Y44_N15
\reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~10_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(1));

-- Location: LCCOMB_X2_Y45_N10
\reg_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~2_combout\ = (\ld_a~input_o\ & ((\slt_a~input_o\ & ((reg_a(1)))) # (!\slt_a~input_o\ & (\input[1]~input_o\)))) # (!\ld_a~input_o\ & (((reg_a(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_a~input_o\,
	datab => \slt_a~input_o\,
	datac => \input[1]~input_o\,
	datad => reg_a(1),
	combout => \reg_a~2_combout\);

-- Location: LCCOMB_X2_Y45_N22
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11_combout\ & ((\reg_a~3_combout\ & (\Add0~9\ & VCC)) # (!\reg_a~3_combout\ & (!\Add0~9\)))) # (!\Add0~11_combout\ & ((\reg_a~3_combout\ & (!\Add0~9\)) # (!\reg_a~3_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~13\ = CARRY((\Add0~11_combout\ & (!\reg_a~3_combout\ & !\Add0~9\)) # (!\Add0~11_combout\ & ((!\Add0~9\) # (!\reg_a~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \reg_a~3_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X1_Y44_N24
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\slt_a~input_o\ & (\Add0~12_combout\)) # (!\slt_a~input_o\ & ((\input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datac => \Add0~12_combout\,
	datad => \input[2]~input_o\,
	combout => \Add0~14_combout\);

-- Location: FF_X1_Y44_N25
\reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~14_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(2));

-- Location: LCCOMB_X1_Y45_N18
\reg_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~3_combout\ = (\slt_a~input_o\ & (((reg_a(2))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[2]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \slt_a~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(2),
	combout => \reg_a~3_combout\);

-- Location: LCCOMB_X2_Y45_N24
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\reg_a~4_combout\ $ (\Add0~15_combout\ $ (!\Add0~13\)))) # (GND)
-- \Add0~17\ = CARRY((\reg_a~4_combout\ & ((\Add0~15_combout\) # (!\Add0~13\))) # (!\reg_a~4_combout\ & (\Add0~15_combout\ & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_a~4_combout\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X1_Y44_N0
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\slt_a~input_o\ & ((\Add0~16_combout\))) # (!\slt_a~input_o\ & (\input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datac => \input[3]~input_o\,
	datad => \Add0~16_combout\,
	combout => \Add0~18_combout\);

-- Location: FF_X1_Y44_N1
\reg_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~18_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(3));

-- Location: LCCOMB_X1_Y45_N12
\reg_a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~4_combout\ = (\slt_a~input_o\ & (((reg_a(3))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[3]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \slt_a~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(3),
	combout => \reg_a~4_combout\);

-- Location: LCCOMB_X2_Y45_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\reg_a~5_combout\ & ((\Add0~19_combout\ & (\Add0~17\ & VCC)) # (!\Add0~19_combout\ & (!\Add0~17\)))) # (!\reg_a~5_combout\ & ((\Add0~19_combout\ & (!\Add0~17\)) # (!\Add0~19_combout\ & ((\Add0~17\) # (GND)))))
-- \Add0~21\ = CARRY((\reg_a~5_combout\ & (!\Add0~19_combout\ & !\Add0~17\)) # (!\reg_a~5_combout\ & ((!\Add0~17\) # (!\Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_a~5_combout\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X1_Y44_N18
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\slt_a~input_o\ & ((\Add0~20_combout\))) # (!\slt_a~input_o\ & (\input[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \input[4]~input_o\,
	datad => \Add0~20_combout\,
	combout => \Add0~22_combout\);

-- Location: FF_X1_Y44_N19
\reg_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~22_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(4));

-- Location: LCCOMB_X1_Y45_N16
\reg_a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~5_combout\ = (\slt_a~input_o\ & (((reg_a(4))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[4]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[4]~input_o\,
	datab => \slt_a~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(4),
	combout => \reg_a~5_combout\);

-- Location: LCCOMB_X2_Y45_N28
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\reg_a~6_combout\ $ (\Add0~23_combout\ $ (!\Add0~21\)))) # (GND)
-- \Add0~25\ = CARRY((\reg_a~6_combout\ & ((\Add0~23_combout\) # (!\Add0~21\))) # (!\reg_a~6_combout\ & (\Add0~23_combout\ & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_a~6_combout\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X1_Y44_N8
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\slt_a~input_o\ & ((\Add0~24_combout\))) # (!\slt_a~input_o\ & (\input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[5]~input_o\,
	datac => \Add0~24_combout\,
	datad => \slt_a~input_o\,
	combout => \Add0~26_combout\);

-- Location: FF_X1_Y44_N9
\reg_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~26_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(5));

-- Location: LCCOMB_X1_Y45_N10
\reg_a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~6_combout\ = (\slt_a~input_o\ & (((reg_a(5))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[5]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \input[5]~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(5),
	combout => \reg_a~6_combout\);

-- Location: LCCOMB_X2_Y45_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\Add0~27_combout\ & ((\reg_a~7_combout\ & (\Add0~25\ & VCC)) # (!\reg_a~7_combout\ & (!\Add0~25\)))) # (!\Add0~27_combout\ & ((\reg_a~7_combout\ & (!\Add0~25\)) # (!\reg_a~7_combout\ & ((\Add0~25\) # (GND)))))
-- \Add0~29\ = CARRY((\Add0~27_combout\ & (!\reg_a~7_combout\ & !\Add0~25\)) # (!\Add0~27_combout\ & ((!\Add0~25\) # (!\reg_a~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \reg_a~7_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X1_Y44_N10
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\slt_a~input_o\ & ((\Add0~28_combout\))) # (!\slt_a~input_o\ & (\input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datac => \input[6]~input_o\,
	datad => \Add0~28_combout\,
	combout => \Add0~30_combout\);

-- Location: FF_X1_Y44_N11
\reg_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~30_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(6));

-- Location: LCCOMB_X1_Y45_N20
\reg_a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~7_combout\ = (\ld_a~input_o\ & ((\slt_a~input_o\ & ((reg_a(6)))) # (!\slt_a~input_o\ & (\input[6]~input_o\)))) # (!\ld_a~input_o\ & (((reg_a(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_a~input_o\,
	datab => \input[6]~input_o\,
	datac => reg_a(6),
	datad => \slt_a~input_o\,
	combout => \reg_a~7_combout\);

-- Location: LCCOMB_X2_Y44_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\reg_a~8_combout\ $ (\Add0~31_combout\ $ (!\Add0~29\)))) # (GND)
-- \Add0~33\ = CARRY((\reg_a~8_combout\ & ((\Add0~31_combout\) # (!\Add0~29\))) # (!\reg_a~8_combout\ & (\Add0~31_combout\ & !\Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_a~8_combout\,
	datab => \Add0~31_combout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X1_Y44_N4
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\slt_a~input_o\ & (\Add0~32_combout\)) # (!\slt_a~input_o\ & ((\input[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \Add0~32_combout\,
	datad => \input[7]~input_o\,
	combout => \Add0~34_combout\);

-- Location: FF_X1_Y44_N5
\reg_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~34_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(7));

-- Location: LCCOMB_X3_Y44_N2
\reg_a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~8_combout\ = (\slt_a~input_o\ & (((reg_a(7))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[7]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \ld_a~input_o\,
	datac => \input[7]~input_o\,
	datad => reg_a(7),
	combout => \reg_a~8_combout\);

-- Location: LCCOMB_X2_Y44_N2
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\reg_a~9_combout\ & ((\Add0~35_combout\ & (\Add0~33\ & VCC)) # (!\Add0~35_combout\ & (!\Add0~33\)))) # (!\reg_a~9_combout\ & ((\Add0~35_combout\ & (!\Add0~33\)) # (!\Add0~35_combout\ & ((\Add0~33\) # (GND)))))
-- \Add0~37\ = CARRY((\reg_a~9_combout\ & (!\Add0~35_combout\ & !\Add0~33\)) # (!\reg_a~9_combout\ & ((!\Add0~33\) # (!\Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_a~9_combout\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X1_Y44_N20
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\slt_a~input_o\ & ((\Add0~36_combout\))) # (!\slt_a~input_o\ & (\input[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[8]~input_o\,
	datac => \Add0~36_combout\,
	datad => \slt_a~input_o\,
	combout => \Add0~38_combout\);

-- Location: FF_X1_Y44_N21
\reg_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~38_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(8));

-- Location: LCCOMB_X3_Y44_N6
\reg_a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~9_combout\ = (\slt_a~input_o\ & (reg_a(8))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & ((\input[8]~input_o\))) # (!\ld_a~input_o\ & (reg_a(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => reg_a(8),
	datac => \ld_a~input_o\,
	datad => \input[8]~input_o\,
	combout => \reg_a~9_combout\);

-- Location: LCCOMB_X2_Y44_N4
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\Add0~39_combout\ $ (\reg_a~10_combout\ $ (!\Add0~37\)))) # (GND)
-- \Add0~41\ = CARRY((\Add0~39_combout\ & ((\reg_a~10_combout\) # (!\Add0~37\))) # (!\Add0~39_combout\ & (\reg_a~10_combout\ & !\Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \reg_a~10_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X1_Y44_N30
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\slt_a~input_o\ & ((\Add0~40_combout\))) # (!\slt_a~input_o\ & (\input[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[9]~input_o\,
	datac => \Add0~40_combout\,
	datad => \slt_a~input_o\,
	combout => \Add0~42_combout\);

-- Location: FF_X1_Y44_N31
\reg_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~42_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(9));

-- Location: IOIBUF_X0_Y44_N15
\input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: LCCOMB_X4_Y44_N20
\reg_b~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~11_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[11]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[11]~input_o\,
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(11),
	combout => \reg_b~11_combout\);

-- Location: LCCOMB_X4_Y44_N24
\reg_b[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b[11]~feeder_combout\ = \reg_b~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b~11_combout\,
	combout => \reg_b[11]~feeder_combout\);

-- Location: FF_X4_Y44_N25
\reg_b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_b[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(11));

-- Location: LCCOMB_X4_Y44_N6
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[11]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \ld_b~input_o\,
	datac => \input[11]~input_o\,
	datad => reg_b(11),
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X3_Y44_N14
\reg_a~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~12_combout\ = (\slt_a~input_o\ & (((reg_a(11))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[11]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \input[11]~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(11),
	combout => \reg_a~12_combout\);

-- Location: IOIBUF_X0_Y42_N8
\input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: LCCOMB_X3_Y44_N30
\reg_b~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~10_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & ((\input[10]~input_o\))) # (!\ld_b~input_o\ & (reg_b(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_b(10),
	datab => \ld_b~input_o\,
	datac => \input[10]~input_o\,
	datad => \clk~input_o\,
	combout => \reg_b~10_combout\);

-- Location: FF_X3_Y44_N11
\reg_b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_b~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(10));

-- Location: LCCOMB_X3_Y44_N10
\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & ((\input[10]~input_o\))) # (!\ld_b~input_o\ & (reg_b(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \process_0~1_combout\,
	datac => reg_b(10),
	datad => \input[10]~input_o\,
	combout => \Add0~43_combout\);

-- Location: LCCOMB_X2_Y44_N6
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\reg_a~11_combout\ & ((\Add0~43_combout\ & (\Add0~41\ & VCC)) # (!\Add0~43_combout\ & (!\Add0~41\)))) # (!\reg_a~11_combout\ & ((\Add0~43_combout\ & (!\Add0~41\)) # (!\Add0~43_combout\ & ((\Add0~41\) # (GND)))))
-- \Add0~45\ = CARRY((\reg_a~11_combout\ & (!\Add0~43_combout\ & !\Add0~41\)) # (!\reg_a~11_combout\ & ((!\Add0~41\) # (!\Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_a~11_combout\,
	datab => \Add0~43_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X2_Y44_N28
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\slt_a~input_o\ & ((\Add0~44_combout\))) # (!\slt_a~input_o\ & (\input[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datac => \input[10]~input_o\,
	datad => \Add0~44_combout\,
	combout => \Add0~46_combout\);

-- Location: FF_X2_Y44_N29
\reg_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~46_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(10));

-- Location: LCCOMB_X3_Y44_N20
\reg_a~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~11_combout\ = (\slt_a~input_o\ & (((reg_a(10))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & ((\input[10]~input_o\))) # (!\ld_a~input_o\ & (reg_a(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \ld_a~input_o\,
	datac => reg_a(10),
	datad => \input[10]~input_o\,
	combout => \reg_a~11_combout\);

-- Location: LCCOMB_X2_Y44_N8
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\Add0~47_combout\ $ (\reg_a~12_combout\ $ (!\Add0~45\)))) # (GND)
-- \Add0~49\ = CARRY((\Add0~47_combout\ & ((\reg_a~12_combout\) # (!\Add0~45\))) # (!\Add0~47_combout\ & (\reg_a~12_combout\ & !\Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \reg_a~12_combout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X2_Y44_N30
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\slt_a~input_o\ & ((\Add0~48_combout\))) # (!\slt_a~input_o\ & (\input[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[11]~input_o\,
	datac => \slt_a~input_o\,
	datad => \Add0~48_combout\,
	combout => \Add0~50_combout\);

-- Location: FF_X2_Y44_N31
\reg_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~50_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(11));

-- Location: LCCOMB_X1_Y44_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!reg_a(9) & (!reg_a(8) & (!reg_a(11) & !reg_a(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_a(9),
	datab => reg_a(8),
	datac => reg_a(11),
	datad => reg_a(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y44_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!reg_a(0) & (!reg_a(2) & (!reg_a(1) & !reg_a(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_a(0),
	datab => reg_a(2),
	datac => reg_a(1),
	datad => reg_a(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y44_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!reg_a(6) & (!reg_a(7) & (!reg_a(5) & !reg_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_a(6),
	datab => reg_a(7),
	datac => reg_a(5),
	datad => reg_a(4),
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X0_Y52_N1
\input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: LCCOMB_X3_Y45_N8
\reg_b~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~15_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[15]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[15]~input_o\,
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(15),
	combout => \reg_b~15_combout\);

-- Location: LCCOMB_X3_Y45_N16
\reg_b[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b[15]~feeder_combout\ = \reg_b~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_b~15_combout\,
	combout => \reg_b[15]~feeder_combout\);

-- Location: FF_X3_Y45_N17
\reg_b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_b[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(15));

-- Location: LCCOMB_X3_Y45_N30
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[15]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \ld_b~input_o\,
	datac => \input[15]~input_o\,
	datad => reg_b(15),
	combout => \Add0~63_combout\);

-- Location: LCCOMB_X3_Y44_N22
\reg_a~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~16_combout\ = (\ld_a~input_o\ & ((\slt_a~input_o\ & ((reg_a(15)))) # (!\slt_a~input_o\ & (\input[15]~input_o\)))) # (!\ld_a~input_o\ & (((reg_a(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[15]~input_o\,
	datab => \ld_a~input_o\,
	datac => reg_a(15),
	datad => \slt_a~input_o\,
	combout => \reg_a~16_combout\);

-- Location: IOIBUF_X0_Y44_N8
\input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: LCCOMB_X4_Y44_N18
\reg_b~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~14_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[14]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(14),
	combout => \reg_b~14_combout\);

-- Location: LCCOMB_X4_Y44_N28
\reg_b[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b[14]~feeder_combout\ = \reg_b~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b~14_combout\,
	combout => \reg_b[14]~feeder_combout\);

-- Location: FF_X4_Y44_N29
\reg_b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_b[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(14));

-- Location: LCCOMB_X4_Y44_N26
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[14]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \ld_b~input_o\,
	datac => \input[14]~input_o\,
	datad => reg_b(14),
	combout => \Add0~59_combout\);

-- Location: IOIBUF_X0_Y44_N22
\input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: LCCOMB_X4_Y44_N12
\reg_b~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~13_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[13]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~input_o\,
	datab => \input[13]~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(13),
	combout => \reg_b~13_combout\);

-- Location: LCCOMB_X4_Y44_N0
\reg_b[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b[13]~feeder_combout\ = \reg_b~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_b~13_combout\,
	combout => \reg_b[13]~feeder_combout\);

-- Location: FF_X4_Y44_N1
\reg_b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_b[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(13));

-- Location: LCCOMB_X4_Y44_N10
\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[13]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \ld_b~input_o\,
	datac => \input[13]~input_o\,
	datad => reg_b(13),
	combout => \Add0~55_combout\);

-- Location: IOIBUF_X0_Y53_N1
\input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: LCCOMB_X4_Y44_N14
\reg_b~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b~12_combout\ = (!\clk~input_o\ & ((\ld_b~input_o\ & (\input[12]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[12]~input_o\,
	datab => \ld_b~input_o\,
	datac => \clk~input_o\,
	datad => reg_b(12),
	combout => \reg_b~12_combout\);

-- Location: LCCOMB_X4_Y44_N16
\reg_b[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b[12]~feeder_combout\ = \reg_b~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b~12_combout\,
	combout => \reg_b[12]~feeder_combout\);

-- Location: FF_X4_Y44_N17
\reg_b[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_b[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_b(12));

-- Location: LCCOMB_X4_Y44_N22
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = \process_0~1_combout\ $ (((\ld_b~input_o\ & (\input[12]~input_o\)) # (!\ld_b~input_o\ & ((reg_b(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[12]~input_o\,
	datab => \ld_b~input_o\,
	datac => \process_0~1_combout\,
	datad => reg_b(12),
	combout => \Add0~51_combout\);

-- Location: LCCOMB_X2_Y44_N10
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\Add0~51_combout\ & ((\reg_a~13_combout\ & (\Add0~49\ & VCC)) # (!\reg_a~13_combout\ & (!\Add0~49\)))) # (!\Add0~51_combout\ & ((\reg_a~13_combout\ & (!\Add0~49\)) # (!\reg_a~13_combout\ & ((\Add0~49\) # (GND)))))
-- \Add0~53\ = CARRY((\Add0~51_combout\ & (!\reg_a~13_combout\ & !\Add0~49\)) # (!\Add0~51_combout\ & ((!\Add0~49\) # (!\reg_a~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \reg_a~13_combout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X2_Y44_N20
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\slt_a~input_o\ & (\Add0~52_combout\)) # (!\slt_a~input_o\ & ((\input[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \input[12]~input_o\,
	datac => \slt_a~input_o\,
	combout => \Add0~54_combout\);

-- Location: FF_X2_Y44_N21
\reg_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~54_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(12));

-- Location: LCCOMB_X3_Y44_N16
\reg_a~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~13_combout\ = (\slt_a~input_o\ & (((reg_a(12))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[12]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \input[12]~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(12),
	combout => \reg_a~13_combout\);

-- Location: LCCOMB_X2_Y44_N12
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\Add0~55_combout\ $ (\reg_a~14_combout\ $ (!\Add0~53\)))) # (GND)
-- \Add0~57\ = CARRY((\Add0~55_combout\ & ((\reg_a~14_combout\) # (!\Add0~53\))) # (!\Add0~55_combout\ & (\reg_a~14_combout\ & !\Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datab => \reg_a~14_combout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X2_Y44_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\slt_a~input_o\ & (\Add0~56_combout\)) # (!\slt_a~input_o\ & ((\input[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \input[13]~input_o\,
	datac => \slt_a~input_o\,
	combout => \Add0~58_combout\);

-- Location: FF_X2_Y44_N27
\reg_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~58_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(13));

-- Location: LCCOMB_X3_Y44_N18
\reg_a~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~14_combout\ = (\slt_a~input_o\ & (((reg_a(13))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[13]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \input[13]~input_o\,
	datac => \ld_a~input_o\,
	datad => reg_a(13),
	combout => \reg_a~14_combout\);

-- Location: LCCOMB_X2_Y44_N14
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\Add0~59_combout\ & ((\reg_a~15_combout\ & (\Add0~57\ & VCC)) # (!\reg_a~15_combout\ & (!\Add0~57\)))) # (!\Add0~59_combout\ & ((\reg_a~15_combout\ & (!\Add0~57\)) # (!\reg_a~15_combout\ & ((\Add0~57\) # (GND)))))
-- \Add0~61\ = CARRY((\Add0~59_combout\ & (!\reg_a~15_combout\ & !\Add0~57\)) # (!\Add0~59_combout\ & ((!\Add0~57\) # (!\reg_a~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \reg_a~15_combout\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X2_Y44_N18
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\slt_a~input_o\ & (\Add0~60_combout\)) # (!\slt_a~input_o\ & ((\input[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datac => \Add0~60_combout\,
	datad => \input[14]~input_o\,
	combout => \Add0~62_combout\);

-- Location: FF_X2_Y44_N19
\reg_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~62_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(14));

-- Location: LCCOMB_X3_Y44_N8
\reg_a~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_a~15_combout\ = (\slt_a~input_o\ & (((reg_a(14))))) # (!\slt_a~input_o\ & ((\ld_a~input_o\ & (\input[14]~input_o\)) # (!\ld_a~input_o\ & ((reg_a(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datab => \ld_a~input_o\,
	datac => \input[14]~input_o\,
	datad => reg_a(14),
	combout => \reg_a~15_combout\);

-- Location: LCCOMB_X2_Y44_N16
\Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = \Add0~63_combout\ $ (\Add0~61\ $ (!\reg_a~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datad => \reg_a~16_combout\,
	cin => \Add0~61\,
	combout => \Add0~64_combout\);

-- Location: LCCOMB_X2_Y44_N24
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\slt_a~input_o\ & ((\Add0~64_combout\))) # (!\slt_a~input_o\ & (\input[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt_a~input_o\,
	datac => \input[15]~input_o\,
	datad => \Add0~64_combout\,
	combout => \Add0~66_combout\);

-- Location: FF_X2_Y44_N25
\reg_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~66_combout\,
	sclr => \clk~input_o\,
	ena => \reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_a(15));

-- Location: LCCOMB_X1_Y44_N2
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!reg_a(15) & (!reg_a(13) & (!reg_a(12) & !reg_a(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_a(15),
	datab => reg_a(13),
	datac => reg_a(12),
	datad => reg_a(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X1_Y44_N6
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y44_N22
\a_lt_z$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_lt_z$latch~combout\ = (\Equal0~4_combout\ & (\a_lt_z$latch~combout\)) # (!\Equal0~4_combout\ & ((reg_a(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_lt_z$latch~combout\,
	datac => \Equal0~4_combout\,
	datad => reg_a(15),
	combout => \a_lt_z$latch~combout\);

-- Location: IOIBUF_X0_Y34_N22
\cnt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt,
	o => \cnt~input_o\);

-- Location: LCCOMB_X1_Y36_N14
\count[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~0_combout\ = (\clk~input_o\) # (\cnt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \cnt~input_o\,
	combout => \count[15]~0_combout\);

-- Location: FF_X1_Y36_N17
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X1_Y36_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count(0) $ (VCC)
-- \Add2~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X2_Y36_N12
\quotient[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[0]~reg0feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \quotient[0]~reg0feeder_combout\);

-- Location: FF_X2_Y36_N13
\quotient[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[0]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[0]~reg0_q\);

-- Location: IOIBUF_X0_Y30_N8
\ud~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ud,
	o => \ud~input_o\);

-- Location: LCCOMB_X1_Y34_N0
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\ud~input_o\ & \cnt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ud~input_o\,
	datad => \cnt~input_o\,
	combout => \process_0~2_combout\);

-- Location: FF_X1_Y36_N19
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X1_Y36_N18
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\process_0~2_combout\ & ((count(1) & (!\Add2~1\)) # (!count(1) & ((\Add2~1\) # (GND))))) # (!\process_0~2_combout\ & ((count(1) & (\Add2~1\ & VCC)) # (!count(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\process_0~2_combout\ & ((!\Add2~1\) # (!count(1)))) # (!\process_0~2_combout\ & (!count(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => count(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X1_Y36_N12
\quotient[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[1]~reg0feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \quotient[1]~reg0feeder_combout\);

-- Location: FF_X1_Y36_N13
\quotient[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[1]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[1]~reg0_q\);

-- Location: FF_X1_Y36_N21
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y36_N20
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\process_0~2_combout\ $ (count(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\process_0~2_combout\ & (count(2) & !\Add2~3\)) # (!\process_0~2_combout\ & ((count(2)) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => count(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X1_Y36_N2
\quotient[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[2]~reg0feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \quotient[2]~reg0feeder_combout\);

-- Location: FF_X1_Y36_N3
\quotient[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[2]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[2]~reg0_q\);

-- Location: FF_X1_Y36_N23
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y36_N22
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (count(3) & ((\process_0~2_combout\ & (!\Add2~5\)) # (!\process_0~2_combout\ & (\Add2~5\ & VCC)))) # (!count(3) & ((\process_0~2_combout\ & ((\Add2~5\) # (GND))) # (!\process_0~2_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((count(3) & (\process_0~2_combout\ & !\Add2~5\)) # (!count(3) & ((\process_0~2_combout\) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X1_Y36_N8
\quotient[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[3]~reg0feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~6_combout\,
	combout => \quotient[3]~reg0feeder_combout\);

-- Location: FF_X1_Y36_N9
\quotient[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[3]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[3]~reg0_q\);

-- Location: FF_X1_Y36_N25
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X1_Y36_N24
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((count(4) $ (\process_0~2_combout\ $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((count(4) & ((!\Add2~7\) # (!\process_0~2_combout\))) # (!count(4) & (!\process_0~2_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X1_Y36_N6
\quotient[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[4]~reg0feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~8_combout\,
	combout => \quotient[4]~reg0feeder_combout\);

-- Location: FF_X1_Y36_N7
\quotient[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[4]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[4]~reg0_q\);

-- Location: FF_X1_Y36_N27
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X1_Y36_N26
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (count(5) & ((\process_0~2_combout\ & (!\Add2~9\)) # (!\process_0~2_combout\ & (\Add2~9\ & VCC)))) # (!count(5) & ((\process_0~2_combout\ & ((\Add2~9\) # (GND))) # (!\process_0~2_combout\ & (!\Add2~9\))))
-- \Add2~11\ = CARRY((count(5) & (\process_0~2_combout\ & !\Add2~9\)) # (!count(5) & ((\process_0~2_combout\) # (!\Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X1_Y36_N0
\quotient[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[5]~reg0feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~10_combout\,
	combout => \quotient[5]~reg0feeder_combout\);

-- Location: FF_X1_Y36_N1
\quotient[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[5]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[5]~reg0_q\);

-- Location: FF_X1_Y36_N29
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X1_Y36_N28
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((count(6) $ (\process_0~2_combout\ $ (\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((count(6) & ((!\Add2~11\) # (!\process_0~2_combout\))) # (!count(6) & (!\process_0~2_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X1_Y36_N10
\quotient[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[6]~reg0feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~12_combout\,
	combout => \quotient[6]~reg0feeder_combout\);

-- Location: FF_X1_Y36_N11
\quotient[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[6]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[6]~reg0_q\);

-- Location: FF_X1_Y36_N31
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X1_Y36_N30
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (count(7) & ((\process_0~2_combout\ & (!\Add2~13\)) # (!\process_0~2_combout\ & (\Add2~13\ & VCC)))) # (!count(7) & ((\process_0~2_combout\ & ((\Add2~13\) # (GND))) # (!\process_0~2_combout\ & (!\Add2~13\))))
-- \Add2~15\ = CARRY((count(7) & (\process_0~2_combout\ & !\Add2~13\)) # (!count(7) & ((\process_0~2_combout\) # (!\Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X1_Y36_N4
\quotient[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[7]~reg0feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \quotient[7]~reg0feeder_combout\);

-- Location: FF_X1_Y36_N5
\quotient[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[7]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[7]~reg0_q\);

-- Location: FF_X1_Y35_N1
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X1_Y35_N0
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\process_0~2_combout\ $ (count(8) $ (\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\process_0~2_combout\ & (count(8) & !\Add2~15\)) # (!\process_0~2_combout\ & ((count(8)) # (!\Add2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => count(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X2_Y35_N0
\quotient[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[8]~reg0feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	combout => \quotient[8]~reg0feeder_combout\);

-- Location: FF_X2_Y35_N1
\quotient[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[8]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[8]~reg0_q\);

-- Location: FF_X1_Y35_N3
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X1_Y35_N2
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (count(9) & ((\process_0~2_combout\ & (!\Add2~17\)) # (!\process_0~2_combout\ & (\Add2~17\ & VCC)))) # (!count(9) & ((\process_0~2_combout\ & ((\Add2~17\) # (GND))) # (!\process_0~2_combout\ & (!\Add2~17\))))
-- \Add2~19\ = CARRY((count(9) & (\process_0~2_combout\ & !\Add2~17\)) # (!count(9) & ((\process_0~2_combout\) # (!\Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X1_Y35_N26
\quotient[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[9]~reg0feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~18_combout\,
	combout => \quotient[9]~reg0feeder_combout\);

-- Location: FF_X1_Y35_N27
\quotient[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[9]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[9]~reg0_q\);

-- Location: FF_X1_Y35_N5
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X1_Y35_N4
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\process_0~2_combout\ $ (count(10) $ (\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\process_0~2_combout\ & (count(10) & !\Add2~19\)) # (!\process_0~2_combout\ & ((count(10)) # (!\Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => count(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X2_Y35_N6
\quotient[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[10]~reg0feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~20_combout\,
	combout => \quotient[10]~reg0feeder_combout\);

-- Location: FF_X2_Y35_N7
\quotient[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[10]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[10]~reg0_q\);

-- Location: FF_X1_Y35_N7
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X1_Y35_N6
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\process_0~2_combout\ & ((count(11) & (!\Add2~21\)) # (!count(11) & ((\Add2~21\) # (GND))))) # (!\process_0~2_combout\ & ((count(11) & (\Add2~21\ & VCC)) # (!count(11) & (!\Add2~21\))))
-- \Add2~23\ = CARRY((\process_0~2_combout\ & ((!\Add2~21\) # (!count(11)))) # (!\process_0~2_combout\ & (!count(11) & !\Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => count(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X1_Y35_N24
\quotient[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[11]~reg0feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~22_combout\,
	combout => \quotient[11]~reg0feeder_combout\);

-- Location: FF_X1_Y35_N25
\quotient[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[11]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[11]~reg0_q\);

-- Location: FF_X1_Y35_N9
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X1_Y35_N8
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((count(12) $ (\process_0~2_combout\ $ (\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((count(12) & ((!\Add2~23\) # (!\process_0~2_combout\))) # (!count(12) & (!\process_0~2_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X1_Y35_N30
\quotient[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[12]~reg0feeder_combout\ = \Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	combout => \quotient[12]~reg0feeder_combout\);

-- Location: FF_X1_Y35_N31
\quotient[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[12]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[12]~reg0_q\);

-- Location: FF_X1_Y35_N11
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X1_Y35_N10
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\process_0~2_combout\ & ((count(13) & (!\Add2~25\)) # (!count(13) & ((\Add2~25\) # (GND))))) # (!\process_0~2_combout\ & ((count(13) & (\Add2~25\ & VCC)) # (!count(13) & (!\Add2~25\))))
-- \Add2~27\ = CARRY((\process_0~2_combout\ & ((!\Add2~25\) # (!count(13)))) # (!\process_0~2_combout\ & (!count(13) & !\Add2~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => count(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X1_Y35_N20
\quotient[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[13]~reg0feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~26_combout\,
	combout => \quotient[13]~reg0feeder_combout\);

-- Location: FF_X1_Y35_N21
\quotient[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[13]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[13]~reg0_q\);

-- Location: FF_X1_Y35_N13
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X1_Y35_N12
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((\process_0~2_combout\ $ (count(14) $ (\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((\process_0~2_combout\ & (count(14) & !\Add2~27\)) # (!\process_0~2_combout\ & ((count(14)) # (!\Add2~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => count(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X1_Y35_N22
\quotient[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[14]~reg0feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~28_combout\,
	combout => \quotient[14]~reg0feeder_combout\);

-- Location: FF_X1_Y35_N23
\quotient[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[14]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[14]~reg0_q\);

-- Location: FF_X1_Y35_N15
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X1_Y35_N14
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (count(15) & ((\process_0~2_combout\ & (!\Add2~29\)) # (!\process_0~2_combout\ & (\Add2~29\ & VCC)))) # (!count(15) & ((\process_0~2_combout\ & ((\Add2~29\) # (GND))) # (!\process_0~2_combout\ & (!\Add2~29\))))
-- \Add2~31\ = CARRY((count(15) & (\process_0~2_combout\ & !\Add2~29\)) # (!count(15) & ((\process_0~2_combout\) # (!\Add2~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X1_Y35_N28
\quotient[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[15]~reg0feeder_combout\ = \Add2~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~30_combout\,
	combout => \quotient[15]~reg0feeder_combout\);

-- Location: FF_X1_Y35_N29
\quotient[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[15]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[15]~reg0_q\);

-- Location: FF_X1_Y35_N17
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	sclr => \clk~input_o\,
	ena => \count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X1_Y35_N16
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = \process_0~2_combout\ $ (\Add2~31\ $ (count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datad => count(16),
	cin => \Add2~31\,
	combout => \Add2~32_combout\);

-- Location: LCCOMB_X1_Y35_N18
\quotient[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient[16]~reg0feeder_combout\ = \Add2~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~32_combout\,
	combout => \quotient[16]~reg0feeder_combout\);

-- Location: FF_X1_Y35_N19
\quotient[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quotient[16]~reg0feeder_combout\,
	ena => \cnt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[16]~reg0_q\);

-- Location: IOIBUF_X115_Y37_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

ww_a_lt_z <= \a_lt_z~output_o\;

ww_a_e_z <= \a_e_z~output_o\;

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

ww_quotient(16) <= \quotient[16]~output_o\;

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

