LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.componentsForRegBank.all ;


ENTITY regBank IS 
	GENERIC(N : Integer :=32);
	Port(
		ReadRegister1			:IN	STD_LOGIC_VECTOR(4 DOWNTO 0) ;
		ReadRegister2			:IN	STD_LOGIC_VECTOR(4 DOWNTO 0) ;
		WriteRegister			:IN	STD_LOGIC_VECTOR(4 DOWNTO 0) ;
		RegWrite					:IN	STD_LOGIC;
		WriteData				:IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
		ReadData1				:OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
		ReadData2				:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0) 
		
		
	
	);

END regBank ;


ARCHITECTURE Behavior OF regBank  IS
	SIGNAL Rin						: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL Rout1					: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL Rout2					: STD_LOGIC_VECTOR(N-1 DOWNTO 0);

BEGIN




END Behavior;

