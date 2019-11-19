library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Aluctrl is
	port(
		Func:	in	STD_LOGIC_VECTOR(5 	Downto	0);
		ALUOP:in	STD_LOGIC_VECTOR(2	Downto	0);
		ALUCtrlout:	out	STD_LOGIC_VECTOR(5	Downto	0)
	);
end Aluctrl;

Architecture Behavior of Aluctrl is
begin
	process	(Func,ALUOP)
		begin
			Case	ALUOP	is
				WHEN	"000"	=>
					ALUCtrlout	<=	"000001";	--Add--
				
				WHEN	"001"	=>
					ALUCtrlout	<=	"000010";	--Sub--
				
				WHEN	"010"	=>
					ALUCtrlout	<=	"000011";	--And--
				
				WHEN	"011"	=>
					ALUCtrlout	<=	"000100";	--OR--
				
				WHEN	"100"	=>
					ALUCtrlout	<=	Func;			--Tipo R--
				
				WHEN	others	=>
					ALUCtrlout	<=	"000000";	--StandBy--
					
			End Case;
	End process;
End Behavior;