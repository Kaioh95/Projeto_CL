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

-- DATE "11/29/2019 21:23:48"

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

ENTITY 	countDec IS
    PORT (
	i : IN std_logic_vector(5 DOWNTO 0);
	rd : IN std_logic;
	count : IN std_logic;
	clear : IN std_logic;
	clk : IN std_logic;
	s : OUT std_logic_vector(5 DOWNTO 0);
	fc : OUT std_logic
	);
END countDec;

-- Design Ports Information
-- s[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fc	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[0]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF countDec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_rd : std_logic;
SIGNAL ww_count : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_fc : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \fc~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \valor[0]~6_combout\ : std_logic;
SIGNAL \i[0]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \count~input_o\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \valor[0]~8_combout\ : std_logic;
SIGNAL \valor[0]~7\ : std_logic;
SIGNAL \valor[1]~9_combout\ : std_logic;
SIGNAL \i[1]~input_o\ : std_logic;
SIGNAL \valor[1]~10\ : std_logic;
SIGNAL \valor[2]~11_combout\ : std_logic;
SIGNAL \i[2]~input_o\ : std_logic;
SIGNAL \valor[2]~12\ : std_logic;
SIGNAL \valor[3]~13_combout\ : std_logic;
SIGNAL \i[3]~input_o\ : std_logic;
SIGNAL \valor[3]~14\ : std_logic;
SIGNAL \valor[4]~15_combout\ : std_logic;
SIGNAL \i[4]~input_o\ : std_logic;
SIGNAL \valor[4]~16\ : std_logic;
SIGNAL \valor[5]~17_combout\ : std_logic;
SIGNAL \i[5]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL valor : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_count~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i <= i;
ww_rd <= rd;
ww_count <= count;
ww_clear <= clear;
ww_clk <= clk;
s <= ww_s;
fc <= ww_fc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_count~input_o\ <= NOT \count~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y11_N16
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(0),
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(1),
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(2),
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(3),
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(4),
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(5),
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\fc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \fc~output_o\);

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

-- Location: LCCOMB_X1_Y11_N6
\valor[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[0]~6_combout\ = valor(0) $ (VCC)
-- \valor[0]~7\ = CARRY(valor(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor(0),
	datad => VCC,
	combout => \valor[0]~6_combout\,
	cout => \valor[0]~7\);

-- Location: IOIBUF_X0_Y14_N8
\i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(0),
	o => \i[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\count~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count,
	o => \count~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\rd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: LCCOMB_X1_Y11_N0
\valor[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[0]~8_combout\ = (\count~input_o\) # ((\clear~input_o\) # (\rd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~input_o\,
	datab => \clear~input_o\,
	datad => \rd~input_o\,
	combout => \valor[0]~8_combout\);

-- Location: FF_X1_Y11_N7
\valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor[0]~6_combout\,
	asdata => \i[0]~input_o\,
	sclr => \clear~input_o\,
	sload => \ALT_INV_count~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(0));

-- Location: LCCOMB_X1_Y11_N8
\valor[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[1]~9_combout\ = (valor(1) & (\valor[0]~7\ & VCC)) # (!valor(1) & (!\valor[0]~7\))
-- \valor[1]~10\ = CARRY((!valor(1) & !\valor[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor(1),
	datad => VCC,
	cin => \valor[0]~7\,
	combout => \valor[1]~9_combout\,
	cout => \valor[1]~10\);

-- Location: IOIBUF_X0_Y11_N22
\i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(1),
	o => \i[1]~input_o\);

-- Location: FF_X1_Y11_N9
\valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor[1]~9_combout\,
	asdata => \i[1]~input_o\,
	sclr => \clear~input_o\,
	sload => \ALT_INV_count~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(1));

-- Location: LCCOMB_X1_Y11_N10
\valor[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[2]~11_combout\ = (valor(2) & ((GND) # (!\valor[1]~10\))) # (!valor(2) & (\valor[1]~10\ $ (GND)))
-- \valor[2]~12\ = CARRY((valor(2)) # (!\valor[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor(2),
	datad => VCC,
	cin => \valor[1]~10\,
	combout => \valor[2]~11_combout\,
	cout => \valor[2]~12\);

-- Location: IOIBUF_X0_Y12_N15
\i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(2),
	o => \i[2]~input_o\);

-- Location: FF_X1_Y11_N11
\valor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor[2]~11_combout\,
	asdata => \i[2]~input_o\,
	sclr => \clear~input_o\,
	sload => \ALT_INV_count~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(2));

-- Location: LCCOMB_X1_Y11_N12
\valor[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[3]~13_combout\ = (valor(3) & (\valor[2]~12\ & VCC)) # (!valor(3) & (!\valor[2]~12\))
-- \valor[3]~14\ = CARRY((!valor(3) & !\valor[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor(3),
	datad => VCC,
	cin => \valor[2]~12\,
	combout => \valor[3]~13_combout\,
	cout => \valor[3]~14\);

-- Location: IOIBUF_X0_Y12_N22
\i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(3),
	o => \i[3]~input_o\);

-- Location: FF_X1_Y11_N13
\valor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor[3]~13_combout\,
	asdata => \i[3]~input_o\,
	sclr => \clear~input_o\,
	sload => \ALT_INV_count~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(3));

-- Location: LCCOMB_X1_Y11_N14
\valor[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[4]~15_combout\ = (valor(4) & ((GND) # (!\valor[3]~14\))) # (!valor(4) & (\valor[3]~14\ $ (GND)))
-- \valor[4]~16\ = CARRY((valor(4)) # (!\valor[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor(4),
	datad => VCC,
	cin => \valor[3]~14\,
	combout => \valor[4]~15_combout\,
	cout => \valor[4]~16\);

-- Location: IOIBUF_X0_Y14_N1
\i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(4),
	o => \i[4]~input_o\);

-- Location: FF_X1_Y11_N15
\valor[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor[4]~15_combout\,
	asdata => \i[4]~input_o\,
	sclr => \clear~input_o\,
	sload => \ALT_INV_count~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(4));

-- Location: LCCOMB_X1_Y11_N16
\valor[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[5]~17_combout\ = \valor[4]~16\ $ (!valor(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => valor(5),
	cin => \valor[4]~16\,
	combout => \valor[5]~17_combout\);

-- Location: IOIBUF_X0_Y13_N1
\i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(5),
	o => \i[5]~input_o\);

-- Location: FF_X1_Y11_N17
\valor[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor[5]~17_combout\,
	asdata => \i[5]~input_o\,
	sclr => \clear~input_o\,
	sload => \ALT_INV_count~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(5));

-- Location: LCCOMB_X1_Y11_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!valor(1) & (!valor(0) & (!valor(2) & !valor(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor(1),
	datab => valor(0),
	datac => valor(2),
	datad => valor(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!valor(4) & !valor(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => valor(4),
	datad => valor(5),
	combout => \Equal0~1_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_fc <= \fc~output_o\;
END structure;


