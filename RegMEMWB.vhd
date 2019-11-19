library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RegMEMWB is
	port (clock:		in		std_logic;
			input_WB:		in		std_logic_vector(0 to 1);
			output_WB:		out	std_logic_vector(0 to 1) := "00";
			
			input_rdData:	in		std_logic_vector(31 DOWNTO 0);
			output_rdData:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_addr:		in		std_logic_vector(31 DOWNTO 0);
			output_addr:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_regdst:	in		std_logic_vector(4 DOWNTO 0);
			output_regdst:	out	std_logic_vector(4 DOWNTO 0) := "00000");
end RegMEMWB;

architecture a of RegMEMWB is

begin
	process(clock)
	begin
		if (clock'EVENT and clock = '1') then
			output_WB 		<= input_WB;
			output_rdData	<= input_rdData;
			output_addr 	<= input_addr;
			output_regdst	<= input_regdst;
		end if;
	end process;
end;