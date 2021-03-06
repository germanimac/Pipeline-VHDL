library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity muxRegAdd is
	port(
		In1,In2:	in		STD_LOGIC_VECTOR(4 Downto 0);
		Selector:in		STD_LOGIC;	
		Saida:	out	STD_LOGIC_VECTOR(4 Downto 0)
	);
end muxRegAdd;

Architecture Behavior of muxRegAdd is
begin
	process(Selector,In1,In2)
		begin
			if	(Selector = '0') THEN
				Saida	<=	In1;
			else
				Saida	<= In2;
			end if;
	end process;
end Behavior;