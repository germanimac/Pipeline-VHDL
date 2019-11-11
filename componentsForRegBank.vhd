LIBRARY ieee;
Use ieee.std_logic_1164.all;


PACKAGE componentsForRegBank is 

COMPONENT registrador IS
	GENERIC(N : Integer :=32);
	PORT( R					:IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			Rin		:IN	STD_LOGIC;
			Q					:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END component;

COMPONENT triStateBuffer IS	
GENERIC (N: INTEGER:= 32);
	
PORT( 	X :IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);

      	E :IN STD_LOGIC;
	     
			F :OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));

END COMPONENT;

COMPONENT regWithTriState IS	
GENERIC (N: INTEGER:= 32);
	Port(
		Data 					:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		DataOut1				:OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); -- data out para saida do 1
		DataOut2				:OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); -- data out para saida do 2
		Rin					:IN STD_LOGIC;
		Rout1					:IN	STD_LOGIC; --rout para sair read data 1
		Rout2					:IN 	STD_LOGIC -- rout para sair read data 2 
		);

END COMPONENT;



END componentsForRegBank;