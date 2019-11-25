LIBRARY ieee;
Use ieee.std_logic_1164.all;


PACKAGE components is 

COMPONENT bancoRegistradores IS
	GENERIC(Code : Integer :=5;
				N : Integer:=32);
	Port(
		Clock :IN STD_LOGIC;
		readRegister1 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		regWrite							:IN STD_LOGIC;
		readRegister2 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		writeRegister					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0 ); -- data out para saida do 2
		writeData						:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		readData1						:OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); --rout para sair read data 1
		readData2						:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ) -- rout para sair read data 2 
	);

END component;

COMPONENT instructionMemory IS
	port(
		endereco: in std_logic_vector(0 to 31);
		instrucao: out std_logic_vector(0 to 31)
);
END COMPONENT;

COMPONENT ProgramCounter IS
port	(
			clock:	in  std_logic;
			pc_upd:	in  std_logic_vector(0 to 31);
			pc:		out std_logic_vector(0 to 31) 
		);
		
END COMPONENT;

COMPONENT Adder is 
	port (reg1: in std_logic_vector(31 downto 0);
			reg2: in std_logic_vector(31 downto 0);	
			Adder_out: out std_logic_vector(31 downto 0)
			);
end COMPONENT;

COMPONENT muxData is
	port(
			In1,In2:	in	STD_LOGIC_VECTOR(31 DOWNTO 0);
			Selector:	in	STD_LOGIC;
			Saida:	out STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
end COMPONENT;

COMPONENT ControlUnit is
	port (
		Instruction: 	in std_logic_vector(5 downto 0);
		Regwrite,RegDst,AluSrc,Memwrite,Memread,Branch,Memtoreg:	out STD_LOGIC;
		PCJumpSrc:	out STD_LOGIC_VECTOR(1 downto 0);
		ALUOP:	out std_logic_vector(2 downto 0)
	);
end COMPONENT;

COMPONENT RegIFID is
	port (clock:		in		std_logic;
	
			in_pc:		in		std_logic_vector(0 to 31);
			out_pc:		out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			in_instr:	in		std_logic_vector(0 to 31);
			out_instr:	out	std_logic_vector(0 to 31) := "00000000000000000000000000000000");
end COMPONENT;

COMPONENT RegIDEX is
	port (clock:		in		std_logic;
	
			input_instruction_WB: in std_logic_vector(0 to 1);
			input_instruction_M : in std_logic_vector(0 to 2);
			input_instruction_EX: in std_logic_vector(0 to 4);
			
			output_instruction_WB:	out std_logic_vector(0 to 1) := "00";
			output_instruction_M:	out std_logic_vector(0 to 2) := "000";
			output_instruction_EX:	out std_logic_vector(0 to 4) := "00000";
			
			input_ProgramCounter: in std_logic_vector(31 DOWNTO 0);
			output_ProgramCounter: out std_logic_vector(31 DOWNTO 0):= "00000000000000000000000000000000";
			
			input_read1:	in		std_logic_vector(31 DOWNTO 0);
			output_read1:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_read2:	in		std_logic_vector(31 DOWNTO 0);
			output_read2:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_imed:		in		std_logic_vector(31 DOWNTO 0);
			output_imed:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_rt:		in		std_logic_vector(4 DOWNTO 0);
			output_rt:		out	std_logic_vector(4 DOWNTO 0) := "00000";
			input_rd:		in		std_logic_vector(4 DOWNTO 0);
			output_rd:		out	std_logic_vector(4 DOWNTO 0) := "00000");
end COMPONENT;

COMPONENT signextend is
	port	(
			In1:	in std_logic_vector(0 to 15);
			Saida:	out std_logic_vector(0 to 31));
end COMPONENT;

COMPONENT muxRegAdd is
	port(
		In1,In2:	in		STD_LOGIC_VECTOR(4 Downto 0);
		Selector:in		STD_LOGIC;	
		Saida:	out	STD_LOGIC_VECTOR(4 Downto 0)
	);
end COMPONENT;

COMPONENT Aluctrl is
	port(
		Func:	in	STD_LOGIC_VECTOR(5 	Downto	0);
		ALUOP:in	STD_LOGIC_VECTOR(2	Downto	0);
		ALUCtrlout:	out	STD_LOGIC_VECTOR(5	Downto	0)
	);
end COMPONENT;

COMPONENT ULA is 
	port (reg1: in std_logic_vector(31 downto 0);
			reg2: in std_logic_vector(31 downto 0);
			op:	in std_logic_vector(5 downto 0 );
			ULA_out: out std_logic_vector(31 downto 0);
			zero: out std_logic);
end COMPONENT;

COMPONENT shiftleft is
	port	(a: in  std_logic_vector(31 DOWNTO 0);
			 b:	out std_logic_vector(31 DOWNTO 0));
end COMPONENT;

COMPONENT RegEXMEM is
	port (clock:		in		std_logic;
			input_WB:		in		std_logic_vector(1 DOWNTO 0);
			input_ME:		in		std_logic_vector(2 DOWNTO 0);
			input_pc:		in		std_logic_vector(31 DOWNTO 0);
			input_zero:		in		std_logic;
			input_result:	in		std_logic_vector(31 DOWNTO 0);
			input_wrData:	in		std_logic_vector(31 DOWNTO 0);
			input_regdst:	in		std_logic_vector(4 DOWNTO 0);
			
			output_WB:		out	std_logic_vector(1 DOWNTO 0) := "00";
			output_ME:		out	std_logic_vector(2 DOWNTO 0) := "000";
			output_pc:		out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			output_zero:	out	std_logic := '0';
			output_result:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			output_wrData:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			output_regdst:	out	std_logic_vector(4 DOWNTO 0) := "00000");
			
end COMPONENT;

COMPONENT memData is

    port(address: in std_logic_vector(31 DOWNTO 0);

        Clock: in std_logic;

        memWrite: in std_logic;

        writeData: in std_logic_vector(31 DOWNTO 0);

        memRead: in std_logic;

        read_Data: out std_logic_vector(31 DOWNTO 0));

end COMPONENT;

COMPONENT RegMEMWB is
	port (clock:		in		std_logic;
			input_WB:		in		std_logic_vector(0 to 1);
			output_WB:		out	std_logic_vector(0 to 1) := "00";
			
			input_rdData:	in		std_logic_vector(31 DOWNTO 0);
			output_rdData:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_addr:		in		std_logic_vector(31 DOWNTO 0);
			output_addr:	out	std_logic_vector(31 DOWNTO 0) := "00000000000000000000000000000000";
			
			input_regdst:	in		std_logic_vector(4 DOWNTO 0);
			output_regdst:	out	std_logic_vector(4 DOWNTO 0) := "00000");
end COMPONENT;

COMPONENT muxTri IS 
	GENERIC (N: INTEGER:= 32);
	PORT (
		entrada1 : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		entrada2 : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		entrada3 : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		CTRL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		saida : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);

END COMPONENT;

END components;