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

-- DATE "11/28/2019 21:15:02"

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

ENTITY 	demuxOP IS
    PORT (
	OP : IN std_logic_vector(3 DOWNTO 0);
	slt_op : BUFFER std_logic_vector(2 DOWNTO 0);
	rc_ops : BUFFER std_logic;
	const_ops : BUFFER std_logic;
	sln_ops : BUFFER std_logic;
	nand_op : BUFFER std_logic;
	lw_op : BUFFER std_logic;
	sw_op : BUFFER std_logic
	);
END demuxOP;

-- Design Ports Information
-- slt_op[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_op[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slt_op[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc_ops	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_ops	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sln_ops	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nand_op	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lw_op	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_op	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demuxOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_slt_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rc_ops : std_logic;
SIGNAL ww_const_ops : std_logic;
SIGNAL ww_sln_ops : std_logic;
SIGNAL ww_nand_op : std_logic;
SIGNAL ww_lw_op : std_logic;
SIGNAL ww_sw_op : std_logic;
SIGNAL \slt_op[0]~output_o\ : std_logic;
SIGNAL \slt_op[1]~output_o\ : std_logic;
SIGNAL \slt_op[2]~output_o\ : std_logic;
SIGNAL \rc_ops~output_o\ : std_logic;
SIGNAL \const_ops~output_o\ : std_logic;
SIGNAL \sln_ops~output_o\ : std_logic;
SIGNAL \nand_op~output_o\ : std_logic;
SIGNAL \lw_op~output_o\ : std_logic;
SIGNAL \sw_op~output_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \OP[3]~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OP <= OP;
slt_op <= ww_slt_op;
rc_ops <= ww_rc_ops;
const_ops <= ww_const_ops;
sln_ops <= ww_sln_ops;
nand_op <= ww_nand_op;
lw_op <= ww_lw_op;
sw_op <= ww_sw_op;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y44_N2
\slt_op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \slt_op[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\slt_op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \slt_op[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\slt_op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OP[3]~input_o\,
	devoe => ww_devoe,
	o => \slt_op[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\rc_ops~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \rc_ops~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\const_ops~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \const_ops~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\sln_ops~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \sln_ops~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\nand_op~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \nand_op~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\lw_op~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \lw_op~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\sw_op~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \sw_op~output_o\);

-- Location: IOIBUF_X0_Y42_N8
\OP[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\OP[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\OP[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(3),
	o => \OP[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\OP[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: LCCOMB_X1_Y44_N16
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\OP[3]~input_o\ & ((\OP[2]~input_o\) # ((!\OP[0]~input_o\ & \OP[1]~input_o\)))) # (!\OP[3]~input_o\ & (((\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\OP[2]~input_o\) # ((\OP[0]~input_o\ & (\OP[3]~input_o\ & \OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y44_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\OP[3]~input_o\ & (\OP[2]~input_o\ & ((\OP[0]~input_o\) # (!\OP[1]~input_o\)))) # (!\OP[3]~input_o\ & (\OP[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y44_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\OP[2]~input_o\ & (!\OP[3]~input_o\ & \OP[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y44_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\OP[2]~input_o\ & (!\OP[3]~input_o\ & \OP[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y44_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\OP[0]~input_o\ & (!\OP[2]~input_o\ & (\OP[3]~input_o\ & !\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y44_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\OP[0]~input_o\ & (\OP[2]~input_o\ & (\OP[3]~input_o\ & !\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y44_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\OP[0]~input_o\ & (\OP[2]~input_o\ & (\OP[3]~input_o\ & \OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \OP[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \Mux7~0_combout\);

ww_slt_op(0) <= \slt_op[0]~output_o\;

ww_slt_op(1) <= \slt_op[1]~output_o\;

ww_slt_op(2) <= \slt_op[2]~output_o\;

ww_rc_ops <= \rc_ops~output_o\;

ww_const_ops <= \const_ops~output_o\;

ww_sln_ops <= \sln_ops~output_o\;

ww_nand_op <= \nand_op~output_o\;

ww_lw_op <= \lw_op~output_o\;

ww_sw_op <= \sw_op~output_o\;
END structure;


