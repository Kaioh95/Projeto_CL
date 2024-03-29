library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_bank is
    generic (
        DATA_WIDTH : integer := 16;
        ADDR_WIDTH : integer := 3
    );
    port (
        clock  : in std_logic;
        wr   	: in std_logic;
		  clear	: in std_logic;
        addr   : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        data_i : in std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_o : out std_logic_vector(DATA_WIDTH - 1 downto 0)
    );
end reg_bank;

architecture regs_arch of reg_bank is
    type reg_t is array (0 to 2**ADDR_WIDTH - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0);

    signal reg_image : reg_t := (
        0 => "0000000000000000",
        1 => "0000000000000000",
        others => "0000000000000000"
    );
begin
	process (clock, clear)
	begin
		if clock'event and clock = '1' then
			data_o <= reg_image(to_integer(unsigned(addr)));

			if wr = '1' then
				reg_image(to_integer(unsigned(addr))) <= data_i;
			end if;
				
			if clear = '1' then
				reg_image(0) <= "0000000000000000";
				reg_image(1) <= "0000000000000000";
				reg_image(2) <= "0000000000000000";
				reg_image(3) <= "0000000000000000";
				reg_image(4) <= "0000000000000000";
				reg_image(5) <= "0000000000000000";
				reg_image(6) <= "0000000000000000";
				reg_image(7) <= "0000000000000000";	
			end if;
			
		end if;
	end process;
end regs_arch;
