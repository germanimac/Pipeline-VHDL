-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/23/2019 14:31:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PipelineCPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PipelineCPU_vhd_vec_tst IS
END PipelineCPU_vhd_vec_tst;
ARCHITECTURE PipelineCPU_arch OF PipelineCPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUCTRLDEBUG : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL Debugaddress : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Debugdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DEBUGDATAADD : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DEBUGDATAWRITE : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DEBUGFUNC1 : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL DEBUGFUNC2 : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL DEBUGINSTRUCTION : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEBUGMEMREAD : STD_LOGIC;
SIGNAL DEBUGMEMWRITE : STD_LOGIC;
SIGNAL DEBUgPC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DEBUGREGWRITE : STD_LOGIC;
COMPONENT PipelineCPU
	PORT (
	ALUCTRLDEBUG : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Clock : IN STD_LOGIC;
	Debugaddress : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Debugdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DEBUGDATAADD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DEBUGDATAWRITE : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DEBUGFUNC1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	DEBUGFUNC2 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	DEBUGINSTRUCTION : OUT STD_LOGIC_VECTOR(0 TO 31);
	DEBUGMEMREAD : OUT STD_LOGIC;
	DEBUGMEMWRITE : OUT STD_LOGIC;
	DEBUgPC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DEBUGREGWRITE : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PipelineCPU
	PORT MAP (
-- list connections between master ports and signals
	ALUCTRLDEBUG => ALUCTRLDEBUG,
	Clock => Clock,
	Debugaddress => Debugaddress,
	Debugdata => Debugdata,
	DEBUGDATAADD => DEBUGDATAADD,
	DEBUGDATAWRITE => DEBUGDATAWRITE,
	DEBUGFUNC1 => DEBUGFUNC1,
	DEBUGFUNC2 => DEBUGFUNC2,
	DEBUGINSTRUCTION => DEBUGINSTRUCTION,
	DEBUGMEMREAD => DEBUGMEMREAD,
	DEBUGMEMWRITE => DEBUGMEMWRITE,
	DEBUgPC => DEBUgPC,
	DEBUGREGWRITE => DEBUGREGWRITE
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
END PipelineCPU_arch;
