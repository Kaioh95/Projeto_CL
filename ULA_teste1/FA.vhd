library ieee;
use ieee.std_logic_1164.all;

entity FA is
	port(
		a, b, cin: in std_logic;
		s, cout: out std_logic
	);
end FA;

architecture arc of FA is
begin
	s <= cin xor a xor b;
	cout <= ((a xor b) and cin) or (a and b);
end arc;