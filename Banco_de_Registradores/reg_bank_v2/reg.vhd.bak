library ieee;
use ieee.std_logic_1164.all;

entity Registrador is
	port(
		i: in std_logic_vector(15 downto 0);
		clk, clr, rw: in std_logic;
		q: out std_logic_vector(15 downto 0)
	);
end Registrador;

architecture arch of Registrador is
begin
	process(i, clk, clr, rw)
		begin
			if(clk'event and clk='1') then
				if(rw = '1') then
					q <= i;
				elsif(clr = '1') then
					q <= "0000000000000000";
				end if;
			end if;
		end process;
end arch;