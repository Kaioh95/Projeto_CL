library ieee;
use ieee.std_logic_1164.all;

entity m_entrada is
	port(
		reset: in std_logic;
		valid: in std_logic;
		operate: in std_logic;
		input: in std_logic_vector(15 downto 0);
		opcode: out std_logic_vector(3 downto 0);
		RA: out std_logic_vector(2 downto 0);
		RB: out std_logic_vector(2 downto 0);
		RC: out std_logic_vector(2 downto 0);
		allbits: out std_logic_vector(15 downto 0);
		reset_o: out std_logic;
		valid_o: out std_logic;
		operate_o: out std_logic
	);
end;

architecture ar_m_entrada of m_entrada is
begin

	opcode <= input(15 downto 12);
	RA <= input(11 downto 9);
	RB <= input(8 downto 6);
	RC <= input(5 downto 3);
	allbits <= input(15 downto 0);
	reset_o <= reset;
	valid_o <= valid;
	operate_o <= operate;
	
end ar_m_entrada;