library ieee;
use ieee.std_logic_1664.all;
use ieee.std_logic_usigned.all;
use ieee.numeric_std_all;

entity InstructionMemory is
	port(
		endereço: in std_logic_vector(0 to 31);
		instrucao: out std_logic_vector(0 to 31) := "000000000000000000000000000000000");
end InstructionMemory;

architecture InstMemory of InstructionMemory is
			type byte is array(0 to 384) of std_logic_vector(0 to 7);
			signal memoria: byte;
			
			begin
				--TO DO INSTRUÇÕES
				
			process (endereço)
			begin
				instrucao <= memoria(to_integer(unsigned(endereço))) &  memoria(to_integer(unsigned(endereço)) + 1) & memoria(to_integer(unsigned(endereço)) + 2) & memoria(to_integer(unsigned(endereço)) + 3);
			end process;
			
end;