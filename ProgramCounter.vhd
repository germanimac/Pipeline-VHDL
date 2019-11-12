library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ProgramCounter is
	port	(clock:	in  std_logic;
			pc_upd:	in  std_logic_vector(0 to 31);
			pc:		out std_logic_vector(0 to 31) := "00000000000000000000000000000000");
end ProgramCounter;

architecture count of ProgramCounter is
begin 
	process (clock, pc_upd)
	begin
		if (clock'event and clock = '0') then 
			pc <= pc_upd;
		end if;
	end process;
end;