library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RegIDEX is
	port (clock:		in		std_logic;
	
			input_instruction_WB: in std_logic_vector(0 to 1);
			input_instruction_M : in std_logic_vector(0 to 2);
			input_instruction_EX: in std_logic_vector(0 to 4);
			
			output_instruction_WB:	out std_logic_vector(0 to 1) := "00";
			output_instruction_M:	out std_logic_vector(0 to 2) := "000";
			output_instruction_EX:	out std_logic_vector(0 to 4) := "00000";
			
			input_ProgramCounter: in std_logic_vector(31 DOWNTO 0);
			output_ProgramCounter: out std_logic_vector(31 DOWNTO 0):= "00000000000000000000000000000000";
			
			input_read1:	in		std_logic_vector(31 DOWNTO 0);
			output_read1:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_read2:	in		std_logic_vector(31 DOWNTO 0);
			output_read2:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_imed:		in		std_logic_vector(31 DOWNTO 0);
			output_imed:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_rt:		in		std_logic_vector(4 DOWNTO 0);
			output_rt:		out	std_logic_vector(4 DOWNTO 0) := "00000";
			input_rd:		in		std_logic_vector(4 DOWNTO 0);
			output_rd:		out	std_logic_vector(4 DOWNTO 0) := "00000");
end RegIDEX;

architecture a of RegIDEX is

begin
	process(clock)
	begin
		if (clock'EVENT and clock = '1') then
			output_instruction_WB		<= input_instruction_WB;
			output_instruction_M		<= input_instruction_M;
			output_instruction_EX		<= input_instruction_EX;
			output_ProgramCounter		<= input_ProgramCounter;
			output_read1	<= input_read1;
			output_read2	<= input_read2;
			output_imed		<= input_imed;
			output_rt		<= input_rt;
			output_rd		<= input_rd;
		end if;
	end process;
end;