LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.componentsForRegBank.all ;


ENTITY bancoRegistradores IS 
	GENERIC(Code : Integer :=5;
				N : Integer:=32);
	Port(
		readRegister1 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		readRegister2 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		writeRegister					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0 ); -- data out para saida do 2
		writeData						:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		readData1						:OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); --rout para sair read data 1
		readData2						:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ) -- rout para sair read data 2 
	);
END bancoRegistradores ;


ARCHITECTURE Behavior OF bancoRegistradores  IS
	
	SIGNAL RoutA : STD_LOGIC := '0';
	SIGNAL RoutB : STD_LOGIC := '0';
	SIGNAL Rin1  : STD_LOGIC_VECTOR(N-1 downto 0) := "00000000000000000000000000000000";
BEGIN
	
	reg0 : regWithTriState PORT MAP (writeData, readData1, readData2, RoutA, RoutB );
	
	


END Behavior;
