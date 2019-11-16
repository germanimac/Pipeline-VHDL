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
		
		
		
		
		pc_upd:	in  std_logic_vector(0 to 31)
		
	);

END PipelineCPU ;


ARCHITECTURE Behavior OF PipelineCPU  IS
		SiGNAL writeRegister					: STD_LOGIC_VECTOR(4 DOWNTO 0 ); -- data out para saida do 2
		SIGNAL writeData						: STD_LOGIC_VECTOR(31 DOWNTO 0 );
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
		--EXECUTE--
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
		SIGNAL OP2:	STD_LOGIC_VECTOR(31 DOWNTO 0);--OPERANDO 2
		SIGNAL REGWRITEADD:	STD_LOGIC_VECTOR(4 DOWNTO 0);	--Endereço do registrador onde deve ser escrito
		SIGNAL ALUOPERATION:	STD_LOGIC_VECTOR(5 DOWNTO 0);	--Operação da ULA
		SIGNAL ALURESULT:		STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL EQZERO:			STD_LOGIC;
		SIGNAL SHIFTIMED:		STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL BRANCHADDex:		STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		--MEMORY--
		SIGNAL MEMWB:	STD_LOGIC_VECTOR(0 to 1);
		SIGNAL MEMM:	STD_LOGIC_VECTOR(0 TO 2);
		SIGNAL BRANCHM,MEMWRITEM,MEMREADM,ZEROM:STD_LOGIC;
		SIGNAL ALURESULTM,WRITEDATAM:	STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL REGDSTM:	STD_LOGIC_VECTOR(4 DOWNTO 0);
		SIGNAL READMEMORY:STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		--Write Back--
		SIGNAL WBWB:	STD_LOGIC_VECTOR(0 to 1);
		SIGNAL READMEMORYWB,ALURESULTWB:	STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL MEMTOREGWB:	STD_LOGIC;
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
	SIGNEXT	:	signextend PORT MAP(instrucaoid(15 downto 0),IMEDid);
	--EXECUTE--
	MUXALU:	muxData PORT MAP(REGB,IMEDEX,ALUSRCEx,OP2);
	muxregsrc:	muxRegAdd PORT MAP(rtex,rdex,REGDSTEX,REGWRITEADD);
	ULACONTROL:	Aluctrl PORT MAP(IMEDEX(5 DOWNTO 0),ALUOPEX,ALUOPERATION);
	ALU:	ULA PORT MAP(REGA,OP2,ALUOPERATION,ALURESULT,EQZERO);
	Sl2:	shiftleft PORT MAP(IMEDEX,SHIFTIMED);
	BranchCalc:	Adder PORT MAP(PCEX,SHIFTIMED,BRANCHADDex);
	REXMEM:	REGEXMEM PORT MAP(Clock,EXWB,EXM,BRANCHADDex,EQZERO,ALURESULT,REGB,REGWRITEADD,MEMWB,MEMM,BranchADD,ZEROM,ALURESULTM,WRITEDATAM,REGDSTM);
	BranchM<=	MEMM(0);
	MEMWRITEM<=	MEMM(1);
	MEMREADM<=	MEMM(2);
	PCSRC<= BRANCHM AND ZEROM;
	DATAMEMORY:	memData PORT MAP(ALURESULTM,Clock,MEMWRITEM,WRITEDATAM,MEMREADM,READMEMORY);
	--WB--
	RMEMWB:	RegMEMWB PORT MAP(Clock,MEMWB,WBWB,READMEMORY,READMEMORYWB,ALURESULTM,ALURESULTWB,REGDSTM,writeregister);
	MEMTOREGWB<=WBWB(0);
	MUXWB:	muxData PORT MAP(ALURESULTWB,READMEMORYWB,MEMTOREGWB,writedata);
	regwritefinal<= WBWB(1);
END Behavior;

