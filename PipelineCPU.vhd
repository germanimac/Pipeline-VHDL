LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.components.all ;

ENTITY PipelineCPU IS 
	GENERIC(N : Integer :=32;
	Code: Integer :=5);
	PORT(
		Clock :IN STD_LOGIC;
		readRegister1 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		readRegister2 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		writeRegister					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0 ); -- data out para saida do 2
		writeData						:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		
		
		
		pc_upd:	in  std_logic_vector(0 to 31)
		
	);

END PipelineCPU ;


ARCHITECTURE Behavior OF PipelineCPU  IS
		SIGNAL pc,pcid: std_logic_vector(31 DOwnto 0) ;
		sIgnAL  endereco: std_logic_vector(0 to 31);
		SIGNAL NEXTPC:	std_logic_vector(31 DOwnto 0);
		SIGNAL branchadd: std_logic_vector(31 downto 0);
		SIGNAL PCSRC:	STD_LOGIC;
		SIGNAL instrucao,instrucaoid: std_logic_vector(31 Downto 0);
		SIGNAL Regwrite,RegDst,AluSrc,Memwrite,Memread,Branch,Memtoreg,regwritefinal: STD_LOGIC;
		SIGNAL readData1						:STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); --rout para sair read data 1
		SIGNAL readData2						:STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); -- rout para sair read data 2 
		SIGNAL ALUOP: std_logic_vector(2 downto 0);
		
		SIGNAL EXEX	:STD_LOGIC_VECTOR(0 to 4);
		SiGNAL Imedid,IMEDEX: STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL EXWB: STD_LOGIC_VECTOR(0 to 1);
		SIGNAL EXM: STD_LOGIC_VECTOR(0 to 2);
		SIGNAL REGA:STD_LOGIC_VECTOR(31 downto 0);
		SIGNAL REGB:STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL PCEX:STD_LOGIC_VECTOR(31 DOWNTO 0);
		Signal ALUSRCEX,REGDSTEX: STD_LOGIC;
		SIGNAL ALUOPEX:	STD_LOGIC_VECTOR(2 DOWNTO 0);
		SIGNAL rtex,rdex:	STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
	pcounter : ProgramCounter PORT MAP (Clock, NEXTPC, pc);
	adderParaPC: Adder PORT MAP (pc , "00000000000000000000000000000100" , endereco);
	
	regBd: bancoRegistradores PORT MAP (Clock ,instrucaoid(25 downto 21), regWritefinal, instrucaoid(20 downto 16), writeregister, writeData, readData1, readData2);
	memoriaInstrucoes: instructionMemory PORT MAP(pc, instrucao);
	muxpc:	muxData PORT MAP(endereco,branchadd,PCSRC,NEXTPC);
	RIFIF:	REGIFID PORT MAP(Clock,endereco,pcid,instrucao,instrucaoid);
	ContUnit:	ControlUnit PORT MAP(instrucaoid(31 downto 26),Regwrite,RegDst,AluSrc,Memwrite,Memread,Branch,Memtoreg,ALUOP);
	RIDEX:	RegIDEX PORT MAP(clock,Memtoreg & Regwrite,Branch & Memwrite & Memread,RegDst & ALUOP & AluSrc,EXWB,EXM,EXEX,pcid,PCEX,readData1,REGA,readData2,REGB,IMEDid,IMEDEX,instrucaoid(20 downto 16),rtex,instrucaoid(15 Downto 11),rdex);
	REGDSTEX <= EXEX(0);
	ALUSRCEX	<=	EXEX(4);
	ALUOPEX(0)<=	EXEX(1);
	ALUOPEX(1)<=	EXEX(2);
	ALUOPEX(2)<=	EXEX(3);
END Behavior;

