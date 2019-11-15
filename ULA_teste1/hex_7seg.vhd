library ieee;
use ieee.std_logic_1164.all;

entity hex_7seg is
	port(
		entrada: in std_logic_vector(3 downto 0);
		A, B, C, D, E, F, G: out std_logic
	);
end hex_7seg;

architecture arch of hex_7seg is
signal S: std_logic_vector(6 downto 0);

begin
	with entrada select
		s <= "0000001" when "0000", --1111110
			  "1001111" when "0001", --0110000
			  "0010010" when "0010", --1101101
			  "0000110" when "0011", --1111001
			  "1001100" when "0100", --0110011
			  "0100100" when "0101", --1011011
			  "0100000" when "0110", --1011111
			  "0001111" when "0111", --1110000
			  "0000000" when "1000", --1111111
			  "0000100" when "1001", --1111011
			  "0001000" when "1010", --1110111
			  "1100000" when "1011", --0011111
			  "0110001" when "1100", --1001110
			  "1000010" when "1101", --0111101
			  "0110000" when "1110", --1001111
			  "0111000" when "1111"; --1000111
	A <= S(6);
	B <= S(5);
	C <= S(4);
	D <= S(3);
	E <= S(2);
	F <= S(1);
	G <= S(0);
end arch;