library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Adder is 
	port (reg1: in std_logic_vector(31 downto 0);
			reg2: in std_logic_vector(31 downto 0);	
			Adder_out: out std_logic_vector(31 downto 0)
			);
end Adder;

architecture a of Adder is 
begin
	process(reg1, reg2)
	begin
		Adder_out <= reg1+reg2;
	end process;
end a;
