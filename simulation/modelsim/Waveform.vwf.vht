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
-- Generated on "11/17/2019 15:38:36"
                                                             
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
SIGNAL Clock : STD_LOGIC;
SIGNAL Debugaddress : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Debugdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DEBUGREGWRITE : STD_LOGIC;
COMPONENT PipelineCPU
	PORT (
	Clock : IN STD_LOGIC;
	Debugaddress : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	Debugdata : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	DEBUGREGWRITE : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PipelineCPU
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Debugaddress => Debugaddress,
	Debugdata => Debugdata,
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
