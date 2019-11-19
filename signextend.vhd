library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity signextend is
	port	(In1:	in std_logic_vector(15 downto 0);
		 Saida:	out std_logic_vector(31 downto 0));
end signextend;

architecture sgn of signextend is 
begin
	process(In1)
	begin
		if (In1(15) = '0') then
			Saida <= "0000000000000000" & In1;
		else 
			Saida <= "1111111111111111" & In1;
		end if;
	end process;
	

end;