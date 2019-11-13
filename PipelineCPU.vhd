LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.components.all ;

ENTITY PipelineCPU IS 
	GENERIC(N : Integer :=32;
	Code: Integer :=5);
	PORT(
		Clock :IN STD_LOGIC;
		readRegister1 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		regWrite							:IN STD_LOGIC;
		readRegister2 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		writeRegister					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0 ); -- data out para saida do 2
		writeData						:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		readData1						:OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); --rout para sair read data 1
		readData2						:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ) -- rout para sair read data 2 
	
	);

END PipelineCPU ;


ARCHITECTURE Behavior OF PipelineCPU  IS

		

BEGIN

reg: bancoRegistradores PORT MAP (Clock ,readRegister1, regWrite, readRegister2, writeRegister, writeData, readData1, readData2);


END Behavior;

