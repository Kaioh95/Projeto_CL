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

-- DATE "11/11/2019 20:50:56"

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

ENTITY 	hex_7seg IS
    PORT (
	entrada : IN std_logic_vector(3 DOWNTO 0);
	A : OUT std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END hex_7seg;

-- Design Ports Information
-- A	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hex_7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada <= entrada;
A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y46_N23
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X0_Y42_N8
\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X1_Y44_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\entrada[2]~input_o\ & (!\entrada[1]~input_o\ & (\entrada[3]~input_o\ $ (!\entrada[0]~input_o\)))) # (!\entrada[2]~input_o\ & (\entrada[0]~input_o\ & (\entrada[3]~input_o\ $ (!\entrada[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y44_N2
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\entrada[3]~input_o\ & ((\entrada[0]~input_o\ & ((\entrada[1]~input_o\))) # (!\entrada[0]~input_o\ & (\entrada[2]~input_o\)))) # (!\entrada[3]~input_o\ & (\entrada[2]~input_o\ & (\entrada[1]~input_o\ $ (\entrada[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y44_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\entrada[2]~input_o\ & (\entrada[3]~input_o\ & ((\entrada[1]~input_o\) # (!\entrada[0]~input_o\)))) # (!\entrada[2]~input_o\ & (!\entrada[3]~input_o\ & (\entrada[1]~input_o\ & !\entrada[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y44_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\entrada[1]~input_o\ & ((\entrada[2]~input_o\ & ((\entrada[0]~input_o\))) # (!\entrada[2]~input_o\ & (\entrada[3]~input_o\ & !\entrada[0]~input_o\)))) # (!\entrada[1]~input_o\ & (!\entrada[3]~input_o\ & (\entrada[2]~input_o\ $ 
-- (\entrada[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y44_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\entrada[1]~input_o\ & (((!\entrada[3]~input_o\ & \entrada[0]~input_o\)))) # (!\entrada[1]~input_o\ & ((\entrada[2]~input_o\ & (!\entrada[3]~input_o\)) # (!\entrada[2]~input_o\ & ((\entrada[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\entrada[2]~input_o\ & (\entrada[0]~input_o\ & (\entrada[3]~input_o\ $ (\entrada[1]~input_o\)))) # (!\entrada[2]~input_o\ & (!\entrada[3]~input_o\ & ((\entrada[1]~input_o\) # (\entrada[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y44_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\entrada[0]~input_o\ & ((\entrada[3]~input_o\) # (\entrada[2]~input_o\ $ (\entrada[1]~input_o\)))) # (!\entrada[0]~input_o\ & ((\entrada[1]~input_o\) # (\entrada[2]~input_o\ $ (\entrada[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux6~0_combout\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;
END structure;


