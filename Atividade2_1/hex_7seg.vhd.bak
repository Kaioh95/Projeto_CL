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
		s <= "1111110" when "0000",
			  "0110000" when "0001",
			  "1101101" when "0010",
			  "1111001" when "0011",
			  "0110011" when "0100",
			  "1011011" when "0101",
			  "1011111" when "0110",
			  "1110000" when "0111",
			  "1111111" when "1000",
			  "1111011" when "1001",
			  "1110111" when "1010",
			  "0011111" when "1011",
			  "1001110" when "1100",
			  "0111101" when "1101",
			  "1001111" when "1110",
			  "1000111" when "1111";
	A <= S(6);
	B <= S(5);
	C <= S(4);
	D <= S(3);
	E <= S(2);
	F <= S(1);
	G <= S(0);
end arch;