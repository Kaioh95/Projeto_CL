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

-- DATE "11/16/2019 22:37:29"

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

ENTITY 	pc IS
    PORT (
	clk : IN std_logic;
	bt : IN std_logic;
	a_e_z : IN std_logic;
	a_lt_z : IN std_logic;
	ld_a : OUT std_logic;
	ld_b : OUT std_logic;
	slt_a : OUT std_logic;
	clr : OUT std_logic;
	cnt : OUT std_logic;
	ud : OUT std_logic;
	sub_add : OUT std_logic
	);
END pc;

-- Design Ports Information
-- ld_a	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_b	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_a	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ud	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_add	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_e_z	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_lt_z	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pc IS
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
SIGNAL ww_a_e_z : std_logic;
SIGNAL ww_a_lt_z : std_logic;
SIGNAL ww_ld_a : std_logic;
SIGNAL ww_ld_b : std_logic;
SIGNAL ww_slt_a : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_cnt : std_logic;
SIGNAL ww_ud : std_logic;
SIGNAL ww_sub_add : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ld_a~output_o\ : std_logic;
SIGNAL \ld_b~output_o\ : std_logic;
SIGNAL \slt_a~output_o\ : std_logic;
SIGNAL \clr~output_o\ : std_logic;
SIGNAL \cnt~output_o\ : std_logic;
SIGNAL \ud~output_o\ : std_logic;
SIGNAL \sub_add~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a_e_z~input_o\ : std_logic;
SIGNAL \bt~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \a_lt_z~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ld_a~8_combout\ : std_logic;
SIGNAL \ld_a~9_combout\ : std_logic;
SIGNAL \ld_a~1_combout\ : std_logic;
SIGNAL \ld_a~3_combout\ : std_logic;
SIGNAL \ld_a~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \ld_a~reg0_emulated_q\ : std_logic;
SIGNAL \ld_a~2_combout\ : std_logic;
SIGNAL \ld_b~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ld_b~1_combout\ : std_logic;
SIGNAL \ld_b~0_combout\ : std_logic;
SIGNAL \ld_b~6_combout\ : std_logic;
SIGNAL \ld_b~reg0_emulated_q\ : std_logic;
SIGNAL \ld_b~2_combout\ : std_logic;
SIGNAL \slt_a~0_combout\ : std_logic;
SIGNAL \slt_a~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \slt_a~reg0_q\ : std_logic;
SIGNAL \clr~6_combout\ : std_logic;
SIGNAL \clr~1_combout\ : std_logic;
SIGNAL \clr~0_combout\ : std_logic;
SIGNAL \clr~reg0_emulated_q\ : std_logic;
SIGNAL \clr~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt~reg0_q\ : std_logic;
SIGNAL \sub_add~0_combout\ : std_logic;
SIGNAL \sub_add~reg0_q\ : std_logic;
SIGNAL state : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_cnt~0_combout\ : std_logic;
SIGNAL \ALT_INV_clr~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ld_b~0_combout\ : std_logic;
SIGNAL \ALT_INV_ld_a~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_bt <= bt;
ww_a_e_z <= a_e_z;
ww_a_lt_z <= a_lt_z;
ld_a <= ww_ld_a;
ld_b <= ww_ld_b;
slt_a <= ww_slt_a;
clr <= ww_clr;
cnt <= ww_cnt;
ud <= ww_ud;
sub_add <= ww_sub_add;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_cnt~0_combout\ <= NOT \cnt~0_combout\;
\ALT_INV_clr~0_combout\ <= NOT \clr~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_ld_b~0_combout\ <= NOT \ld_b~0_combout\;
\ALT_INV_ld_a~0_combout\ <= NOT \ld_a~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y0_N9
\ld_a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_a~2_combout\,
	devoe => ww_devoe,
	o => \ld_a~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\ld_b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_b~2_combout\,
	devoe => ww_devoe,
	o => \ld_b~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\slt_a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slt_a~reg0_q\,
	devoe => ww_devoe,
	o => \slt_a~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\clr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr~2_combout\,
	devoe => ww_devoe,
	o => \clr~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\cnt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt~reg0_q\,
	devoe => ww_devoe,
	o => \cnt~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ud~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sub_add~reg0_q\,
	devoe => ww_devoe,
	o => \ud~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\sub_add~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sub_add~reg0_q\,
	devoe => ww_devoe,
	o => \sub_add~output_o\);

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

-- Location: IOIBUF_X35_Y0_N22
\a_e_z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_e_z,
	o => \a_e_z~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\bt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt,
	o => \bt~input_o\);

-- Location: LCCOMB_X33_Y3_N22
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (state(1) & ((state(2) & ((!state(0)) # (!\bt~input_o\))) # (!state(2) & ((state(0)))))) # (!state(1) & (((state(2) & state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt~input_o\,
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X33_Y3_N23
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X33_Y3_N26
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\bt~input_o\ & ((state(1) & ((!state(0)))) # (!state(1) & (state(2))))) # (!\bt~input_o\ & ((state(2)) # (state(1) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt~input_o\,
	datab => state(2),
	datac => state(1),
	datad => state(0),
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X38_Y0_N8
\a_lt_z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_lt_z,
	o => \a_lt_z~input_o\);

-- Location: LCCOMB_X33_Y3_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\a_lt_z~input_o\ & (!\a_e_z~input_o\ & (state(1) & !state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_lt_z~input_o\,
	datab => \a_e_z~input_o\,
	datac => state(1),
	datad => state(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X33_Y3_N30
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\) # (\Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: FF_X33_Y3_N31
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X33_Y3_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\bt~input_o\ & (((!state(0))) # (!state(1)))) # (!\bt~input_o\ & (((state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => \bt~input_o\,
	datad => state(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y3_N16
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!state(2) & (state(1) & state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(1),
	datad => state(0),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X33_Y3_N0
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # ((\a_e_z~input_o\ & \Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_e_z~input_o\,
	datac => \Mux2~0_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X33_Y3_N1
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X32_Y3_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!state(0) & (!state(1) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => state(2),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X32_Y3_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!state(1) & (state(0) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(0),
	datad => state(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y3_N12
\ld_a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_a~8_combout\ = state(0) $ (state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	datad => state(2),
	combout => \ld_a~8_combout\);

-- Location: LCCOMB_X32_Y3_N6
\ld_a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_a~9_combout\ = (\Equal0~3_combout\) # ((state(1) & (!\Equal0~0_combout\ & !\ld_a~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => state(1),
	datac => \Equal0~0_combout\,
	datad => \ld_a~8_combout\,
	combout => \ld_a~9_combout\);

-- Location: LCCOMB_X32_Y3_N16
\ld_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_a~1_combout\ = (!\ld_a~9_combout\ & ((\Equal0~0_combout\) # (\ld_a~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_a~9_combout\,
	datab => \Equal0~0_combout\,
	datad => \ld_a~1_combout\,
	combout => \ld_a~1_combout\);

-- Location: LCCOMB_X32_Y3_N28
\ld_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_a~3_combout\ = \ld_a~1_combout\ $ (((!\a_e_z~input_o\ & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_e_z~input_o\,
	datac => state(1),
	datad => \ld_a~1_combout\,
	combout => \ld_a~3_combout\);

-- Location: LCCOMB_X32_Y3_N8
\ld_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_a~0_combout\ = (\Equal0~0_combout\) # (\ld_a~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datad => \ld_a~9_combout\,
	combout => \ld_a~0_combout\);

-- Location: LCCOMB_X32_Y3_N4
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (state(1) & (state(0) & !state(2))) # (!state(1) & (!state(0) & state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(0),
	datad => state(2),
	combout => \Mux3~1_combout\);

-- Location: FF_X32_Y3_N29
\ld_a~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ld_a~3_combout\,
	clrn => \ALT_INV_ld_a~0_combout\,
	ena => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ld_a~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y3_N18
\ld_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_a~2_combout\ = (!\ld_a~9_combout\ & ((\Equal0~0_combout\) # (\ld_a~1_combout\ $ (\ld_a~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_a~9_combout\,
	datab => \ld_a~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \ld_a~reg0_emulated_q\,
	combout => \ld_a~2_combout\);

-- Location: LCCOMB_X33_Y3_N12
\ld_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_b~7_combout\ = (state(1) & ((!state(2)) # (!state(0)))) # (!state(1) & ((state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => state(2),
	combout => \ld_b~7_combout\);

-- Location: LCCOMB_X33_Y3_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!state(0) & (state(1) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => state(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X33_Y3_N18
\ld_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_b~1_combout\ = (\ld_b~7_combout\ & ((\Equal0~1_combout\) # (\ld_b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~7_combout\,
	datab => \Equal0~1_combout\,
	datad => \ld_b~1_combout\,
	combout => \ld_b~1_combout\);

-- Location: LCCOMB_X33_Y3_N28
\ld_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_b~0_combout\ = (\Equal0~1_combout\) # (!\ld_b~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~7_combout\,
	datad => \Equal0~1_combout\,
	combout => \ld_b~0_combout\);

-- Location: LCCOMB_X33_Y3_N4
\ld_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_b~6_combout\ = (state(2) & (!state(1) & !state(0))) # (!state(2) & (state(1) & state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(1),
	datad => state(0),
	combout => \ld_b~6_combout\);

-- Location: FF_X33_Y3_N29
\ld_b~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ld_b~1_combout\,
	clrn => \ALT_INV_ld_b~0_combout\,
	sload => VCC,
	ena => \ld_b~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ld_b~reg0_emulated_q\);

-- Location: LCCOMB_X33_Y3_N10
\ld_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_b~2_combout\ = (\ld_b~7_combout\ & ((\Equal0~1_combout\) # (\ld_b~1_combout\ $ (\ld_b~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_b~1_combout\,
	datab => \Equal0~1_combout\,
	datac => \ld_b~reg0_emulated_q\,
	datad => \ld_b~7_combout\,
	combout => \ld_b~2_combout\);

-- Location: LCCOMB_X33_Y3_N14
\slt_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_a~0_combout\ = (\slt_a~reg0_q\ & (((state(0)) # (state(1))) # (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(1),
	datad => \slt_a~reg0_q\,
	combout => \slt_a~0_combout\);

-- Location: LCCOMB_X34_Y3_N28
\slt_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt_a~1_combout\ = (\slt_a~0_combout\) # ((!\a_e_z~input_o\ & \Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_e_z~input_o\,
	datac => \Mux3~2_combout\,
	datad => \slt_a~0_combout\,
	combout => \slt_a~1_combout\);

-- Location: LCCOMB_X33_Y3_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!state(1) & !state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(2),
	combout => \Equal0~2_combout\);

-- Location: FF_X34_Y3_N29
\slt_a~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slt_a~1_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slt_a~reg0_q\);

-- Location: LCCOMB_X32_Y3_N24
\clr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr~6_combout\ = (!\Equal0~3_combout\ & ((\Equal0~0_combout\) # ((state(1) & !\ld_a~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => state(1),
	datac => \Equal0~3_combout\,
	datad => \ld_a~8_combout\,
	combout => \clr~6_combout\);

-- Location: LCCOMB_X32_Y3_N22
\clr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr~1_combout\ = (!\clr~6_combout\ & ((\Equal0~3_combout\) # (\clr~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~6_combout\,
	datab => \Equal0~3_combout\,
	datac => \clr~1_combout\,
	combout => \clr~1_combout\);

-- Location: LCCOMB_X32_Y3_N20
\clr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr~0_combout\ = (\Equal0~3_combout\) # (\clr~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~3_combout\,
	datad => \clr~6_combout\,
	combout => \clr~0_combout\);

-- Location: FF_X32_Y3_N9
\clr~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clr~1_combout\,
	clrn => \ALT_INV_clr~0_combout\,
	sload => VCC,
	ena => \ld_b~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clr~reg0_emulated_q\);

-- Location: LCCOMB_X32_Y3_N10
\clr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr~2_combout\ = (!\clr~6_combout\ & ((\Equal0~3_combout\) # (\clr~1_combout\ $ (\clr~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~1_combout\,
	datab => \clr~6_combout\,
	datac => \Equal0~3_combout\,
	datad => \clr~reg0_emulated_q\,
	combout => \clr~2_combout\);

-- Location: LCCOMB_X31_Y3_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\a_e_z~input_o\ & state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_e_z~input_o\,
	datad => state(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X32_Y3_N14
\cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\Equal0~0_combout\) # ((\Equal0~3_combout\) # ((state(1) & !\ld_a~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => state(1),
	datac => \Equal0~3_combout\,
	datad => \ld_a~8_combout\,
	combout => \cnt~0_combout\);

-- Location: FF_X31_Y3_N25
\cnt~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_cnt~0_combout\,
	ena => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt~reg0_q\);

-- Location: LCCOMB_X33_Y3_N24
\sub_add~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_add~0_combout\ = (\a_e_z~input_o\ & (((\sub_add~reg0_q\)))) # (!\a_e_z~input_o\ & ((\Mux3~2_combout\ & (\a_lt_z~input_o\)) # (!\Mux3~2_combout\ & ((\sub_add~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_lt_z~input_o\,
	datab => \a_e_z~input_o\,
	datac => \sub_add~reg0_q\,
	datad => \Mux3~2_combout\,
	combout => \sub_add~0_combout\);

-- Location: FF_X33_Y3_N25
\sub_add~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sub_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_add~reg0_q\);

ww_ld_a <= \ld_a~output_o\;

ww_ld_b <= \ld_b~output_o\;

ww_slt_a <= \slt_a~output_o\;

ww_clr <= \clr~output_o\;

ww_cnt <= \cnt~output_o\;

ww_ud <= \ud~output_o\;

ww_sub_add <= \sub_add~output_o\;
END structure;


