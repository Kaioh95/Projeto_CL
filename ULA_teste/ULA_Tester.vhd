library ieee;
use ieee.std_logic_1164.all;

entity ULA_Tester is
	port(
		A, B: in std_logic_vector(15 downto 0);
		
		DA0: out std_logic_vector(6 downto 0);
		DA1: out std_logic_vector(6 downto 0);
		DA2: out std_logic_vector(6 downto 0);
		DA3: out std_logic_vector(6 downto 0);
		
		DB0: out std_logic_vector(6 downto 0);
		DB1: out std_logic_vector(6 downto 0);
		DB2: out std_logic_vector(6 downto 0);
		DB3: out std_logic_vector(6 downto 0);
		
		M, S1, S0: in std_logic;
		
		DS0: out std_logic_vector(6 downto 0);
		DS1: out std_logic_vector(6 downto 0);
		DS2: out std_logic_vector(6 downto 0);
		DS3: out std_logic_vector(6 downto 0);
		
		Overflow: out std_logic
	);
end ULA_Tester;

architecture arch of ULA_tester is

component ULA
	port(
		A, B: in std_logic_vector(15 downto 0);
		M, S1, S0: std_logic;
		Cin: inout std_logic;
		Cout: out std_logic;
		SAIDA: out std_logic_vector(15 downto 0)
	);
end component;	

component hex_7seg
	port(
		entrada: std_logic_vector(3 downto 0);
		A, B, C, D, E, F, G: out std_logic
	);
end component;

signal S: std_logic_vector(15 downto 0);
signal cin: std_logic;

begin

dispA0: hex_7seg port map(A(3 downto 0), DA0(0), DA0(1), DA0(2), DA0(3), DA0(4), DA0(5), DA0(6));
dispA1: hex_7seg port map(A(7 downto 4), DA1(0), DA1(1), DA1(2), DA1(3), DA1(4), DA1(5), DA1(6));
dispA2: hex_7seg port map(A(11 downto 8), DA2(0), DA2(1), DA2(2), DA2(3), DA2(4), DA2(5), DA2(6));
dispA3: hex_7seg port map(A(15 downto 12), DA3(0), DA3(1), DA3(2), DA3(3), DA3(4), DA3(5), DA3(6));

dispB0: hex_7seg port map(B(3 downto 0), DB0(0), DB0(1), DB0(2), DB0(3), DB0(4), DB0(5), DB0(6));
dispB1: hex_7seg port map(B(7 downto 4), DB1(0), DB1(1), DB1(2), DB1(3), DB1(4), DB1(5), DB1(6));
dispB2: hex_7seg port map(B(11 downto 8), DB2(0), DB2(1), DB2(2), DB2(3), DB2(4), DB2(5), DB2(6));
dispB3: hex_7seg port map(B(15 downto 12), DB3(0), DB3(1), DB3(2), DB3(3), DB3(4), DB3(5), DB3(6));

ulaOP: ULA port map(A, B, M, S1, S0, Cin, overflow, S);

dispS0: hex_7seg port map(S(3 downto 0), DS0(0), DS0(1), DS0(2), DS0(3), DS0(4), DS0(5), DS0(6));
dispS1: hex_7seg port map(S(7 downto 4), DS1(0), DS1(1), DS1(2), DS1(3), DS1(4), DS1(5), DS1(6));
dispS2: hex_7seg port map(S(11 downto 8), DS2(0), DS2(1), DS2(2), DS2(3), DS2(4), DS2(5), DS2(6));
dispS3: hex_7seg port map(S(15 downto 12), DS3(0), DS3(1), DS3(2), DS3(3), DS3(4), DS3(5), DS3(6));

end arch;