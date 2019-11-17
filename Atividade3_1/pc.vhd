library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity pc is
	port(
		clk, bt, a_e_z, a_lt_z: in std_logic;
		ld_a, ld_b, slt_a: out std_logic;
		clr, cnt, ud: out std_logic;
		sub_add: out std_logic
	);
end pc;

architecture arch of pc is
constant initA: std_logic_vector(2 downto 0) := "000";
constant blockBT: std_logic_vector(2 downto 0) := "001";
constant initB: std_logic_vector(2 downto 0) := "010";
constant NextOp: std_logic_vector(2 downto 0) := "011";
constant AsubB: std_logic_vector(2 downto 0) := "100";
constant Re: std_logic_vector(2 downto 0) := "101";
constant Re_Rest: std_logic_vector(2 downto 0) := "110";
constant blockBT2: std_logic_vector(2 downto 0) := "111";

signal state: std_logic_vector(2 downto 0) := initA;
begin
	
	process(clk, bt, a_e_z, a_lt_z, state)
	begin
	if(clk'event and clk = '1') then
		case state is
		
		when initA =>
			if(bt = '1') then
				state <= blockBT;
			else
				state <= initA;
			end if;
		
		when blockBT =>
			if(bt = '1') then
				state <= blockBT;
			else
				state <= initB;
			end if;
		
		when initB =>
			if(bt = '1') then
				state <= NextOp;
			else
				state <= initB;
			end if;
		
		when NextOp =>
			if(a_e_z = '1') then
				ld_a <= '0';
				ld_b <= '0';
				clr <= '0';
				cnt <= '0';
				state <= Re;
			end if;
			if(a_lt_z = '1' and a_e_z = '0') then
				ld_a <= '1';
				ld_b <= '0';
				slt_a <= '1';
				clr <= '0';
				sub_add <= '1';
				cnt <= '1';
				ud <= '1';
				state <= Re_Rest;
			elsif(a_lt_z = '0' and a_e_z = '0') then
				ld_a <= '1';
				ld_b <= '0';
				slt_a <= '1';
				clr <= '0';
				sub_add <= '0';
				cnt <= '1';
				ud <= '0';
				state <= AsubB;
			end if;
		
		when AsubB =>
			ld_a <= '0';
			ld_b <= '0';
			slt_a <= '0';
			clr <= '0';
			cnt <= '0';
			state <= NextOp;
		
		when Re =>
			if(bt = '1') then
				state <= blockBT2;
			else
				state <= Re;
			end if;
			
		when Re_Rest =>
			state <= Re;
			
		when others =>
			if(bt = '1') then
				state <= blockBT2;
			else
				state <= InitA;
			end if;
		end case;
	end if;
	
	if(state = initA) then
		ld_a <= '0';
		ld_b <= '0';
		slt_a <= '0';
		clr <= '1';
		cnt <= '0';
	elsif(state = blockBT) then
		ld_a <= '1';
		ld_b <= '0';
		slt_a <= '0';
		clr <= '0';
		cnt <= '0';
	elsif(state = initB) then
		ld_a <= '0';
		ld_b <= '1';
		clr <= '0';
		cnt <= '0';
	elsif(state = Re) then
		ld_a <= '0';
		ld_b <= '0';
		clr <= '0';
		cnt <= '0';
	elsif(state = blockBT2) then
		ld_a <= '0';
		ld_b <= '0';
		clr <= '0';
		cnt <= '0';
	end if;
		
	end process;
end arch;