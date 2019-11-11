LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.componentsForRegBank.all ;

ENTITY PipelineCPU IS 
	GENERIC(N : Integer :=32);
	PORT(
		Barramento: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);

END PipelineCPU ;


ARCHITECTURE Behavior OF PipelineCPU  IS

		SIGNAL Data 					: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		SIGNAL DataOut1				: STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		SIGNAL DataOut2				: STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		SIGNAL Rin					: STD_LOGIC;
		SIGNAL Rout1					:	STD_LOGIC; --rout para sair read data 1
		SIGNAL Rout2					: 	STD_LOGIC; -- rout para sair read data 2 
	

BEGIN

reg: regWithTriState PORT MAP (Data, DataOut1, DataOut2, Rin, Rout1, Rout2);


END Behavior;

