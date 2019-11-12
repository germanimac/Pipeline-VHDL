LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.components.all ;

ENTITY PipelineCPU IS 
	GENERIC(N : Integer :=32;
	Code: Integer :=5);
	PORT(
		Barramento: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);

END PipelineCPU ;


ARCHITECTURE Behavior OF PipelineCPU  IS

		SIGNAL readRegister1 					: STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		SIGNAL readRegister2 					: STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		SIGNAL writeRegister					: STD_LOGIC_VECTOR(Code-1 DOWNTO 0 ); -- data out para saida do 2
		SIGNAL writeData						: STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		SIGNAL readData1						:	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); --rout para sair read data 1
		SIGNAL readData2						: 	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); -- rout para sair read data 2 
	

BEGIN

reg: bancoRegistradores PORT MAP (readRegister1, readRegister2, writeRegister, writeData, readData1, readData2);


END Behavior;

