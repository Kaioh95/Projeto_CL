library ieee;
use ieee.std_logic_1164.all;

entity m_acesso is
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
end;

architecture ar_m_acesso of m_acesso is
begin
	r_data_o <= r_data_i;
	data_o <= data_i;
	addr_o <= addr_i;
	wren_o <= wren_i;

end ar_m_acesso;