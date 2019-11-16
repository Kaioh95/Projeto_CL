library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity po is
	port(
		clk, clr, ld_a, ld_b, slt_a, cnt, ud, sub_add: in std_logic;
		input: in std_logic_vector(15 downto 0);
		a_lt_z, a_e_z: out std_logic;
		quotient: out std_logic_vector(15 downto 0);
		rest: out std_logic_vector(15 downto 0)
	);
end po;

architecture arch of po is

begin
	process(clk, clr, ld_a, ld_b, slt_a, cnt, ud, sub_add)
	variable reg_a: std_logic_vector(15 downto 0);
	variable reg_b: std_logic_vector(15 downto 0);
	variable count: std_logic_vector(15 downto 0);
	
	begin
		if(clk'event and clk='1') then
			if(ld_a = '1' and slt_a = '0') then
				reg_a := input;
				rest <= reg_a;
			end if;
			
			if(ld_b = '1') then
				reg_b := input;
			end if;
			
			if(ld_a ='1' and slt_a ='1' and sub_add ='0') then
				reg_a := reg_a - reg_b;
				rest <= reg_a;
			
			elsif(ld_a ='1' and slt_a ='1' and sub_add ='1') then
				reg_a := reg_a + reg_b;
				rest <= reg_a;
			end if;
			
			if(cnt ='1' and ud ='0') then
				count := count + 1;
				quotient <= count;
				
			elsif(cnt ='1' and ud = '1') then
				count := count - 1;
				quotient <= count;
			end if;
			
			if(clr = '1') then
				reg_a := "0000000000000000";
				reg_b := "0000000000000000";
				count := "0000000000000000";
				quotient <= "0000000000000000";
				rest <= reg_a;
			end if;
			
		end if;
		
		if(reg_a = "0000000000000000") then
			a_e_z <= '1';
			
		elsif(reg_a(15) = '0' and not(reg_a(14 downto 0) = "000000000000000")) then
			a_lt_z <= '0';
			a_e_z <= '0';
		
		elsif(reg_a(15) = '1') then
			a_lt_z <= '1';
			a_e_z <= '0';
		end if;
		
	end process;
end arch;