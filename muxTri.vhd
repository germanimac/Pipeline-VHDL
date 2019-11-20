LIBRARY ieee ;
USE ieee.std_logic_1164.all ;



ENTITY muxTri IS 
	GENERIC (N: INTEGER:= 32);
	PORT (
		entrada1 : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		entrada2 : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		entrada3 : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		CTRL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		saida : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);

END muxTri;


ARCHITECTURE Behavior OF muxTri IS
begin
PROCESS (CTRL)
	BEGIN
		CASE CTRL IS
			WHEN "00" => saida <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			WHEN "01" => saida <= entrada1;
			WHEN "10" => saida <= entrada2;
			WHEN "11" => saida <= entrada3;
		
		
		
	END case;
END process;

END Behavior;