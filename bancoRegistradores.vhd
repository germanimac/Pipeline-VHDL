LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.componentsForRegBank.all ;


ENTITY bancoRegistradores IS 
	GENERIC(Code : Integer :=5;
				N : Integer:=32);
	Port(
		Clock :IN STD_LOGIC;
		readRegister1 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		readRegister2 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		writeRegister					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0 ); -- data out para saida do 2
		writeData						:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		readData1						:OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); --rout para sair read data 1
		readData2						:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ) -- rout para sair read data 2 
	);
END bancoRegistradores ;


ARCHITECTURE Behavior OF bancoRegistradores  IS
	
	SIGNAL RoutA : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL RoutB : STD_LOGIC_VECTOR(N-1 DOWNTO 0); 
	SIGNAL Rin1  : STD_LOGIC_VECTOR(N-1 downto 0);
BEGIN
	
	reg0 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(0), RoutA(0), RoutB(0) );
	reg1 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(1), RoutA(1), RoutB(1) );
	reg2 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(2), RoutA(2), RoutB(2) );
	reg3 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(3), RoutA(3), RoutB(3) );
	reg4 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(4), RoutA(4), RoutB(4) );
	reg5 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(5), RoutA(5), RoutB(5) );
	reg6 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(6), RoutA(6), RoutB(6) );
	reg7 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(7), RoutA(7), RoutB(7) );
	reg8 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(8), RoutA(8), RoutB(8) );
	reg9 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(9), RoutA(9), RoutB(9) );
	reg10 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(10), RoutA(10), RoutB(10) );
	reg11 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(11), RoutA(11), RoutB(11) );
	reg12 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(12), RoutA(12), RoutB(12) );
	reg13 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(13), RoutA(13), RoutB(13) );
	reg14 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(14), RoutA(14), RoutB(14) );
	reg15 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(15), RoutA(15), RoutB(15) );
	reg16 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(16), RoutA(16), RoutB(16) );
	reg17 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(17), RoutA(17), RoutB(17) );
	reg18 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(18), RoutA(18), RoutB(18) );
	reg19 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(19), RoutA(19), RoutB(19) );
	reg20 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(20), RoutA(20), RoutB(20) );
	reg21 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(21), RoutA(21), RoutB(21) );
	reg22 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(22), RoutA(22), RoutB(22) );
	reg23 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(23), RoutA(23), RoutB(23) );
	reg24 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(24), RoutA(24), RoutB(24) );
	reg25 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(25), RoutA(25), RoutB(25) );
	reg26 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(26), RoutA(26), RoutB(26) );
	reg27 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(27), RoutA(27), RoutB(27) );
	reg28 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(28), RoutA(28), RoutB(28) );
	reg29 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(29), RoutA(29), RoutB(29) );
	reg30 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(30), RoutA(30), RoutB(30) );
	reg31 : regWithTriState PORT MAP (Clock, writeData, readData1, readData2,Rin1(31), RoutA(31), RoutB(31) );
	
	PROCESS (readRegister1)
	BEGIN
			RoutA(0) <= '0';
			RoutA(1) <= '0';
			RoutA(2) <= '0';
			RoutA(3) <= '0';
			RoutA(4) <= '0';
			RoutA(5) <= '0';
			RoutA(6) <= '0';
			RoutA(7) <= '0';
			RoutA(8) <= '0';
			RoutA(9) <= '0';
			RoutA(10) <= '0';
			RoutA(11) <= '0';
			RoutA(12) <= '0';
			RoutA(13) <= '0';
			RoutA(14) <= '0';
			RoutA(15) <= '0';
			RoutA(16) <= '0';
			RoutA(17) <= '0';
			RoutA(18) <= '0';
			RoutA(19) <= '0';
			RoutA(20) <= '0';
			RoutA(21) <= '0';
			RoutA(22) <= '0';
			RoutA(23) <= '0';
			RoutA(24) <= '0';
			RoutA(25) <= '0';
			RoutA(26) <= '0';
			RoutA(27) <= '0';
			RoutA(28) <= '0';
			RoutA(29) <= '0';
			RoutA(30) <= '0';
			RoutA(31) <= '0';
		CASE readRegister1 IS
			WHEN "00000" => RoutA(0) <= '1';
			WHEN "00001" => RoutA(1) <= '1';
			WHEN "00010" => RoutA(2) <= '1';
			WHEN "00011" => RoutA(3) <= '1';
			WHEN "00100" => RoutA(4) <= '1';
			WHEN "00101" => RoutA(5) <= '1';
			WHEN "00110" => RoutA(6) <= '1';
			WHEN "00111" => RoutA(7) <= '1';
			WHEN "01000" => RoutA(8) <= '1';
			WHEN "01001" => RoutA(9) <= '1';
			WHEN "01010" => RoutA(10) <= '1';
			WHEN "01011" => RoutA(11) <= '1';
			WHEN "01100" => RoutA(12) <= '1';
			WHEN "01101" => RoutA(13) <= '1';
			WHEN "01110" => RoutA(14) <= '1';
			WHEN "01111" => RoutA(15) <= '1';
			WHEN "10000" => RoutA(16) <= '1';
			WHEN "10001" => RoutA(17) <= '1';
			WHEN "10010" => RoutA(18) <= '1';
			WHEN "10011" => RoutA(19) <= '1';
			WHEN "10100" => RoutA(20) <= '1';
			WHEN "10101" => RoutA(21) <= '1';
			WHEN "10110" => RoutA(22) <= '1';
			WHEN "10111" => RoutA(23) <= '1';
			WHEN "11000" => RoutA(24) <= '1';
			WHEN "11001" => RoutA(25) <= '1';
			WHEN "11010" => RoutA(26) <= '1';
			WHEN "11011" => RoutA(27) <= '1';
			WHEN "11100" => RoutA(28) <= '1';
			WHEN "11101" => RoutA(29) <= '1';
			WHEN "11110" => RoutA(30) <= '1';
			WHEN "11111" => RoutA(31) <= '1';
END case;
END process;
	
	PROCESS (readRegister2)
	BEGIN
			RoutB(0) <= '0';
RoutB(1) <= '0';
RoutB(2) <= '0';
RoutB(3) <= '0';
RoutB(4) <= '0';
RoutB(5) <= '0';
RoutB(6) <= '0';
RoutB(7) <= '0';
RoutB(8) <= '0';
RoutB(9) <= '0';
RoutB(10) <= '0';
RoutB(11) <= '0';
RoutB(12) <= '0';
RoutB(13) <= '0';
RoutB(14) <= '0';
RoutB(15) <= '0';
RoutB(16) <= '0';
RoutB(17) <= '0';
RoutB(18) <= '0';
RoutB(19) <= '0';
RoutB(20) <= '0';
RoutB(21) <= '0';
RoutB(22) <= '0';
RoutB(23) <= '0';
RoutB(24) <= '0';
RoutB(25) <= '0';
RoutB(26) <= '0';
RoutB(27) <= '0';
RoutB(28) <= '0';
RoutB(29) <= '0';
RoutB(30) <= '0';
RoutB(31) <= '0';
		CASE readRegister2 IS
			WHEN "00000" => RoutB(0) <= '1';
			WHEN "00001" => RoutB(1) <= '1';
			WHEN "00010" => RoutB(2) <= '1';
			WHEN "00011" => RoutB(3) <= '1';
			WHEN "00100" => RoutB(4) <= '1';
			WHEN "00101" => RoutB(5) <= '1';
			WHEN "00110" => RoutB(6) <= '1';
			WHEN "00111" => RoutB(7) <= '1';
			WHEN "01000" => RoutB(8) <= '1';
			WHEN "01001" => RoutB(9) <= '1';
			WHEN "01010" => RoutB(10) <= '1';
			WHEN "01011" => RoutB(11) <= '1';
			WHEN "01100" => RoutB(12) <= '1';
			WHEN "01101" => RoutB(13) <= '1';
			WHEN "01110" => RoutB(14) <= '1';
			WHEN "01111" => RoutB(15) <= '1';
			WHEN "10000" => RoutB(16) <= '1';
			WHEN "10001" => RoutB(17) <= '1';
			WHEN "10010" => RoutB(18) <= '1';
			WHEN "10011" => RoutB(19) <= '1';
			WHEN "10100" => RoutB(20) <= '1';
			WHEN "10101" => RoutB(21) <= '1';
			WHEN "10110" => RoutB(22) <= '1';
			WHEN "10111" => RoutB(23) <= '1';
			WHEN "11000" => RoutB(24) <= '1';
			WHEN "11001" => RoutB(25) <= '1';
			WHEN "11010" => RoutB(26) <= '1';
			WHEN "11011" => RoutB(27) <= '1';
			WHEN "11100" => RoutB(28) <= '1';
			WHEN "11101" => RoutB(29) <= '1';
			WHEN "11110" => RoutB(30) <= '1';
			WHEN "11111" => RoutB(31) <= '1';
END case;
END process;

PROCESS (writeRegister)
BEGIN
			Rin1(0) <= '0';
Rin1(1) <= '0';
Rin1(2) <= '0';
Rin1(3) <= '0';
Rin1(4) <= '0';
Rin1(5) <= '0';
Rin1(6) <= '0';
Rin1(7) <= '0';
Rin1(8) <= '0';
Rin1(9) <= '0';
Rin1(10) <= '0';
Rin1(11) <= '0';
Rin1(12) <= '0';
Rin1(13) <= '0';
Rin1(14) <= '0';
Rin1(15) <= '0';
Rin1(16) <= '0';
Rin1(17) <= '0';
Rin1(18) <= '0';
Rin1(19) <= '0';
Rin1(20) <= '0';
Rin1(21) <= '0';
Rin1(22) <= '0';
Rin1(23) <= '0';
Rin1(24) <= '0';
Rin1(25) <= '0';
Rin1(26) <= '0';
Rin1(27) <= '0';
Rin1(28) <= '0';
Rin1(29) <= '0';
Rin1(30) <= '0';
Rin1(31) <= '0';
		CASE writeRegister IS
			WHEN "00000" => Rin1(0) <= '1';
			WHEN "00001" => Rin1(1) <= '1';
			WHEN "00010" => Rin1(2) <= '1';
			WHEN "00011" => Rin1(3) <= '1';
			WHEN "00100" => Rin1(4) <= '1';
			WHEN "00101" => Rin1(5) <= '1';
			WHEN "00110" => Rin1(6) <= '1';
			WHEN "00111" => Rin1(7) <= '1';
			WHEN "01000" => Rin1(8) <= '1';
			WHEN "01001" => Rin1(9) <= '1';
			WHEN "01010" => Rin1(10) <= '1';
			WHEN "01011" => Rin1(11) <= '1';
			WHEN "01100" => Rin1(12) <= '1';
			WHEN "01101" => Rin1(13) <= '1';
			WHEN "01110" => Rin1(14) <= '1';
			WHEN "01111" => Rin1(15) <= '1';
			WHEN "10000" => Rin1(16) <= '1';
			WHEN "10001" => Rin1(17) <= '1';
			WHEN "10010" => Rin1(18) <= '1';
			WHEN "10011" => Rin1(19) <= '1';
			WHEN "10100" => Rin1(20) <= '1';
			WHEN "10101" => Rin1(21) <= '1';
			WHEN "10110" => Rin1(22) <= '1';
			WHEN "10111" => Rin1(23) <= '1';
			WHEN "11000" => Rin1(24) <= '1';
			WHEN "11001" => Rin1(25) <= '1';
			WHEN "11010" => Rin1(26) <= '1';
			WHEN "11011" => Rin1(27) <= '1';
			WHEN "11100" => Rin1(28) <= '1';
			WHEN "11101" => Rin1(29) <= '1';
			WHEN "11110" => Rin1(30) <= '1';
			WHEN "11111" => Rin1(31) <= '1';
END case;
END process;
	
	


END Behavior;
