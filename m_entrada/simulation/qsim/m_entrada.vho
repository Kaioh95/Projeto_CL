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

-- DATE "11/28/2019 22:40:19"

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

ENTITY 	m_entrada IS
    PORT (
	reset : IN std_logic;
	valid : IN std_logic;
	operate : IN std_logic;
	input : IN std_logic_vector(15 DOWNTO 0);
	opcode : OUT std_logic_vector(3 DOWNTO 0);
	RA : OUT std_logic_vector(2 DOWNTO 0);
	RB : OUT std_logic_vector(2 DOWNTO 0);
	RC : OUT std_logic_vector(2 DOWNTO 0);
	allbits : OUT std_logic_vector(15 DOWNTO 0);
	reset_o : OUT std_logic;
	valid_o : OUT std_logic;
	operate_o : OUT std_logic
	);
END m_entrada;

-- Design Ports Information
-- opcode[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[0]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[1]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[3]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[4]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[9]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[10]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[11]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[12]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[13]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allbits[15]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_o	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid_o	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operate_o	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operate	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m_entrada IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_operate : std_logic;
SIGNAL ww_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_allbits : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reset_o : std_logic;
SIGNAL ww_valid_o : std_logic;
SIGNAL ww_operate_o : std_logic;
SIGNAL \opcode[0]~output_o\ : std_logic;
SIGNAL \opcode[1]~output_o\ : std_logic;
SIGNAL \opcode[2]~output_o\ : std_logic;
SIGNAL \opcode[3]~output_o\ : std_logic;
SIGNAL \RA[0]~output_o\ : std_logic;
SIGNAL \RA[1]~output_o\ : std_logic;
SIGNAL \RA[2]~output_o\ : std_logic;
SIGNAL \RB[0]~output_o\ : std_logic;
SIGNAL \RB[1]~output_o\ : std_logic;
SIGNAL \RB[2]~output_o\ : std_logic;
SIGNAL \RC[0]~output_o\ : std_logic;
SIGNAL \RC[1]~output_o\ : std_logic;
SIGNAL \RC[2]~output_o\ : std_logic;
SIGNAL \allbits[0]~output_o\ : std_logic;
SIGNAL \allbits[1]~output_o\ : std_logic;
SIGNAL \allbits[2]~output_o\ : std_logic;
SIGNAL \allbits[3]~output_o\ : std_logic;
SIGNAL \allbits[4]~output_o\ : std_logic;
SIGNAL \allbits[5]~output_o\ : std_logic;
SIGNAL \allbits[6]~output_o\ : std_logic;
SIGNAL \allbits[7]~output_o\ : std_logic;
SIGNAL \allbits[8]~output_o\ : std_logic;
SIGNAL \allbits[9]~output_o\ : std_logic;
SIGNAL \allbits[10]~output_o\ : std_logic;
SIGNAL \allbits[11]~output_o\ : std_logic;
SIGNAL \allbits[12]~output_o\ : std_logic;
SIGNAL \allbits[13]~output_o\ : std_logic;
SIGNAL \allbits[14]~output_o\ : std_logic;
SIGNAL \allbits[15]~output_o\ : std_logic;
SIGNAL \reset_o~output_o\ : std_logic;
SIGNAL \valid_o~output_o\ : std_logic;
SIGNAL \operate_o~output_o\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \valid~input_o\ : std_logic;
SIGNAL \operate~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_valid <= valid;
ww_operate <= operate;
ww_input <= input;
opcode <= ww_opcode;
RA <= ww_RA;
RB <= ww_RB;
RC <= ww_RC;
allbits <= ww_allbits;
reset_o <= ww_reset_o;
valid_o <= ww_valid_o;
operate_o <= ww_operate_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y36_N2
\opcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[12]~input_o\,
	devoe => ww_devoe,
	o => \opcode[0]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\opcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[13]~input_o\,
	devoe => ww_devoe,
	o => \opcode[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\opcode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[14]~input_o\,
	devoe => ww_devoe,
	o => \opcode[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\opcode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[15]~input_o\,
	devoe => ww_devoe,
	o => \opcode[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\RA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[9]~input_o\,
	devoe => ww_devoe,
	o => \RA[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\RA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[10]~input_o\,
	devoe => ww_devoe,
	o => \RA[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\RA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[11]~input_o\,
	devoe => ww_devoe,
	o => \RA[2]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\RB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[6]~input_o\,
	devoe => ww_devoe,
	o => \RB[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\RB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[7]~input_o\,
	devoe => ww_devoe,
	o => \RB[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\RB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[8]~input_o\,
	devoe => ww_devoe,
	o => \RB[2]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\RC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[3]~input_o\,
	devoe => ww_devoe,
	o => \RC[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\RC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[4]~input_o\,
	devoe => ww_devoe,
	o => \RC[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\RC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[5]~input_o\,
	devoe => ww_devoe,
	o => \RC[2]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\allbits[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[0]~input_o\,
	devoe => ww_devoe,
	o => \allbits[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\allbits[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[1]~input_o\,
	devoe => ww_devoe,
	o => \allbits[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\allbits[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[2]~input_o\,
	devoe => ww_devoe,
	o => \allbits[2]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\allbits[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[3]~input_o\,
	devoe => ww_devoe,
	o => \allbits[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\allbits[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[4]~input_o\,
	devoe => ww_devoe,
	o => \allbits[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\allbits[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[5]~input_o\,
	devoe => ww_devoe,
	o => \allbits[5]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\allbits[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[6]~input_o\,
	devoe => ww_devoe,
	o => \allbits[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\allbits[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[7]~input_o\,
	devoe => ww_devoe,
	o => \allbits[7]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\allbits[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[8]~input_o\,
	devoe => ww_devoe,
	o => \allbits[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\allbits[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[9]~input_o\,
	devoe => ww_devoe,
	o => \allbits[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\allbits[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[10]~input_o\,
	devoe => ww_devoe,
	o => \allbits[10]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\allbits[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[11]~input_o\,
	devoe => ww_devoe,
	o => \allbits[11]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\allbits[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[12]~input_o\,
	devoe => ww_devoe,
	o => \allbits[12]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\allbits[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[13]~input_o\,
	devoe => ww_devoe,
	o => \allbits[13]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\allbits[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[14]~input_o\,
	devoe => ww_devoe,
	o => \allbits[14]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\allbits[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \input[15]~input_o\,
	devoe => ww_devoe,
	o => \allbits[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\reset_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset~input_o\,
	devoe => ww_devoe,
	o => \reset_o~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\valid_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid~input_o\,
	devoe => ww_devoe,
	o => \valid_o~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\operate_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \operate~input_o\,
	devoe => ww_devoe,
	o => \operate_o~output_o\);

-- Location: IOIBUF_X115_Y37_N8
\input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valid,
	o => \valid~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\operate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operate,
	o => \operate~input_o\);

ww_opcode(0) <= \opcode[0]~output_o\;

ww_opcode(1) <= \opcode[1]~output_o\;

ww_opcode(2) <= \opcode[2]~output_o\;

ww_opcode(3) <= \opcode[3]~output_o\;

ww_RA(0) <= \RA[0]~output_o\;

ww_RA(1) <= \RA[1]~output_o\;

ww_RA(2) <= \RA[2]~output_o\;

ww_RB(0) <= \RB[0]~output_o\;

ww_RB(1) <= \RB[1]~output_o\;

ww_RB(2) <= \RB[2]~output_o\;

ww_RC(0) <= \RC[0]~output_o\;

ww_RC(1) <= \RC[1]~output_o\;

ww_RC(2) <= \RC[2]~output_o\;

ww_allbits(0) <= \allbits[0]~output_o\;

ww_allbits(1) <= \allbits[1]~output_o\;

ww_allbits(2) <= \allbits[2]~output_o\;

ww_allbits(3) <= \allbits[3]~output_o\;

ww_allbits(4) <= \allbits[4]~output_o\;

ww_allbits(5) <= \allbits[5]~output_o\;

ww_allbits(6) <= \allbits[6]~output_o\;

ww_allbits(7) <= \allbits[7]~output_o\;

ww_allbits(8) <= \allbits[8]~output_o\;

ww_allbits(9) <= \allbits[9]~output_o\;

ww_allbits(10) <= \allbits[10]~output_o\;

ww_allbits(11) <= \allbits[11]~output_o\;

ww_allbits(12) <= \allbits[12]~output_o\;

ww_allbits(13) <= \allbits[13]~output_o\;

ww_allbits(14) <= \allbits[14]~output_o\;

ww_allbits(15) <= \allbits[15]~output_o\;

ww_reset_o <= \reset_o~output_o\;

ww_valid_o <= \valid_o~output_o\;

ww_operate_o <= \operate_o~output_o\;
END structure;


