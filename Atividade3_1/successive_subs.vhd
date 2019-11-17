library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity successive_subs is
port(
	clk, bt:in std_logic;
	input:in std_logic_vector(15 downto 0);
	
	Di0: out std_logic_vector(6 downto 0);
	Di1: out std_logic_vector(6 downto 0);
	Di2: out std_logic_vector(6 downto 0);
	Di3: out std_logic_vector(6 downto 0);
	
	Dq0: out std_logic_vector(6 downto 0);
	Dq1: out std_logic_vector(6 downto 0);
	Dq2: out std_logic_vector(6 downto 0);
	Dq3: out std_logic_vector(6 downto 0);
		
	Dr0: out std_logic_vector(6 downto 0);
	Dr1: out std_logic_vector(6 downto 0);
	Dr2: out std_logic_vector(6 downto 0);
	Dr3: out std_logic_vector(6 downto 0);
	
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

component hex_7seg
	port(
		entrada: in std_logic_vector(3 downto 0);
		A, B, C, D, E, F, G: out std_logic
	);
end component;

signal a_e_z, a_lt_z, ld_a, ld_b, slt_a: std_logic;
signal clr, cnt, ud, sub_add: std_logic;
signal q, r: std_logic_vector(15 downto 0);

begin
	i1: po port map(clk, clr, ld_a, ld_b, slt_a, cnt, ud, sub_add,
						input,a_lt_z, a_e_z, q, r);
	
	i2: pc port map(clk, bt, a_e_z, a_lt_z,
						ld_a, ld_b, slt_a,
						clr, cnt, ud, sub_add);
	
	quotient <= q;
	rest <= r;
						
	dispI0: hex_7seg port map(input(3 downto 0), Di0(0), Di0(1), Di0(2), Di0(3), Di0(4), Di0(5), Di0(6));
	dispI1: hex_7seg port map(input(7 downto 4), Di1(0), Di1(1), Di1(2), Di1(3), Di1(4), Di1(5), Di1(6));
	dispI2: hex_7seg port map(input(11 downto 8), Di2(0), Di2(1), Di2(2), Di2(3), Di2(4), Di2(5), Di2(6));
	dispI3: hex_7seg port map(input(15 downto 12), Di3(0), Di3(1), Di3(2), Di3(3), Di3(4), Di3(5), Di3(6));
	
	dispQ0: hex_7seg port map(q(3 downto 0), Dq0(0), Dq0(1), Dq0(2), Dq0(3), Dq0(4), Dq0(5), Dq0(6));
	dispQ1: hex_7seg port map(q(7 downto 4), Dq1(0), Dq1(1), Dq1(2), Dq1(3), Dq1(4), Dq1(5), Dq1(6));
	dispQ2: hex_7seg port map(q(11 downto 8), Dq2(0), Dq2(1), Dq2(2), Dq2(3), Dq2(4), Dq2(5), Dq2(6));
	dispQ3: hex_7seg port map(q(15 downto 12), Dq3(0), Dq3(1), Dq3(2), Dq3(3), Dq3(4), Dq3(5), Dq3(6));
	
	dispR0: hex_7seg port map(r(3 downto 0), Dr0(0), Dr0(1), Dr0(2), Dr0(3), Dr0(4), Dr0(5), Dr0(6));
	dispR1: hex_7seg port map(r(7 downto 4), Dr1(0), Dr1(1), Dr1(2), Dr1(3), Dr1(4), Dr1(5), Dr1(6));
	dispR2: hex_7seg port map(r(11 downto 8), Dr2(0), Dr2(1), Dr2(2), Dr2(3), Dr2(4), Dr2(5), Dr2(6));
	dispR3: hex_7seg port map(r(15 downto 12), Dr3(0), Dr3(1), Dr3(2), Dr3(3), Dr3(4), Dr3(5), Dr3(6));
	
end arch;