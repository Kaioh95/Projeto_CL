library ieee;
use ieee.std_logic_1164.all;

entity pControle is
	port(
		slt_op: in std_logic_vector (2 downto 0);
		clk, rc_ops, const_ops, sln_ops, nand_op, lw_op, sw_op: in std_logic;
		
		RA, RB, RC: in std_logic_vector(2 downto 0);
		allbits: in std_logic_vector(15 downto 0);
		reset, valid, operate, fimC: in std_logic;

		clear, ld_A, ld_B, rd, wr, wren, c_mux, r_mux, s_mux, vd_mux, count, led_r: out std_logic;
		slt_ula, slt_reg: out std_logic_vector(2 downto 0);
		const: out std_logic_vector(5 downto 0);
		ss: out std_logic_vector(4 downto 0)
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
				state <= waitt;
			else
				state <= blockBT1;
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
			if(fimC = '0') then
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
	
	if(state = init) then
		clear <= '1';
		ld_A <= '0';
		ld_B <= '0';
		rd <= '0';
		wr <= '0';
		wren <= '0';
		c_mux <= '0';
		r_mux <= '0';
		s_mux <= '0';
		vd_mux <= '0';
		count <= '0';
		led_r <= '0';
		slt_ula <= "000";
		slt_reg <= "000";
		
	elsif(state = waitt) then
		clear <= '0';
		ld_A <= '0';
		ld_B <= '0';
		rd <= '0';
		wr <= '0';
		wren <= '0';
		c_mux <= '0';
		r_mux <= '0';
		s_mux <= '0';
		vd_mux <= '0';
		count <= '0';
		led_r <= '0';
		
	elsif(state = blockBT) then
		wr <= '1';
		vd_mux <= '1';
		slt_reg <= "000";
		
	elsif(state = vd_b) then
		slt_reg <= "001";
		wr <= '1';
		vd_mux <= '1';
		
	elsif(state = op_readRB) then
		slt_reg <= RB;
		wr <= '0';
		ld_A <= '1';
		rd <= '1';
	
	elsif(state = ops_rc) then
		c_mux <= '0';
		slt_reg <= RC;
		ld_A <= '0';
		ld_B <= '1';
		wr <= '0';
		rd <= '0';
	
	elsif(state = ops_const) then
		c_mux <= '1';
		ld_A <= '0';
		ld_B <= '1';
		wr <= '0';
	
		
	elsif(state = shift_n) then
		slt_ula <= slt_op;
		slt_reg <= RA;
		ld_A <= '0';
		ld_B <= '0';
		wr <= '1';
		count <= '0';
	
	elsif(state = shifting) then
		count <= '1';
		wr <= '0';
		ld_A <= '1';
		ld_B <= '0';
		
	elsif(state = storeW) then
		slt_reg <= RA;
		ld_A <= '0';
		ld_B <= '1';
		c_mux <= '0';
	
	elsif(state = storing) then
		wren <= '1';
		ld_B <= '0';
	
	elsif(state = loadw) then
		wren <= '0';
		r_mux <= '1';
		slt_reg <= RA;
		ld_A <= '0';
		ld_B <= '0';
		
	elsif(state = loadRA) then
		r_mux <= '1';
		wr <= '1';
	
	elsif(state = do_op) then
		slt_ula <= slt_op;
		r_mux <= '0';
		slt_reg <= RA;
		wr <= '1';
		ld_A <= '0';
		ld_B <= '0';
		
	elsif(state = nnand) then
		slt_ula <= "111";
		r_mux <= '0';
		slt_reg <= RA;
		wr <= '1';
		ld_A <= '1';
		ld_B <= '1';
	
	elsif(state = result) then
		s_mux <= '1';
		vd_mux <= '0';
		slt_reg <= RA;
		slt_ula <= slt_op;
		wr <= '1';
		r_mux <= '0';
		ld_A <= '0';
		ld_B <= '0';
		led_r <= '1';
	
	end if;
	
	end process;
	const <= allbits(5 downto 0);
	ss <= state;

end ar_pControle;