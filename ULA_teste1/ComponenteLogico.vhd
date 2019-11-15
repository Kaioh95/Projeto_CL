library ieee;
use ieee.std_logic_1164.all;

entity ComponenteLogico is
	port(
		Ai, Bi: in std_logic;
		Mi, S1i, S0i: in std_logic;
		Xi, Yi: out std_logic
	);
end ComponenteLogico;

architecture arch of ComponenteLogico is
begin
	Xi <= ((not Mi) and Ai) 
			or (Mi and (not Ai) and S0i and (Bi or S1i))
			or (Mi and (not Ai) and S1i and (Bi or S0i))
			or (Ai and (not S1i) and (Bi or S0i))
			or (Ai and (not Bi) and S1i and (not S0i));
	
	Yi <= (not Mi) and ((Bi and (not S1i) and (not S0i)) or ((not Bi) and (not S1i) and S0i));

end arch;