library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity successive_subs is
port(
	clk, bt:in std_logic;
	input:in std_logic_vector(15 downto 0);
	quotient, rest:out std_logic_vector(15 downto 0)
);
end successive_subs;

architecture arch of successive_subs is
component pc
	port(
		clk, bt, a_e_z, a_lt_z: in std_logic;
		ld_a, ld_b, slt_a: out std_logic;
		clr, cnt, ud: out std_logic;
		sub_add: out std_logic
	);
end component;

component po
	port(
		clk, clr, ld_a, ld_b, slt_a, cnt, ud, sub_add: in std_logic;
		input: in std_logic_vector(15 downto 0);
		a_lt_z, a_e_z: out std_logic;
		quotient: out std_logic_vector(15 downto 0);
		rest: out std_logic_vector(15 downto 0)
	);
end component;

signal a_e_z, a_lt_z, ld_a, ld_b, slt_a: std_logic;
signal clr, cnt, ud, sub_add: std_logic;

begin
	i1: po port map(clk, clr, ld_a, ld_b, slt_a, cnt, ud, sub_add,
						input,a_lt_z, a_e_z, quotient, rest);
	
	i2: pc port map(clk, bt, a_e_z, a_lt_z,
						ld_a, ld_b, slt_a,
						clr, cnt, ud, sub_add);
	
end arch;