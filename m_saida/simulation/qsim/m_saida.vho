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

-- DATE "11/29/2019 10:23:18"

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

ENTITY 	m_saida IS
    PORT (
	result_i : IN std_logic_vector(15 DOWNTO 0);
	over_i : IN std_logic;
	endOP_i : IN std_logic;
	neg_o : OUT std_logic;
	zero_o : OUT std_logic;
	over_o : OUT std_logic;
	endOP_o : OUT std_logic;
	DS0 : OUT std_logic_vector(6 DOWNTO 0);
	DS1 : OUT std_logic_vector(6 DOWNTO 0);
	DS2 : OUT std_logic_vector(6 DOWNTO 0);
	DS3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END m_saida;

-- Design Ports Information
-- neg_o	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero_o	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- over_o	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endOP_o	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS0[6]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[0]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[1]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[3]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[4]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[5]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS1[6]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[4]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS2[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[2]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[3]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[4]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS3[6]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[15]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[0]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[2]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[5]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[6]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[7]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[8]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[9]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[10]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[11]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[12]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[13]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_i[14]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- over_i	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endOP_i	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m_saida IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_result_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_over_i : std_logic;
SIGNAL ww_endOP_i : std_logic;
SIGNAL ww_neg_o : std_logic;
SIGNAL ww_zero_o : std_logic;
SIGNAL ww_over_o : std_logic;
SIGNAL ww_endOP_o : std_logic;
SIGNAL ww_DS0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DS1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DS2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DS3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \neg_o~output_o\ : std_logic;
SIGNAL \zero_o~output_o\ : std_logic;
SIGNAL \over_o~output_o\ : std_logic;
SIGNAL \endOP_o~output_o\ : std_logic;
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
SIGNAL \result_i[15]~input_o\ : std_logic;
SIGNAL \result_i[14]~input_o\ : std_logic;
SIGNAL \result_i[12]~input_o\ : std_logic;
SIGNAL \result_i[13]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \result_i[8]~input_o\ : std_logic;
SIGNAL \result_i[11]~input_o\ : std_logic;
SIGNAL \result_i[9]~input_o\ : std_logic;
SIGNAL \result_i[10]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \result_i[1]~input_o\ : std_logic;
SIGNAL \result_i[3]~input_o\ : std_logic;
SIGNAL \result_i[2]~input_o\ : std_logic;
SIGNAL \result_i[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \result_i[5]~input_o\ : std_logic;
SIGNAL \result_i[6]~input_o\ : std_logic;
SIGNAL \result_i[4]~input_o\ : std_logic;
SIGNAL \result_i[7]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \over_i~input_o\ : std_logic;
SIGNAL \endOP_i~input_o\ : std_logic;
SIGNAL \display0|Mux0~0_combout\ : std_logic;
SIGNAL \display0|Mux1~0_combout\ : std_logic;
SIGNAL \display0|Mux2~0_combout\ : std_logic;
SIGNAL \display0|Mux3~0_combout\ : std_logic;
SIGNAL \display0|Mux4~0_combout\ : std_logic;
SIGNAL \display0|Mux5~0_combout\ : std_logic;
SIGNAL \display0|Mux6~0_combout\ : std_logic;
SIGNAL \display1|Mux0~0_combout\ : std_logic;
SIGNAL \display1|Mux1~0_combout\ : std_logic;
SIGNAL \display1|Mux2~0_combout\ : std_logic;
SIGNAL \display1|Mux3~0_combout\ : std_logic;
SIGNAL \display1|Mux4~0_combout\ : std_logic;
SIGNAL \display1|Mux5~0_combout\ : std_logic;
SIGNAL \display1|Mux6~0_combout\ : std_logic;
SIGNAL \display2|Mux0~0_combout\ : std_logic;
SIGNAL \display2|Mux1~0_combout\ : std_logic;
SIGNAL \display2|Mux2~0_combout\ : std_logic;
SIGNAL \display2|Mux3~0_combout\ : std_logic;
SIGNAL \display2|Mux4~0_combout\ : std_logic;
SIGNAL \display2|Mux5~0_combout\ : std_logic;
SIGNAL \display2|Mux6~0_combout\ : std_logic;
SIGNAL \display3|Mux0~0_combout\ : std_logic;
SIGNAL \display3|Mux1~0_combout\ : std_logic;
SIGNAL \display3|Mux2~0_combout\ : std_logic;
SIGNAL \display3|Mux3~0_combout\ : std_logic;
SIGNAL \display3|Mux4~0_combout\ : std_logic;
SIGNAL \display3|Mux5~0_combout\ : std_logic;
SIGNAL \display3|Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_endOP_i~input_o\ : std_logic;
SIGNAL \ALT_INV_over_i~input_o\ : std_logic;
SIGNAL \ALT_INV_result_i[15]~input_o\ : std_logic;
SIGNAL \display3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \display2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_result_i <= result_i;
ww_over_i <= over_i;
ww_endOP_i <= endOP_i;
neg_o <= ww_neg_o;
zero_o <= ww_zero_o;
over_o <= ww_over_o;
endOP_o <= ww_endOP_o;
DS0 <= ww_DS0;
DS1 <= ww_DS1;
DS2 <= ww_DS2;
DS3 <= ww_DS3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_endOP_i~input_o\ <= NOT \endOP_i~input_o\;
\ALT_INV_over_i~input_o\ <= NOT \over_i~input_o\;
\ALT_INV_result_i[15]~input_o\ <= NOT \result_i[15]~input_o\;
\display3|ALT_INV_Mux6~0_combout\ <= NOT \display3|Mux6~0_combout\;
\display2|ALT_INV_Mux6~0_combout\ <= NOT \display2|Mux6~0_combout\;
\display1|ALT_INV_Mux6~0_combout\ <= NOT \display1|Mux6~0_combout\;
\display0|ALT_INV_Mux6~0_combout\ <= NOT \display0|Mux6~0_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y48_N2
\neg_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_result_i[15]~input_o\,
	devoe => ww_devoe,
	o => \neg_o~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\zero_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~4_combout\,
	devoe => ww_devoe,
	o => \zero_o~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\over_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_over_i~input_o\,
	devoe => ww_devoe,
	o => \over_o~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\endOP_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_endOP_i~input_o\,
	devoe => ww_devoe,
	o => \endOP_o~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\DS0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS0[0]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\DS0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS0[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\DS0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS0[2]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\DS0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS0[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DS0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS0[4]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\DS0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS0[5]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\DS0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS0[6]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\DS1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS1[0]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\DS1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS1[1]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\DS1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS1[2]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\DS1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS1[3]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\DS1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS1[4]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\DS1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS1[5]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\DS1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS1[6]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\DS2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS2[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\DS2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS2[1]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\DS2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS2[2]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\DS2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS2[3]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\DS2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS2[4]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\DS2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS2[5]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\DS2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS2[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\DS3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DS3[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\DS3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DS3[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\DS3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DS3[2]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\DS3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DS3[3]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\DS3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DS3[4]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\DS3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DS3[5]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\DS3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DS3[6]~output_o\);

-- Location: IOIBUF_X115_Y37_N8
\result_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(15),
	o => \result_i[15]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\result_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(14),
	o => \result_i[14]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\result_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(12),
	o => \result_i[12]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\result_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(13),
	o => \result_i[13]~input_o\);

-- Location: LCCOMB_X109_Y69_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\result_i[14]~input_o\ & (!\result_i[12]~input_o\ & (!\result_i[15]~input_o\ & !\result_i[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X0_Y63_N22
\result_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(8),
	o => \result_i[8]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\result_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(11),
	o => \result_i[11]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\result_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(9),
	o => \result_i[9]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\result_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(10),
	o => \result_i[10]~input_o\);

-- Location: LCCOMB_X1_Y65_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\result_i[8]~input_o\ & (!\result_i[11]~input_o\ & (!\result_i[9]~input_o\ & !\result_i[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X0_Y13_N8
\result_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(1),
	o => \result_i[1]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\result_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(3),
	o => \result_i[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\result_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(2),
	o => \result_i[2]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\result_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(0),
	o => \result_i[0]~input_o\);

-- Location: LCCOMB_X1_Y16_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\result_i[1]~input_o\ & (!\result_i[3]~input_o\ & (!\result_i[2]~input_o\ & !\result_i[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X115_Y65_N22
\result_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(5),
	o => \result_i[5]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\result_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(6),
	o => \result_i[6]~input_o\);

-- Location: IOIBUF_X115_Y64_N8
\result_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(4),
	o => \result_i[4]~input_o\);

-- Location: IOIBUF_X115_Y66_N15
\result_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_result_i(7),
	o => \result_i[7]~input_o\);

-- Location: LCCOMB_X114_Y68_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\result_i[5]~input_o\ & (!\result_i[6]~input_o\ & (!\result_i[4]~input_o\ & !\result_i[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y65_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X115_Y49_N8
\over_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_over_i,
	o => \over_i~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\endOP_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endOP_i,
	o => \endOP_i~input_o\);

-- Location: LCCOMB_X1_Y16_N18
\display0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux0~0_combout\ = (\result_i[3]~input_o\ & (\result_i[0]~input_o\ & (\result_i[1]~input_o\ $ (\result_i[2]~input_o\)))) # (!\result_i[3]~input_o\ & (!\result_i[1]~input_o\ & (\result_i[2]~input_o\ $ (\result_i[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \display0|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\display0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux1~0_combout\ = (\result_i[1]~input_o\ & ((\result_i[0]~input_o\ & (\result_i[3]~input_o\)) # (!\result_i[0]~input_o\ & ((\result_i[2]~input_o\))))) # (!\result_i[1]~input_o\ & (\result_i[2]~input_o\ & (\result_i[3]~input_o\ $ 
-- (\result_i[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \display0|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y16_N14
\display0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux2~0_combout\ = (\result_i[3]~input_o\ & (\result_i[2]~input_o\ & ((\result_i[1]~input_o\) # (!\result_i[0]~input_o\)))) # (!\result_i[3]~input_o\ & (\result_i[1]~input_o\ & (!\result_i[2]~input_o\ & !\result_i[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \display0|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y16_N8
\display0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux3~0_combout\ = (\result_i[1]~input_o\ & ((\result_i[2]~input_o\ & ((\result_i[0]~input_o\))) # (!\result_i[2]~input_o\ & (\result_i[3]~input_o\ & !\result_i[0]~input_o\)))) # (!\result_i[1]~input_o\ & (!\result_i[3]~input_o\ & 
-- (\result_i[2]~input_o\ $ (\result_i[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \display0|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y16_N26
\display0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux4~0_combout\ = (\result_i[1]~input_o\ & (!\result_i[3]~input_o\ & ((\result_i[0]~input_o\)))) # (!\result_i[1]~input_o\ & ((\result_i[2]~input_o\ & (!\result_i[3]~input_o\)) # (!\result_i[2]~input_o\ & ((\result_i[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \display0|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y16_N4
\display0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux5~0_combout\ = (\result_i[1]~input_o\ & (!\result_i[3]~input_o\ & ((\result_i[0]~input_o\) # (!\result_i[2]~input_o\)))) # (!\result_i[1]~input_o\ & (\result_i[0]~input_o\ & (\result_i[3]~input_o\ $ (!\result_i[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \display0|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y16_N30
\display0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux6~0_combout\ = (\result_i[0]~input_o\ & ((\result_i[3]~input_o\) # (\result_i[1]~input_o\ $ (\result_i[2]~input_o\)))) # (!\result_i[0]~input_o\ & ((\result_i[1]~input_o\) # (\result_i[3]~input_o\ $ (\result_i[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[1]~input_o\,
	datab => \result_i[3]~input_o\,
	datac => \result_i[2]~input_o\,
	datad => \result_i[0]~input_o\,
	combout => \display0|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y68_N10
\display1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux0~0_combout\ = (\result_i[6]~input_o\ & (!\result_i[5]~input_o\ & (\result_i[4]~input_o\ $ (!\result_i[7]~input_o\)))) # (!\result_i[6]~input_o\ & (\result_i[4]~input_o\ & (\result_i[5]~input_o\ $ (!\result_i[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \display1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y68_N20
\display1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux1~0_combout\ = (\result_i[5]~input_o\ & ((\result_i[4]~input_o\ & ((\result_i[7]~input_o\))) # (!\result_i[4]~input_o\ & (\result_i[6]~input_o\)))) # (!\result_i[5]~input_o\ & (\result_i[6]~input_o\ & (\result_i[4]~input_o\ $ 
-- (\result_i[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \display1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y68_N30
\display1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux2~0_combout\ = (\result_i[6]~input_o\ & (\result_i[7]~input_o\ & ((\result_i[5]~input_o\) # (!\result_i[4]~input_o\)))) # (!\result_i[6]~input_o\ & (\result_i[5]~input_o\ & (!\result_i[4]~input_o\ & !\result_i[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \display1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y68_N0
\display1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux3~0_combout\ = (\result_i[5]~input_o\ & ((\result_i[6]~input_o\ & (\result_i[4]~input_o\)) # (!\result_i[6]~input_o\ & (!\result_i[4]~input_o\ & \result_i[7]~input_o\)))) # (!\result_i[5]~input_o\ & (!\result_i[7]~input_o\ & 
-- (\result_i[6]~input_o\ $ (\result_i[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \display1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y68_N26
\display1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux4~0_combout\ = (\result_i[5]~input_o\ & (((\result_i[4]~input_o\ & !\result_i[7]~input_o\)))) # (!\result_i[5]~input_o\ & ((\result_i[6]~input_o\ & ((!\result_i[7]~input_o\))) # (!\result_i[6]~input_o\ & (\result_i[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \display1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y68_N4
\display1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux5~0_combout\ = (\result_i[5]~input_o\ & (!\result_i[7]~input_o\ & ((\result_i[4]~input_o\) # (!\result_i[6]~input_o\)))) # (!\result_i[5]~input_o\ & (\result_i[4]~input_o\ & (\result_i[6]~input_o\ $ (!\result_i[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \display1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y68_N14
\display1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux6~0_combout\ = (\result_i[4]~input_o\ & ((\result_i[7]~input_o\) # (\result_i[5]~input_o\ $ (\result_i[6]~input_o\)))) # (!\result_i[4]~input_o\ & ((\result_i[5]~input_o\) # (\result_i[6]~input_o\ $ (\result_i[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[5]~input_o\,
	datab => \result_i[6]~input_o\,
	datac => \result_i[4]~input_o\,
	datad => \result_i[7]~input_o\,
	combout => \display1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y65_N12
\display2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux0~0_combout\ = (\result_i[11]~input_o\ & (\result_i[8]~input_o\ & (\result_i[9]~input_o\ $ (\result_i[10]~input_o\)))) # (!\result_i[11]~input_o\ & (!\result_i[9]~input_o\ & (\result_i[8]~input_o\ $ (\result_i[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \display2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y65_N14
\display2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux1~0_combout\ = (\result_i[11]~input_o\ & ((\result_i[8]~input_o\ & (\result_i[9]~input_o\)) # (!\result_i[8]~input_o\ & ((\result_i[10]~input_o\))))) # (!\result_i[11]~input_o\ & (\result_i[10]~input_o\ & (\result_i[8]~input_o\ $ 
-- (\result_i[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \display2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y65_N16
\display2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux2~0_combout\ = (\result_i[11]~input_o\ & (\result_i[10]~input_o\ & ((\result_i[9]~input_o\) # (!\result_i[8]~input_o\)))) # (!\result_i[11]~input_o\ & (!\result_i[8]~input_o\ & (\result_i[9]~input_o\ & !\result_i[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \display2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y65_N18
\display2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux3~0_combout\ = (\result_i[9]~input_o\ & ((\result_i[8]~input_o\ & ((\result_i[10]~input_o\))) # (!\result_i[8]~input_o\ & (\result_i[11]~input_o\ & !\result_i[10]~input_o\)))) # (!\result_i[9]~input_o\ & (!\result_i[11]~input_o\ & 
-- (\result_i[8]~input_o\ $ (\result_i[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \display2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y65_N20
\display2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux4~0_combout\ = (\result_i[9]~input_o\ & (\result_i[8]~input_o\ & (!\result_i[11]~input_o\))) # (!\result_i[9]~input_o\ & ((\result_i[10]~input_o\ & ((!\result_i[11]~input_o\))) # (!\result_i[10]~input_o\ & (\result_i[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \display2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y65_N30
\display2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux5~0_combout\ = (\result_i[8]~input_o\ & (\result_i[11]~input_o\ $ (((\result_i[9]~input_o\) # (!\result_i[10]~input_o\))))) # (!\result_i[8]~input_o\ & (!\result_i[11]~input_o\ & (\result_i[9]~input_o\ & !\result_i[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \display2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y65_N0
\display2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux6~0_combout\ = (\result_i[8]~input_o\ & ((\result_i[11]~input_o\) # (\result_i[9]~input_o\ $ (\result_i[10]~input_o\)))) # (!\result_i[8]~input_o\ & ((\result_i[9]~input_o\) # (\result_i[11]~input_o\ $ (\result_i[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[8]~input_o\,
	datab => \result_i[11]~input_o\,
	datac => \result_i[9]~input_o\,
	datad => \result_i[10]~input_o\,
	combout => \display2|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y69_N2
\display3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux0~0_combout\ = (\result_i[14]~input_o\ & (!\result_i[13]~input_o\ & (\result_i[12]~input_o\ $ (!\result_i[15]~input_o\)))) # (!\result_i[14]~input_o\ & (\result_i[12]~input_o\ & (\result_i[15]~input_o\ $ (!\result_i[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \display3|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y69_N12
\display3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux1~0_combout\ = (\result_i[15]~input_o\ & ((\result_i[12]~input_o\ & ((\result_i[13]~input_o\))) # (!\result_i[12]~input_o\ & (\result_i[14]~input_o\)))) # (!\result_i[15]~input_o\ & (\result_i[14]~input_o\ & (\result_i[12]~input_o\ $ 
-- (\result_i[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \display3|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y69_N14
\display3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux2~0_combout\ = (\result_i[14]~input_o\ & (\result_i[15]~input_o\ & ((\result_i[13]~input_o\) # (!\result_i[12]~input_o\)))) # (!\result_i[14]~input_o\ & (!\result_i[12]~input_o\ & (!\result_i[15]~input_o\ & \result_i[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \display3|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y69_N0
\display3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux3~0_combout\ = (\result_i[13]~input_o\ & ((\result_i[14]~input_o\ & (\result_i[12]~input_o\)) # (!\result_i[14]~input_o\ & (!\result_i[12]~input_o\ & \result_i[15]~input_o\)))) # (!\result_i[13]~input_o\ & (!\result_i[15]~input_o\ & 
-- (\result_i[14]~input_o\ $ (\result_i[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \display3|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y69_N26
\display3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux4~0_combout\ = (\result_i[13]~input_o\ & (((\result_i[12]~input_o\ & !\result_i[15]~input_o\)))) # (!\result_i[13]~input_o\ & ((\result_i[14]~input_o\ & ((!\result_i[15]~input_o\))) # (!\result_i[14]~input_o\ & (\result_i[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \display3|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y69_N28
\display3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux5~0_combout\ = (\result_i[14]~input_o\ & (\result_i[12]~input_o\ & (\result_i[15]~input_o\ $ (\result_i[13]~input_o\)))) # (!\result_i[14]~input_o\ & (!\result_i[15]~input_o\ & ((\result_i[12]~input_o\) # (\result_i[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \display3|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y69_N22
\display3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux6~0_combout\ = (\result_i[12]~input_o\ & ((\result_i[15]~input_o\) # (\result_i[14]~input_o\ $ (\result_i[13]~input_o\)))) # (!\result_i[12]~input_o\ & ((\result_i[13]~input_o\) # (\result_i[14]~input_o\ $ (\result_i[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_i[14]~input_o\,
	datab => \result_i[12]~input_o\,
	datac => \result_i[15]~input_o\,
	datad => \result_i[13]~input_o\,
	combout => \display3|Mux6~0_combout\);

ww_neg_o <= \neg_o~output_o\;

ww_zero_o <= \zero_o~output_o\;

ww_over_o <= \over_o~output_o\;

ww_endOP_o <= \endOP_o~output_o\;

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
END structure;


