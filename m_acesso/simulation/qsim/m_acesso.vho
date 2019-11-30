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

-- DATE "11/29/2019 20:19:46"

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

ENTITY 	m_acesso IS
    PORT (
	r_data_i : IN std_logic_vector(15 DOWNTO 0);
	r_data_o : OUT std_logic_vector(15 DOWNTO 0);
	data_i : IN std_logic_vector(15 DOWNTO 0);
	data_o : OUT std_logic_vector(15 DOWNTO 0);
	addr_i : IN std_logic_vector(15 DOWNTO 0);
	addr_o : OUT std_logic_vector(15 DOWNTO 0);
	wren_i : IN std_logic;
	wren_o : OUT std_logic
	);
END m_acesso;

-- Design Ports Information
-- r_data_o[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[3]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[4]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[5]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[6]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[8]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[9]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[11]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[12]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[14]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_o[15]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[5]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[6]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[8]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[9]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[11]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[12]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[13]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[14]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_o[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[2]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[7]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[8]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[10]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[12]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[13]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[14]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_o[15]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_o	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[4]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[5]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[8]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[11]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[14]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_i[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[5]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[8]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[12]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[13]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[14]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_i[15]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[8]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[10]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[11]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[12]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[13]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[14]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_i[15]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_i	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m_acesso IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r_data_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r_data_o : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_o : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_addr_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_addr_o : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_wren_i : std_logic;
SIGNAL ww_wren_o : std_logic;
SIGNAL \r_data_o[0]~output_o\ : std_logic;
SIGNAL \r_data_o[1]~output_o\ : std_logic;
SIGNAL \r_data_o[2]~output_o\ : std_logic;
SIGNAL \r_data_o[3]~output_o\ : std_logic;
SIGNAL \r_data_o[4]~output_o\ : std_logic;
SIGNAL \r_data_o[5]~output_o\ : std_logic;
SIGNAL \r_data_o[6]~output_o\ : std_logic;
SIGNAL \r_data_o[7]~output_o\ : std_logic;
SIGNAL \r_data_o[8]~output_o\ : std_logic;
SIGNAL \r_data_o[9]~output_o\ : std_logic;
SIGNAL \r_data_o[10]~output_o\ : std_logic;
SIGNAL \r_data_o[11]~output_o\ : std_logic;
SIGNAL \r_data_o[12]~output_o\ : std_logic;
SIGNAL \r_data_o[13]~output_o\ : std_logic;
SIGNAL \r_data_o[14]~output_o\ : std_logic;
SIGNAL \r_data_o[15]~output_o\ : std_logic;
SIGNAL \data_o[0]~output_o\ : std_logic;
SIGNAL \data_o[1]~output_o\ : std_logic;
SIGNAL \data_o[2]~output_o\ : std_logic;
SIGNAL \data_o[3]~output_o\ : std_logic;
SIGNAL \data_o[4]~output_o\ : std_logic;
SIGNAL \data_o[5]~output_o\ : std_logic;
SIGNAL \data_o[6]~output_o\ : std_logic;
SIGNAL \data_o[7]~output_o\ : std_logic;
SIGNAL \data_o[8]~output_o\ : std_logic;
SIGNAL \data_o[9]~output_o\ : std_logic;
SIGNAL \data_o[10]~output_o\ : std_logic;
SIGNAL \data_o[11]~output_o\ : std_logic;
SIGNAL \data_o[12]~output_o\ : std_logic;
SIGNAL \data_o[13]~output_o\ : std_logic;
SIGNAL \data_o[14]~output_o\ : std_logic;
SIGNAL \data_o[15]~output_o\ : std_logic;
SIGNAL \addr_o[0]~output_o\ : std_logic;
SIGNAL \addr_o[1]~output_o\ : std_logic;
SIGNAL \addr_o[2]~output_o\ : std_logic;
SIGNAL \addr_o[3]~output_o\ : std_logic;
SIGNAL \addr_o[4]~output_o\ : std_logic;
SIGNAL \addr_o[5]~output_o\ : std_logic;
SIGNAL \addr_o[6]~output_o\ : std_logic;
SIGNAL \addr_o[7]~output_o\ : std_logic;
SIGNAL \addr_o[8]~output_o\ : std_logic;
SIGNAL \addr_o[9]~output_o\ : std_logic;
SIGNAL \addr_o[10]~output_o\ : std_logic;
SIGNAL \addr_o[11]~output_o\ : std_logic;
SIGNAL \addr_o[12]~output_o\ : std_logic;
SIGNAL \addr_o[13]~output_o\ : std_logic;
SIGNAL \addr_o[14]~output_o\ : std_logic;
SIGNAL \addr_o[15]~output_o\ : std_logic;
SIGNAL \wren_o~output_o\ : std_logic;
SIGNAL \r_data_i[0]~input_o\ : std_logic;
SIGNAL \r_data_i[1]~input_o\ : std_logic;
SIGNAL \r_data_i[2]~input_o\ : std_logic;
SIGNAL \r_data_i[3]~input_o\ : std_logic;
SIGNAL \r_data_i[4]~input_o\ : std_logic;
SIGNAL \r_data_i[5]~input_o\ : std_logic;
SIGNAL \r_data_i[6]~input_o\ : std_logic;
SIGNAL \r_data_i[7]~input_o\ : std_logic;
SIGNAL \r_data_i[8]~input_o\ : std_logic;
SIGNAL \r_data_i[9]~input_o\ : std_logic;
SIGNAL \r_data_i[10]~input_o\ : std_logic;
SIGNAL \r_data_i[11]~input_o\ : std_logic;
SIGNAL \r_data_i[12]~input_o\ : std_logic;
SIGNAL \r_data_i[13]~input_o\ : std_logic;
SIGNAL \r_data_i[14]~input_o\ : std_logic;
SIGNAL \r_data_i[15]~input_o\ : std_logic;
SIGNAL \data_i[0]~input_o\ : std_logic;
SIGNAL \data_i[1]~input_o\ : std_logic;
SIGNAL \data_i[2]~input_o\ : std_logic;
SIGNAL \data_i[3]~input_o\ : std_logic;
SIGNAL \data_i[4]~input_o\ : std_logic;
SIGNAL \data_i[5]~input_o\ : std_logic;
SIGNAL \data_i[6]~input_o\ : std_logic;
SIGNAL \data_i[7]~input_o\ : std_logic;
SIGNAL \data_i[8]~input_o\ : std_logic;
SIGNAL \data_i[9]~input_o\ : std_logic;
SIGNAL \data_i[10]~input_o\ : std_logic;
SIGNAL \data_i[11]~input_o\ : std_logic;
SIGNAL \data_i[12]~input_o\ : std_logic;
SIGNAL \data_i[13]~input_o\ : std_logic;
SIGNAL \data_i[14]~input_o\ : std_logic;
SIGNAL \data_i[15]~input_o\ : std_logic;
SIGNAL \addr_i[0]~input_o\ : std_logic;
SIGNAL \addr_i[1]~input_o\ : std_logic;
SIGNAL \addr_i[2]~input_o\ : std_logic;
SIGNAL \addr_i[3]~input_o\ : std_logic;
SIGNAL \addr_i[4]~input_o\ : std_logic;
SIGNAL \addr_i[5]~input_o\ : std_logic;
SIGNAL \addr_i[6]~input_o\ : std_logic;
SIGNAL \addr_i[7]~input_o\ : std_logic;
SIGNAL \addr_i[8]~input_o\ : std_logic;
SIGNAL \addr_i[9]~input_o\ : std_logic;
SIGNAL \addr_i[10]~input_o\ : std_logic;
SIGNAL \addr_i[11]~input_o\ : std_logic;
SIGNAL \addr_i[12]~input_o\ : std_logic;
SIGNAL \addr_i[13]~input_o\ : std_logic;
SIGNAL \addr_i[14]~input_o\ : std_logic;
SIGNAL \addr_i[15]~input_o\ : std_logic;
SIGNAL \wren_i~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_r_data_i <= r_data_i;
r_data_o <= ww_r_data_o;
ww_data_i <= data_i;
data_o <= ww_data_o;
ww_addr_i <= addr_i;
addr_o <= ww_addr_o;
ww_wren_i <= wren_i;
wren_o <= ww_wren_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y36_N2
\r_data_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[0]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\r_data_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[1]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\r_data_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[2]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\r_data_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[3]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[3]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\r_data_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[4]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\r_data_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[5]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\r_data_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[6]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[6]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\r_data_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[7]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[7]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\r_data_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[8]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\r_data_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[9]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\r_data_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[10]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\r_data_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[11]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[11]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\r_data_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[12]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\r_data_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[13]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[13]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\r_data_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[14]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\r_data_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_i[15]~input_o\,
	devoe => ww_devoe,
	o => \r_data_o[15]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\data_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[0]~input_o\,
	devoe => ww_devoe,
	o => \data_o[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\data_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[1]~input_o\,
	devoe => ww_devoe,
	o => \data_o[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\data_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[2]~input_o\,
	devoe => ww_devoe,
	o => \data_o[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\data_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[3]~input_o\,
	devoe => ww_devoe,
	o => \data_o[3]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\data_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[4]~input_o\,
	devoe => ww_devoe,
	o => \data_o[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\data_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[5]~input_o\,
	devoe => ww_devoe,
	o => \data_o[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\data_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[6]~input_o\,
	devoe => ww_devoe,
	o => \data_o[6]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\data_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[7]~input_o\,
	devoe => ww_devoe,
	o => \data_o[7]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\data_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[8]~input_o\,
	devoe => ww_devoe,
	o => \data_o[8]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\data_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[9]~input_o\,
	devoe => ww_devoe,
	o => \data_o[9]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\data_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[10]~input_o\,
	devoe => ww_devoe,
	o => \data_o[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\data_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[11]~input_o\,
	devoe => ww_devoe,
	o => \data_o[11]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\data_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[12]~input_o\,
	devoe => ww_devoe,
	o => \data_o[12]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\data_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[13]~input_o\,
	devoe => ww_devoe,
	o => \data_o[13]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\data_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[14]~input_o\,
	devoe => ww_devoe,
	o => \data_o[14]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\data_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_i[15]~input_o\,
	devoe => ww_devoe,
	o => \data_o[15]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\addr_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[0]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[0]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\addr_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[1]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[1]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\addr_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[2]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\addr_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[3]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[3]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\addr_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[4]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\addr_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[5]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\addr_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[6]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\addr_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[7]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\addr_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[8]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\addr_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[9]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[9]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\addr_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[10]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\addr_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[11]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[11]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\addr_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[12]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[12]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\addr_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[13]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[13]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\addr_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[14]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[14]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\addr_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_i[15]~input_o\,
	devoe => ww_devoe,
	o => \addr_o[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\wren_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wren_i~input_o\,
	devoe => ww_devoe,
	o => \wren_o~output_o\);

-- Location: IOIBUF_X115_Y37_N8
\r_data_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(0),
	o => \r_data_i[0]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\r_data_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(1),
	o => \r_data_i[1]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\r_data_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(2),
	o => \r_data_i[2]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\r_data_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(3),
	o => \r_data_i[3]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\r_data_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(4),
	o => \r_data_i[4]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\r_data_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(5),
	o => \r_data_i[5]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\r_data_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(6),
	o => \r_data_i[6]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\r_data_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(7),
	o => \r_data_i[7]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\r_data_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(8),
	o => \r_data_i[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\r_data_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(9),
	o => \r_data_i[9]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\r_data_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(10),
	o => \r_data_i[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\r_data_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(11),
	o => \r_data_i[11]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\r_data_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(12),
	o => \r_data_i[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\r_data_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(13),
	o => \r_data_i[13]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\r_data_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(14),
	o => \r_data_i[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\r_data_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_i(15),
	o => \r_data_i[15]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\data_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(0),
	o => \data_i[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\data_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(1),
	o => \data_i[1]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\data_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(2),
	o => \data_i[2]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\data_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(3),
	o => \data_i[3]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\data_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(4),
	o => \data_i[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\data_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(5),
	o => \data_i[5]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\data_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(6),
	o => \data_i[6]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\data_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(7),
	o => \data_i[7]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\data_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(8),
	o => \data_i[8]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\data_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(9),
	o => \data_i[9]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\data_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(10),
	o => \data_i[10]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\data_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(11),
	o => \data_i[11]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\data_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(12),
	o => \data_i[12]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\data_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(13),
	o => \data_i[13]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\data_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(14),
	o => \data_i[14]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\data_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_i(15),
	o => \data_i[15]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\addr_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(0),
	o => \addr_i[0]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\addr_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(1),
	o => \addr_i[1]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\addr_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(2),
	o => \addr_i[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\addr_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(3),
	o => \addr_i[3]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\addr_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(4),
	o => \addr_i[4]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\addr_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(5),
	o => \addr_i[5]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\addr_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(6),
	o => \addr_i[6]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\addr_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(7),
	o => \addr_i[7]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\addr_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(8),
	o => \addr_i[8]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\addr_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(9),
	o => \addr_i[9]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\addr_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(10),
	o => \addr_i[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\addr_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(11),
	o => \addr_i[11]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\addr_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(12),
	o => \addr_i[12]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\addr_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(13),
	o => \addr_i[13]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\addr_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(14),
	o => \addr_i[14]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\addr_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_i(15),
	o => \addr_i[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\wren_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_i,
	o => \wren_i~input_o\);

ww_r_data_o(0) <= \r_data_o[0]~output_o\;

ww_r_data_o(1) <= \r_data_o[1]~output_o\;

ww_r_data_o(2) <= \r_data_o[2]~output_o\;

ww_r_data_o(3) <= \r_data_o[3]~output_o\;

ww_r_data_o(4) <= \r_data_o[4]~output_o\;

ww_r_data_o(5) <= \r_data_o[5]~output_o\;

ww_r_data_o(6) <= \r_data_o[6]~output_o\;

ww_r_data_o(7) <= \r_data_o[7]~output_o\;

ww_r_data_o(8) <= \r_data_o[8]~output_o\;

ww_r_data_o(9) <= \r_data_o[9]~output_o\;

ww_r_data_o(10) <= \r_data_o[10]~output_o\;

ww_r_data_o(11) <= \r_data_o[11]~output_o\;

ww_r_data_o(12) <= \r_data_o[12]~output_o\;

ww_r_data_o(13) <= \r_data_o[13]~output_o\;

ww_r_data_o(14) <= \r_data_o[14]~output_o\;

ww_r_data_o(15) <= \r_data_o[15]~output_o\;

ww_data_o(0) <= \data_o[0]~output_o\;

ww_data_o(1) <= \data_o[1]~output_o\;

ww_data_o(2) <= \data_o[2]~output_o\;

ww_data_o(3) <= \data_o[3]~output_o\;

ww_data_o(4) <= \data_o[4]~output_o\;

ww_data_o(5) <= \data_o[5]~output_o\;

ww_data_o(6) <= \data_o[6]~output_o\;

ww_data_o(7) <= \data_o[7]~output_o\;

ww_data_o(8) <= \data_o[8]~output_o\;

ww_data_o(9) <= \data_o[9]~output_o\;

ww_data_o(10) <= \data_o[10]~output_o\;

ww_data_o(11) <= \data_o[11]~output_o\;

ww_data_o(12) <= \data_o[12]~output_o\;

ww_data_o(13) <= \data_o[13]~output_o\;

ww_data_o(14) <= \data_o[14]~output_o\;

ww_data_o(15) <= \data_o[15]~output_o\;

ww_addr_o(0) <= \addr_o[0]~output_o\;

ww_addr_o(1) <= \addr_o[1]~output_o\;

ww_addr_o(2) <= \addr_o[2]~output_o\;

ww_addr_o(3) <= \addr_o[3]~output_o\;

ww_addr_o(4) <= \addr_o[4]~output_o\;

ww_addr_o(5) <= \addr_o[5]~output_o\;

ww_addr_o(6) <= \addr_o[6]~output_o\;

ww_addr_o(7) <= \addr_o[7]~output_o\;

ww_addr_o(8) <= \addr_o[8]~output_o\;

ww_addr_o(9) <= \addr_o[9]~output_o\;

ww_addr_o(10) <= \addr_o[10]~output_o\;

ww_addr_o(11) <= \addr_o[11]~output_o\;

ww_addr_o(12) <= \addr_o[12]~output_o\;

ww_addr_o(13) <= \addr_o[13]~output_o\;

ww_addr_o(14) <= \addr_o[14]~output_o\;

ww_addr_o(15) <= \addr_o[15]~output_o\;

ww_wren_o <= \wren_o~output_o\;
END structure;


