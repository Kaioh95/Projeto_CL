library ieee;
use ieee.std_logic_1164.all;

entity m_saida is
	port(
		result_i: in std_logic_vector(15 downto 0);
		over_i: in std_logic;
		endOP_i: in std_logic;
		
		neg_o: out std_logic;
		zero_o: out std_logic;
		over_o: out std_logic;
		endOP_o: out std_logic;
		
		DS0: out std_logic_vector(6 downto 0);
		DS1: out std_logic_vector(6 downto 0);
		DS2: out std_logic_vector(6 downto 0);
		DS3: out std_logic_vector(6 downto 0)
	);
end;


architecture ar_m_saida of m_saida is

component hex_7seg
	port(
		entrada: in std_logic_vector(3 downto 0);
		A, B, C, D, E, F, G: out std_logic
	);
end component;

begin

neg_o <= '0' when result_i(15) = '1' else '1';
zero_o <= '0' when result_i = "0000000000000000" else '1';
over_o <= (not over_i);
endOP_o <= (not endOP_i);

display0: hex_7seg port map(result_i(3 downto 0), DS0(0), DS0(1), DS0(2), DS0(3), DS0(4), DS0(5), DS0(6));
display1: hex_7seg port map(result_i(7 downto 4), DS1(0), DS1(1), DS1(2), DS1(3), DS1(4), DS1(5), DS1(6));
display2: hex_7seg port map(result_i(11 downto 8), DS2(0), DS2(1), DS2(2), DS2(3), DS2(4), DS2(5), DS2(6));
display3: hex_7seg port map(result_i(15 downto 12), DS3(0), DS3(1), DS3(2), DS3(3), DS3(4), DS3(5), DS3(6));

end ar_m_saida;