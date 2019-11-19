library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RegEXMEM is
	port (clock:		in		std_logic;
			input_WB:		in		std_logic_vector(0 To 1);
			input_ME:		in		std_logic_vector(0 TO 2);
			input_pc:		in		std_logic_vector(31 DOWNTO 0);
			input_zero:		in		std_logic;
			input_result:	in		std_logic_vector(31 DOWNTO 0);
			input_wrData:	in		std_logic_vector(31 DOWNTO 0);
			input_regdst:	in		std_logic_vector(4 DOWNTO 0);
			
			output_WB:		out	std_logic_vector(0 TO 1) := "00";
			output_ME:		out	std_logic_vector(0 TO 2) := "000";
			output_pc:		out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			output_zero:	out	std_logic := '0';
			output_result:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			output_wrData:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			output_regdst:	out	std_logic_vector(4 DOWNTO 0) := "00000");
			
end RegEXMEM;

architecture a of RegEXMEM is

begin
	process(clock)
	begin
		if (clock'EVENT and clock = '1') then
			output_WB 		<= input_WB;
			output_ME 		<= input_ME;
			output_pc 		<= input_pc;
			output_zero 	<= input_zero;
			output_result 	<= input_result;
			output_wrData 	<= input_wrData;
			output_regdst 	<= input_regdst;
		end if;
	end process;
end;