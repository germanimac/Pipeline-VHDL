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
					memoria(0)<= "00000100";
					memoria(1)<= "00000000";
					memoria(2)<= "00000000";
					memoria(3)<= "00000100";
					memoria(4)<= "00000100";
					memoria(5)<= "00100001";
					memoria(6)<= "00000000";
					memoria(7)<= "10000001";
					memoria(8)<= "00100100";
					memoria(9)<= "00000000";
					memoria(10)<= "00000000";
					memoria(11)<= "00000001";
					memoria(12)<= "11111111";
					memoria(13)<= "11111111";
					memoria(14)<= "11111111";
					memoria(15)<= "11111111";
					memoria(16)<= "11111111";
					memoria(17)<= "11111111";
					memoria(18)<= "11111111";
					memoria(19)<= "11111111";
					memoria(20)<= "00000000";
					memoria(21)<= "00100000";
					memoria(22)<= "00010000";
					memoria(23)<= "00000010";
					memoria(24)<= "00010100";
					memoria(25)<= "00000001";
					memoria(26)<= "00000000";
					memoria(27)<= "00000000";
					memoria(28)<= "11111111";
					memoria(29)<= "11111111";
					memoria(30)<= "11111111";
					memoria(31)<= "11111111";
					memoria(32)<= "11111111";
					memoria(33)<= "11111111";
					memoria(34)<= "11111111";
					memoria(35)<= "11111111";
					memoria(36)<= "11111111";
					memoria(37)<= "11111111";
					memoria(38)<= "11111111";
					memoria(39)<= "11111111";
					memoria(40)<= "11111111";
					memoria(41)<= "11111111";
					memoria(42)<= "11111111";
					memoria(43)<= "11111111";
					memoria(44)<= "00011000";
					memoria(45)<= "00000100";
					memoria(46)<= "00000000";
					memoria(47)<= "00000000";
					memoria(48)<= "11111111";
					memoria(49)<= "11111111";
					memoria(50)<= "11111111";
					memoria(51)<= "11111111";
					memoria(52)<= "11111111";
					memoria(53)<= "11111111";
					memoria(54)<= "11111111";
					memoria(55)<= "11111111";
					memoria(56)<= "11111111";
					memoria(57)<= "11111111";
					memoria(58)<= "11111111";
					memoria(59)<= "11111111";
			
			
			process (endereco)
			begin
				instrucao <= memoria(to_integer(unsigned(endereco))) &  memoria(to_integer(unsigned(endereco)) + 1) & memoria(to_integer(unsigned(endereco)) + 2) & memoria(to_integer(unsigned(endereco)) + 3);
			end process;
			
end;