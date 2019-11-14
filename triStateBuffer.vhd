LIBRARY ieee;

USE ieee.std_logic_1164.all;


ENTITY triStateBuffer IS	
GENERIC (N: INTEGER:= 32);
	
PORT( 	X :IN STD_LOGIC_VECTOR(N-1 DOWNTO 0); --entrada dos dados

      	E :IN STD_LOGIC; -- e ctrl
	     
	F :OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)); -- saida

END triStateBuffer;



ARCHITECTURE Behavior OF triStateBuffer IS

BEGIN 
	
F<=(OTHERS=>'Z') WHEN E='0'
ELSE X;

END Behavior;