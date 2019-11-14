library ieee;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all;

use ieee.numeric_std.all;

entity instructionMemory is
	port(
		endereco: in std_logic_vector(0 to 31);
		instrucao: out std_logic_vector(0 to 31) := "00000000000000000000000000000000");
end instructionMemory;

architecture InstMemory of instructionMemory is
			type byte is array(0 to 384) of std_logic_vector(0 to 7);
			signal memoria: byte;
			
			begin
				--TO DO INSTRUÇÕES
				
			process (endereco)
			begin
				instrucao <= memoria(to_integer(unsigned(endereco))) &  memoria(to_integer(unsigned(endereco)) + 1) & memoria(to_integer(unsigned(endereco)) + 2) & memoria(to_integer(unsigned(endereco)) + 3);
			end process;
			
end;