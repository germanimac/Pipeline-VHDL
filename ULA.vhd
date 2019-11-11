library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ULA is 
	port (reg1: in std_logic_vector(31 downto 0);
			reg2: in std_logic_vector(31 downto 0);
			op:	in std_logic_vector(5 downto 0 );
			ULA_out: out std_logic_vector(31 downto 0);
			zero: out std_logic);
end ULA;

architecture ALU of ULA is 
	signal res: std_logic_vector(0 to 31);
begin
	process(reg1, reg2, op)
	begin
		case op is
			when "000001" => res <= reg1 + reg2;
			when "000010" => res <= reg1 - reg2;
			when "000011" => res <= reg1 and reg2;
			when "000100" => res <= reg1 or reg2;
			when others => res <= "00000000000000000000000000000000";
		end case;
		
		if(res = "00000000000000000000000000000000") then
			zero <= '1';
		else
			zero <= '0';
		end if;
		
		ULA_out <= res;
	end process;
end ALU;