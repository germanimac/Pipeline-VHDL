library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity muxData is
	port(
		In1,In2:	in		STD_LOGIC_VECTOR(31 Downto 0);
		Selector:in		STD_LOGIC;	
		Saida:	out	STD_LOGIC_VECTOR(31 Downto 0)
	);
end muxData;

Architecture Behavior of muxData is
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