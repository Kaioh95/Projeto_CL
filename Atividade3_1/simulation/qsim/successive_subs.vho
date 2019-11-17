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

-- DATE "11/16/2019 23:35:31"

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
	quotient : BUFFER std_logic_vector(15 DOWNTO 0);
	rest : BUFFER std_logic_vector(15 DOWNTO 0);
	sa_e_z : BUFFER std_logic;
	sa_lt_z : BUFFER std_logic;
	sld_a : BUFFER std_logic;
	slb_b : BUFFER std_logic;
	sslt_a : BUFFER std_logic;
	sclr : BUFFER std_logic;
	scnt : BUFFER std_logic;
	sud : BUFFER std_logic;
	ssub_add : BUFFER std_logic
	);
END successive_subs;

-- Design Ports Information
-- quotient[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[8]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[9]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[10]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[11]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[12]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[13]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[14]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[15]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[8]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[10]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[12]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[14]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest[15]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sa_e_z	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sa_lt_z	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sld_a	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slb_b	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sslt_a	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclr	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scnt	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sud	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssub_add	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_quotient : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rest : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sa_e_z : std_logic;
SIGNAL ww_sa_lt_z : std_logic;
SIGNAL ww_sld_a : std_logic;
SIGNAL ww_slb_b : std_logic;
SIGNAL ww_sslt_a : std_logic;
SIGNAL ww_sclr : std_logic;
SIGNAL ww_scnt : std_logic;
SIGNAL ww_sud : std_logic;
SIGNAL ww_ssub_add : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \sa_e_z~output_o\ : std_logic;
SIGNAL \sa_lt_z~output_o\ : std_logic;
SIGNAL \sld_a~output_o\ : std_logic;
SIGNAL \slb_b~output_o\ : std_logic;
SIGNAL \sslt_a~output_o\ : std_logic;
SIGNAL \sclr~output_o\ : std_logic;
SIGNAL \scnt~output_o\ : std_logic;
SIGNAL \sud~output_o\ : std_logic;
SIGNAL \ssub_add~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i1|quotient[0]~16_combout\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \bt~input_o\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \i2|Equal0~1_combout\ : std_logic;
SIGNAL \i2|ld_a~7_combout\ : std_logic;
SIGNAL \i2|ld_a~8_combout\ : std_logic;
SIGNAL \i2|ld_a~1_combout\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \i1|reg_a~5_combout\ : std_logic;
SIGNAL \i2|ld_b~8_combout\ : std_logic;
SIGNAL \i2|Equal0~2_combout\ : std_logic;
SIGNAL \i2|ld_b~1_combout\ : std_logic;
SIGNAL \i2|ld_b~0_combout\ : std_logic;
SIGNAL \i2|ld_b~7_combout\ : std_logic;
SIGNAL \i2|ld_b~_emulated_q\ : std_logic;
SIGNAL \i2|ld_b~2_combout\ : std_logic;
SIGNAL \i1|reg_b~6_combout\ : std_logic;
SIGNAL \i1|Add0~18_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \i1|reg_b~5_combout\ : std_logic;
SIGNAL \i1|Add0~14_combout\ : std_logic;
SIGNAL \i1|reg_b~4_combout\ : std_logic;
SIGNAL \i1|Add0~10_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \i1|reg_b~3_combout\ : std_logic;
SIGNAL \i1|reg_b~1_combout\ : std_logic;
SIGNAL \i1|Add0~6_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \i1|reg_b~2_combout\ : std_logic;
SIGNAL \i1|reg_b~0_combout\ : std_logic;
SIGNAL \i1|Add0~0_combout\ : std_logic;
SIGNAL \i1|process_0~1_combout\ : std_logic;
SIGNAL \i1|Add0~2_cout\ : std_logic;
SIGNAL \i1|Add0~3_combout\ : std_logic;
SIGNAL \i1|Add0~5_combout\ : std_logic;
SIGNAL \i1|reg_a[15]~1_combout\ : std_logic;
SIGNAL \i1|reg_a~0_combout\ : std_logic;
SIGNAL \i1|Add0~4\ : std_logic;
SIGNAL \i1|Add0~7_combout\ : std_logic;
SIGNAL \i1|Add0~9_combout\ : std_logic;
SIGNAL \i1|reg_a~2_combout\ : std_logic;
SIGNAL \i1|Add0~8\ : std_logic;
SIGNAL \i1|Add0~12\ : std_logic;
SIGNAL \i1|Add0~15_combout\ : std_logic;
SIGNAL \i1|Add0~17_combout\ : std_logic;
SIGNAL \i1|reg_a~4_combout\ : std_logic;
SIGNAL \i1|Add0~16\ : std_logic;
SIGNAL \i1|Add0~19_combout\ : std_logic;
SIGNAL \i1|Add0~21_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \i1|reg_a~7_combout\ : std_logic;
SIGNAL \i1|reg_b~8_combout\ : std_logic;
SIGNAL \i1|Add0~26_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \i1|reg_b~7_combout\ : std_logic;
SIGNAL \i1|Add0~22_combout\ : std_logic;
SIGNAL \i1|Add0~20\ : std_logic;
SIGNAL \i1|Add0~23_combout\ : std_logic;
SIGNAL \i1|Add0~25_combout\ : std_logic;
SIGNAL \i1|reg_a~6_combout\ : std_logic;
SIGNAL \i1|Add0~24\ : std_logic;
SIGNAL \i1|Add0~27_combout\ : std_logic;
SIGNAL \i1|Add0~29_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \i1|reg_a~8_combout\ : std_logic;
SIGNAL \i1|reg_b~9_combout\ : std_logic;
SIGNAL \i1|Add0~30_combout\ : std_logic;
SIGNAL \i1|Add0~28\ : std_logic;
SIGNAL \i1|Add0~31_combout\ : std_logic;
SIGNAL \i1|Add0~33_combout\ : std_logic;
SIGNAL \i1|Equal0~1_combout\ : std_logic;
SIGNAL \i1|process_0~3_combout\ : std_logic;
SIGNAL \i1|a_lt_z~combout\ : std_logic;
SIGNAL \i2|Mux3~0_combout\ : std_logic;
SIGNAL \i2|sub_add~0_combout\ : std_logic;
SIGNAL \i2|sub_add~q\ : std_logic;
SIGNAL \i1|process_0~2_combout\ : std_logic;
SIGNAL \i1|reg_b~16_combout\ : std_logic;
SIGNAL \i1|Add0~58_combout\ : std_logic;
SIGNAL \i1|reg_a~15_combout\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \i1|reg_b~15_combout\ : std_logic;
SIGNAL \i1|Add0~54_combout\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \i1|reg_b~14_combout\ : std_logic;
SIGNAL \i1|Add0~50_combout\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \i1|reg_b~13_combout\ : std_logic;
SIGNAL \i1|Add0~46_combout\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \i1|reg_b~12_combout\ : std_logic;
SIGNAL \i1|Add0~42_combout\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \i1|reg_b~11_combout\ : std_logic;
SIGNAL \i1|Add0~38_combout\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \i1|reg_b~10_combout\ : std_logic;
SIGNAL \i1|Add0~34_combout\ : std_logic;
SIGNAL \i1|Add0~32\ : std_logic;
SIGNAL \i1|Add0~35_combout\ : std_logic;
SIGNAL \i1|Add0~37_combout\ : std_logic;
SIGNAL \i1|reg_a~9_combout\ : std_logic;
SIGNAL \i1|Add0~36\ : std_logic;
SIGNAL \i1|Add0~39_combout\ : std_logic;
SIGNAL \i1|Add0~41_combout\ : std_logic;
SIGNAL \i1|reg_a~10_combout\ : std_logic;
SIGNAL \i1|Add0~40\ : std_logic;
SIGNAL \i1|Add0~43_combout\ : std_logic;
SIGNAL \i1|Add0~45_combout\ : std_logic;
SIGNAL \i1|reg_a~11_combout\ : std_logic;
SIGNAL \i1|Add0~44\ : std_logic;
SIGNAL \i1|Add0~47_combout\ : std_logic;
SIGNAL \i1|Add0~49_combout\ : std_logic;
SIGNAL \i1|reg_a~12_combout\ : std_logic;
SIGNAL \i1|Add0~48\ : std_logic;
SIGNAL \i1|Add0~51_combout\ : std_logic;
SIGNAL \i1|Add0~53_combout\ : std_logic;
SIGNAL \i1|reg_a~13_combout\ : std_logic;
SIGNAL \i1|Add0~52\ : std_logic;
SIGNAL \i1|Add0~55_combout\ : std_logic;
SIGNAL \i1|Add0~57_combout\ : std_logic;
SIGNAL \i1|reg_a~14_combout\ : std_logic;
SIGNAL \i1|Add0~56\ : std_logic;
SIGNAL \i1|Add0~59_combout\ : std_logic;
SIGNAL \i1|Add0~61_combout\ : std_logic;
SIGNAL \i1|Equal0~2_combout\ : std_logic;
SIGNAL \i1|Equal0~3_combout\ : std_logic;
SIGNAL \i1|Equal0~5_combout\ : std_logic;
SIGNAL \i2|ld_a~3_combout\ : std_logic;
SIGNAL \i2|ld_a~0_combout\ : std_logic;
SIGNAL \i2|Mux3~2_combout\ : std_logic;
SIGNAL \i2|ld_a~_emulated_q\ : std_logic;
SIGNAL \i2|ld_a~2_combout\ : std_logic;
SIGNAL \i1|reg_a~3_combout\ : std_logic;
SIGNAL \i1|Add0~11_combout\ : std_logic;
SIGNAL \i1|Add0~13_combout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i1|Equal0~4_combout\ : std_logic;
SIGNAL \i2|Mux1~1_combout\ : std_logic;
SIGNAL \i2|Mux1~2_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i2|slt_a~0_combout\ : std_logic;
SIGNAL \i2|slt_a~1_combout\ : std_logic;
SIGNAL \i2|Equal0~0_combout\ : std_logic;
SIGNAL \i2|slt_a~q\ : std_logic;
SIGNAL \i1|reg_a~16_combout\ : std_logic;
SIGNAL \i1|reg_b~17_combout\ : std_logic;
SIGNAL \i1|Add0~62_combout\ : std_logic;
SIGNAL \i1|Add0~60\ : std_logic;
SIGNAL \i1|Add0~63_combout\ : std_logic;
SIGNAL \i1|Add0~65_combout\ : std_logic;
SIGNAL \i2|Mux2~0_combout\ : std_logic;
SIGNAL \i2|Mux2~1_combout\ : std_logic;
SIGNAL \i2|Equal0~3_combout\ : std_logic;
SIGNAL \i2|clr~7_combout\ : std_logic;
SIGNAL \i2|clr~1_combout\ : std_logic;
SIGNAL \i2|clr~0_combout\ : std_logic;
SIGNAL \i2|clr~_emulated_q\ : std_logic;
SIGNAL \i2|clr~2_combout\ : std_logic;
SIGNAL \i2|Mux3~1_combout\ : std_logic;
SIGNAL \i2|cnt~0_combout\ : std_logic;
SIGNAL \i2|cnt~q\ : std_logic;
SIGNAL \i1|quotient[0]~18_combout\ : std_logic;
SIGNAL \i1|process_0~0_combout\ : std_logic;
SIGNAL \i1|quotient[0]~17\ : std_logic;
SIGNAL \i1|quotient[1]~19_combout\ : std_logic;
SIGNAL \i1|quotient[1]~20\ : std_logic;
SIGNAL \i1|quotient[2]~21_combout\ : std_logic;
SIGNAL \i1|quotient[2]~22\ : std_logic;
SIGNAL \i1|quotient[3]~23_combout\ : std_logic;
SIGNAL \i1|quotient[3]~24\ : std_logic;
SIGNAL \i1|quotient[4]~25_combout\ : std_logic;
SIGNAL \i1|quotient[4]~26\ : std_logic;
SIGNAL \i1|quotient[5]~27_combout\ : std_logic;
SIGNAL \i1|quotient[5]~28\ : std_logic;
SIGNAL \i1|quotient[6]~29_combout\ : std_logic;
SIGNAL \i1|quotient[6]~30\ : std_logic;
SIGNAL \i1|quotient[7]~31_combout\ : std_logic;
SIGNAL \i1|quotient[7]~32\ : std_logic;
SIGNAL \i1|quotient[8]~33_combout\ : std_logic;
SIGNAL \i1|quotient[8]~34\ : std_logic;
SIGNAL \i1|quotient[9]~35_combout\ : std_logic;
SIGNAL \i1|quotient[9]~36\ : std_logic;
SIGNAL \i1|quotient[10]~37_combout\ : std_logic;
SIGNAL \i1|quotient[10]~38\ : std_logic;
SIGNAL \i1|quotient[11]~39_combout\ : std_logic;
SIGNAL \i1|quotient[11]~40\ : std_logic;
SIGNAL \i1|quotient[12]~41_combout\ : std_logic;
SIGNAL \i1|quotient[12]~42\ : std_logic;
SIGNAL \i1|quotient[13]~43_combout\ : std_logic;
SIGNAL \i1|quotient[13]~44\ : std_logic;
SIGNAL \i1|quotient[14]~45_combout\ : std_logic;
SIGNAL \i1|quotient[14]~46\ : std_logic;
SIGNAL \i1|quotient[15]~47_combout\ : std_logic;
SIGNAL \i1|quotient\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i1|reg_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i1|reg_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2|ALT_INV_cnt~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_clr~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_ld_b~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_ld_a~0_combout\ : std_logic;

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
quotient <= ww_quotient;
rest <= ww_rest;
sa_e_z <= ww_sa_e_z;
sa_lt_z <= ww_sa_lt_z;
sld_a <= ww_sld_a;
slb_b <= ww_slb_b;
sslt_a <= ww_sslt_a;
sclr <= ww_sclr;
scnt <= ww_scnt;
sud <= ww_sud;
ssub_add <= ww_ssub_add;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\i2|ALT_INV_cnt~0_combout\ <= NOT \i2|cnt~0_combout\;
\i2|ALT_INV_Equal0~0_combout\ <= NOT \i2|Equal0~0_combout\;
\i2|ALT_INV_clr~0_combout\ <= NOT \i2|clr~0_combout\;
\i2|ALT_INV_ld_b~0_combout\ <= NOT \i2|ld_b~0_combout\;
\i2|ALT_INV_ld_a~0_combout\ <= NOT \i2|ld_a~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y59_N16
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

-- Location: IOOBUF_X0_Y52_N2
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

-- Location: IOOBUF_X0_Y59_N23
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

-- Location: IOOBUF_X0_Y52_N16
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

-- Location: IOOBUF_X0_Y60_N16
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

-- Location: IOOBUF_X0_Y61_N23
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X0_Y55_N23
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

-- Location: IOOBUF_X0_Y53_N9
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

-- Location: IOOBUF_X0_Y58_N16
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

-- Location: IOOBUF_X0_Y57_N16
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

-- Location: IOOBUF_X0_Y55_N16
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

-- Location: IOOBUF_X0_Y52_N23
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

-- Location: IOOBUF_X0_Y57_N23
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

-- Location: IOOBUF_X0_Y54_N9
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

-- Location: IOOBUF_X0_Y53_N2
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

-- Location: IOOBUF_X0_Y47_N23
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

-- Location: IOOBUF_X0_Y35_N9
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

-- Location: IOOBUF_X0_Y50_N23
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

-- Location: IOOBUF_X0_Y31_N16
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

-- Location: IOOBUF_X0_Y32_N16
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

-- Location: IOOBUF_X0_Y47_N16
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

-- Location: IOOBUF_X0_Y43_N16
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X0_Y34_N23
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y44_N2
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

-- Location: IOOBUF_X0_Y50_N16
\sa_e_z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|Equal0~4_combout\,
	devoe => ww_devoe,
	o => \sa_e_z~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\sa_lt_z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|a_lt_z~combout\,
	devoe => ww_devoe,
	o => \sa_lt_z~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\sld_a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|ld_a~2_combout\,
	devoe => ww_devoe,
	o => \sld_a~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\slb_b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|ld_b~2_combout\,
	devoe => ww_devoe,
	o => \slb_b~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\sslt_a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|slt_a~q\,
	devoe => ww_devoe,
	o => \sslt_a~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\sclr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|clr~2_combout\,
	devoe => ww_devoe,
	o => \sclr~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\scnt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|cnt~q\,
	devoe => ww_devoe,
	o => \scnt~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\sud~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|sub_add~q\,
	devoe => ww_devoe,
	o => \sud~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\ssub_add~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|sub_add~q\,
	devoe => ww_devoe,
	o => \ssub_add~output_o\);

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

-- Location: LCCOMB_X3_Y52_N0
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

-- Location: IOIBUF_X0_Y49_N1
\input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\bt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt,
	o => \bt~input_o\);

-- Location: LCCOMB_X3_Y44_N14
\i2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (\bt~input_o\ & (\i2|state\(2) & (!\i2|state\(1)))) # (!\bt~input_o\ & ((\i2|state\(2)) # ((!\i2|state\(1) & \i2|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt~input_o\,
	datab => \i2|state\(2),
	datac => \i2|state\(1),
	datad => \i2|state\(0),
	combout => \i2|Mux1~0_combout\);

-- Location: IOIBUF_X0_Y49_N8
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X4_Y44_N26
\i2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~1_combout\ = (\i2|state\(0) & (!\i2|state\(1) & !\i2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(0),
	datac => \i2|state\(1),
	datad => \i2|state\(2),
	combout => \i2|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y44_N18
\i2|ld_a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~7_combout\ = \i2|state\(0) $ (\i2|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|state\(0),
	datad => \i2|state\(2),
	combout => \i2|ld_a~7_combout\);

-- Location: LCCOMB_X4_Y44_N16
\i2|ld_a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~8_combout\ = (\i2|Equal0~3_combout\) # ((!\i2|Equal0~1_combout\ & (\i2|state\(1) & !\i2|ld_a~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Equal0~1_combout\,
	datab => \i2|state\(1),
	datac => \i2|Equal0~3_combout\,
	datad => \i2|ld_a~7_combout\,
	combout => \i2|ld_a~8_combout\);

-- Location: LCCOMB_X3_Y44_N2
\i2|ld_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~1_combout\ = (!\i2|ld_a~8_combout\ & ((\i2|Equal0~1_combout\) # (\i2|ld_a~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|ld_a~8_combout\,
	datac => \i2|Equal0~1_combout\,
	datad => \i2|ld_a~1_combout\,
	combout => \i2|ld_a~1_combout\);

-- Location: IOIBUF_X0_Y32_N22
\input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X5_Y43_N6
\i1|reg_a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~5_combout\ = (\i2|ld_a~2_combout\ & ((\i2|slt_a~q\ & (\i1|reg_a\(4))) # (!\i2|slt_a~q\ & ((\input[4]~input_o\))))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(4),
	datab => \input[4]~input_o\,
	datac => \i2|ld_a~2_combout\,
	datad => \i2|slt_a~q\,
	combout => \i1|reg_a~5_combout\);

-- Location: LCCOMB_X4_Y44_N6
\i2|ld_b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~8_combout\ = (\i2|state\(2) & ((!\i2|state\(1)) # (!\i2|state\(0)))) # (!\i2|state\(2) & ((\i2|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(2),
	datac => \i2|state\(0),
	datad => \i2|state\(1),
	combout => \i2|ld_b~8_combout\);

-- Location: LCCOMB_X4_Y44_N20
\i2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~2_combout\ = (!\i2|state\(2) & (!\i2|state\(0) & \i2|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(2),
	datac => \i2|state\(0),
	datad => \i2|state\(1),
	combout => \i2|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y44_N14
\i2|ld_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~1_combout\ = (\i2|ld_b~8_combout\ & ((\i2|ld_b~1_combout\) # (\i2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|ld_b~8_combout\,
	datac => \i2|ld_b~1_combout\,
	datad => \i2|Equal0~2_combout\,
	combout => \i2|ld_b~1_combout\);

-- Location: LCCOMB_X4_Y44_N22
\i2|ld_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~0_combout\ = (\i2|Equal0~2_combout\) # (!\i2|ld_b~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|ld_b~8_combout\,
	datad => \i2|Equal0~2_combout\,
	combout => \i2|ld_b~0_combout\);

-- Location: LCCOMB_X6_Y44_N22
\i2|ld_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~7_combout\ = (\i2|state\(2) & (!\i2|state\(1) & !\i2|state\(0))) # (!\i2|state\(2) & (\i2|state\(1) & \i2|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(2),
	datac => \i2|state\(1),
	datad => \i2|state\(0),
	combout => \i2|ld_b~7_combout\);

-- Location: FF_X5_Y44_N17
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

-- Location: LCCOMB_X5_Y44_N16
\i2|ld_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_b~2_combout\ = (\i2|ld_b~8_combout\ & ((\i2|Equal0~2_combout\) # (\i2|ld_b~1_combout\ $ (\i2|ld_b~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~1_combout\,
	datab => \i2|ld_b~8_combout\,
	datac => \i2|ld_b~_emulated_q\,
	datad => \i2|Equal0~2_combout\,
	combout => \i2|ld_b~2_combout\);

-- Location: LCCOMB_X6_Y44_N4
\i1|reg_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~6_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[4]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(4))))))

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
	combout => \i1|reg_b~6_combout\);

-- Location: FF_X6_Y44_N5
\i1|reg_b[4]\ : dffeas
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
	q => \i1|reg_b\(4));

-- Location: LCCOMB_X5_Y44_N26
\i1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~18_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[4]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[4]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(4),
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~18_combout\);

-- Location: IOIBUF_X0_Y45_N22
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X6_Y44_N12
\i1|reg_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~5_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[3]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|clr~2_combout\,
	datab => \input[3]~input_o\,
	datac => \i2|ld_b~2_combout\,
	datad => \i1|reg_b\(3),
	combout => \i1|reg_b~5_combout\);

-- Location: FF_X5_Y44_N11
\i1|reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|reg_b~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(3));

-- Location: LCCOMB_X5_Y44_N20
\i1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~14_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[3]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(3),
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~14_combout\);

-- Location: LCCOMB_X6_Y44_N2
\i1|reg_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~4_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[2]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \i1|reg_b\(2),
	datac => \i2|ld_b~2_combout\,
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~4_combout\);

-- Location: FF_X5_Y44_N29
\i1|reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|reg_b~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(2));

-- Location: LCCOMB_X5_Y44_N28
\i1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~10_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[2]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(2),
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~10_combout\);

-- Location: IOIBUF_X115_Y37_N1
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X5_Y43_N22
\i1|reg_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~3_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[1]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[1]~input_o\,
	datac => \i1|reg_b\(1),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~3_combout\);

-- Location: FF_X5_Y43_N23
\i1|reg_b[1]\ : dffeas
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
	q => \i1|reg_b\(1));

-- Location: LCCOMB_X5_Y43_N18
\i1|reg_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~1_combout\ = (\i2|ld_b~2_combout\ & (\input[1]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[1]~input_o\,
	datac => \i1|reg_b\(1),
	datad => \i2|ld_b~2_combout\,
	combout => \i1|reg_b~1_combout\);

-- Location: LCCOMB_X5_Y43_N12
\i1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~6_combout\ = \i1|reg_b~1_combout\ $ (((!\i2|sub_add~q\ & (\i2|slt_a~q\ & \i2|ld_a~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|sub_add~q\,
	datab => \i2|slt_a~q\,
	datac => \i2|ld_a~2_combout\,
	datad => \i1|reg_b~1_combout\,
	combout => \i1|Add0~6_combout\);

-- Location: IOIBUF_X115_Y37_N8
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X5_Y43_N14
\i1|reg_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~2_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[0]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(0))))))

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
	combout => \i1|reg_b~2_combout\);

-- Location: FF_X5_Y43_N15
\i1|reg_b[0]\ : dffeas
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
	q => \i1|reg_b\(0));

-- Location: LCCOMB_X4_Y43_N0
\i1|reg_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~0_combout\ = (\i2|ld_b~2_combout\ & (\input[0]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[0]~input_o\,
	datac => \i1|reg_b\(0),
	datad => \i2|ld_b~2_combout\,
	combout => \i1|reg_b~0_combout\);

-- Location: LCCOMB_X4_Y43_N10
\i1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~0_combout\ = \i1|reg_b~0_combout\ $ (((\i2|slt_a~q\ & (!\i2|sub_add~q\ & \i2|ld_a~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \i2|sub_add~q\,
	datac => \i2|ld_a~2_combout\,
	datad => \i1|reg_b~0_combout\,
	combout => \i1|Add0~0_combout\);

-- Location: LCCOMB_X4_Y44_N28
\i1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|process_0~1_combout\ = (\i2|slt_a~q\ & \i2|ld_a~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|process_0~1_combout\);

-- Location: LCCOMB_X4_Y43_N16
\i1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~2_cout\ = CARRY((\i1|process_0~1_combout\ & !\i2|sub_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~1_combout\,
	datab => \i2|sub_add~q\,
	datad => VCC,
	cout => \i1|Add0~2_cout\);

-- Location: LCCOMB_X4_Y43_N18
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

-- Location: LCCOMB_X4_Y43_N4
\i1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~5_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~3_combout\))) # (!\i2|slt_a~q\ & (\input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[0]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i1|Add0~3_combout\,
	combout => \i1|Add0~5_combout\);

-- Location: LCCOMB_X3_Y42_N0
\i1|reg_a[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a[15]~1_combout\ = (\i2|ld_a~2_combout\) # (\i2|clr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|ld_a~2_combout\,
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_a[15]~1_combout\);

-- Location: FF_X4_Y43_N5
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
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(0));

-- Location: LCCOMB_X4_Y43_N2
\i1|reg_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~0_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(0))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[0]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \i2|slt_a~q\,
	datac => \i2|ld_a~2_combout\,
	datad => \i1|reg_a\(0),
	combout => \i1|reg_a~0_combout\);

-- Location: LCCOMB_X4_Y43_N20
\i1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~7_combout\ = ((\i1|reg_a~2_combout\ $ (\i1|Add0~6_combout\ $ (!\i1|Add0~4\)))) # (GND)
-- \i1|Add0~8\ = CARRY((\i1|reg_a~2_combout\ & ((\i1|Add0~6_combout\) # (!\i1|Add0~4\))) # (!\i1|reg_a~2_combout\ & (\i1|Add0~6_combout\ & !\i1|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~2_combout\,
	datab => \i1|Add0~6_combout\,
	datad => VCC,
	cin => \i1|Add0~4\,
	combout => \i1|Add0~7_combout\,
	cout => \i1|Add0~8\);

-- Location: LCCOMB_X3_Y43_N12
\i1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~9_combout\ = (\i2|slt_a~q\ & (\i1|Add0~7_combout\)) # (!\i2|slt_a~q\ & ((\input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~7_combout\,
	datab => \i2|slt_a~q\,
	datac => \input[1]~input_o\,
	combout => \i1|Add0~9_combout\);

-- Location: FF_X3_Y43_N23
\i1|reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \i1|Add0~9_combout\,
	sclr => \i2|clr~2_combout\,
	sload => VCC,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(1));

-- Location: LCCOMB_X3_Y43_N16
\i1|reg_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~2_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(1))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[1]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(1),
	datab => \i2|slt_a~q\,
	datac => \input[1]~input_o\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~2_combout\);

-- Location: LCCOMB_X4_Y43_N22
\i1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~11_combout\ = (\i1|reg_a~3_combout\ & ((\i1|Add0~10_combout\ & (\i1|Add0~8\ & VCC)) # (!\i1|Add0~10_combout\ & (!\i1|Add0~8\)))) # (!\i1|reg_a~3_combout\ & ((\i1|Add0~10_combout\ & (!\i1|Add0~8\)) # (!\i1|Add0~10_combout\ & ((\i1|Add0~8\) # 
-- (GND)))))
-- \i1|Add0~12\ = CARRY((\i1|reg_a~3_combout\ & (!\i1|Add0~10_combout\ & !\i1|Add0~8\)) # (!\i1|reg_a~3_combout\ & ((!\i1|Add0~8\) # (!\i1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~3_combout\,
	datab => \i1|Add0~10_combout\,
	datad => VCC,
	cin => \i1|Add0~8\,
	combout => \i1|Add0~11_combout\,
	cout => \i1|Add0~12\);

-- Location: LCCOMB_X4_Y43_N24
\i1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~15_combout\ = ((\i1|reg_a~4_combout\ $ (\i1|Add0~14_combout\ $ (!\i1|Add0~12\)))) # (GND)
-- \i1|Add0~16\ = CARRY((\i1|reg_a~4_combout\ & ((\i1|Add0~14_combout\) # (!\i1|Add0~12\))) # (!\i1|reg_a~4_combout\ & (\i1|Add0~14_combout\ & !\i1|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~4_combout\,
	datab => \i1|Add0~14_combout\,
	datad => VCC,
	cin => \i1|Add0~12\,
	combout => \i1|Add0~15_combout\,
	cout => \i1|Add0~16\);

-- Location: LCCOMB_X3_Y43_N18
\i1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~17_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~15_combout\))) # (!\i2|slt_a~q\ & (\input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[3]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i1|Add0~15_combout\,
	combout => \i1|Add0~17_combout\);

-- Location: FF_X3_Y43_N15
\i1|reg_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \i1|Add0~17_combout\,
	sclr => \i2|clr~2_combout\,
	sload => VCC,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(3));

-- Location: LCCOMB_X5_Y43_N2
\i1|reg_a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~4_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(3))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[3]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \i2|slt_a~q\,
	datac => \i2|ld_a~2_combout\,
	datad => \i1|reg_a\(3),
	combout => \i1|reg_a~4_combout\);

-- Location: LCCOMB_X4_Y43_N26
\i1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~19_combout\ = (\i1|reg_a~5_combout\ & ((\i1|Add0~18_combout\ & (\i1|Add0~16\ & VCC)) # (!\i1|Add0~18_combout\ & (!\i1|Add0~16\)))) # (!\i1|reg_a~5_combout\ & ((\i1|Add0~18_combout\ & (!\i1|Add0~16\)) # (!\i1|Add0~18_combout\ & ((\i1|Add0~16\) # 
-- (GND)))))
-- \i1|Add0~20\ = CARRY((\i1|reg_a~5_combout\ & (!\i1|Add0~18_combout\ & !\i1|Add0~16\)) # (!\i1|reg_a~5_combout\ & ((!\i1|Add0~16\) # (!\i1|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~5_combout\,
	datab => \i1|Add0~18_combout\,
	datad => VCC,
	cin => \i1|Add0~16\,
	combout => \i1|Add0~19_combout\,
	cout => \i1|Add0~20\);

-- Location: LCCOMB_X4_Y43_N14
\i1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~21_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~19_combout\))) # (!\i2|slt_a~q\ & (\input[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|slt_a~q\,
	datac => \input[4]~input_o\,
	datad => \i1|Add0~19_combout\,
	combout => \i1|Add0~21_combout\);

-- Location: FF_X4_Y43_N15
\i1|reg_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~21_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(4));

-- Location: IOIBUF_X0_Y44_N15
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X3_Y43_N10
\i1|reg_a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~7_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(6))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[6]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(6)))))

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
	combout => \i1|reg_a~7_combout\);

-- Location: LCCOMB_X6_Y44_N8
\i1|reg_b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~8_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[6]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(6))))))

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
	combout => \i1|reg_b~8_combout\);

-- Location: FF_X6_Y44_N9
\i1|reg_b[6]\ : dffeas
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
	q => \i1|reg_b\(6));

-- Location: LCCOMB_X5_Y44_N2
\i1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~26_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[6]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[6]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(6),
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~26_combout\);

-- Location: IOIBUF_X0_Y47_N1
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X6_Y44_N30
\i1|reg_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~7_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[5]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[5]~input_o\,
	datac => \i1|reg_b\(5),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~7_combout\);

-- Location: FF_X6_Y44_N31
\i1|reg_b[5]\ : dffeas
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
	q => \i1|reg_b\(5));

-- Location: LCCOMB_X5_Y44_N0
\i1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~22_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[5]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datab => \i1|reg_b\(5),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~22_combout\);

-- Location: LCCOMB_X4_Y43_N28
\i1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~23_combout\ = ((\i1|reg_a~6_combout\ $ (\i1|Add0~22_combout\ $ (!\i1|Add0~20\)))) # (GND)
-- \i1|Add0~24\ = CARRY((\i1|reg_a~6_combout\ & ((\i1|Add0~22_combout\) # (!\i1|Add0~20\))) # (!\i1|reg_a~6_combout\ & (\i1|Add0~22_combout\ & !\i1|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~6_combout\,
	datab => \i1|Add0~22_combout\,
	datad => VCC,
	cin => \i1|Add0~20\,
	combout => \i1|Add0~23_combout\,
	cout => \i1|Add0~24\);

-- Location: LCCOMB_X4_Y43_N8
\i1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~25_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~23_combout\))) # (!\i2|slt_a~q\ & (\input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datac => \i2|slt_a~q\,
	datad => \i1|Add0~23_combout\,
	combout => \i1|Add0~25_combout\);

-- Location: FF_X4_Y43_N9
\i1|reg_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~25_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(5));

-- Location: LCCOMB_X4_Y43_N12
\i1|reg_a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~6_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(5))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[5]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \i1|reg_a\(5),
	datac => \i2|ld_a~2_combout\,
	datad => \input[5]~input_o\,
	combout => \i1|reg_a~6_combout\);

-- Location: LCCOMB_X4_Y43_N30
\i1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~27_combout\ = (\i1|reg_a~7_combout\ & ((\i1|Add0~26_combout\ & (\i1|Add0~24\ & VCC)) # (!\i1|Add0~26_combout\ & (!\i1|Add0~24\)))) # (!\i1|reg_a~7_combout\ & ((\i1|Add0~26_combout\ & (!\i1|Add0~24\)) # (!\i1|Add0~26_combout\ & ((\i1|Add0~24\) # 
-- (GND)))))
-- \i1|Add0~28\ = CARRY((\i1|reg_a~7_combout\ & (!\i1|Add0~26_combout\ & !\i1|Add0~24\)) # (!\i1|reg_a~7_combout\ & ((!\i1|Add0~24\) # (!\i1|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~7_combout\,
	datab => \i1|Add0~26_combout\,
	datad => VCC,
	cin => \i1|Add0~24\,
	combout => \i1|Add0~27_combout\,
	cout => \i1|Add0~28\);

-- Location: LCCOMB_X4_Y43_N6
\i1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~29_combout\ = (\i2|slt_a~q\ & (\i1|Add0~27_combout\)) # (!\i2|slt_a~q\ & ((\input[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Add0~27_combout\,
	datac => \i2|slt_a~q\,
	datad => \input[6]~input_o\,
	combout => \i1|Add0~29_combout\);

-- Location: FF_X4_Y43_N7
\i1|reg_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~29_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(6));

-- Location: IOIBUF_X0_Y46_N22
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X4_Y42_N22
\i1|reg_a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~8_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(7))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[7]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \i1|reg_a\(7),
	datac => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~8_combout\);

-- Location: LCCOMB_X6_Y44_N10
\i1|reg_b~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~9_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[7]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(7))))))

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
	combout => \i1|reg_b~9_combout\);

-- Location: FF_X6_Y44_N11
\i1|reg_b[7]\ : dffeas
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
	q => \i1|reg_b\(7));

-- Location: LCCOMB_X5_Y44_N24
\i1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~30_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[7]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(7),
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~30_combout\);

-- Location: LCCOMB_X4_Y42_N0
\i1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~31_combout\ = ((\i1|reg_a~8_combout\ $ (\i1|Add0~30_combout\ $ (!\i1|Add0~28\)))) # (GND)
-- \i1|Add0~32\ = CARRY((\i1|reg_a~8_combout\ & ((\i1|Add0~30_combout\) # (!\i1|Add0~28\))) # (!\i1|reg_a~8_combout\ & (\i1|Add0~30_combout\ & !\i1|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~8_combout\,
	datab => \i1|Add0~30_combout\,
	datad => VCC,
	cin => \i1|Add0~28\,
	combout => \i1|Add0~31_combout\,
	cout => \i1|Add0~32\);

-- Location: LCCOMB_X4_Y42_N28
\i1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~33_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~31_combout\))) # (!\i2|slt_a~q\ & (\input[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \i1|Add0~31_combout\,
	datac => \i2|slt_a~q\,
	combout => \i1|Add0~33_combout\);

-- Location: FF_X4_Y42_N29
\i1|reg_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~33_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(7));

-- Location: LCCOMB_X5_Y43_N8
\i1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~1_combout\ = (!\i1|reg_a\(4) & (!\i1|reg_a\(6) & (!\i1|reg_a\(7) & !\i1|reg_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(4),
	datab => \i1|reg_a\(6),
	datac => \i1|reg_a\(7),
	datad => \i1|reg_a\(5),
	combout => \i1|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y43_N16
\i1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|process_0~3_combout\ = (\i1|reg_a\(15)) # ((\i1|Equal0~0_combout\ & (\i1|Equal0~1_combout\ & \i1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|Equal0~0_combout\,
	datac => \i1|Equal0~1_combout\,
	datad => \i1|Equal0~3_combout\,
	combout => \i1|process_0~3_combout\);

-- Location: LCCOMB_X5_Y43_N30
\i1|a_lt_z\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|a_lt_z~combout\ = (\i1|Equal0~4_combout\ & (\i1|a_lt_z~combout\)) # (!\i1|Equal0~4_combout\ & ((\i1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|a_lt_z~combout\,
	datac => \i1|process_0~3_combout\,
	datad => \i1|Equal0~4_combout\,
	combout => \i1|a_lt_z~combout\);

-- Location: LCCOMB_X4_Y44_N24
\i2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\i2|state\(0) & (!\i2|state\(2) & \i2|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(0),
	datac => \i2|state\(2),
	datad => \i2|state\(1),
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X5_Y43_N10
\i2|sub_add~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|sub_add~0_combout\ = (\i1|Equal0~4_combout\ & (((\i2|sub_add~q\)))) # (!\i1|Equal0~4_combout\ & ((\i2|Mux3~0_combout\ & (\i1|a_lt_z~combout\)) # (!\i2|Mux3~0_combout\ & ((\i2|sub_add~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|a_lt_z~combout\,
	datab => \i1|Equal0~4_combout\,
	datac => \i2|sub_add~q\,
	datad => \i2|Mux3~0_combout\,
	combout => \i2|sub_add~0_combout\);

-- Location: FF_X5_Y43_N11
\i2|sub_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|sub_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|sub_add~q\);

-- Location: LCCOMB_X5_Y44_N10
\i1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|process_0~2_combout\ = (!\i2|sub_add~q\ & (\i2|slt_a~q\ & \i2|ld_a~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|sub_add~q\,
	datab => \i2|slt_a~q\,
	datad => \i2|ld_a~2_combout\,
	combout => \i1|process_0~2_combout\);

-- Location: LCCOMB_X6_Y44_N24
\i1|reg_b~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~16_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[14]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(14))))))

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
	combout => \i1|reg_b~16_combout\);

-- Location: FF_X6_Y44_N25
\i1|reg_b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(14));

-- Location: LCCOMB_X5_Y44_N18
\i1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~58_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[14]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~2_combout\,
	datab => \i1|reg_b\(14),
	datac => \input[14]~input_o\,
	datad => \i2|ld_b~2_combout\,
	combout => \i1|Add0~58_combout\);

-- Location: LCCOMB_X5_Y42_N12
\i1|reg_a~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~15_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(14))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[14]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(14))))))

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
	combout => \i1|reg_a~15_combout\);

-- Location: IOIBUF_X0_Y46_N15
\input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: LCCOMB_X6_Y44_N18
\i1|reg_b~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~15_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[13]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(13))))))

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
	combout => \i1|reg_b~15_combout\);

-- Location: FF_X6_Y44_N19
\i1|reg_b[13]\ : dffeas
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
	q => \i1|reg_b\(13));

-- Location: LCCOMB_X5_Y44_N8
\i1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~54_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[13]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~2_combout\,
	datab => \i1|reg_b\(13),
	datac => \input[13]~input_o\,
	datad => \i2|ld_b~2_combout\,
	combout => \i1|Add0~54_combout\);

-- Location: IOIBUF_X0_Y42_N1
\input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: LCCOMB_X6_Y44_N0
\i1|reg_b~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~14_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[12]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[12]~input_o\,
	datac => \i1|reg_b\(12),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~14_combout\);

-- Location: FF_X6_Y44_N1
\i1|reg_b[12]\ : dffeas
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
	q => \i1|reg_b\(12));

-- Location: LCCOMB_X5_Y44_N6
\i1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~50_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[12]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[12]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(12),
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~50_combout\);

-- Location: IOIBUF_X0_Y48_N1
\input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: LCCOMB_X6_Y44_N6
\i1|reg_b~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~13_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[11]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[11]~input_o\,
	datac => \i1|reg_b\(11),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~13_combout\);

-- Location: FF_X6_Y44_N7
\i1|reg_b[11]\ : dffeas
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
	q => \i1|reg_b\(11));

-- Location: LCCOMB_X5_Y44_N4
\i1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~46_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[11]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_b\(11),
	datab => \i2|ld_b~2_combout\,
	datac => \input[11]~input_o\,
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~46_combout\);

-- Location: IOIBUF_X0_Y33_N22
\input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: LCCOMB_X6_Y44_N20
\i1|reg_b~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~12_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[10]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[10]~input_o\,
	datac => \i1|reg_b\(10),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~12_combout\);

-- Location: FF_X6_Y44_N21
\i1|reg_b[10]\ : dffeas
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
	q => \i1|reg_b\(10));

-- Location: LCCOMB_X5_Y44_N22
\i1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~42_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[10]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[10]~input_o\,
	datab => \i1|reg_b\(10),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~42_combout\);

-- Location: IOIBUF_X0_Y33_N15
\input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: LCCOMB_X6_Y44_N14
\i1|reg_b~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~11_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[9]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[9]~input_o\,
	datac => \i1|reg_b\(9),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~11_combout\);

-- Location: FF_X6_Y44_N15
\i1|reg_b[9]\ : dffeas
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
	q => \i1|reg_b\(9));

-- Location: LCCOMB_X5_Y44_N12
\i1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~38_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[9]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datab => \i1|reg_b\(9),
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~38_combout\);

-- Location: IOIBUF_X0_Y42_N8
\input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: LCCOMB_X6_Y44_N28
\i1|reg_b~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~10_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[8]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ld_b~2_combout\,
	datab => \input[8]~input_o\,
	datac => \i1|reg_b\(8),
	datad => \i2|clr~2_combout\,
	combout => \i1|reg_b~10_combout\);

-- Location: FF_X6_Y44_N29
\i1|reg_b[8]\ : dffeas
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
	q => \i1|reg_b\(8));

-- Location: LCCOMB_X5_Y44_N30
\i1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~34_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & (\input[8]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[8]~input_o\,
	datab => \i2|ld_b~2_combout\,
	datac => \i1|reg_b\(8),
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~34_combout\);

-- Location: LCCOMB_X4_Y42_N2
\i1|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~35_combout\ = (\i1|Add0~34_combout\ & ((\i1|reg_a~9_combout\ & (\i1|Add0~32\ & VCC)) # (!\i1|reg_a~9_combout\ & (!\i1|Add0~32\)))) # (!\i1|Add0~34_combout\ & ((\i1|reg_a~9_combout\ & (!\i1|Add0~32\)) # (!\i1|reg_a~9_combout\ & ((\i1|Add0~32\) # 
-- (GND)))))
-- \i1|Add0~36\ = CARRY((\i1|Add0~34_combout\ & (!\i1|reg_a~9_combout\ & !\i1|Add0~32\)) # (!\i1|Add0~34_combout\ & ((!\i1|Add0~32\) # (!\i1|reg_a~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~34_combout\,
	datab => \i1|reg_a~9_combout\,
	datad => VCC,
	cin => \i1|Add0~32\,
	combout => \i1|Add0~35_combout\,
	cout => \i1|Add0~36\);

-- Location: LCCOMB_X5_Y42_N2
\i1|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~37_combout\ = (\i2|slt_a~q\ & (\i1|Add0~35_combout\)) # (!\i2|slt_a~q\ & ((\input[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~35_combout\,
	datac => \i2|slt_a~q\,
	datad => \input[8]~input_o\,
	combout => \i1|Add0~37_combout\);

-- Location: FF_X5_Y42_N3
\i1|reg_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~37_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(8));

-- Location: LCCOMB_X4_Y42_N30
\i1|reg_a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~9_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(8))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[8]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(8))))))

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
	combout => \i1|reg_a~9_combout\);

-- Location: LCCOMB_X4_Y42_N4
\i1|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~39_combout\ = ((\i1|reg_a~10_combout\ $ (\i1|Add0~38_combout\ $ (!\i1|Add0~36\)))) # (GND)
-- \i1|Add0~40\ = CARRY((\i1|reg_a~10_combout\ & ((\i1|Add0~38_combout\) # (!\i1|Add0~36\))) # (!\i1|reg_a~10_combout\ & (\i1|Add0~38_combout\ & !\i1|Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~10_combout\,
	datab => \i1|Add0~38_combout\,
	datad => VCC,
	cin => \i1|Add0~36\,
	combout => \i1|Add0~39_combout\,
	cout => \i1|Add0~40\);

-- Location: LCCOMB_X5_Y42_N8
\i1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~41_combout\ = (\i2|slt_a~q\ & (\i1|Add0~39_combout\)) # (!\i2|slt_a~q\ & ((\input[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Add0~39_combout\,
	datac => \i2|slt_a~q\,
	datad => \input[9]~input_o\,
	combout => \i1|Add0~41_combout\);

-- Location: FF_X5_Y42_N9
\i1|reg_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~41_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(9));

-- Location: LCCOMB_X5_Y42_N6
\i1|reg_a~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~10_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(9))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[9]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(9)))))

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
	combout => \i1|reg_a~10_combout\);

-- Location: LCCOMB_X4_Y42_N6
\i1|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~43_combout\ = (\i1|Add0~42_combout\ & ((\i1|reg_a~11_combout\ & (\i1|Add0~40\ & VCC)) # (!\i1|reg_a~11_combout\ & (!\i1|Add0~40\)))) # (!\i1|Add0~42_combout\ & ((\i1|reg_a~11_combout\ & (!\i1|Add0~40\)) # (!\i1|reg_a~11_combout\ & ((\i1|Add0~40\) 
-- # (GND)))))
-- \i1|Add0~44\ = CARRY((\i1|Add0~42_combout\ & (!\i1|reg_a~11_combout\ & !\i1|Add0~40\)) # (!\i1|Add0~42_combout\ & ((!\i1|Add0~40\) # (!\i1|reg_a~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~42_combout\,
	datab => \i1|reg_a~11_combout\,
	datad => VCC,
	cin => \i1|Add0~40\,
	combout => \i1|Add0~43_combout\,
	cout => \i1|Add0~44\);

-- Location: LCCOMB_X5_Y42_N30
\i1|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~45_combout\ = (\i2|slt_a~q\ & (\i1|Add0~43_combout\)) # (!\i2|slt_a~q\ & ((\input[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \i1|Add0~43_combout\,
	datad => \input[10]~input_o\,
	combout => \i1|Add0~45_combout\);

-- Location: FF_X5_Y42_N31
\i1|reg_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~45_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(10));

-- Location: LCCOMB_X5_Y42_N22
\i1|reg_a~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~11_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(10))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[10]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(10))))))

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
	combout => \i1|reg_a~11_combout\);

-- Location: LCCOMB_X4_Y42_N8
\i1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~47_combout\ = ((\i1|Add0~46_combout\ $ (\i1|reg_a~12_combout\ $ (!\i1|Add0~44\)))) # (GND)
-- \i1|Add0~48\ = CARRY((\i1|Add0~46_combout\ & ((\i1|reg_a~12_combout\) # (!\i1|Add0~44\))) # (!\i1|Add0~46_combout\ & (\i1|reg_a~12_combout\ & !\i1|Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~46_combout\,
	datab => \i1|reg_a~12_combout\,
	datad => VCC,
	cin => \i1|Add0~44\,
	combout => \i1|Add0~47_combout\,
	cout => \i1|Add0~48\);

-- Location: LCCOMB_X4_Y42_N26
\i1|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~49_combout\ = (\i2|slt_a~q\ & (\i1|Add0~47_combout\)) # (!\i2|slt_a~q\ & ((\input[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datac => \i1|Add0~47_combout\,
	datad => \input[11]~input_o\,
	combout => \i1|Add0~49_combout\);

-- Location: FF_X4_Y42_N27
\i1|reg_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~49_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(11));

-- Location: LCCOMB_X5_Y42_N18
\i1|reg_a~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~12_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(11))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[11]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[11]~input_o\,
	datab => \i2|slt_a~q\,
	datac => \i1|reg_a\(11),
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~12_combout\);

-- Location: LCCOMB_X4_Y42_N10
\i1|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~51_combout\ = (\i1|reg_a~13_combout\ & ((\i1|Add0~50_combout\ & (\i1|Add0~48\ & VCC)) # (!\i1|Add0~50_combout\ & (!\i1|Add0~48\)))) # (!\i1|reg_a~13_combout\ & ((\i1|Add0~50_combout\ & (!\i1|Add0~48\)) # (!\i1|Add0~50_combout\ & ((\i1|Add0~48\) # 
-- (GND)))))
-- \i1|Add0~52\ = CARRY((\i1|reg_a~13_combout\ & (!\i1|Add0~50_combout\ & !\i1|Add0~48\)) # (!\i1|reg_a~13_combout\ & ((!\i1|Add0~48\) # (!\i1|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~13_combout\,
	datab => \i1|Add0~50_combout\,
	datad => VCC,
	cin => \i1|Add0~48\,
	combout => \i1|Add0~51_combout\,
	cout => \i1|Add0~52\);

-- Location: LCCOMB_X4_Y42_N20
\i1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~53_combout\ = (\i2|slt_a~q\ & (\i1|Add0~51_combout\)) # (!\i2|slt_a~q\ & ((\input[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Add0~51_combout\,
	datac => \i2|slt_a~q\,
	datad => \input[12]~input_o\,
	combout => \i1|Add0~53_combout\);

-- Location: FF_X4_Y42_N21
\i1|reg_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~53_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(12));

-- Location: LCCOMB_X5_Y42_N20
\i1|reg_a~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~13_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(12))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[12]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \input[12]~input_o\,
	datac => \i1|reg_a\(12),
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~13_combout\);

-- Location: LCCOMB_X4_Y42_N12
\i1|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~55_combout\ = ((\i1|reg_a~14_combout\ $ (\i1|Add0~54_combout\ $ (!\i1|Add0~52\)))) # (GND)
-- \i1|Add0~56\ = CARRY((\i1|reg_a~14_combout\ & ((\i1|Add0~54_combout\) # (!\i1|Add0~52\))) # (!\i1|reg_a~14_combout\ & (\i1|Add0~54_combout\ & !\i1|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~14_combout\,
	datab => \i1|Add0~54_combout\,
	datad => VCC,
	cin => \i1|Add0~52\,
	combout => \i1|Add0~55_combout\,
	cout => \i1|Add0~56\);

-- Location: LCCOMB_X4_Y42_N24
\i1|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~57_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~55_combout\))) # (!\i2|slt_a~q\ & (\input[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datac => \input[13]~input_o\,
	datad => \i1|Add0~55_combout\,
	combout => \i1|Add0~57_combout\);

-- Location: FF_X4_Y42_N25
\i1|reg_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~57_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(13));

-- Location: LCCOMB_X5_Y42_N14
\i1|reg_a~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~14_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(13))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[13]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \input[13]~input_o\,
	datac => \i1|reg_a\(13),
	datad => \i2|ld_a~2_combout\,
	combout => \i1|reg_a~14_combout\);

-- Location: LCCOMB_X4_Y42_N14
\i1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~59_combout\ = (\i1|Add0~58_combout\ & ((\i1|reg_a~15_combout\ & (\i1|Add0~56\ & VCC)) # (!\i1|reg_a~15_combout\ & (!\i1|Add0~56\)))) # (!\i1|Add0~58_combout\ & ((\i1|reg_a~15_combout\ & (!\i1|Add0~56\)) # (!\i1|reg_a~15_combout\ & ((\i1|Add0~56\) 
-- # (GND)))))
-- \i1|Add0~60\ = CARRY((\i1|Add0~58_combout\ & (!\i1|reg_a~15_combout\ & !\i1|Add0~56\)) # (!\i1|Add0~58_combout\ & ((!\i1|Add0~56\) # (!\i1|reg_a~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~58_combout\,
	datab => \i1|reg_a~15_combout\,
	datad => VCC,
	cin => \i1|Add0~56\,
	combout => \i1|Add0~59_combout\,
	cout => \i1|Add0~60\);

-- Location: LCCOMB_X5_Y42_N26
\i1|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~61_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~59_combout\))) # (!\i2|slt_a~q\ & (\input[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \input[14]~input_o\,
	datac => \i1|Add0~59_combout\,
	combout => \i1|Add0~61_combout\);

-- Location: FF_X5_Y42_N27
\i1|reg_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~61_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(14));

-- Location: LCCOMB_X5_Y42_N16
\i1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~2_combout\ = (!\i1|reg_a\(10) & (!\i1|reg_a\(9) & (!\i1|reg_a\(11) & !\i1|reg_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(10),
	datab => \i1|reg_a\(9),
	datac => \i1|reg_a\(11),
	datad => \i1|reg_a\(8),
	combout => \i1|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y42_N0
\i1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~3_combout\ = (!\i1|reg_a\(14) & (!\i1|reg_a\(13) & (!\i1|reg_a\(12) & \i1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(14),
	datab => \i1|reg_a\(13),
	datac => \i1|reg_a\(12),
	datad => \i1|Equal0~2_combout\,
	combout => \i1|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y43_N24
\i1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~5_combout\ = (\i1|Equal0~3_combout\ & (\i1|Equal0~1_combout\ & \i1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Equal0~3_combout\,
	datac => \i1|Equal0~1_combout\,
	datad => \i1|Equal0~0_combout\,
	combout => \i1|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y44_N6
\i2|ld_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~3_combout\ = \i2|ld_a~1_combout\ $ (((\i2|state\(1) & ((\i1|reg_a\(15)) # (!\i1|Equal0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~5_combout\,
	datab => \i1|reg_a\(15),
	datac => \i2|state\(1),
	datad => \i2|ld_a~1_combout\,
	combout => \i2|ld_a~3_combout\);

-- Location: LCCOMB_X3_Y44_N22
\i2|ld_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~0_combout\ = (\i2|Equal0~1_combout\) # (\i2|ld_a~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|Equal0~1_combout\,
	datad => \i2|ld_a~8_combout\,
	combout => \i2|ld_a~0_combout\);

-- Location: LCCOMB_X3_Y44_N28
\i2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~2_combout\ = (\i2|state\(1) & (\i2|state\(0) & !\i2|state\(2))) # (!\i2|state\(1) & (!\i2|state\(0) & \i2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datac => \i2|state\(0),
	datad => \i2|state\(2),
	combout => \i2|Mux3~2_combout\);

-- Location: FF_X3_Y44_N7
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

-- Location: LCCOMB_X4_Y44_N30
\i2|ld_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|ld_a~2_combout\ = (!\i2|ld_a~8_combout\ & ((\i2|Equal0~1_combout\) # (\i2|ld_a~1_combout\ $ (\i2|ld_a~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Equal0~1_combout\,
	datab => \i2|ld_a~1_combout\,
	datac => \i2|ld_a~_emulated_q\,
	datad => \i2|ld_a~8_combout\,
	combout => \i2|ld_a~2_combout\);

-- Location: LCCOMB_X5_Y43_N20
\i1|reg_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~3_combout\ = (\i2|slt_a~q\ & (((\i1|reg_a\(2))))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & (\input[2]~input_o\)) # (!\i2|ld_a~2_combout\ & ((\i1|reg_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \i2|slt_a~q\,
	datac => \i2|ld_a~2_combout\,
	datad => \i1|reg_a\(2),
	combout => \i1|reg_a~3_combout\);

-- Location: LCCOMB_X3_Y43_N4
\i1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~13_combout\ = (\i2|slt_a~q\ & (\i1|Add0~11_combout\)) # (!\i2|slt_a~q\ & ((\input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|slt_a~q\,
	datac => \i1|Add0~11_combout\,
	datad => \input[2]~input_o\,
	combout => \i1|Add0~13_combout\);

-- Location: FF_X3_Y43_N7
\i1|reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \i1|Add0~13_combout\,
	sclr => \i2|clr~2_combout\,
	sload => VCC,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(2));

-- Location: LCCOMB_X3_Y43_N24
\i1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = (!\i1|reg_a\(2) & (!\i1|reg_a\(3) & (!\i1|reg_a\(1) & !\i1|reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(2),
	datab => \i1|reg_a\(3),
	datac => \i1|reg_a\(1),
	datad => \i1|reg_a\(0),
	combout => \i1|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y43_N28
\i1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Equal0~4_combout\ = (\i1|Equal0~0_combout\ & (\i1|Equal0~3_combout\ & (\i1|Equal0~1_combout\ & !\i1|reg_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~0_combout\,
	datab => \i1|Equal0~3_combout\,
	datac => \i1|Equal0~1_combout\,
	datad => \i1|reg_a\(15),
	combout => \i1|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y43_N4
\i2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~1_combout\ = ((!\i1|Equal0~4_combout\ & (\i1|a_lt_z~combout\ & !\i2|state\(2)))) # (!\i2|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(0),
	datab => \i1|Equal0~4_combout\,
	datac => \i1|a_lt_z~combout\,
	datad => \i2|state\(2),
	combout => \i2|Mux1~1_combout\);

-- Location: LCCOMB_X4_Y44_N14
\i2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~2_combout\ = (\i2|Mux1~0_combout\) # ((\i2|state\(1) & \i2|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Mux1~0_combout\,
	datac => \i2|state\(1),
	datad => \i2|Mux1~1_combout\,
	combout => \i2|Mux1~2_combout\);

-- Location: FF_X4_Y44_N15
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

-- Location: LCCOMB_X3_Y44_N0
\i2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (\i2|state\(2) & ((\i2|state\(1) & ((!\i2|state\(0)) # (!\bt~input_o\))) # (!\i2|state\(1) & ((\i2|state\(0)))))) # (!\i2|state\(2) & (((\i2|state\(1) & \i2|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt~input_o\,
	datab => \i2|state\(2),
	datac => \i2|state\(1),
	datad => \i2|state\(0),
	combout => \i2|Mux0~0_combout\);

-- Location: FF_X4_Y44_N25
\i2|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|Mux0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|state\(2));

-- Location: LCCOMB_X6_Y43_N24
\i2|slt_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|slt_a~0_combout\ = (\i2|slt_a~q\ & (((\i2|state\(0)) # (\i2|state\(1))) # (!\i2|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|slt_a~q\,
	datab => \i2|state\(2),
	datac => \i2|state\(0),
	datad => \i2|state\(1),
	combout => \i2|slt_a~0_combout\);

-- Location: LCCOMB_X5_Y43_N0
\i2|slt_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|slt_a~1_combout\ = (\i2|slt_a~0_combout\) # ((\i2|Mux3~0_combout\ & ((\i1|reg_a\(15)) # (!\i1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i2|slt_a~0_combout\,
	datac => \i1|Equal0~5_combout\,
	datad => \i2|Mux3~0_combout\,
	combout => \i2|slt_a~1_combout\);

-- Location: LCCOMB_X5_Y43_N26
\i2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~0_combout\ = (!\i2|state\(1) & !\i2|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|state\(1),
	datad => \i2|state\(2),
	combout => \i2|Equal0~0_combout\);

-- Location: FF_X5_Y43_N1
\i2|slt_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|slt_a~1_combout\,
	clrn => \i2|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|slt_a~q\);

-- Location: LCCOMB_X5_Y42_N28
\i1|reg_a~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_a~16_combout\ = (\i2|slt_a~q\ & (\i1|reg_a\(15))) # (!\i2|slt_a~q\ & ((\i2|ld_a~2_combout\ & ((\input[15]~input_o\))) # (!\i2|ld_a~2_combout\ & (\i1|reg_a\(15)))))

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
	combout => \i1|reg_a~16_combout\);

-- Location: LCCOMB_X6_Y44_N26
\i1|reg_b~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|reg_b~17_combout\ = (!\i2|clr~2_combout\ & ((\i2|ld_b~2_combout\ & (\input[15]~input_o\)) # (!\i2|ld_b~2_combout\ & ((\i1|reg_b\(15))))))

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
	combout => \i1|reg_b~17_combout\);

-- Location: FF_X6_Y44_N27
\i1|reg_b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|reg_b~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_b\(15));

-- Location: LCCOMB_X6_Y44_N16
\i1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~62_combout\ = \i1|process_0~2_combout\ $ (((\i2|ld_b~2_combout\ & ((\input[15]~input_o\))) # (!\i2|ld_b~2_combout\ & (\i1|reg_b\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_b\(15),
	datab => \input[15]~input_o\,
	datac => \i2|ld_b~2_combout\,
	datad => \i1|process_0~2_combout\,
	combout => \i1|Add0~62_combout\);

-- Location: LCCOMB_X4_Y42_N16
\i1|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~63_combout\ = \i1|reg_a~16_combout\ $ (\i1|Add0~60\ $ (!\i1|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a~16_combout\,
	datad => \i1|Add0~62_combout\,
	cin => \i1|Add0~60\,
	combout => \i1|Add0~63_combout\);

-- Location: LCCOMB_X4_Y42_N18
\i1|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~65_combout\ = (\i2|slt_a~q\ & ((\i1|Add0~63_combout\))) # (!\i2|slt_a~q\ & (\input[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[15]~input_o\,
	datab => \i1|Add0~63_combout\,
	datac => \i2|slt_a~q\,
	combout => \i1|Add0~65_combout\);

-- Location: FF_X4_Y42_N19
\i1|reg_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|Add0~65_combout\,
	sclr => \i2|clr~2_combout\,
	ena => \i1|reg_a[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|reg_a\(15));

-- Location: LCCOMB_X3_Y44_N4
\i2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux2~0_combout\ = (\bt~input_o\ & (((!\i2|state\(0)) # (!\i2|state\(1))))) # (!\bt~input_o\ & (\i2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt~input_o\,
	datab => \i2|state\(2),
	datac => \i2|state\(1),
	datad => \i2|state\(0),
	combout => \i2|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y44_N4
\i2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux2~1_combout\ = (\i2|Mux2~0_combout\) # ((!\i1|reg_a\(15) & (\i1|Equal0~5_combout\ & \i2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|reg_a\(15),
	datab => \i1|Equal0~5_combout\,
	datac => \i2|Mux2~0_combout\,
	datad => \i2|Mux3~0_combout\,
	combout => \i2|Mux2~1_combout\);

-- Location: FF_X4_Y44_N5
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

-- Location: LCCOMB_X4_Y44_N8
\i2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Equal0~3_combout\ = (!\i2|state\(0) & (!\i2|state\(1) & !\i2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|state\(0),
	datac => \i2|state\(1),
	datad => \i2|state\(2),
	combout => \i2|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y44_N2
\i2|clr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~7_combout\ = (!\i2|Equal0~3_combout\ & ((\i2|Equal0~1_combout\) # ((\i2|state\(1) & !\i2|ld_a~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datab => \i2|ld_a~7_combout\,
	datac => \i2|Equal0~3_combout\,
	datad => \i2|Equal0~1_combout\,
	combout => \i2|clr~7_combout\);

-- Location: LCCOMB_X3_Y44_N16
\i2|clr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~1_combout\ = (!\i2|clr~7_combout\ & ((\i2|Equal0~3_combout\) # (\i2|clr~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|clr~7_combout\,
	datac => \i2|Equal0~3_combout\,
	datad => \i2|clr~1_combout\,
	combout => \i2|clr~1_combout\);

-- Location: LCCOMB_X4_Y44_N10
\i2|clr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~0_combout\ = (\i2|Equal0~3_combout\) # (\i2|clr~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Equal0~3_combout\,
	datad => \i2|clr~7_combout\,
	combout => \i2|clr~0_combout\);

-- Location: FF_X4_Y44_N11
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

-- Location: LCCOMB_X4_Y44_N12
\i2|clr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|clr~2_combout\ = (!\i2|clr~7_combout\ & ((\i2|Equal0~3_combout\) # (\i2|clr~_emulated_q\ $ (\i2|clr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|Equal0~3_combout\,
	datab => \i2|clr~_emulated_q\,
	datac => \i2|clr~1_combout\,
	datad => \i2|clr~7_combout\,
	combout => \i2|clr~2_combout\);

-- Location: LCCOMB_X3_Y44_N24
\i2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~1_combout\ = (\i2|state\(1) & ((\i1|reg_a\(15)) # (!\i1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~5_combout\,
	datab => \i1|reg_a\(15),
	datad => \i2|state\(1),
	combout => \i2|Mux3~1_combout\);

-- Location: LCCOMB_X4_Y44_N0
\i2|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|cnt~0_combout\ = (\i2|Equal0~3_combout\) # ((\i2|Equal0~1_combout\) # ((\i2|state\(1) & !\i2|ld_a~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|state\(1),
	datab => \i2|ld_a~7_combout\,
	datac => \i2|Equal0~3_combout\,
	datad => \i2|Equal0~1_combout\,
	combout => \i2|cnt~0_combout\);

-- Location: FF_X3_Y44_N25
\i2|cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|Mux3~1_combout\,
	clrn => \i2|ALT_INV_cnt~0_combout\,
	ena => \i2|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|cnt~q\);

-- Location: LCCOMB_X3_Y44_N26
\i1|quotient[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[0]~18_combout\ = (\i2|cnt~q\) # (\i2|clr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|cnt~q\,
	datac => \i2|clr~2_combout\,
	combout => \i1|quotient[0]~18_combout\);

-- Location: FF_X3_Y52_N1
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(0));

-- Location: LCCOMB_X3_Y44_N12
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

-- Location: LCCOMB_X3_Y52_N2
\i1|quotient[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[1]~19_combout\ = (\i1|process_0~0_combout\ & ((\i1|quotient\(1) & (!\i1|quotient[0]~17\)) # (!\i1|quotient\(1) & ((\i1|quotient[0]~17\) # (GND))))) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(1) & (\i1|quotient[0]~17\ & VCC)) # 
-- (!\i1|quotient\(1) & (!\i1|quotient[0]~17\))))
-- \i1|quotient[1]~20\ = CARRY((\i1|process_0~0_combout\ & ((!\i1|quotient[0]~17\) # (!\i1|quotient\(1)))) # (!\i1|process_0~0_combout\ & (!\i1|quotient\(1) & !\i1|quotient[0]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(1),
	datad => VCC,
	cin => \i1|quotient[0]~17\,
	combout => \i1|quotient[1]~19_combout\,
	cout => \i1|quotient[1]~20\);

-- Location: FF_X3_Y52_N3
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(1));

-- Location: LCCOMB_X3_Y52_N4
\i1|quotient[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[2]~21_combout\ = ((\i1|process_0~0_combout\ $ (\i1|quotient\(2) $ (\i1|quotient[1]~20\)))) # (GND)
-- \i1|quotient[2]~22\ = CARRY((\i1|process_0~0_combout\ & (\i1|quotient\(2) & !\i1|quotient[1]~20\)) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(2)) # (!\i1|quotient[1]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(2),
	datad => VCC,
	cin => \i1|quotient[1]~20\,
	combout => \i1|quotient[2]~21_combout\,
	cout => \i1|quotient[2]~22\);

-- Location: FF_X3_Y52_N5
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(2));

-- Location: LCCOMB_X3_Y52_N6
\i1|quotient[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[3]~23_combout\ = (\i1|process_0~0_combout\ & ((\i1|quotient\(3) & (!\i1|quotient[2]~22\)) # (!\i1|quotient\(3) & ((\i1|quotient[2]~22\) # (GND))))) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(3) & (\i1|quotient[2]~22\ & VCC)) # 
-- (!\i1|quotient\(3) & (!\i1|quotient[2]~22\))))
-- \i1|quotient[3]~24\ = CARRY((\i1|process_0~0_combout\ & ((!\i1|quotient[2]~22\) # (!\i1|quotient\(3)))) # (!\i1|process_0~0_combout\ & (!\i1|quotient\(3) & !\i1|quotient[2]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(3),
	datad => VCC,
	cin => \i1|quotient[2]~22\,
	combout => \i1|quotient[3]~23_combout\,
	cout => \i1|quotient[3]~24\);

-- Location: FF_X3_Y52_N7
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(3));

-- Location: LCCOMB_X3_Y52_N8
\i1|quotient[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[4]~25_combout\ = ((\i1|process_0~0_combout\ $ (\i1|quotient\(4) $ (\i1|quotient[3]~24\)))) # (GND)
-- \i1|quotient[4]~26\ = CARRY((\i1|process_0~0_combout\ & (\i1|quotient\(4) & !\i1|quotient[3]~24\)) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(4)) # (!\i1|quotient[3]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(4),
	datad => VCC,
	cin => \i1|quotient[3]~24\,
	combout => \i1|quotient[4]~25_combout\,
	cout => \i1|quotient[4]~26\);

-- Location: FF_X3_Y52_N9
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(4));

-- Location: LCCOMB_X3_Y52_N10
\i1|quotient[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[5]~27_combout\ = (\i1|process_0~0_combout\ & ((\i1|quotient\(5) & (!\i1|quotient[4]~26\)) # (!\i1|quotient\(5) & ((\i1|quotient[4]~26\) # (GND))))) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(5) & (\i1|quotient[4]~26\ & VCC)) # 
-- (!\i1|quotient\(5) & (!\i1|quotient[4]~26\))))
-- \i1|quotient[5]~28\ = CARRY((\i1|process_0~0_combout\ & ((!\i1|quotient[4]~26\) # (!\i1|quotient\(5)))) # (!\i1|process_0~0_combout\ & (!\i1|quotient\(5) & !\i1|quotient[4]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(5),
	datad => VCC,
	cin => \i1|quotient[4]~26\,
	combout => \i1|quotient[5]~27_combout\,
	cout => \i1|quotient[5]~28\);

-- Location: FF_X3_Y52_N11
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(5));

-- Location: LCCOMB_X3_Y52_N12
\i1|quotient[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[6]~29_combout\ = ((\i1|process_0~0_combout\ $ (\i1|quotient\(6) $ (\i1|quotient[5]~28\)))) # (GND)
-- \i1|quotient[6]~30\ = CARRY((\i1|process_0~0_combout\ & (\i1|quotient\(6) & !\i1|quotient[5]~28\)) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(6)) # (!\i1|quotient[5]~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(6),
	datad => VCC,
	cin => \i1|quotient[5]~28\,
	combout => \i1|quotient[6]~29_combout\,
	cout => \i1|quotient[6]~30\);

-- Location: FF_X3_Y52_N13
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(6));

-- Location: LCCOMB_X3_Y52_N14
\i1|quotient[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[7]~31_combout\ = (\i1|quotient\(7) & ((\i1|process_0~0_combout\ & (!\i1|quotient[6]~30\)) # (!\i1|process_0~0_combout\ & (\i1|quotient[6]~30\ & VCC)))) # (!\i1|quotient\(7) & ((\i1|process_0~0_combout\ & ((\i1|quotient[6]~30\) # (GND))) # 
-- (!\i1|process_0~0_combout\ & (!\i1|quotient[6]~30\))))
-- \i1|quotient[7]~32\ = CARRY((\i1|quotient\(7) & (\i1|process_0~0_combout\ & !\i1|quotient[6]~30\)) # (!\i1|quotient\(7) & ((\i1|process_0~0_combout\) # (!\i1|quotient[6]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(7),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[6]~30\,
	combout => \i1|quotient[7]~31_combout\,
	cout => \i1|quotient[7]~32\);

-- Location: FF_X3_Y52_N15
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(7));

-- Location: LCCOMB_X3_Y52_N16
\i1|quotient[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[8]~33_combout\ = ((\i1|process_0~0_combout\ $ (\i1|quotient\(8) $ (\i1|quotient[7]~32\)))) # (GND)
-- \i1|quotient[8]~34\ = CARRY((\i1|process_0~0_combout\ & (\i1|quotient\(8) & !\i1|quotient[7]~32\)) # (!\i1|process_0~0_combout\ & ((\i1|quotient\(8)) # (!\i1|quotient[7]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|process_0~0_combout\,
	datab => \i1|quotient\(8),
	datad => VCC,
	cin => \i1|quotient[7]~32\,
	combout => \i1|quotient[8]~33_combout\,
	cout => \i1|quotient[8]~34\);

-- Location: FF_X3_Y52_N17
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(8));

-- Location: LCCOMB_X3_Y52_N18
\i1|quotient[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[9]~35_combout\ = (\i1|quotient\(9) & ((\i1|process_0~0_combout\ & (!\i1|quotient[8]~34\)) # (!\i1|process_0~0_combout\ & (\i1|quotient[8]~34\ & VCC)))) # (!\i1|quotient\(9) & ((\i1|process_0~0_combout\ & ((\i1|quotient[8]~34\) # (GND))) # 
-- (!\i1|process_0~0_combout\ & (!\i1|quotient[8]~34\))))
-- \i1|quotient[9]~36\ = CARRY((\i1|quotient\(9) & (\i1|process_0~0_combout\ & !\i1|quotient[8]~34\)) # (!\i1|quotient\(9) & ((\i1|process_0~0_combout\) # (!\i1|quotient[8]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(9),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[8]~34\,
	combout => \i1|quotient[9]~35_combout\,
	cout => \i1|quotient[9]~36\);

-- Location: FF_X3_Y52_N19
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(9));

-- Location: LCCOMB_X3_Y52_N20
\i1|quotient[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[10]~37_combout\ = ((\i1|quotient\(10) $ (\i1|process_0~0_combout\ $ (\i1|quotient[9]~36\)))) # (GND)
-- \i1|quotient[10]~38\ = CARRY((\i1|quotient\(10) & ((!\i1|quotient[9]~36\) # (!\i1|process_0~0_combout\))) # (!\i1|quotient\(10) & (!\i1|process_0~0_combout\ & !\i1|quotient[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(10),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[9]~36\,
	combout => \i1|quotient[10]~37_combout\,
	cout => \i1|quotient[10]~38\);

-- Location: FF_X3_Y52_N21
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(10));

-- Location: LCCOMB_X3_Y52_N22
\i1|quotient[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[11]~39_combout\ = (\i1|quotient\(11) & ((\i1|process_0~0_combout\ & (!\i1|quotient[10]~38\)) # (!\i1|process_0~0_combout\ & (\i1|quotient[10]~38\ & VCC)))) # (!\i1|quotient\(11) & ((\i1|process_0~0_combout\ & ((\i1|quotient[10]~38\) # (GND))) 
-- # (!\i1|process_0~0_combout\ & (!\i1|quotient[10]~38\))))
-- \i1|quotient[11]~40\ = CARRY((\i1|quotient\(11) & (\i1|process_0~0_combout\ & !\i1|quotient[10]~38\)) # (!\i1|quotient\(11) & ((\i1|process_0~0_combout\) # (!\i1|quotient[10]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(11),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[10]~38\,
	combout => \i1|quotient[11]~39_combout\,
	cout => \i1|quotient[11]~40\);

-- Location: FF_X3_Y52_N23
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(11));

-- Location: LCCOMB_X3_Y52_N24
\i1|quotient[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[12]~41_combout\ = ((\i1|quotient\(12) $ (\i1|process_0~0_combout\ $ (\i1|quotient[11]~40\)))) # (GND)
-- \i1|quotient[12]~42\ = CARRY((\i1|quotient\(12) & ((!\i1|quotient[11]~40\) # (!\i1|process_0~0_combout\))) # (!\i1|quotient\(12) & (!\i1|process_0~0_combout\ & !\i1|quotient[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(12),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[11]~40\,
	combout => \i1|quotient[12]~41_combout\,
	cout => \i1|quotient[12]~42\);

-- Location: FF_X3_Y52_N25
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(12));

-- Location: LCCOMB_X3_Y52_N26
\i1|quotient[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[13]~43_combout\ = (\i1|quotient\(13) & ((\i1|process_0~0_combout\ & (!\i1|quotient[12]~42\)) # (!\i1|process_0~0_combout\ & (\i1|quotient[12]~42\ & VCC)))) # (!\i1|quotient\(13) & ((\i1|process_0~0_combout\ & ((\i1|quotient[12]~42\) # (GND))) 
-- # (!\i1|process_0~0_combout\ & (!\i1|quotient[12]~42\))))
-- \i1|quotient[13]~44\ = CARRY((\i1|quotient\(13) & (\i1|process_0~0_combout\ & !\i1|quotient[12]~42\)) # (!\i1|quotient\(13) & ((\i1|process_0~0_combout\) # (!\i1|quotient[12]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(13),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[12]~42\,
	combout => \i1|quotient[13]~43_combout\,
	cout => \i1|quotient[13]~44\);

-- Location: FF_X3_Y52_N27
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(13));

-- Location: LCCOMB_X3_Y52_N28
\i1|quotient[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|quotient[14]~45_combout\ = ((\i1|quotient\(14) $ (\i1|process_0~0_combout\ $ (\i1|quotient[13]~44\)))) # (GND)
-- \i1|quotient[14]~46\ = CARRY((\i1|quotient\(14) & ((!\i1|quotient[13]~44\) # (!\i1|process_0~0_combout\))) # (!\i1|quotient\(14) & (!\i1|process_0~0_combout\ & !\i1|quotient[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|quotient\(14),
	datab => \i1|process_0~0_combout\,
	datad => VCC,
	cin => \i1|quotient[13]~44\,
	combout => \i1|quotient[14]~45_combout\,
	cout => \i1|quotient[14]~46\);

-- Location: FF_X3_Y52_N29
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(14));

-- Location: LCCOMB_X3_Y52_N30
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

-- Location: FF_X3_Y52_N31
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
	ena => \i1|quotient[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|quotient\(15));

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

ww_sa_e_z <= \sa_e_z~output_o\;

ww_sa_lt_z <= \sa_lt_z~output_o\;

ww_sld_a <= \sld_a~output_o\;

ww_slb_b <= \slb_b~output_o\;

ww_sslt_a <= \sslt_a~output_o\;

ww_sclr <= \sclr~output_o\;

ww_scnt <= \scnt~output_o\;

ww_sud <= \sud~output_o\;

ww_ssub_add <= \ssub_add~output_o\;
END structure;


