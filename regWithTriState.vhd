LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.componentsForRegBank.all ;


ENTITY regWithTriState IS 
	GENERIC(N : Integer :=32);
	Port(
		Data 					:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		DataOut1				:OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); -- data out para saida do 1
		DataOut2				:OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); -- data out para saida do 2
		Rin					:IN STD_LOGIC;
		Rout1					:IN	STD_LOGIC := '1'; --rout para sair read data 1
	   Rout2					:IN 	STD_LOGIC := '1'-- rout para sair read data 2 
		
	);

END regWithTriState ;


ARCHITECTURE Behavior OF regWithTriState  IS
	
	SIGNAL Dout : STD_LOGIC_VECTOR(N-1 DOWNTO 0); --homenagem a deston our dear and ugly frend


BEGIN


	reg: registrador PORT MAP(Data, Rin, Dout);
	tri1 : triStateBuffer PORT MAP (Dout, Rout1, DataOut1); -- saida do primeiro
	tri2 : triStateBuffer PORT MAP (Dout, Rout2, DataOut2); -- saida do segundo
	
	



END Behavior;
