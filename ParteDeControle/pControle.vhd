library ieee;
use ieee.std_logic_1164.all;

entity pControle is
	port(
		slt_op: in std_logic_vector (2 downto 0);
		clk, rc_ops, const_ops, sln_ops, nand_op, lw_op, sw_op: in std_logic;
		
		RA, RB, RC: in std_logic_vector(2 downto 0);
		allbits: in std_logic_vector(15 downto 0);
		reset, valid, operate, fimC: in std_logic;

		clear, ld_A, ld_B, rd, wr, wren, c_muc, r_mux, s_mux, count: out std_logic;
		slt_ula, slt_reg: out std_logic_vector(2 downto 0);
		const: out std_logic_vector(5 downto 0)
	);
end;

architecture ar_pControle of pControle is

constant init: std_logic_vector(4 downto 0) := "00000";
constant waitt: std_logic_vector(4 downto 0) := "00001";
constant blockBT: std_logic_vector(4 downto 0) := "00010";
constant vd_b: std_logic_vector(4 downto 0) := "00011";
constant blockBT1: std_logic_vector(4 downto 0) := "00100";
constant op_readRB: std_logic_vector(4 downto 0) := "00101";
constant storeW: std_logic_vector(4 downto 0) := "00110";
constant storing: std_logic_vector(4 downto 0) := "00111";
constant loadW: std_logic_vector(4 downto 0) := "01000";
constant loadRA: std_logic_vector(4 downto 0) := "01001";
constant shift_n: std_logic_vector(4 downto 0) := "01010";
constant shifting: std_logic_vector(4 downto 0) := "01011";
constant ops_const: std_logic_vector(4 downto 0) := "01100";
constant ops_rc: std_logic_vector(4 downto 0) := "01101";
constant do_op: std_logic_vector(4 downto 0) := "01110";
constant nnand: std_logic_vector(4 downto 0) := "01111";
constant result: std_logic_vector(4 downto 0) := "10000";
constant blockBT2: std_logic_vector(4 downto 0) := "10001";

signal state: std_logic_vector(4 downto 0) := init;
begin

	process(clk, slt_op, rc_ops, const_ops, sln_ops, nand_op, lw_op, sw_op, RA, RB, RC, allbits, reset, valid, operate, fimC, state)
	begin
	if(clk'event and clk = '1') then
		
		case state is
		
		when init =>
			state <= waitt;
			
		when waitt =>
			if(reset = '1') then
				state <= init;
			elsif(valid = '1') then
				state <= blockBT;
			elsif(operate = '1') then
				state <= op_readRB;
			end if;
			
		when blockBT =>
			if(valid = '0') then
				state <= vd_b;
			else
				state <= blockBT;
			end if;
			
		when vd_b =>
			if(valid = '1') then
				state <= blockBT1;
			end if;
			
		when blockBT1 =>
			if(valid = '0') then
				state <= blockBT1;
			else
				state <= waitt;
			end if;
			
		when op_readRB =>
			if(rc_ops = '1') then
				state <= ops_rc;
			elsif(const_ops = '1') then
				state <= ops_const;
			elsif(sln_ops = '1') then
				state <= shift_n;
			elsif(sw_op = '1') then
				state <= storeW;
			elsif(lw_op = '1') then
				state <= loadW;
			else
				state <= waitt;
			end if;
			
		when storeW =>
			state <= storing;
			
		when storing =>
			state <= waitt;
			
		when loadW =>
			state <= loadRA;
			
		when loadRA =>
			state <= waitt;
			
		when shift_n =>
			if(fimC = '1') then
				state <= shifting;
			else
				state <= result;
			end if;
			
		when shifting =>
			state <= shift_n;
			
		when ops_const =>
			state <= do_op;
			
		when ops_rc =>
			state <= do_op;
			
		when do_op =>
			if(nand_op = '0') then
				state <= result;
			else
				state <= nnand;
			end if;
			
		when nnand =>
			state <= result;
			
		when result =>
			if(operate = '1') then
				state <= blockBT2;
			end if;
		
		when blockBT2 =>
			if(operate = '0') then
				state <= waitt;
			else
				state <= blockBT2;
			end if;
		
		when others =>
			state <= init;
			
		end case;
	end if;
	
	end process;

end ar_pControle;