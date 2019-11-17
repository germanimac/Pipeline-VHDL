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
			memoria(0)<=	"00000100";
			memoria(1)<=	"00000000";
			memoria(2)<=	"00000000";
			memoria(3)<=	"00000100";
			
			memoria(4)<=	"00000100";
			memoria(5)<=	"00100001";
			memoria(6)<=	"00000000";
			memoria(7)<=	"00000010";
		
			memoria(8)<=	"11111100";
			memoria(9)<=	"00000000";
			memoria(10)<=	"00000000";
			memoria(11)<=	"00000100";
			
			memoria(12)<=	"11111100";
			memoria(13)<=	"00000000";
			memoria(14)<=	"00000000";
			memoria(15)<=	"00000100";
			
			memoria(16)<=	"11111100";
			memoria(17)<=	"00000000";
			memoria(18)<=	"00000000";
			memoria(19)<=	"00000100";
			
			memoria(20)<=	"11111100";
			memoria(21)<=	"00000000";
			memoria(22)<=	"00000000";
			memoria(23)<=	"00000100";
			
			memoria(24)<=	"11111100";
			memoria(25)<=	"00000000";
			memoria(26)<=	"00000000";
			memoria(27)<=	"00000100";
			
			memoria(28)<=	"11111100";
			memoria(29)<=	"00000000";
			memoria(30)<=	"00000000";
			memoria(31)<=	"00000100";
			
			memoria(32)<=	"00000000";
			memoria(33)<=	"00000001";
			memoria(34)<=	"00000000";
			memoria(35)<=	"00000001";
			
			
			process (endereco)
			begin
				instrucao <= memoria(to_integer(unsigned(endereco))) &  memoria(to_integer(unsigned(endereco)) + 1) & memoria(to_integer(unsigned(endereco)) + 2) & memoria(to_integer(unsigned(endereco)) + 3);
			end process;
			
end;