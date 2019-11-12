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

-- DATE "11/10/2019 21:50:23"

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

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	M : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	Cin : INOUT std_logic;
	Cout : OUT std_logic;
	SAIDA : OUT std_logic_vector(15 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- Cout	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[13]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[15]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
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
SIGNAL ww_M : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_SAIDA : std_logic_vector(15 DOWNTO 0);
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Cin~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \SAIDA[8]~output_o\ : std_logic;
SIGNAL \SAIDA[9]~output_o\ : std_logic;
SIGNAL \SAIDA[10]~output_o\ : std_logic;
SIGNAL \SAIDA[11]~output_o\ : std_logic;
SIGNAL \SAIDA[12]~output_o\ : std_logic;
SIGNAL \SAIDA[13]~output_o\ : std_logic;
SIGNAL \SAIDA[14]~output_o\ : std_logic;
SIGNAL \SAIDA[15]~output_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \Cin~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \l15|Yi~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \l15|Xi~3_combout\ : std_logic;
SIGNAL \l15|Xi~4_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \l13|Yi~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \l13|Xi~3_combout\ : std_logic;
SIGNAL \l13|Xi~4_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \l12|Xi~3_combout\ : std_logic;
SIGNAL \l12|Xi~4_combout\ : std_logic;
SIGNAL \l12|Yi~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \l9|Xi~3_combout\ : std_logic;
SIGNAL \l9|Xi~4_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \l6|Yi~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \l6|Xi~3_combout\ : std_logic;
SIGNAL \l6|Xi~4_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \l3|Xi~3_combout\ : std_logic;
SIGNAL \l3|Xi~4_combout\ : std_logic;
SIGNAL \l3|Yi~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \l2|Xi~3_combout\ : std_logic;
SIGNAL \l2|Xi~4_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \l1|Xi~4_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \l1|Xi~5_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \l0|Yi~0_combout\ : std_logic;
SIGNAL \l0|Xi~4_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \l0|Xi~5_combout\ : std_logic;
SIGNAL \o0|cout~0_combout\ : std_logic;
SIGNAL \l1|Yi~0_combout\ : std_logic;
SIGNAL \o1|cout~0_combout\ : std_logic;
SIGNAL \l2|Yi~0_combout\ : std_logic;
SIGNAL \o2|cout~0_combout\ : std_logic;
SIGNAL \o3|cout~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \l4|Yi~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \l4|Xi~3_combout\ : std_logic;
SIGNAL \l4|Xi~4_combout\ : std_logic;
SIGNAL \o4|cout~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \l5|Yi~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \l5|Xi~3_combout\ : std_logic;
SIGNAL \l5|Xi~4_combout\ : std_logic;
SIGNAL \o5|cout~0_combout\ : std_logic;
SIGNAL \o6|cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \l7|Yi~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \l7|Xi~3_combout\ : std_logic;
SIGNAL \l7|Xi~4_combout\ : std_logic;
SIGNAL \o7|cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \l8|Xi~3_combout\ : std_logic;
SIGNAL \l8|Xi~4_combout\ : std_logic;
SIGNAL \l8|Yi~0_combout\ : std_logic;
SIGNAL \o8|cout~0_combout\ : std_logic;
SIGNAL \l9|Yi~0_combout\ : std_logic;
SIGNAL \o9|cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \l10|Yi~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \l10|Xi~3_combout\ : std_logic;
SIGNAL \l10|Xi~4_combout\ : std_logic;
SIGNAL \o10|cout~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \l11|Xi~3_combout\ : std_logic;
SIGNAL \l11|Xi~4_combout\ : std_logic;
SIGNAL \l11|Yi~0_combout\ : std_logic;
SIGNAL \o11|cout~0_combout\ : std_logic;
SIGNAL \o12|cout~0_combout\ : std_logic;
SIGNAL \o13|cout~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \l14|Yi~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \l14|Xi~3_combout\ : std_logic;
SIGNAL \l14|Xi~4_combout\ : std_logic;
SIGNAL \o14|cout~0_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \o0|s~combout\ : std_logic;
SIGNAL \des~0_combout\ : std_logic;
SIGNAL \o1|s~combout\ : std_logic;
SIGNAL \shift|Mux15~0_combout\ : std_logic;
SIGNAL \o2|s~combout\ : std_logic;
SIGNAL \shift|Mux14~2_combout\ : std_logic;
SIGNAL \shift|Mux14~3_combout\ : std_logic;
SIGNAL \o3|s~combout\ : std_logic;
SIGNAL \shift|Mux13~2_combout\ : std_logic;
SIGNAL \shift|Mux13~3_combout\ : std_logic;
SIGNAL \o4|s~combout\ : std_logic;
SIGNAL \shift|Mux12~2_combout\ : std_logic;
SIGNAL \shift|Mux12~3_combout\ : std_logic;
SIGNAL \o5|s~combout\ : std_logic;
SIGNAL \shift|Mux11~2_combout\ : std_logic;
SIGNAL \shift|Mux11~3_combout\ : std_logic;
SIGNAL \o6|s~combout\ : std_logic;
SIGNAL \shift|Mux10~2_combout\ : std_logic;
SIGNAL \shift|Mux10~3_combout\ : std_logic;
SIGNAL \o7|s~combout\ : std_logic;
SIGNAL \shift|Mux9~2_combout\ : std_logic;
SIGNAL \shift|Mux9~3_combout\ : std_logic;
SIGNAL \o8|s~combout\ : std_logic;
SIGNAL \shift|Mux8~2_combout\ : std_logic;
SIGNAL \shift|Mux8~3_combout\ : std_logic;
SIGNAL \o9|s~combout\ : std_logic;
SIGNAL \shift|Mux7~2_combout\ : std_logic;
SIGNAL \shift|Mux7~3_combout\ : std_logic;
SIGNAL \o10|s~combout\ : std_logic;
SIGNAL \shift|Mux6~2_combout\ : std_logic;
SIGNAL \shift|Mux6~3_combout\ : std_logic;
SIGNAL \o11|s~combout\ : std_logic;
SIGNAL \shift|Mux5~2_combout\ : std_logic;
SIGNAL \shift|Mux5~3_combout\ : std_logic;
SIGNAL \o12|s~combout\ : std_logic;
SIGNAL \shift|Mux4~2_combout\ : std_logic;
SIGNAL \shift|Mux4~3_combout\ : std_logic;
SIGNAL \o13|s~combout\ : std_logic;
SIGNAL \shift|Mux3~2_combout\ : std_logic;
SIGNAL \shift|Mux3~3_combout\ : std_logic;
SIGNAL \o14|s~combout\ : std_logic;
SIGNAL \shift|Mux2~2_combout\ : std_logic;
SIGNAL \shift|Mux2~3_combout\ : std_logic;
SIGNAL \shift|Mux1~4_combout\ : std_logic;
SIGNAL \o15|s~combout\ : std_logic;
SIGNAL \shift|Mux1~2_combout\ : std_logic;
SIGNAL \shift|Mux1~3_combout\ : std_logic;
SIGNAL \shift|Mux0~0_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux1~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_M <= M;
ww_S1 <= S1;
ww_S0 <= S0;
Cout <= ww_Cout;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\shift|ALT_INV_Mux2~3_combout\ <= NOT \shift|Mux2~3_combout\;
\shift|ALT_INV_Mux3~3_combout\ <= NOT \shift|Mux3~3_combout\;
\shift|ALT_INV_Mux4~3_combout\ <= NOT \shift|Mux4~3_combout\;
\shift|ALT_INV_Mux5~3_combout\ <= NOT \shift|Mux5~3_combout\;
\shift|ALT_INV_Mux6~3_combout\ <= NOT \shift|Mux6~3_combout\;
\shift|ALT_INV_Mux7~3_combout\ <= NOT \shift|Mux7~3_combout\;
\shift|ALT_INV_Mux8~3_combout\ <= NOT \shift|Mux8~3_combout\;
\shift|ALT_INV_Mux9~3_combout\ <= NOT \shift|Mux9~3_combout\;
\shift|ALT_INV_Mux10~3_combout\ <= NOT \shift|Mux10~3_combout\;
\shift|ALT_INV_Mux11~3_combout\ <= NOT \shift|Mux11~3_combout\;
\shift|ALT_INV_Mux12~3_combout\ <= NOT \shift|Mux12~3_combout\;
\shift|ALT_INV_Mux13~3_combout\ <= NOT \shift|Mux13~3_combout\;
\shift|ALT_INV_Mux14~3_combout\ <= NOT \shift|Mux14~3_combout\;
\shift|ALT_INV_Mux0~0_combout\ <= NOT \shift|Mux0~0_combout\;
\shift|ALT_INV_Mux1~3_combout\ <= NOT \shift|Mux1~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N9
\Cin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cin~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Cin~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\SAIDA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\SAIDA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux14~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\SAIDA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux13~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\SAIDA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux12~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\SAIDA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux11~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\SAIDA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux10~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\SAIDA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux9~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\SAIDA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux8~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\SAIDA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux7~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\SAIDA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux6~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\SAIDA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux5~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[10]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\SAIDA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux4~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[11]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\SAIDA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux3~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[12]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\SAIDA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux2~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\SAIDA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux1~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[14]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\SAIDA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[15]~output_o\);

-- Location: IOIBUF_X58_Y73_N22
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X52_Y69_N0
\Cin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cin~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & \S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \S0~input_o\,
	combout => \Cin~0_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X48_Y70_N16
\l15|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l15|Yi~0_combout\ = (\S1~input_o\) # (\B[15]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l15|Yi~0_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X48_Y70_N26
\l15|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l15|Xi~3_combout\ = (\A[15]~input_o\ & (\S1~input_o\ $ (((\B[15]~input_o\) # (\S0~input_o\))))) # (!\A[15]~input_o\ & ((\B[15]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[15]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \S0~input_o\,
	datac => \A[15]~input_o\,
	datad => \S1~input_o\,
	combout => \l15|Xi~3_combout\);

-- Location: LCCOMB_X48_Y70_N20
\l15|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l15|Xi~4_combout\ = (\M~input_o\ & (\l15|Xi~3_combout\)) # (!\M~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l15|Xi~3_combout\,
	datab => \A[15]~input_o\,
	datac => \M~input_o\,
	combout => \l15|Xi~4_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X48_Y70_N28
\l13|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l13|Yi~0_combout\ = (\S1~input_o\) # (\B[13]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[13]~input_o\,
	datad => \S0~input_o\,
	combout => \l13|Yi~0_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X48_Y70_N18
\l13|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l13|Xi~3_combout\ = (\S1~input_o\ & (\A[13]~input_o\ $ (((\B[13]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[13]~input_o\ & ((\A[13]~input_o\) # (\S0~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \S0~input_o\,
	combout => \l13|Xi~3_combout\);

-- Location: LCCOMB_X48_Y70_N4
\l13|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l13|Xi~4_combout\ = (\M~input_o\ & (\l13|Xi~3_combout\)) # (!\M~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l13|Xi~3_combout\,
	datac => \A[13]~input_o\,
	combout => \l13|Xi~4_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X54_Y70_N10
\l12|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l12|Xi~3_combout\ = (\S1~input_o\ & (\A[12]~input_o\ $ (((\B[12]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[12]~input_o\ & ((\A[12]~input_o\) # (\S0~input_o\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \S0~input_o\,
	combout => \l12|Xi~3_combout\);

-- Location: LCCOMB_X54_Y70_N20
\l12|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l12|Xi~4_combout\ = (\M~input_o\ & (\l12|Xi~3_combout\)) # (!\M~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l12|Xi~3_combout\,
	datac => \A[12]~input_o\,
	datad => \M~input_o\,
	combout => \l12|Xi~4_combout\);

-- Location: LCCOMB_X54_Y70_N8
\l12|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l12|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \B[12]~input_o\,
	datad => \S1~input_o\,
	combout => \l12|Yi~0_combout\);

-- Location: IOIBUF_X65_Y73_N8
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
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X57_Y70_N20
\l9|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Xi~3_combout\ = (\S1~input_o\ & (\A[9]~input_o\ $ (((\B[9]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[9]~input_o\ & ((\S0~input_o\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & (\S0~input_o\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \A[9]~input_o\,
	combout => \l9|Xi~3_combout\);

-- Location: LCCOMB_X57_Y70_N6
\l9|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Xi~4_combout\ = (\M~input_o\ & ((\l9|Xi~3_combout\))) # (!\M~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \l9|Xi~3_combout\,
	datad => \M~input_o\,
	combout => \l9|Xi~4_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X58_Y70_N12
\l6|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[6]~input_o\,
	datad => \S1~input_o\,
	combout => \l6|Yi~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X58_Y70_N4
\l6|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Xi~3_combout\ = (\S1~input_o\ & (\A[6]~input_o\ $ (((\B[6]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[6]~input_o\ & ((\A[6]~input_o\) # (\S0~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \S0~input_o\,
	combout => \l6|Xi~3_combout\);

-- Location: LCCOMB_X58_Y70_N14
\l6|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Xi~4_combout\ = (\M~input_o\ & ((\l6|Xi~3_combout\))) # (!\M~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \M~input_o\,
	datac => \l6|Xi~3_combout\,
	combout => \l6|Xi~4_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X48_Y69_N4
\l3|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Xi~3_combout\ = (\A[3]~input_o\ & (\S1~input_o\ $ (((\B[3]~input_o\) # (\S0~input_o\))))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[3]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \S0~input_o\,
	datac => \A[3]~input_o\,
	datad => \S1~input_o\,
	combout => \l3|Xi~3_combout\);

-- Location: LCCOMB_X48_Y69_N6
\l3|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Xi~4_combout\ = (\M~input_o\ & ((\l3|Xi~3_combout\))) # (!\M~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \A[3]~input_o\,
	datac => \l3|Xi~3_combout\,
	combout => \l3|Xi~4_combout\);

-- Location: LCCOMB_X48_Y69_N20
\l3|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Yi~0_combout\ = (\S1~input_o\) # (\B[3]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l3|Yi~0_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X48_Y72_N24
\l2|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Xi~3_combout\ = (\A[2]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[2]~input_o\))))) # (!\A[2]~input_o\ & ((\S0~input_o\ & ((\B[2]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[2]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \S0~input_o\,
	datac => \B[2]~input_o\,
	datad => \S1~input_o\,
	combout => \l2|Xi~3_combout\);

-- Location: LCCOMB_X48_Y72_N2
\l2|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Xi~4_combout\ = (\M~input_o\ & ((\l2|Xi~3_combout\))) # (!\M~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \l2|Xi~3_combout\,
	datac => \M~input_o\,
	combout => \l2|Xi~4_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X49_Y69_N12
\l1|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~4_combout\ = (\M~input_o\ & ((\B[1]~input_o\) # ((\S1~input_o\ & \S0~input_o\)))) # (!\M~input_o\ & (!\S1~input_o\ & (!\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \B[1]~input_o\,
	combout => \l1|Xi~4_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X49_Y69_N30
\l1|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~5_combout\ = (\l1|Xi~4_combout\ & ((\A[1]~input_o\ & ((!\S1~input_o\))) # (!\A[1]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))) # (!\l1|Xi~4_combout\ & (\A[1]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|Xi~4_combout\,
	datab => \A[1]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l1|Xi~5_combout\);

-- Location: IOIBUF_X52_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X49_Y71_N16
\l0|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[0]~input_o\,
	datad => \S1~input_o\,
	combout => \l0|Yi~0_combout\);

-- Location: LCCOMB_X49_Y71_N10
\l0|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~4_combout\ = (\M~input_o\ & ((\B[0]~input_o\) # ((\S0~input_o\ & \S1~input_o\)))) # (!\M~input_o\ & (((!\S0~input_o\ & !\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \M~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l0|Xi~4_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X49_Y71_N12
\l0|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~5_combout\ = (\l0|Xi~4_combout\ & ((\A[0]~input_o\ & ((!\S1~input_o\))) # (!\A[0]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))) # (!\l0|Xi~4_combout\ & (\A[0]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|Xi~4_combout\,
	datab => \A[0]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l0|Xi~5_combout\);

-- Location: LCCOMB_X49_Y69_N20
\o0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o0|cout~0_combout\ = (\Cin~0_combout\ & ((\l0|Xi~5_combout\) # ((!\l0|Yi~0_combout\ & !\M~input_o\)))) # (!\Cin~0_combout\ & (!\l0|Yi~0_combout\ & (!\M~input_o\ & \l0|Xi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~0_combout\,
	datab => \l0|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \l0|Xi~5_combout\,
	combout => \o0|cout~0_combout\);

-- Location: LCCOMB_X49_Y69_N10
\l1|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Yi~0_combout\ = (\S1~input_o\) # (\B[1]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l1|Yi~0_combout\);

-- Location: LCCOMB_X49_Y69_N14
\o1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o1|cout~0_combout\ = (\l1|Xi~5_combout\ & ((\o0|cout~0_combout\) # ((!\M~input_o\ & !\l1|Yi~0_combout\)))) # (!\l1|Xi~5_combout\ & (\o0|cout~0_combout\ & (!\M~input_o\ & !\l1|Yi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|Xi~5_combout\,
	datab => \o0|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l1|Yi~0_combout\,
	combout => \o1|cout~0_combout\);

-- Location: LCCOMB_X49_Y69_N0
\l2|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[2]~input_o\,
	datad => \S1~input_o\,
	combout => \l2|Yi~0_combout\);

-- Location: LCCOMB_X49_Y69_N24
\o2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o2|cout~0_combout\ = (\l2|Xi~4_combout\ & ((\o1|cout~0_combout\) # ((!\M~input_o\ & !\l2|Yi~0_combout\)))) # (!\l2|Xi~4_combout\ & (\o1|cout~0_combout\ & (!\M~input_o\ & !\l2|Yi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Xi~4_combout\,
	datab => \o1|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l2|Yi~0_combout\,
	combout => \o2|cout~0_combout\);

-- Location: LCCOMB_X48_Y69_N30
\o3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o3|cout~0_combout\ = (\l3|Xi~4_combout\ & ((\o2|cout~0_combout\) # ((!\l3|Yi~0_combout\ & !\M~input_o\)))) # (!\l3|Xi~4_combout\ & (!\l3|Yi~0_combout\ & (!\M~input_o\ & \o2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Xi~4_combout\,
	datab => \l3|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \o2|cout~0_combout\,
	combout => \o3|cout~0_combout\);

-- Location: IOIBUF_X40_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X48_Y69_N18
\l4|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Yi~0_combout\ = (\S1~input_o\) # (\B[4]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l4|Yi~0_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X48_Y69_N24
\l4|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Xi~3_combout\ = (\A[4]~input_o\ & (\S1~input_o\ $ (((\B[4]~input_o\) # (\S0~input_o\))))) # (!\A[4]~input_o\ & ((\B[4]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (!\B[4]~input_o\ & (\S0~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \S0~input_o\,
	datac => \A[4]~input_o\,
	datad => \S1~input_o\,
	combout => \l4|Xi~3_combout\);

-- Location: LCCOMB_X48_Y69_N10
\l4|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Xi~4_combout\ = (\M~input_o\ & ((\l4|Xi~3_combout\))) # (!\M~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \M~input_o\,
	datad => \l4|Xi~3_combout\,
	combout => \l4|Xi~4_combout\);

-- Location: LCCOMB_X48_Y69_N16
\o4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o4|cout~0_combout\ = (\o3|cout~0_combout\ & ((\l4|Xi~4_combout\) # ((!\l4|Yi~0_combout\ & !\M~input_o\)))) # (!\o3|cout~0_combout\ & (!\l4|Yi~0_combout\ & (!\M~input_o\ & \l4|Xi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|cout~0_combout\,
	datab => \l4|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \l4|Xi~4_combout\,
	combout => \o4|cout~0_combout\);

-- Location: IOIBUF_X35_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X48_Y69_N8
\l5|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \B[5]~input_o\,
	datad => \S1~input_o\,
	combout => \l5|Yi~0_combout\);

-- Location: IOIBUF_X27_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X48_Y69_N28
\l5|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Xi~3_combout\ = (\A[5]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[5]~input_o\))))) # (!\A[5]~input_o\ & ((\S0~input_o\ & ((\B[5]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[5]~input_o\ & \S1~input_o\))))

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
	combout => \l5|Xi~3_combout\);

-- Location: LCCOMB_X48_Y69_N22
\l5|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Xi~4_combout\ = (\M~input_o\ & ((\l5|Xi~3_combout\))) # (!\M~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \l5|Xi~3_combout\,
	datac => \M~input_o\,
	combout => \l5|Xi~4_combout\);

-- Location: LCCOMB_X48_Y69_N26
\o5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o5|cout~0_combout\ = (\o4|cout~0_combout\ & ((\l5|Xi~4_combout\) # ((!\M~input_o\ & !\l5|Yi~0_combout\)))) # (!\o4|cout~0_combout\ & (!\M~input_o\ & (!\l5|Yi~0_combout\ & \l5|Xi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \o4|cout~0_combout\,
	datac => \l5|Yi~0_combout\,
	datad => \l5|Xi~4_combout\,
	combout => \o5|cout~0_combout\);

-- Location: LCCOMB_X58_Y70_N6
\o6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o6|cout~0_combout\ = (\l6|Xi~4_combout\ & ((\o5|cout~0_combout\) # ((!\l6|Yi~0_combout\ & !\M~input_o\)))) # (!\l6|Xi~4_combout\ & (!\l6|Yi~0_combout\ & (\o5|cout~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l6|Yi~0_combout\,
	datab => \l6|Xi~4_combout\,
	datac => \o5|cout~0_combout\,
	datad => \M~input_o\,
	combout => \o6|cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X58_Y70_N26
\l7|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[7]~input_o\,
	datad => \S1~input_o\,
	combout => \l7|Yi~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X58_Y70_N16
\l7|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Xi~3_combout\ = (\S1~input_o\ & (\A[7]~input_o\ $ (((\B[7]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[7]~input_o\ & ((\A[7]~input_o\) # (\S0~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \S0~input_o\,
	combout => \l7|Xi~3_combout\);

-- Location: LCCOMB_X58_Y70_N2
\l7|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Xi~4_combout\ = (\M~input_o\ & (\l7|Xi~3_combout\)) # (!\M~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l7|Xi~3_combout\,
	datac => \A[7]~input_o\,
	datad => \M~input_o\,
	combout => \l7|Xi~4_combout\);

-- Location: LCCOMB_X57_Y70_N10
\o7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o7|cout~0_combout\ = (\o6|cout~0_combout\ & ((\l7|Xi~4_combout\) # ((!\l7|Yi~0_combout\ & !\M~input_o\)))) # (!\o6|cout~0_combout\ & (!\l7|Yi~0_combout\ & (\l7|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o6|cout~0_combout\,
	datab => \l7|Yi~0_combout\,
	datac => \l7|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o7|cout~0_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X58_Y71_N10
\l8|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l8|Xi~3_combout\ = (\S1~input_o\ & (\A[8]~input_o\ $ (((\B[8]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[8]~input_o\ & ((\A[8]~input_o\) # (\S0~input_o\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \S0~input_o\,
	combout => \l8|Xi~3_combout\);

-- Location: LCCOMB_X58_Y71_N12
\l8|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l8|Xi~4_combout\ = (\M~input_o\ & (\l8|Xi~3_combout\)) # (!\M~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l8|Xi~3_combout\,
	datac => \A[8]~input_o\,
	datad => \M~input_o\,
	combout => \l8|Xi~4_combout\);

-- Location: LCCOMB_X58_Y71_N0
\l8|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l8|Yi~0_combout\ = (\S1~input_o\) # (\B[8]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[8]~input_o\,
	datac => \S0~input_o\,
	combout => \l8|Yi~0_combout\);

-- Location: LCCOMB_X57_Y70_N28
\o8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o8|cout~0_combout\ = (\o7|cout~0_combout\ & ((\l8|Xi~4_combout\) # ((!\l8|Yi~0_combout\ & !\M~input_o\)))) # (!\o7|cout~0_combout\ & (\l8|Xi~4_combout\ & (!\l8|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|cout~0_combout\,
	datab => \l8|Xi~4_combout\,
	datac => \l8|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o8|cout~0_combout\);

-- Location: LCCOMB_X57_Y70_N8
\l9|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \B[9]~input_o\,
	combout => \l9|Yi~0_combout\);

-- Location: LCCOMB_X57_Y70_N22
\o9|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o9|cout~0_combout\ = (\l9|Xi~4_combout\ & ((\o8|cout~0_combout\) # ((!\l9|Yi~0_combout\ & !\M~input_o\)))) # (!\l9|Xi~4_combout\ & (\o8|cout~0_combout\ & (!\l9|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l9|Xi~4_combout\,
	datab => \o8|cout~0_combout\,
	datac => \l9|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o9|cout~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X58_Y70_N24
\l10|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l10|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \B[10]~input_o\,
	datad => \S1~input_o\,
	combout => \l10|Yi~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X58_Y70_N20
\l10|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l10|Xi~3_combout\ = (\S1~input_o\ & (\A[10]~input_o\ $ (((\B[10]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\A[10]~input_o\ & ((\B[10]~input_o\) # (\S0~input_o\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \S0~input_o\,
	combout => \l10|Xi~3_combout\);

-- Location: LCCOMB_X58_Y70_N22
\l10|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l10|Xi~4_combout\ = (\M~input_o\ & (\l10|Xi~3_combout\)) # (!\M~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l10|Xi~3_combout\,
	datac => \A[10]~input_o\,
	datad => \M~input_o\,
	combout => \l10|Xi~4_combout\);

-- Location: LCCOMB_X58_Y70_N8
\o10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o10|cout~0_combout\ = (\o9|cout~0_combout\ & ((\l10|Xi~4_combout\) # ((!\l10|Yi~0_combout\ & !\M~input_o\)))) # (!\o9|cout~0_combout\ & (!\l10|Yi~0_combout\ & (\l10|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o9|cout~0_combout\,
	datab => \l10|Yi~0_combout\,
	datac => \l10|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o10|cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X55_Y70_N6
\l11|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l11|Xi~3_combout\ = (\S1~input_o\ & (\A[11]~input_o\ $ (((\B[11]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[11]~input_o\ & ((\A[11]~input_o\) # (\S0~input_o\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \S0~input_o\,
	combout => \l11|Xi~3_combout\);

-- Location: LCCOMB_X55_Y70_N24
\l11|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l11|Xi~4_combout\ = (\M~input_o\ & (\l11|Xi~3_combout\)) # (!\M~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l11|Xi~3_combout\,
	datab => \M~input_o\,
	datac => \A[11]~input_o\,
	combout => \l11|Xi~4_combout\);

-- Location: LCCOMB_X55_Y70_N0
\l11|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l11|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \B[11]~input_o\,
	datad => \S1~input_o\,
	combout => \l11|Yi~0_combout\);

-- Location: LCCOMB_X55_Y70_N26
\o11|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o11|cout~0_combout\ = (\o10|cout~0_combout\ & ((\l11|Xi~4_combout\) # ((!\l11|Yi~0_combout\ & !\M~input_o\)))) # (!\o10|cout~0_combout\ & (\l11|Xi~4_combout\ & (!\l11|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o10|cout~0_combout\,
	datab => \l11|Xi~4_combout\,
	datac => \l11|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o11|cout~0_combout\);

-- Location: LCCOMB_X49_Y70_N24
\o12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o12|cout~0_combout\ = (\l12|Xi~4_combout\ & ((\o11|cout~0_combout\) # ((!\l12|Yi~0_combout\ & !\M~input_o\)))) # (!\l12|Xi~4_combout\ & (!\l12|Yi~0_combout\ & (\o11|cout~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l12|Xi~4_combout\,
	datab => \l12|Yi~0_combout\,
	datac => \o11|cout~0_combout\,
	datad => \M~input_o\,
	combout => \o12|cout~0_combout\);

-- Location: LCCOMB_X48_Y70_N6
\o13|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o13|cout~0_combout\ = (\l13|Xi~4_combout\ & ((\o12|cout~0_combout\) # ((!\M~input_o\ & !\l13|Yi~0_combout\)))) # (!\l13|Xi~4_combout\ & (!\M~input_o\ & (!\l13|Yi~0_combout\ & \o12|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l13|Yi~0_combout\,
	datac => \l13|Xi~4_combout\,
	datad => \o12|cout~0_combout\,
	combout => \o13|cout~0_combout\);

-- Location: IOIBUF_X31_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X48_Y70_N2
\l14|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l14|Yi~0_combout\ = (\S1~input_o\) # (\B[14]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \S0~input_o\,
	datad => \S1~input_o\,
	combout => \l14|Yi~0_combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X48_Y70_N22
\l14|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l14|Xi~3_combout\ = (\A[14]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[14]~input_o\))))) # (!\A[14]~input_o\ & ((\S0~input_o\ & ((\B[14]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[14]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \S0~input_o\,
	datac => \B[14]~input_o\,
	datad => \S1~input_o\,
	combout => \l14|Xi~3_combout\);

-- Location: LCCOMB_X48_Y70_N24
\l14|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l14|Xi~4_combout\ = (\M~input_o\ & (\l14|Xi~3_combout\)) # (!\M~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l14|Xi~3_combout\,
	datac => \M~input_o\,
	datad => \A[14]~input_o\,
	combout => \l14|Xi~4_combout\);

-- Location: LCCOMB_X48_Y70_N0
\o14|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o14|cout~0_combout\ = (\o13|cout~0_combout\ & ((\l14|Xi~4_combout\) # ((!\l14|Yi~0_combout\ & !\M~input_o\)))) # (!\o13|cout~0_combout\ & (!\l14|Yi~0_combout\ & (!\M~input_o\ & \l14|Xi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o13|cout~0_combout\,
	datab => \l14|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \l14|Xi~4_combout\,
	combout => \o14|cout~0_combout\);

-- Location: LCCOMB_X48_Y70_N10
\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\l15|Xi~4_combout\ & (!\M~input_o\ & (!\l15|Yi~0_combout\ & !\o14|cout~0_combout\))) # (!\l15|Xi~4_combout\ & (\o14|cout~0_combout\ & ((\M~input_o\) # (\l15|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l15|Yi~0_combout\,
	datac => \l15|Xi~4_combout\,
	datad => \o14|cout~0_combout\,
	combout => \Cout~0_combout\);

-- Location: LCCOMB_X49_Y69_N2
\o0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o0|s~combout\ = \Cin~0_combout\ $ (\l0|Xi~5_combout\ $ (((\l0|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~0_combout\,
	datab => \l0|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \l0|Xi~5_combout\,
	combout => \o0|s~combout\);

-- Location: LCCOMB_X52_Y69_N10
\des~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \des~0_combout\ = (!\M~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \S1~input_o\,
	combout => \des~0_combout\);

-- Location: LCCOMB_X49_Y69_N28
\o1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o1|s~combout\ = \l1|Xi~5_combout\ $ (\o0|cout~0_combout\ $ (((\M~input_o\) # (\l1|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|Xi~5_combout\,
	datab => \o0|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l1|Yi~0_combout\,
	combout => \o1|s~combout\);

-- Location: LCCOMB_X49_Y69_N6
\shift|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux15~0_combout\ = (\des~0_combout\ & (\S0~input_o\ & ((!\o1|s~combout\)))) # (!\des~0_combout\ & (((!\o0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \o0|s~combout\,
	datac => \des~0_combout\,
	datad => \o1|s~combout\,
	combout => \shift|Mux15~0_combout\);

-- Location: LCCOMB_X49_Y69_N16
\o2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o2|s~combout\ = \l2|Xi~4_combout\ $ (\o1|cout~0_combout\ $ (((\M~input_o\) # (\l2|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Xi~4_combout\,
	datab => \o1|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l2|Yi~0_combout\,
	combout => \o2|s~combout\);

-- Location: LCCOMB_X49_Y69_N18
\shift|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux14~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o2|s~combout\)) # (!\S0~input_o\ & ((\o0|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \o2|s~combout\,
	datac => \des~0_combout\,
	datad => \o0|s~combout\,
	combout => \shift|Mux14~2_combout\);

-- Location: LCCOMB_X49_Y69_N8
\shift|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux14~3_combout\ = (\shift|Mux14~2_combout\) # ((\o1|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \shift|Mux14~2_combout\,
	datac => \M~input_o\,
	datad => \o1|s~combout\,
	combout => \shift|Mux14~3_combout\);

-- Location: LCCOMB_X48_Y69_N12
\o3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o3|s~combout\ = \l3|Xi~4_combout\ $ (\o2|cout~0_combout\ $ (((\l3|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Xi~4_combout\,
	datab => \l3|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \o2|cout~0_combout\,
	combout => \o3|s~combout\);

-- Location: LCCOMB_X49_Y69_N4
\shift|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux13~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o3|s~combout\)) # (!\S0~input_o\ & ((\o1|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o1|s~combout\,
	combout => \shift|Mux13~2_combout\);

-- Location: LCCOMB_X49_Y69_N26
\shift|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux13~3_combout\ = (\shift|Mux13~2_combout\) # ((\o2|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \o2|s~combout\,
	datac => \shift|Mux13~2_combout\,
	datad => \S1~input_o\,
	combout => \shift|Mux13~3_combout\);

-- Location: LCCOMB_X48_Y69_N14
\o4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o4|s~combout\ = \o3|cout~0_combout\ $ (\l4|Xi~4_combout\ $ (((\l4|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|cout~0_combout\,
	datab => \l4|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \l4|Xi~4_combout\,
	combout => \o4|s~combout\);

-- Location: LCCOMB_X49_Y69_N22
\shift|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux12~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o4|s~combout\)) # (!\S0~input_o\ & ((\o2|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o4|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o2|s~combout\,
	combout => \shift|Mux12~2_combout\);

-- Location: LCCOMB_X48_Y69_N2
\shift|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux12~3_combout\ = (\shift|Mux12~2_combout\) # ((\o3|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|s~combout\,
	datab => \shift|Mux12~2_combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \shift|Mux12~3_combout\);

-- Location: LCCOMB_X48_Y69_N0
\o5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o5|s~combout\ = \o4|cout~0_combout\ $ (\l5|Xi~4_combout\ $ (((\M~input_o\) # (\l5|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \o4|cout~0_combout\,
	datac => \l5|Yi~0_combout\,
	datad => \l5|Xi~4_combout\,
	combout => \o5|s~combout\);

-- Location: LCCOMB_X49_Y70_N10
\shift|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux11~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o5|s~combout\))) # (!\S0~input_o\ & (\o3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|s~combout\,
	datab => \o5|s~combout\,
	datac => \S0~input_o\,
	datad => \des~0_combout\,
	combout => \shift|Mux11~2_combout\);

-- Location: LCCOMB_X49_Y70_N4
\shift|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux11~3_combout\ = (\shift|Mux11~2_combout\) # ((\o4|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o4|s~combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \shift|Mux11~2_combout\,
	combout => \shift|Mux11~3_combout\);

-- Location: LCCOMB_X58_Y70_N18
\o6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o6|s~combout\ = \l6|Xi~4_combout\ $ (\o5|cout~0_combout\ $ (((\l6|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l6|Yi~0_combout\,
	datab => \l6|Xi~4_combout\,
	datac => \o5|cout~0_combout\,
	datad => \M~input_o\,
	combout => \o6|s~combout\);

-- Location: LCCOMB_X49_Y70_N20
\shift|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux10~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o6|s~combout\))) # (!\S0~input_o\ & (\o4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o4|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o6|s~combout\,
	combout => \shift|Mux10~2_combout\);

-- Location: LCCOMB_X49_Y70_N22
\shift|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux10~3_combout\ = (\shift|Mux10~2_combout\) # ((\o5|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux10~2_combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \o5|s~combout\,
	combout => \shift|Mux10~3_combout\);

-- Location: LCCOMB_X58_Y70_N28
\o7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o7|s~combout\ = \o6|cout~0_combout\ $ (\l7|Xi~4_combout\ $ (((\l7|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o6|cout~0_combout\,
	datab => \l7|Xi~4_combout\,
	datac => \l7|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o7|s~combout\);

-- Location: LCCOMB_X58_Y70_N30
\shift|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux9~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o7|s~combout\)) # (!\S0~input_o\ & ((\o5|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|s~combout\,
	datab => \o5|s~combout\,
	datac => \des~0_combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux9~2_combout\);

-- Location: LCCOMB_X58_Y70_N10
\shift|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux9~3_combout\ = (\shift|Mux9~2_combout\) # ((\o6|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \o6|s~combout\,
	datac => \shift|Mux9~2_combout\,
	datad => \M~input_o\,
	combout => \shift|Mux9~3_combout\);

-- Location: LCCOMB_X57_Y70_N0
\o8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o8|s~combout\ = \o7|cout~0_combout\ $ (\l8|Xi~4_combout\ $ (((\l8|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|cout~0_combout\,
	datab => \l8|Xi~4_combout\,
	datac => \l8|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o8|s~combout\);

-- Location: LCCOMB_X57_Y70_N26
\shift|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux8~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o8|s~combout\))) # (!\S0~input_o\ & (\o6|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o6|s~combout\,
	datab => \o8|s~combout\,
	datac => \des~0_combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux8~2_combout\);

-- Location: LCCOMB_X57_Y70_N12
\shift|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux8~3_combout\ = (\shift|Mux8~2_combout\) # ((\o7|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux8~2_combout\,
	datab => \o7|s~combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux8~3_combout\);

-- Location: LCCOMB_X57_Y70_N4
\o9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o9|s~combout\ = \l9|Xi~4_combout\ $ (\o8|cout~0_combout\ $ (((\l9|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l9|Xi~4_combout\,
	datab => \o8|cout~0_combout\,
	datac => \l9|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o9|s~combout\);

-- Location: LCCOMB_X57_Y70_N30
\shift|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux7~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o9|s~combout\))) # (!\S0~input_o\ & (\o7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des~0_combout\,
	datab => \o7|s~combout\,
	datac => \o9|s~combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux7~2_combout\);

-- Location: LCCOMB_X57_Y70_N14
\shift|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux7~3_combout\ = (\shift|Mux7~2_combout\) # ((\o8|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux7~2_combout\,
	datab => \o8|s~combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux7~3_combout\);

-- Location: LCCOMB_X58_Y70_N0
\o10|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o10|s~combout\ = \o9|cout~0_combout\ $ (\l10|Xi~4_combout\ $ (((\l10|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o9|cout~0_combout\,
	datab => \l10|Yi~0_combout\,
	datac => \l10|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o10|s~combout\);

-- Location: LCCOMB_X57_Y70_N16
\shift|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux6~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o10|s~combout\))) # (!\S0~input_o\ & (\o8|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des~0_combout\,
	datab => \o8|s~combout\,
	datac => \o10|s~combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux6~2_combout\);

-- Location: LCCOMB_X57_Y70_N24
\shift|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux6~3_combout\ = (\shift|Mux6~2_combout\) # ((\o9|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux6~2_combout\,
	datab => \o9|s~combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux6~3_combout\);

-- Location: LCCOMB_X55_Y70_N28
\o11|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o11|s~combout\ = \o10|cout~0_combout\ $ (\l11|Xi~4_combout\ $ (((\l11|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o10|cout~0_combout\,
	datab => \l11|Xi~4_combout\,
	datac => \l11|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o11|s~combout\);

-- Location: LCCOMB_X57_Y70_N18
\shift|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux5~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o11|s~combout\)) # (!\S0~input_o\ & ((\o9|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des~0_combout\,
	datab => \o11|s~combout\,
	datac => \o9|s~combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux5~2_combout\);

-- Location: LCCOMB_X57_Y70_N2
\shift|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux5~3_combout\ = (\shift|Mux5~2_combout\) # ((\o10|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux5~2_combout\,
	datab => \o10|s~combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux5~3_combout\);

-- Location: LCCOMB_X49_Y70_N6
\o12|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o12|s~combout\ = \l12|Xi~4_combout\ $ (\o11|cout~0_combout\ $ (((\l12|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l12|Xi~4_combout\,
	datab => \l12|Yi~0_combout\,
	datac => \o11|cout~0_combout\,
	datad => \M~input_o\,
	combout => \o12|s~combout\);

-- Location: LCCOMB_X49_Y70_N16
\shift|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux4~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o12|s~combout\)) # (!\S0~input_o\ & ((\o10|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o12|s~combout\,
	datab => \o10|s~combout\,
	datac => \S0~input_o\,
	datad => \des~0_combout\,
	combout => \shift|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y70_N0
\shift|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux4~3_combout\ = (\shift|Mux4~2_combout\) # ((\o11|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o11|s~combout\,
	datab => \shift|Mux4~2_combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux4~3_combout\);

-- Location: LCCOMB_X48_Y70_N12
\o13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o13|s~combout\ = \l13|Xi~4_combout\ $ (\o12|cout~0_combout\ $ (((\M~input_o\) # (\l13|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l13|Yi~0_combout\,
	datac => \l13|Xi~4_combout\,
	datad => \o12|cout~0_combout\,
	combout => \o13|s~combout\);

-- Location: LCCOMB_X49_Y70_N26
\shift|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux3~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o13|s~combout\)) # (!\S0~input_o\ & ((\o11|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o13|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o11|s~combout\,
	combout => \shift|Mux3~2_combout\);

-- Location: LCCOMB_X49_Y70_N18
\shift|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux3~3_combout\ = (\shift|Mux3~2_combout\) # ((\o12|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux3~2_combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \o12|s~combout\,
	combout => \shift|Mux3~3_combout\);

-- Location: LCCOMB_X48_Y70_N14
\o14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o14|s~combout\ = \o13|cout~0_combout\ $ (\l14|Xi~4_combout\ $ (((\l14|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o13|cout~0_combout\,
	datab => \l14|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \l14|Xi~4_combout\,
	combout => \o14|s~combout\);

-- Location: LCCOMB_X49_Y70_N28
\shift|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux2~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o14|s~combout\))) # (!\S0~input_o\ & (\o12|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o12|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o14|s~combout\,
	combout => \shift|Mux2~2_combout\);

-- Location: LCCOMB_X49_Y70_N12
\shift|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux2~3_combout\ = (\shift|Mux2~2_combout\) # ((\o13|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o13|s~combout\,
	datab => \shift|Mux2~2_combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux2~3_combout\);

-- Location: LCCOMB_X49_Y70_N14
\shift|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux1~4_combout\ = (\M~input_o\ & (\o14|s~combout\)) # (!\M~input_o\ & ((\S1~input_o\ & ((\o13|s~combout\))) # (!\S1~input_o\ & (\o14|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o14|s~combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \o13|s~combout\,
	combout => \shift|Mux1~4_combout\);

-- Location: LCCOMB_X48_Y70_N8
\o15|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o15|s~combout\ = \l15|Xi~4_combout\ $ (\o14|cout~0_combout\ $ (((\M~input_o\) # (\l15|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l15|Yi~0_combout\,
	datac => \l15|Xi~4_combout\,
	datad => \o14|cout~0_combout\,
	combout => \o15|s~combout\);

-- Location: LCCOMB_X49_Y70_N30
\shift|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux1~2_combout\ = (\o15|s~combout\ & (!\M~input_o\ & \S1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o15|s~combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	combout => \shift|Mux1~2_combout\);

-- Location: LCCOMB_X49_Y70_N8
\shift|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux1~3_combout\ = (\S0~input_o\ & ((\shift|Mux1~2_combout\) # ((\shift|Mux1~4_combout\ & !\des~0_combout\)))) # (!\S0~input_o\ & (\shift|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \shift|Mux1~4_combout\,
	datac => \shift|Mux1~2_combout\,
	datad => \des~0_combout\,
	combout => \shift|Mux1~3_combout\);

-- Location: LCCOMB_X49_Y70_N2
\shift|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux0~0_combout\ = (\des~0_combout\ & ((\o14|s~combout\) # ((\S0~input_o\)))) # (!\des~0_combout\ & (((\o15|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o14|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o15|s~combout\,
	combout => \shift|Mux0~0_combout\);

-- Location: IOIBUF_X52_Y73_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Cin,
	o => \Cin~input_o\);

ww_Cout <= \Cout~output_o\;

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;

ww_SAIDA(8) <= \SAIDA[8]~output_o\;

ww_SAIDA(9) <= \SAIDA[9]~output_o\;

ww_SAIDA(10) <= \SAIDA[10]~output_o\;

ww_SAIDA(11) <= \SAIDA[11]~output_o\;

ww_SAIDA(12) <= \SAIDA[12]~output_o\;

ww_SAIDA(13) <= \SAIDA[13]~output_o\;

ww_SAIDA(14) <= \SAIDA[14]~output_o\;

ww_SAIDA(15) <= \SAIDA[15]~output_o\;

Cin <= \Cin~output_o\;
END structure;


