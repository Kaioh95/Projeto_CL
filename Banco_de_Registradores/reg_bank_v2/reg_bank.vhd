library ieee;
use ieee.std_logic_1164.all;

entity reg_bank is
	port(
		r_select: in std_logic_vector(2 downto 0);
		input: in std_logic_vector(15 downto 0);
		rw, clk, clr: in std_logic;
		output: out std_logic_vector(15 downto 0)
	);
end;

architecture arch of reg_bank is

component reg
	port(
		i: in std_logic_vector(15 downto 0);
		clk, clr, rw: in std_logic;
		q: out std_logic_vector(15 downto 0)
	);
end component;

signal s0: std_logic_vector(15 downto 0);
signal s1: std_logic_vector(15 downto 0);
signal s2: std_logic_vector(15 downto 0);
signal s3: std_logic_vector(15 downto 0);
signal s4: std_logic_vector(15 downto 0);
signal s5: std_logic_vector(15 downto 0);
signal s6: std_logic_vector(15 downto 0);
signal s7: std_logic_vector(15 downto 0);

begin
	r0: Registrador port map(input, clk, clr, rw, s0);
	r1: Registrador port map(input, clk, clr, rw, s1);
	r2: Registrador port map(input, clk, clr, rw, s2);
	r3: Registrador port map(input, clk, clr, rw, s3);
	r4: Registrador port map(input, clk, clr, rw, s4);
	r5: Registrador port map(input, clk, clr, rw, s5);
	r6: Registrador port map(input, clk, clr, rw, s6);
	r7: Registrador port map(input, clk, clr, rw, s7);
	
	process(c)
	begin
		if(c = "000") then
			saida <= s0;
		elsif(c = "001") then
			saida <= s1;
		elsif(c = "010") then
			saida <= s2;
		elsif(c = "011") then
			saida <= s3;
		elsif(c = "100") then
			saida <= s4;
		elsif(c = "101") then
			saida <= s5;
		elsif(c = "110") then
			saida <= s6;
		elsif(c = "111") then
			saida <= s7;
		end if;
	end process;

end arch;