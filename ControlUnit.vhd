library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
	port (
		Instruction: 	in std_logic_vector(5 downto 0);
		Regwrite,RegDst,AluSrc,Memwrite,Memread,Branch,Memtoreg:	out STD_LOGIC;
		ALUOP:	out std_logic_vector(2 downto 0)
	);
end ControlUnit;

Architecture Behavior of ControlUnit is
begin
	process(Instruction)
	begin
	
		case Instruction is
			when "000000" => --tipo R(menos Jr)--
									Regwrite <= '1';
									RegDst	<= '1';
									ALUOP		<= "100";
									AluSrc	<=	'0';
									Memwrite	<=	'0';
									Memread	<=	'0';
									Memtoreg	<=	'0';
									Branch	<=	'0';
									
			when	"000001"	=>	--Addi--
									Regwrite <=	'1';
									RegDst	<=	'0';
									ALUOP		<=	"000";
									AluSrc	<=	'1';
									Memwrite	<=	'0';
									Memread	<=	'0';
									Memtoreg	<=	'0';
									Branch	<=	'0';
									
			when	"000010"	=>	--Subi--
									Regwrite <=	'1';
									RegDst	<=	'0';
									ALUOP		<=	"001";
									AluSrc	<=	'1';
									Memwrite	<=	'0';
									Memread	<=	'0';
									Memtoreg	<=	'0';
									Branch	<=	'0';
									
			when	"000011"	=>	--Andi--
									Regwrite <=	'1';
									RegDst	<=	'0';
									ALUOP		<=	"010";
									AluSrc	<=	'1';
									Memwrite	<=	'0';
									Memread	<=	'0';
									Memtoreg	<=	'0';
									Branch	<=	'0';
									
			when	"000100"	=>	--Ori--
									Regwrite <=	'1';
									RegDst	<=	'0';
									ALUOP		<=	"011";
									AluSrc	<=	'1';
									Memwrite	<=	'0';
									Memread	<=	'0';
									Memtoreg	<=	'0';
									Branch	<=	'0';
									
			when	"000101"	=>	--sw--
									Regwrite <=	'0';
									ALUOP		<= "000";
									AluSrc	<=	'1';
									Memwrite	<=	'1';
									Memread	<=	'0';
									Branch	<=	'0';
			
			when	"000110"	=>	--lw--
									Regwrite	<=	'1';
									RegDst	<=	'0';
									ALUOP		<=	"000";
									AluSrc	<=	'1';
									Memwrite	<=	'0';
									Memread	<=	'1';
									Memtoreg	<=	'1';
									Branch	<=	'0';
									
			when	"000111"	=>	--Beq--
									Regwrite	<=	'0';
									ALUOP		<=	"001";
									AluSrc	<=	'0';
									Memwrite	<=	'0';
									Branch	<=	'1';
						
			when	others	=>
									Regwrite <= '0';
									RegDst	<= '0';
									ALUOP		<= "000";
									AluSrc	<=	'0';
									Memwrite	<=	'0';
									Memread	<=	'0';
									Memtoreg	<=	'0';
									Branch	<=	'0';
		end case;
	end process;
end Behavior;