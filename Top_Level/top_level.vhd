library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity top_level is
	port(
		clock, reset, valid, operate: in std_logic;
		input: in std_logic_vector(15 downto 0);
		
		Rhex0: out std_logic_vector(6 downto 0);
		Rhex1: out std_logic_vector(6 downto 0);
		Rhex2: out std_logic_vector(6 downto 0);
		Rhex3: out std_logic_vector(6 downto 0);
		
		led_neg: out std_logic;
		led_zero: out std_logic;
		led_over: out std_logic;
		led_endOP: out std_logic
	);
end;

architecture ar_top_level of top_level is

component ULA
	port(
		A, B: in std_logic_vector (15 downto 0);
		M, S1, S0: in std_logic; -- SELETOR
		Cin: inout std_logic;
		Cout: out std_logic;
		SAIDA: out std_logic_vector (15 downto 0)
	);
end component;
	
component reg_bank
	port (
        clock  : in std_logic;
        wr   	: in std_logic;
		  clear	: in std_logic;
        addr   : in std_logic_vector(2 downto 0);
        data_i : in std_logic_vector(15 downto 0);
        data_o : out std_logic_vector(15 downto 0)
    );
end component;

component countDec
	port(
		i: in std_logic_vector(5 downto 0);
		rd, count, clear, clk: in std_logic;
		fc: out std_logic
	);
end component;

component demuxOP
	port(
		OP: in std_logic_vector (3 downto 0);
		slt_op: out std_logic_vector (2 downto 0);
		rc_ops: out std_logic;
		const_ops: out std_logic;
		sln_ops: out std_logic;
		nand_op: out std_logic;
		lw_op: out std_logic;
		sw_op: out std_logic
	);
end component;

component m_acesso
	port(
		r_data_i: in std_logic_vector(15 downto 0);
		r_data_o: out std_logic_vector(15 downto 0);
		data_i: in std_logic_vector(15 downto 0);
		data_o: out std_logic_vector(15 downto 0);
		addr_i: in std_logic_vector(15 downto 0);
		addr_o: out std_logic_vector(15 downto 0);
		wren_i: in std_logic;
		wren_o: out std_logic
	);
end component;

component m_entrada
	port(
		reset: in std_logic;
		valid: in std_logic;
		operate: in std_logic;
		input: in std_logic_vector(15 downto 0);
		opcode: out std_logic_vector(3 downto 0);
		RA: out std_logic_vector(2 downto 0);
		RB: out std_logic_vector(2 downto 0);
		RC: out std_logic_vector(2 downto 0);
		allbits: out std_logic_vector(15 downto 0);
		reset_o: out std_logic;
		valid_o: out std_logic;
		operate_o: out std_logic
	);
end component;

component m_saida
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
end component;

component pControle
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
end component;

component ram
    port (
        clock  : in std_logic;
        wren   : in std_logic;
        addr   : in std_logic_vector(15 downto 0);
        data_i : in std_logic_vector(15 downto 0);
        data_o : out std_logic_vector(15 downto 0)
    );
end component;

component reg
	port(
		i: in std_logic_vector(15 downto 0);
		clk, clr, rw: in std_logic;
		q: out std_logic_vector(15 downto 0)
	);
end component;

signal opcode: std_logic_vector(3 downto 0);
signal RA_e, RB_e, RC_e: std_logic_vector(2 downto 0);
signal allbits_e: std_logic_vector(15 downto 0);
signal reset_e, valid_e, operate_e: std_logic;
signal slt_op: std_logic_vector (2 downto 0);
signal rc_ops, const_ops, sln_ops, nand_op, lw_op, sw_op: std_logic;
signal fimC: std_logic;
signal clear, ld_A, ld_B, rd, wr, wren, c_mux, r_mux, s_mux, vd_mux, count, led_r: std_logic;
signal slt_ula, slt_reg: std_logic_vector(2 downto 0);
signal const: std_logic_vector(5 downto 0);
signal ss: std_logic_vector(4 downto 0);

signal banco_regs_i: std_logic_vector(15 downto 0);
signal banco_regs_o: std_logic_vector(15 downto 0);

signal reg_B_i: std_logic_vector(15 downto 0);
signal reg_B_o: std_logic_vector(15 downto 0);
signal reg_A_o: std_logic_vector(15 downto 0);

signal r_data_o: std_logic_vector(15 downto 0); 				-- saída do m_acesso
signal saida_ram_para_banco: std_logic_vector(15 downto 0); -- saída da RAM
signal s_acesso_para_ram: std_logic_vector(15 downto 0); 	-- saída do m_acesso
signal reg_A_plus_const: std_logic_vector(15 downto 0); 		-- saída de reg_A + const
signal addr_o: std_logic_vector(15 downto 0); 					-- saída do m_acesso
signal wren_o: std_logic; 												-- saída do m_acesso

signal Cin: std_logic;
signal Cout: std_logic;
signal saida_ula: std_logic_vector (15 downto 0);

signal result: std_logic_vector(15 downto 0);

begin

entrada: m_entrada 
	port map(
		reset, valid, operate, input,
		opcode,
		RA_e, RB_e, RC_e,
		allbits_e, reset_e, valid_e, operate_e
	);
	
demux: demuxOP
	port map(
		opcode,
		slt_op,
		rc_ops, const_ops, sln_ops, nand_op, lw_op, sw_op
	);
	
partControle: pControle 
	port map(
		slt_op,
		clock, rc_ops, const_ops, sln_ops, nand_op, lw_op, sw_op,
		
		RA_e, RB_e, RC_e,
		allbits_e,
		reset_e, valid_e, operate_e, fimC,

		clear, ld_A, ld_B, rd, wr, wren, c_mux, r_mux, s_mux, vd_mux, count, led_r,
		slt_ula, slt_reg, const, ss
	);

banco_reg: reg_bank
	port map(
        clock, wr, clear, slt_reg, banco_regs_i, banco_regs_o
    );
	
contador_dec: countDec
	port map(
		const,
		rd, count, clear, clock, fimC
	);
	
modulo_acesso: m_acesso
	port map(
		reg_B_o,
		r_data_o,
		saida_ram_para_banco,
		s_acesso_para_ram,
		reg_A_plus_const,
		addr_o,
		wren,
		wren_o
	);
	
reg_A: reg
	port map(
		banco_regs_o,
		clock, clear, ld_A,
		reg_A_o
	);

reg_B: reg
	port map(
		reg_B_i,
		clock, clear, ld_B,
		reg_B_o
	);
	
mem: ram
    port map(
        clock, 
        wren_o, 
        addr_o, 
        r_data_o,
        saida_ram_para_banco
    );
	 
ula1: ULA
	port map(
		reg_A_o, reg_B_o,
		slt_ula(2), slt_ula(1), slt_ula(0),
		Cin,
		Cout,
		saida_ula
	);
	
mod_saida: m_saida
	port map(
		result,
		Cout,
		led_r,
		
		led_neg,
		led_zero,
		led_over,
		led_endOP,
		
		Rhex0,
		Rhex1,
		Rhex2,
		Rhex3
	);

reg_A_plus_const <= reg_A_o + ("0000000000" & const);

	process(c_mux, r_mux, s_mux, vd_mux)
	begin
		if(c_mux = '0') then
			reg_B_i <= banco_regs_o;
		else
			reg_B_i <= "0000000000" & const;
		end if;
		
		if(r_mux = '1') then
			banco_regs_i <= saida_ram_para_banco;
		else
			banco_regs_i <= saida_ula;
		end if;
		
		if(s_mux = '1') then
			result <= saida_ula;
		else
			result <= allbits_e;
		end if;
		
		if(vd_mux = '1') then
			banco_regs_i <= allbits_e;
		end if;
	
	end process;
	
end ar_top_level;