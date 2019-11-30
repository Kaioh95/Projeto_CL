library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity countDec is
	port(
		i: in std_logic_vector(5 downto 0);
		rd, count, clear, clk: in std_logic;
		s: out std_logic_vector(5 downto 0);
		fc: out std_logic
	);
end;

architecture ar_countDec of countDec is

signal valor: std_logic_vector(5 downto 0);

begin
	process(rd, count, clear, clk, valor)
	begin
		if(clk'event and clk = '1') then
			
			if(rd = '1') then
				valor <= i;
			end if;
			
			if(count = '1') then
				valor <= valor - "000001";
			end if;

			if(clear = '1') then
				valor <= "000000";
			end if;
			
		end if;
		
		if(valor = "000000") then
			fc <= '1';
		else
			fc <= '0';
		end if;
		
		s <= valor;
	end process;
end ar_countDec;