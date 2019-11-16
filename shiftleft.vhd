library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity shiftleft is
	port	(a: in  std_logic_vector(31 DOWNTO 0);
			 b:	out std_logic_vector(31 DOWNTO 0));
end shiftleft;

architecture seila of shiftleft is
begin
	b <= a(31) & a(28 downto 0) & "00";
end;