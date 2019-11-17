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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/17/2019 16:39:35"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PipelineCPU IS
    PORT (
	Clock : IN std_logic;
	Debugdata : BUFFER std_logic_vector(31 DOWNTO 0);
	DEBUGREGWRITE : BUFFER std_logic;
	Debugaddress : BUFFER std_logic_vector(4 DOWNTO 0);
	DEBUGFUNC1 : BUFFER std_logic_vector(5 DOWNTO 0);
	DEBUGFUNC2 : BUFFER std_logic_vector(5 DOWNTO 0);
	ALUCTRLDEBUG : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END PipelineCPU;

ARCHITECTURE structure OF PipelineCPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Debugdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DEBUGREGWRITE : std_logic;
SIGNAL ww_Debugaddress : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_DEBUGFUNC1 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_DEBUGFUNC2 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ALUCTRLDEBUG : std_logic_vector(2 DOWNTO 0);
SIGNAL \Debugdata[0]~output_o\ : std_logic;
SIGNAL \Debugdata[1]~output_o\ : std_logic;
SIGNAL \Debugdata[2]~output_o\ : std_logic;
SIGNAL \Debugdata[3]~output_o\ : std_logic;
SIGNAL \Debugdata[4]~output_o\ : std_logic;
SIGNAL \Debugdata[5]~output_o\ : std_logic;
SIGNAL \Debugdata[6]~output_o\ : std_logic;
SIGNAL \Debugdata[7]~output_o\ : std_logic;
SIGNAL \Debugdata[8]~output_o\ : std_logic;
SIGNAL \Debugdata[9]~output_o\ : std_logic;
SIGNAL \Debugdata[10]~output_o\ : std_logic;
SIGNAL \Debugdata[11]~output_o\ : std_logic;
SIGNAL \Debugdata[12]~output_o\ : std_logic;
SIGNAL \Debugdata[13]~output_o\ : std_logic;
SIGNAL \Debugdata[14]~output_o\ : std_logic;
SIGNAL \Debugdata[15]~output_o\ : std_logic;
SIGNAL \Debugdata[16]~output_o\ : std_logic;
SIGNAL \Debugdata[17]~output_o\ : std_logic;
SIGNAL \Debugdata[18]~output_o\ : std_logic;
SIGNAL \Debugdata[19]~output_o\ : std_logic;
SIGNAL \Debugdata[20]~output_o\ : std_logic;
SIGNAL \Debugdata[21]~output_o\ : std_logic;
SIGNAL \Debugdata[22]~output_o\ : std_logic;
SIGNAL \Debugdata[23]~output_o\ : std_logic;
SIGNAL \Debugdata[24]~output_o\ : std_logic;
SIGNAL \Debugdata[25]~output_o\ : std_logic;
SIGNAL \Debugdata[26]~output_o\ : std_logic;
SIGNAL \Debugdata[27]~output_o\ : std_logic;
SIGNAL \Debugdata[28]~output_o\ : std_logic;
SIGNAL \Debugdata[29]~output_o\ : std_logic;
SIGNAL \Debugdata[30]~output_o\ : std_logic;
SIGNAL \Debugdata[31]~output_o\ : std_logic;
SIGNAL \DEBUGREGWRITE~output_o\ : std_logic;
SIGNAL \Debugaddress[0]~output_o\ : std_logic;
SIGNAL \Debugaddress[1]~output_o\ : std_logic;
SIGNAL \Debugaddress[2]~output_o\ : std_logic;
SIGNAL \Debugaddress[3]~output_o\ : std_logic;
SIGNAL \Debugaddress[4]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC1[0]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC1[1]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC1[2]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC1[3]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC1[4]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC1[5]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC2[0]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC2[1]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC2[2]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC2[3]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC2[4]~output_o\ : std_logic;
SIGNAL \DEBUGFUNC2[5]~output_o\ : std_logic;
SIGNAL \ALUCTRLDEBUG[0]~output_o\ : std_logic;
SIGNAL \ALUCTRLDEBUG[1]~output_o\ : std_logic;
SIGNAL \ALUCTRLDEBUG[2]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \pcounter|pc[2]~7_combout\ : std_logic;
SIGNAL \pcounter|pc[2]~8\ : std_logic;
SIGNAL \pcounter|pc[3]~9_combout\ : std_logic;
SIGNAL \pcounter|pc[3]~10\ : std_logic;
SIGNAL \pcounter|pc[4]~11_combout\ : std_logic;
SIGNAL \pcounter|pc[4]~12\ : std_logic;
SIGNAL \pcounter|pc[5]~13_combout\ : std_logic;
SIGNAL \pcounter|pc[5]~14\ : std_logic;
SIGNAL \pcounter|pc[6]~15_combout\ : std_logic;
SIGNAL \pcounter|pc[6]~16\ : std_logic;
SIGNAL \pcounter|pc[7]~17_combout\ : std_logic;
SIGNAL \pcounter|pc[7]~18\ : std_logic;
SIGNAL \pcounter|pc[8]~19_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux5~0_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux0~0_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux0~1_combout\ : std_logic;
SIGNAL \ContUnit|Mux4~0_combout\ : std_logic;
SIGNAL \RIDEX|output_instruction_WB[1]~0_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux15~0_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux15~1_combout\ : std_logic;
SIGNAL \ContUnit|Mux1~0_combout\ : std_logic;
SIGNAL \muxregsrc|Saida[0]~0_combout\ : std_logic;
SIGNAL \regBd|Rin1[1]~0_combout\ : std_logic;
SIGNAL \regBd|Rin1[0]~1_combout\ : std_logic;
SIGNAL \regBd|readData2[0]~0_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux31~0_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux31~1_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux30~0_combout\ : std_logic;
SIGNAL \ULACONTROL|Mux4~0_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \regBd|readData1[0]~0_combout\ : std_logic;
SIGNAL \ALU|Add0~2_cout\ : std_logic;
SIGNAL \ALU|Add0~3_combout\ : std_logic;
SIGNAL \MUXALU|Saida[0]~0_combout\ : std_logic;
SIGNAL \ALU|Mux31~3_combout\ : std_logic;
SIGNAL \ALU|Mux13~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[0]~0_combout\ : std_logic;
SIGNAL \ULACONTROL|Mux5~0_combout\ : std_logic;
SIGNAL \ALU|Mux31~2_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux29~0_combout\ : std_logic;
SIGNAL \memoriaInstrucoes|Mux29~1_combout\ : std_logic;
SIGNAL \ULACONTROL|Mux3~0_combout\ : std_logic;
SIGNAL \regBd|readData2[1]~1_combout\ : std_logic;
SIGNAL \ALU|Add0~5_combout\ : std_logic;
SIGNAL \regBd|readData1[1]~1_combout\ : std_logic;
SIGNAL \ALU|Add0~4\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \MUXALU|Saida[1]~1_combout\ : std_logic;
SIGNAL \ALU|Mux30~3_combout\ : std_logic;
SIGNAL \REXMEM|output_result[1]~1_combout\ : std_logic;
SIGNAL \ALU|Mux30~2_combout\ : std_logic;
SIGNAL \regBd|readData2[2]~2_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \regBd|readData1[2]~2_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~9_combout\ : std_logic;
SIGNAL \MUXALU|Saida[2]~2_combout\ : std_logic;
SIGNAL \ALU|Mux29~3_combout\ : std_logic;
SIGNAL \REXMEM|output_result[2]~2_combout\ : std_logic;
SIGNAL \ALU|Mux29~2_combout\ : std_logic;
SIGNAL \regBd|readData2[3]~3_combout\ : std_logic;
SIGNAL \ALU|Add0~11_combout\ : std_logic;
SIGNAL \regBd|readData1[3]~3_combout\ : std_logic;
SIGNAL \ALU|Add0~10\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Mux28~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[3]~3_combout\ : std_logic;
SIGNAL \ALU|Mux13~1_combout\ : std_logic;
SIGNAL \ALU|Mux28~1_combout\ : std_logic;
SIGNAL \regBd|readData2[4]~4_combout\ : std_logic;
SIGNAL \ALU|Add0~14_combout\ : std_logic;
SIGNAL \regBd|readData1[4]~4_combout\ : std_logic;
SIGNAL \ALU|Add0~13\ : std_logic;
SIGNAL \ALU|Add0~15_combout\ : std_logic;
SIGNAL \ALU|Mux27~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[4]~4_combout\ : std_logic;
SIGNAL \ALU|Mux27~1_combout\ : std_logic;
SIGNAL \regBd|readData2[5]~5_combout\ : std_logic;
SIGNAL \ALU|Add0~17_combout\ : std_logic;
SIGNAL \regBd|readData1[5]~5_combout\ : std_logic;
SIGNAL \ALU|Add0~16\ : std_logic;
SIGNAL \ALU|Add0~18_combout\ : std_logic;
SIGNAL \ALU|Mux26~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[5]~5_combout\ : std_logic;
SIGNAL \ALU|Mux26~1_combout\ : std_logic;
SIGNAL \regBd|readData2[6]~6_combout\ : std_logic;
SIGNAL \ALU|Add0~20_combout\ : std_logic;
SIGNAL \regBd|readData1[6]~6_combout\ : std_logic;
SIGNAL \ALU|Add0~19\ : std_logic;
SIGNAL \ALU|Add0~21_combout\ : std_logic;
SIGNAL \ALU|Mux25~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[6]~6_combout\ : std_logic;
SIGNAL \ALU|Mux25~1_combout\ : std_logic;
SIGNAL \regBd|readData2[7]~7_combout\ : std_logic;
SIGNAL \ALU|Add0~23_combout\ : std_logic;
SIGNAL \regBd|readData1[7]~7_combout\ : std_logic;
SIGNAL \ALU|Add0~22\ : std_logic;
SIGNAL \ALU|Add0~24_combout\ : std_logic;
SIGNAL \ALU|Mux24~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[7]~7_combout\ : std_logic;
SIGNAL \ALU|Mux24~1_combout\ : std_logic;
SIGNAL \regBd|readData2[8]~8_combout\ : std_logic;
SIGNAL \ALU|Add0~26_combout\ : std_logic;
SIGNAL \regBd|readData1[8]~8_combout\ : std_logic;
SIGNAL \ALU|Add0~25\ : std_logic;
SIGNAL \ALU|Add0~27_combout\ : std_logic;
SIGNAL \ALU|Mux23~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[8]~8_combout\ : std_logic;
SIGNAL \ALU|Mux23~1_combout\ : std_logic;
SIGNAL \regBd|readData2[9]~9_combout\ : std_logic;
SIGNAL \ALU|Add0~29_combout\ : std_logic;
SIGNAL \regBd|readData1[9]~9_combout\ : std_logic;
SIGNAL \ALU|Add0~28\ : std_logic;
SIGNAL \ALU|Add0~30_combout\ : std_logic;
SIGNAL \ALU|Mux22~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[9]~9_combout\ : std_logic;
SIGNAL \ALU|Mux22~1_combout\ : std_logic;
SIGNAL \regBd|readData2[10]~10_combout\ : std_logic;
SIGNAL \ALU|Add0~32_combout\ : std_logic;
SIGNAL \regBd|readData1[10]~10_combout\ : std_logic;
SIGNAL \ALU|Add0~31\ : std_logic;
SIGNAL \ALU|Add0~33_combout\ : std_logic;
SIGNAL \ALU|Mux21~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[10]~10_combout\ : std_logic;
SIGNAL \ALU|Mux21~1_combout\ : std_logic;
SIGNAL \regBd|readData2[11]~11_combout\ : std_logic;
SIGNAL \ALU|Add0~35_combout\ : std_logic;
SIGNAL \regBd|readData1[11]~11_combout\ : std_logic;
SIGNAL \ALU|Add0~34\ : std_logic;
SIGNAL \ALU|Add0~36_combout\ : std_logic;
SIGNAL \ALU|Mux20~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[11]~11_combout\ : std_logic;
SIGNAL \ALU|Mux20~1_combout\ : std_logic;
SIGNAL \regBd|readData2[12]~12_combout\ : std_logic;
SIGNAL \ALU|Add0~38_combout\ : std_logic;
SIGNAL \regBd|readData1[12]~12_combout\ : std_logic;
SIGNAL \ALU|Add0~37\ : std_logic;
SIGNAL \ALU|Add0~39_combout\ : std_logic;
SIGNAL \ALU|Mux19~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[12]~12_combout\ : std_logic;
SIGNAL \ALU|Mux19~1_combout\ : std_logic;
SIGNAL \regBd|readData2[13]~13_combout\ : std_logic;
SIGNAL \ALU|Add0~41_combout\ : std_logic;
SIGNAL \regBd|readData1[13]~13_combout\ : std_logic;
SIGNAL \ALU|Add0~40\ : std_logic;
SIGNAL \ALU|Add0~42_combout\ : std_logic;
SIGNAL \ALU|Mux18~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[13]~13_combout\ : std_logic;
SIGNAL \ALU|Mux18~1_combout\ : std_logic;
SIGNAL \regBd|readData2[14]~14_combout\ : std_logic;
SIGNAL \ALU|Add0~44_combout\ : std_logic;
SIGNAL \regBd|readData1[14]~14_combout\ : std_logic;
SIGNAL \ALU|Add0~43\ : std_logic;
SIGNAL \ALU|Add0~45_combout\ : std_logic;
SIGNAL \ALU|Mux17~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[14]~14_combout\ : std_logic;
SIGNAL \ALU|Mux17~1_combout\ : std_logic;
SIGNAL \regBd|readData2[15]~15_combout\ : std_logic;
SIGNAL \ALU|Add0~47_combout\ : std_logic;
SIGNAL \regBd|readData1[15]~15_combout\ : std_logic;
SIGNAL \ALU|Add0~46\ : std_logic;
SIGNAL \ALU|Add0~48_combout\ : std_logic;
SIGNAL \ALU|Mux16~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[15]~15_combout\ : std_logic;
SIGNAL \ALU|Mux16~1_combout\ : std_logic;
SIGNAL \regBd|readData2[16]~16_combout\ : std_logic;
SIGNAL \ALU|Add0~50_combout\ : std_logic;
SIGNAL \regBd|readData1[16]~16_combout\ : std_logic;
SIGNAL \ALU|Add0~49\ : std_logic;
SIGNAL \ALU|Add0~51_combout\ : std_logic;
SIGNAL \ALU|Mux15~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[16]~16_combout\ : std_logic;
SIGNAL \ALU|Mux15~1_combout\ : std_logic;
SIGNAL \regBd|readData2[17]~17_combout\ : std_logic;
SIGNAL \ALU|Add0~53_combout\ : std_logic;
SIGNAL \regBd|readData1[17]~17_combout\ : std_logic;
SIGNAL \ALU|Add0~52\ : std_logic;
SIGNAL \ALU|Add0~54_combout\ : std_logic;
SIGNAL \ALU|Mux14~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[17]~17_combout\ : std_logic;
SIGNAL \ALU|Mux14~1_combout\ : std_logic;
SIGNAL \regBd|readData2[18]~18_combout\ : std_logic;
SIGNAL \ALU|Add0~56_combout\ : std_logic;
SIGNAL \regBd|readData1[18]~18_combout\ : std_logic;
SIGNAL \ALU|Add0~55\ : std_logic;
SIGNAL \ALU|Add0~57_combout\ : std_logic;
SIGNAL \ALU|Mux13~2_combout\ : std_logic;
SIGNAL \REXMEM|output_result[18]~18_combout\ : std_logic;
SIGNAL \ALU|Mux13~3_combout\ : std_logic;
SIGNAL \regBd|readData2[19]~19_combout\ : std_logic;
SIGNAL \ALU|Add0~59_combout\ : std_logic;
SIGNAL \regBd|readData1[19]~19_combout\ : std_logic;
SIGNAL \ALU|Add0~58\ : std_logic;
SIGNAL \ALU|Add0~60_combout\ : std_logic;
SIGNAL \ALU|Mux12~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[19]~19_combout\ : std_logic;
SIGNAL \ALU|Mux12~1_combout\ : std_logic;
SIGNAL \regBd|readData2[20]~20_combout\ : std_logic;
SIGNAL \ALU|Add0~62_combout\ : std_logic;
SIGNAL \regBd|readData1[20]~20_combout\ : std_logic;
SIGNAL \ALU|Add0~61\ : std_logic;
SIGNAL \ALU|Add0~63_combout\ : std_logic;
SIGNAL \ALU|Mux11~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[20]~20_combout\ : std_logic;
SIGNAL \ALU|Mux11~1_combout\ : std_logic;
SIGNAL \regBd|readData2[21]~21_combout\ : std_logic;
SIGNAL \ALU|Add0~65_combout\ : std_logic;
SIGNAL \regBd|readData1[21]~21_combout\ : std_logic;
SIGNAL \ALU|Add0~64\ : std_logic;
SIGNAL \ALU|Add0~66_combout\ : std_logic;
SIGNAL \ALU|Mux10~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[21]~21_combout\ : std_logic;
SIGNAL \ALU|Mux10~1_combout\ : std_logic;
SIGNAL \regBd|readData2[22]~22_combout\ : std_logic;
SIGNAL \ALU|Add0~68_combout\ : std_logic;
SIGNAL \regBd|readData1[22]~22_combout\ : std_logic;
SIGNAL \ALU|Add0~67\ : std_logic;
SIGNAL \ALU|Add0~69_combout\ : std_logic;
SIGNAL \ALU|Mux9~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[22]~22_combout\ : std_logic;
SIGNAL \ALU|Mux9~1_combout\ : std_logic;
SIGNAL \regBd|readData2[23]~23_combout\ : std_logic;
SIGNAL \ALU|Add0~71_combout\ : std_logic;
SIGNAL \regBd|readData1[23]~23_combout\ : std_logic;
SIGNAL \ALU|Add0~70\ : std_logic;
SIGNAL \ALU|Add0~72_combout\ : std_logic;
SIGNAL \ALU|Mux8~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[23]~23_combout\ : std_logic;
SIGNAL \ALU|Mux8~1_combout\ : std_logic;
SIGNAL \regBd|readData2[24]~24_combout\ : std_logic;
SIGNAL \ALU|Add0~74_combout\ : std_logic;
SIGNAL \regBd|readData1[24]~24_combout\ : std_logic;
SIGNAL \ALU|Add0~73\ : std_logic;
SIGNAL \ALU|Add0~75_combout\ : std_logic;
SIGNAL \ALU|Mux7~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[24]~24_combout\ : std_logic;
SIGNAL \ALU|Mux7~1_combout\ : std_logic;
SIGNAL \regBd|readData2[25]~25_combout\ : std_logic;
SIGNAL \ALU|Add0~77_combout\ : std_logic;
SIGNAL \regBd|readData1[25]~25_combout\ : std_logic;
SIGNAL \ALU|Add0~76\ : std_logic;
SIGNAL \ALU|Add0~78_combout\ : std_logic;
SIGNAL \ALU|Mux6~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[25]~25_combout\ : std_logic;
SIGNAL \ALU|Mux6~1_combout\ : std_logic;
SIGNAL \regBd|readData2[26]~26_combout\ : std_logic;
SIGNAL \ALU|Add0~80_combout\ : std_logic;
SIGNAL \regBd|readData1[26]~26_combout\ : std_logic;
SIGNAL \ALU|Add0~79\ : std_logic;
SIGNAL \ALU|Add0~81_combout\ : std_logic;
SIGNAL \ALU|Mux5~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[26]~26_combout\ : std_logic;
SIGNAL \ALU|Mux5~1_combout\ : std_logic;
SIGNAL \regBd|readData2[27]~27_combout\ : std_logic;
SIGNAL \ALU|Add0~83_combout\ : std_logic;
SIGNAL \regBd|readData1[27]~27_combout\ : std_logic;
SIGNAL \ALU|Add0~82\ : std_logic;
SIGNAL \ALU|Add0~84_combout\ : std_logic;
SIGNAL \ALU|Mux4~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[27]~27_combout\ : std_logic;
SIGNAL \ALU|Mux4~1_combout\ : std_logic;
SIGNAL \regBd|readData2[28]~28_combout\ : std_logic;
SIGNAL \ALU|Add0~86_combout\ : std_logic;
SIGNAL \regBd|readData1[28]~28_combout\ : std_logic;
SIGNAL \ALU|Add0~85\ : std_logic;
SIGNAL \ALU|Add0~87_combout\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[28]~28_combout\ : std_logic;
SIGNAL \ALU|Mux3~1_combout\ : std_logic;
SIGNAL \regBd|readData2[29]~29_combout\ : std_logic;
SIGNAL \ALU|Add0~89_combout\ : std_logic;
SIGNAL \regBd|readData1[29]~29_combout\ : std_logic;
SIGNAL \ALU|Add0~88\ : std_logic;
SIGNAL \ALU|Add0~90_combout\ : std_logic;
SIGNAL \ALU|Mux2~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[29]~29_combout\ : std_logic;
SIGNAL \ALU|Mux2~1_combout\ : std_logic;
SIGNAL \regBd|readData2[30]~30_combout\ : std_logic;
SIGNAL \ALU|Add0~92_combout\ : std_logic;
SIGNAL \regBd|readData1[30]~30_combout\ : std_logic;
SIGNAL \ALU|Add0~91\ : std_logic;
SIGNAL \ALU|Add0~93_combout\ : std_logic;
SIGNAL \ALU|Mux1~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[30]~30_combout\ : std_logic;
SIGNAL \ALU|Mux1~1_combout\ : std_logic;
SIGNAL \regBd|readData2[31]~31_combout\ : std_logic;
SIGNAL \ALU|Add0~95_combout\ : std_logic;
SIGNAL \regBd|readData1[31]~31_combout\ : std_logic;
SIGNAL \ALU|Add0~94\ : std_logic;
SIGNAL \ALU|Add0~96_combout\ : std_logic;
SIGNAL \ALU|Mux0~0_combout\ : std_logic;
SIGNAL \REXMEM|output_result[31]~31_combout\ : std_logic;
SIGNAL \ALU|Mux0~1_combout\ : std_logic;
SIGNAL \REXMEM|output_result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RMEMWB|output_regdst\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RIDEX|output_instruction_WB\ : std_logic_vector(0 TO 1);
SIGNAL \pcounter|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RIDEX|output_instruction_EX\ : std_logic_vector(0 TO 4);
SIGNAL \RMEMWB|output_addr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RIDEX|output_imed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RMEMWB|output_WB\ : std_logic_vector(0 TO 1);
SIGNAL \REXMEM|output_WB\ : std_logic_vector(0 TO 1);
SIGNAL \REXMEM|output_regdst\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RIFIF|out_instr\ : std_logic_vector(0 TO 31);
SIGNAL \RIDEX|output_read2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RIDEX|output_read1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RIDEX|output_rt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regBd|reg1|reg|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regBd|reg0|reg|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULACONTROL|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Clock~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
Debugdata <= ww_Debugdata;
DEBUGREGWRITE <= ww_DEBUGREGWRITE;
Debugaddress <= ww_Debugaddress;
DEBUGFUNC1 <= ww_DEBUGFUNC1;
DEBUGFUNC2 <= ww_DEBUGFUNC2;
ALUCTRLDEBUG <= ww_ALUCTRLDEBUG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULACONTROL|ALT_INV_Mux5~0_combout\ <= NOT \ULACONTROL|Mux5~0_combout\;
\ALT_INV_Clock~input_o\ <= NOT \Clock~input_o\;

\Debugdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(0),
	devoe => ww_devoe,
	o => \Debugdata[0]~output_o\);

\Debugdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(1),
	devoe => ww_devoe,
	o => \Debugdata[1]~output_o\);

\Debugdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(2),
	devoe => ww_devoe,
	o => \Debugdata[2]~output_o\);

\Debugdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(3),
	devoe => ww_devoe,
	o => \Debugdata[3]~output_o\);

\Debugdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(4),
	devoe => ww_devoe,
	o => \Debugdata[4]~output_o\);

\Debugdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(5),
	devoe => ww_devoe,
	o => \Debugdata[5]~output_o\);

\Debugdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(6),
	devoe => ww_devoe,
	o => \Debugdata[6]~output_o\);

\Debugdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(7),
	devoe => ww_devoe,
	o => \Debugdata[7]~output_o\);

\Debugdata[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(8),
	devoe => ww_devoe,
	o => \Debugdata[8]~output_o\);

\Debugdata[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(9),
	devoe => ww_devoe,
	o => \Debugdata[9]~output_o\);

\Debugdata[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(10),
	devoe => ww_devoe,
	o => \Debugdata[10]~output_o\);

\Debugdata[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(11),
	devoe => ww_devoe,
	o => \Debugdata[11]~output_o\);

\Debugdata[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(12),
	devoe => ww_devoe,
	o => \Debugdata[12]~output_o\);

\Debugdata[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(13),
	devoe => ww_devoe,
	o => \Debugdata[13]~output_o\);

\Debugdata[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(14),
	devoe => ww_devoe,
	o => \Debugdata[14]~output_o\);

\Debugdata[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(15),
	devoe => ww_devoe,
	o => \Debugdata[15]~output_o\);

\Debugdata[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(16),
	devoe => ww_devoe,
	o => \Debugdata[16]~output_o\);

\Debugdata[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(17),
	devoe => ww_devoe,
	o => \Debugdata[17]~output_o\);

\Debugdata[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(18),
	devoe => ww_devoe,
	o => \Debugdata[18]~output_o\);

\Debugdata[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(19),
	devoe => ww_devoe,
	o => \Debugdata[19]~output_o\);

\Debugdata[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(20),
	devoe => ww_devoe,
	o => \Debugdata[20]~output_o\);

\Debugdata[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(21),
	devoe => ww_devoe,
	o => \Debugdata[21]~output_o\);

\Debugdata[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(22),
	devoe => ww_devoe,
	o => \Debugdata[22]~output_o\);

\Debugdata[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(23),
	devoe => ww_devoe,
	o => \Debugdata[23]~output_o\);

\Debugdata[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(24),
	devoe => ww_devoe,
	o => \Debugdata[24]~output_o\);

\Debugdata[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(25),
	devoe => ww_devoe,
	o => \Debugdata[25]~output_o\);

\Debugdata[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(26),
	devoe => ww_devoe,
	o => \Debugdata[26]~output_o\);

\Debugdata[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(27),
	devoe => ww_devoe,
	o => \Debugdata[27]~output_o\);

\Debugdata[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(28),
	devoe => ww_devoe,
	o => \Debugdata[28]~output_o\);

\Debugdata[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(29),
	devoe => ww_devoe,
	o => \Debugdata[29]~output_o\);

\Debugdata[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(30),
	devoe => ww_devoe,
	o => \Debugdata[30]~output_o\);

\Debugdata[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_addr\(31),
	devoe => ww_devoe,
	o => \Debugdata[31]~output_o\);

\DEBUGREGWRITE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_WB\(1),
	devoe => ww_devoe,
	o => \DEBUGREGWRITE~output_o\);

\Debugaddress[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RMEMWB|output_regdst\(0),
	devoe => ww_devoe,
	o => \Debugaddress[0]~output_o\);

\Debugaddress[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Debugaddress[1]~output_o\);

\Debugaddress[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Debugaddress[2]~output_o\);

\Debugaddress[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Debugaddress[3]~output_o\);

\Debugaddress[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Debugaddress[4]~output_o\);

\DEBUGFUNC1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RIDEX|output_imed\(0),
	devoe => ww_devoe,
	o => \DEBUGFUNC1[0]~output_o\);

\DEBUGFUNC1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RIDEX|output_imed\(1),
	devoe => ww_devoe,
	o => \DEBUGFUNC1[1]~output_o\);

\DEBUGFUNC1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RIDEX|output_imed\(2),
	devoe => ww_devoe,
	o => \DEBUGFUNC1[2]~output_o\);

\DEBUGFUNC1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUGFUNC1[3]~output_o\);

\DEBUGFUNC1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUGFUNC1[4]~output_o\);

\DEBUGFUNC1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUGFUNC1[5]~output_o\);

\DEBUGFUNC2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULACONTROL|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DEBUGFUNC2[0]~output_o\);

\DEBUGFUNC2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULACONTROL|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DEBUGFUNC2[1]~output_o\);

\DEBUGFUNC2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULACONTROL|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DEBUGFUNC2[2]~output_o\);

\DEBUGFUNC2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUGFUNC2[3]~output_o\);

\DEBUGFUNC2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUGFUNC2[4]~output_o\);

\DEBUGFUNC2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUGFUNC2[5]~output_o\);

\ALUCTRLDEBUG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUCTRLDEBUG[0]~output_o\);

\ALUCTRLDEBUG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUCTRLDEBUG[1]~output_o\);

\ALUCTRLDEBUG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RIDEX|output_instruction_EX\(0),
	devoe => ww_devoe,
	o => \ALUCTRLDEBUG[2]~output_o\);

\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\pcounter|pc[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcounter|pc[2]~7_combout\ = \pcounter|pc\(2) $ (VCC)
-- \pcounter|pc[2]~8\ = CARRY(\pcounter|pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(2),
	datad => VCC,
	combout => \pcounter|pc[2]~7_combout\,
	cout => \pcounter|pc[2]~8\);

\pcounter|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \pcounter|pc[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcounter|pc\(2));

\pcounter|pc[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcounter|pc[3]~9_combout\ = (\pcounter|pc\(3) & (!\pcounter|pc[2]~8\)) # (!\pcounter|pc\(3) & ((\pcounter|pc[2]~8\) # (GND)))
-- \pcounter|pc[3]~10\ = CARRY((!\pcounter|pc[2]~8\) # (!\pcounter|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(3),
	datad => VCC,
	cin => \pcounter|pc[2]~8\,
	combout => \pcounter|pc[3]~9_combout\,
	cout => \pcounter|pc[3]~10\);

\pcounter|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \pcounter|pc[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcounter|pc\(3));

\pcounter|pc[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcounter|pc[4]~11_combout\ = (\pcounter|pc\(4) & (\pcounter|pc[3]~10\ $ (GND))) # (!\pcounter|pc\(4) & (!\pcounter|pc[3]~10\ & VCC))
-- \pcounter|pc[4]~12\ = CARRY((\pcounter|pc\(4) & !\pcounter|pc[3]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(4),
	datad => VCC,
	cin => \pcounter|pc[3]~10\,
	combout => \pcounter|pc[4]~11_combout\,
	cout => \pcounter|pc[4]~12\);

\pcounter|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \pcounter|pc[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcounter|pc\(4));

\pcounter|pc[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcounter|pc[5]~13_combout\ = (\pcounter|pc\(5) & (!\pcounter|pc[4]~12\)) # (!\pcounter|pc\(5) & ((\pcounter|pc[4]~12\) # (GND)))
-- \pcounter|pc[5]~14\ = CARRY((!\pcounter|pc[4]~12\) # (!\pcounter|pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(5),
	datad => VCC,
	cin => \pcounter|pc[4]~12\,
	combout => \pcounter|pc[5]~13_combout\,
	cout => \pcounter|pc[5]~14\);

\pcounter|pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \pcounter|pc[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcounter|pc\(5));

\pcounter|pc[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcounter|pc[6]~15_combout\ = (\pcounter|pc\(6) & (\pcounter|pc[5]~14\ $ (GND))) # (!\pcounter|pc\(6) & (!\pcounter|pc[5]~14\ & VCC))
-- \pcounter|pc[6]~16\ = CARRY((\pcounter|pc\(6) & !\pcounter|pc[5]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(6),
	datad => VCC,
	cin => \pcounter|pc[5]~14\,
	combout => \pcounter|pc[6]~15_combout\,
	cout => \pcounter|pc[6]~16\);

\pcounter|pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \pcounter|pc[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcounter|pc\(6));

\pcounter|pc[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcounter|pc[7]~17_combout\ = (\pcounter|pc\(7) & (!\pcounter|pc[6]~16\)) # (!\pcounter|pc\(7) & ((\pcounter|pc[6]~16\) # (GND)))
-- \pcounter|pc[7]~18\ = CARRY((!\pcounter|pc[6]~16\) # (!\pcounter|pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(7),
	datad => VCC,
	cin => \pcounter|pc[6]~16\,
	combout => \pcounter|pc[7]~17_combout\,
	cout => \pcounter|pc[7]~18\);

\pcounter|pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \pcounter|pc[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcounter|pc\(7));

\pcounter|pc[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcounter|pc[8]~19_combout\ = \pcounter|pc\(8) $ (!\pcounter|pc[7]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(8),
	cin => \pcounter|pc[7]~18\,
	combout => \pcounter|pc[8]~19_combout\);

\pcounter|pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \pcounter|pc[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcounter|pc\(8));

\memoriaInstrucoes|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux5~0_combout\ = (!\pcounter|pc\(6) & (!\pcounter|pc\(7) & (!\pcounter|pc\(8) & !\pcounter|pc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(6),
	datab => \pcounter|pc\(7),
	datac => \pcounter|pc\(8),
	datad => \pcounter|pc\(5),
	combout => \memoriaInstrucoes|Mux5~0_combout\);

\RIFIF|out_instr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \memoriaInstrucoes|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIFIF|out_instr\(5));

\memoriaInstrucoes|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux0~0_combout\ = (!\pcounter|pc\(5) & (!\pcounter|pc\(6) & ((\pcounter|pc\(3)) # (\pcounter|pc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(3),
	datab => \pcounter|pc\(4),
	datac => \pcounter|pc\(5),
	datad => \pcounter|pc\(6),
	combout => \memoriaInstrucoes|Mux0~0_combout\);

\memoriaInstrucoes|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux0~1_combout\ = (\memoriaInstrucoes|Mux0~0_combout\ & (!\pcounter|pc\(7) & !\pcounter|pc\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInstrucoes|Mux0~0_combout\,
	datac => \pcounter|pc\(7),
	datad => \pcounter|pc\(8),
	combout => \memoriaInstrucoes|Mux0~1_combout\);

\RIFIF|out_instr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \memoriaInstrucoes|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIFIF|out_instr\(0));

\ContUnit|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContUnit|Mux4~0_combout\ = (\RIFIF|out_instr\(5) & !\RIFIF|out_instr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIFIF|out_instr\(5),
	datad => \RIFIF|out_instr\(0),
	combout => \ContUnit|Mux4~0_combout\);

\RIDEX|output_instruction_EX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ContUnit|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_instruction_EX\(4));

\RIDEX|output_instruction_WB[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RIDEX|output_instruction_WB[1]~0_combout\ = !\RIFIF|out_instr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIFIF|out_instr\(0),
	combout => \RIDEX|output_instruction_WB[1]~0_combout\);

\RIDEX|output_instruction_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \RIDEX|output_instruction_WB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_instruction_WB\(1));

\REXMEM|output_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \RIDEX|output_instruction_WB\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_WB\(1));

\RMEMWB|output_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_WB\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_WB\(1));

\memoriaInstrucoes|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux15~0_combout\ = (!\pcounter|pc\(3) & (!\pcounter|pc\(4) & (\pcounter|pc\(2) $ (\pcounter|pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(2),
	datab => \pcounter|pc\(3),
	datac => \pcounter|pc\(4),
	datad => \pcounter|pc\(5),
	combout => \memoriaInstrucoes|Mux15~0_combout\);

\memoriaInstrucoes|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux15~1_combout\ = (\memoriaInstrucoes|Mux15~0_combout\ & (!\pcounter|pc\(6) & (!\pcounter|pc\(7) & !\pcounter|pc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInstrucoes|Mux15~0_combout\,
	datab => \pcounter|pc\(6),
	datac => \pcounter|pc\(7),
	datad => \pcounter|pc\(8),
	combout => \memoriaInstrucoes|Mux15~1_combout\);

\RIFIF|out_instr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \memoriaInstrucoes|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIFIF|out_instr\(15));

\RIDEX|output_rt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \RIFIF|out_instr\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_rt\(0));

\ContUnit|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContUnit|Mux1~0_combout\ = (!\RIFIF|out_instr\(5) & !\RIFIF|out_instr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIFIF|out_instr\(5),
	datab => \RIFIF|out_instr\(0),
	combout => \ContUnit|Mux1~0_combout\);

\RIDEX|output_instruction_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ContUnit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_instruction_EX\(0));

\muxregsrc|Saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxregsrc|Saida[0]~0_combout\ = (\RIDEX|output_rt\(0) & !\RIDEX|output_instruction_EX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_rt\(0),
	datad => \RIDEX|output_instruction_EX\(0),
	combout => \muxregsrc|Saida[0]~0_combout\);

\REXMEM|output_regdst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \muxregsrc|Saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_regdst\(0));

\RMEMWB|output_regdst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_regdst\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_regdst\(0));

\regBd|Rin1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|Rin1[1]~0_combout\ = (\RMEMWB|output_WB\(1) & \RMEMWB|output_regdst\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RMEMWB|output_WB\(1),
	datab => \RMEMWB|output_regdst\(0),
	combout => \regBd|Rin1[1]~0_combout\);

\regBd|reg1|reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(0),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(0));

\regBd|Rin1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|Rin1[0]~1_combout\ = (!\RMEMWB|output_regdst\(0) & \RMEMWB|output_WB\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RMEMWB|output_regdst\(0),
	datad => \RMEMWB|output_WB\(1),
	combout => \regBd|Rin1[0]~1_combout\);

\regBd|reg0|reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(0),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(0));

\regBd|readData2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[0]~0_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(0))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(0),
	datab => \regBd|reg0|reg|Q\(0),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[0]~0_combout\);

\RIDEX|output_read2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(0));

\memoriaInstrucoes|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux31~0_combout\ = (!\pcounter|pc\(3) & (!\pcounter|pc\(6) & (!\pcounter|pc\(7) & !\pcounter|pc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(3),
	datab => \pcounter|pc\(6),
	datac => \pcounter|pc\(7),
	datad => \pcounter|pc\(8),
	combout => \memoriaInstrucoes|Mux31~0_combout\);

\memoriaInstrucoes|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux31~1_combout\ = (\memoriaInstrucoes|Mux31~0_combout\ & (\pcounter|pc\(5) & (!\pcounter|pc\(4) & !\pcounter|pc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInstrucoes|Mux31~0_combout\,
	datab => \pcounter|pc\(5),
	datac => \pcounter|pc\(4),
	datad => \pcounter|pc\(2),
	combout => \memoriaInstrucoes|Mux31~1_combout\);

\RIFIF|out_instr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \memoriaInstrucoes|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIFIF|out_instr\(31));

\RIDEX|output_imed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \RIFIF|out_instr\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_imed\(0));

\memoriaInstrucoes|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux30~0_combout\ = (\memoriaInstrucoes|Mux31~0_combout\ & (\pcounter|pc\(2) & (!\pcounter|pc\(4) & !\pcounter|pc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInstrucoes|Mux31~0_combout\,
	datab => \pcounter|pc\(2),
	datac => \pcounter|pc\(4),
	datad => \pcounter|pc\(5),
	combout => \memoriaInstrucoes|Mux30~0_combout\);

\RIFIF|out_instr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \memoriaInstrucoes|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIFIF|out_instr\(30));

\RIDEX|output_imed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \RIFIF|out_instr\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_imed\(1));

\ULACONTROL|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULACONTROL|Mux4~0_combout\ = (\RIDEX|output_imed\(1) & \RIDEX|output_instruction_EX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	combout => \ULACONTROL|Mux4~0_combout\);

\ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = \ULACONTROL|Mux4~0_combout\ $ (((\RIDEX|output_instruction_EX\(4) & ((\RIDEX|output_imed\(0)))) # (!\RIDEX|output_instruction_EX\(4) & (\RIDEX|output_read2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_instruction_EX\(4),
	datab => \RIDEX|output_read2\(0),
	datac => \RIDEX|output_imed\(0),
	datad => \ULACONTROL|Mux4~0_combout\,
	combout => \ALU|Add0~0_combout\);

\regBd|readData1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[0]~0_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(0))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(0),
	datab => \regBd|reg0|reg|Q\(0),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[0]~0_combout\);

\RIDEX|output_read1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(0));

\ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_cout\ = CARRY((!\RIDEX|output_imed\(0) & \RIDEX|output_instruction_EX\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(0),
	datab => \RIDEX|output_instruction_EX\(0),
	datad => VCC,
	cout => \ALU|Add0~2_cout\);

\ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~3_combout\ = (\ALU|Add0~0_combout\ & ((\RIDEX|output_read1\(0) & (\ALU|Add0~2_cout\ & VCC)) # (!\RIDEX|output_read1\(0) & (!\ALU|Add0~2_cout\)))) # (!\ALU|Add0~0_combout\ & ((\RIDEX|output_read1\(0) & (!\ALU|Add0~2_cout\)) # 
-- (!\RIDEX|output_read1\(0) & ((\ALU|Add0~2_cout\) # (GND)))))
-- \ALU|Add0~4\ = CARRY((\ALU|Add0~0_combout\ & (!\RIDEX|output_read1\(0) & !\ALU|Add0~2_cout\)) # (!\ALU|Add0~0_combout\ & ((!\ALU|Add0~2_cout\) # (!\RIDEX|output_read1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~0_combout\,
	datab => \RIDEX|output_read1\(0),
	datad => VCC,
	cin => \ALU|Add0~2_cout\,
	combout => \ALU|Add0~3_combout\,
	cout => \ALU|Add0~4\);

\MUXALU|Saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUXALU|Saida[0]~0_combout\ = (\RIDEX|output_instruction_EX\(4) & (\RIDEX|output_imed\(0))) # (!\RIDEX|output_instruction_EX\(4) & ((\RIDEX|output_read2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(0),
	datab => \RIDEX|output_read2\(0),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \MUXALU|Saida[0]~0_combout\);

\ALU|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux31~3_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) & (\MUXALU|Saida[0]~0_combout\ & \RIDEX|output_read1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \MUXALU|Saida[0]~0_combout\,
	datad => \RIDEX|output_read1\(0),
	combout => \ALU|Mux31~3_combout\);

\ALU|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux13~0_combout\ = (\RIDEX|output_instruction_EX\(0) & (\RIDEX|output_imed\(0) $ (!\RIDEX|output_imed\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_instruction_EX\(0),
	datab => \RIDEX|output_imed\(0),
	datac => \RIDEX|output_imed\(1),
	combout => \ALU|Mux13~0_combout\);

\REXMEM|output_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[0]~0_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux31~3_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~3_combout\,
	datab => \ALU|Mux31~3_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[0]~0_combout\);

\ULACONTROL|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULACONTROL|Mux5~0_combout\ = (\RIDEX|output_instruction_EX\(0) & !\RIDEX|output_imed\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_instruction_EX\(0),
	datad => \RIDEX|output_imed\(0),
	combout => \ULACONTROL|Mux5~0_combout\);

\ALU|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux31~2_combout\ = (\ULACONTROL|Mux5~0_combout\ & (!\ULACONTROL|Mux4~0_combout\ & ((\MUXALU|Saida[0]~0_combout\) # (\RIDEX|output_read1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux5~0_combout\,
	datab => \MUXALU|Saida[0]~0_combout\,
	datac => \RIDEX|output_read1\(0),
	datad => \ULACONTROL|Mux4~0_combout\,
	combout => \ALU|Mux31~2_combout\);

\memoriaInstrucoes|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux29~0_combout\ = (\pcounter|pc\(5)) # ((\pcounter|pc\(2) & (!\pcounter|pc\(3) & !\pcounter|pc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(2),
	datab => \pcounter|pc\(3),
	datac => \pcounter|pc\(4),
	datad => \pcounter|pc\(5),
	combout => \memoriaInstrucoes|Mux29~0_combout\);

\memoriaInstrucoes|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInstrucoes|Mux29~1_combout\ = (!\pcounter|pc\(6) & (!\pcounter|pc\(7) & (!\pcounter|pc\(8) & !\memoriaInstrucoes|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|pc\(6),
	datab => \pcounter|pc\(7),
	datac => \pcounter|pc\(8),
	datad => \memoriaInstrucoes|Mux29~0_combout\,
	combout => \memoriaInstrucoes|Mux29~1_combout\);

\RIFIF|out_instr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \memoriaInstrucoes|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIFIF|out_instr\(29));

\RIDEX|output_imed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \RIFIF|out_instr\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_imed\(2));

\ULACONTROL|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULACONTROL|Mux3~0_combout\ = (\RIDEX|output_imed\(2) & \RIDEX|output_instruction_EX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(2),
	datab => \RIDEX|output_instruction_EX\(0),
	combout => \ULACONTROL|Mux3~0_combout\);

\REXMEM|output_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[0]~0_combout\,
	asdata => \ALU|Mux31~2_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(0));

\RMEMWB|output_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(0));

\regBd|reg1|reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(1),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(1));

\regBd|reg0|reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(1),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(1));

\regBd|readData2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[1]~1_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(1))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(1),
	datab => \regBd|reg0|reg|Q\(1),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[1]~1_combout\);

\RIDEX|output_read2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(1));

\ALU|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~5_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((\RIDEX|output_read2\(1)) # (\RIDEX|output_instruction_EX\(4)))))) # (!\RIDEX|output_imed\(1) & (\RIDEX|output_read2\(1) & (!\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_read2\(1),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_instruction_EX\(0),
	combout => \ALU|Add0~5_combout\);

\regBd|readData1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[1]~1_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(1))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(1),
	datab => \regBd|reg0|reg|Q\(1),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[1]~1_combout\);

\RIDEX|output_read1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(1));

\ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = ((\ALU|Add0~5_combout\ $ (\RIDEX|output_read1\(1) $ (!\ALU|Add0~4\)))) # (GND)
-- \ALU|Add0~7\ = CARRY((\ALU|Add0~5_combout\ & ((\RIDEX|output_read1\(1)) # (!\ALU|Add0~4\))) # (!\ALU|Add0~5_combout\ & (\RIDEX|output_read1\(1) & !\ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~5_combout\,
	datab => \RIDEX|output_read1\(1),
	datad => VCC,
	cin => \ALU|Add0~4\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

\MUXALU|Saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUXALU|Saida[1]~1_combout\ = (\RIDEX|output_instruction_EX\(4) & (\RIDEX|output_imed\(1))) # (!\RIDEX|output_instruction_EX\(4) & ((\RIDEX|output_read2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_read2\(1),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \MUXALU|Saida[1]~1_combout\);

\ALU|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux30~3_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) & (\MUXALU|Saida[1]~1_combout\ & \RIDEX|output_read1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \MUXALU|Saida[1]~1_combout\,
	datad => \RIDEX|output_read1\(1),
	combout => \ALU|Mux30~3_combout\);

\REXMEM|output_result[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[1]~1_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux30~3_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~6_combout\,
	datab => \ALU|Mux30~3_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[1]~1_combout\);

\ALU|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux30~2_combout\ = (\ULACONTROL|Mux5~0_combout\ & (!\ULACONTROL|Mux4~0_combout\ & ((\MUXALU|Saida[1]~1_combout\) # (\RIDEX|output_read1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux5~0_combout\,
	datab => \MUXALU|Saida[1]~1_combout\,
	datac => \RIDEX|output_read1\(1),
	datad => \ULACONTROL|Mux4~0_combout\,
	combout => \ALU|Mux30~2_combout\);

\REXMEM|output_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[1]~1_combout\,
	asdata => \ALU|Mux30~2_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(1));

\RMEMWB|output_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(1));

\regBd|reg1|reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(2),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(2));

\regBd|reg0|reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(2),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(2));

\regBd|readData2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[2]~2_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(2))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(2),
	datab => \regBd|reg0|reg|Q\(2),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[2]~2_combout\);

\RIDEX|output_read2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(2));

\ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = \ULACONTROL|Mux4~0_combout\ $ (((\RIDEX|output_instruction_EX\(4) & ((\RIDEX|output_imed\(2)))) # (!\RIDEX|output_instruction_EX\(4) & (\RIDEX|output_read2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_instruction_EX\(4),
	datab => \RIDEX|output_read2\(2),
	datac => \RIDEX|output_imed\(2),
	datad => \ULACONTROL|Mux4~0_combout\,
	combout => \ALU|Add0~8_combout\);

\regBd|readData1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[2]~2_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(2))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(2),
	datab => \regBd|reg0|reg|Q\(2),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[2]~2_combout\);

\RIDEX|output_read1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(2));

\ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_combout\ = (\ALU|Add0~8_combout\ & ((\RIDEX|output_read1\(2) & (\ALU|Add0~7\ & VCC)) # (!\RIDEX|output_read1\(2) & (!\ALU|Add0~7\)))) # (!\ALU|Add0~8_combout\ & ((\RIDEX|output_read1\(2) & (!\ALU|Add0~7\)) # (!\RIDEX|output_read1\(2) & 
-- ((\ALU|Add0~7\) # (GND)))))
-- \ALU|Add0~10\ = CARRY((\ALU|Add0~8_combout\ & (!\RIDEX|output_read1\(2) & !\ALU|Add0~7\)) # (!\ALU|Add0~8_combout\ & ((!\ALU|Add0~7\) # (!\RIDEX|output_read1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~8_combout\,
	datab => \RIDEX|output_read1\(2),
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~9_combout\,
	cout => \ALU|Add0~10\);

\MUXALU|Saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUXALU|Saida[2]~2_combout\ = (\RIDEX|output_instruction_EX\(4) & (\RIDEX|output_imed\(2))) # (!\RIDEX|output_instruction_EX\(4) & ((\RIDEX|output_read2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(2),
	datab => \RIDEX|output_read2\(2),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \MUXALU|Saida[2]~2_combout\);

\ALU|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux29~3_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) & (\MUXALU|Saida[2]~2_combout\ & \RIDEX|output_read1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \MUXALU|Saida[2]~2_combout\,
	datad => \RIDEX|output_read1\(2),
	combout => \ALU|Mux29~3_combout\);

\REXMEM|output_result[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[2]~2_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux29~3_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~9_combout\,
	datab => \ALU|Mux29~3_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[2]~2_combout\);

\ALU|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux29~2_combout\ = (\ULACONTROL|Mux5~0_combout\ & (!\ULACONTROL|Mux4~0_combout\ & ((\MUXALU|Saida[2]~2_combout\) # (\RIDEX|output_read1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux5~0_combout\,
	datab => \MUXALU|Saida[2]~2_combout\,
	datac => \RIDEX|output_read1\(2),
	datad => \ULACONTROL|Mux4~0_combout\,
	combout => \ALU|Mux29~2_combout\);

\REXMEM|output_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[2]~2_combout\,
	asdata => \ALU|Mux29~2_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(2));

\RMEMWB|output_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(2));

\regBd|reg1|reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(3),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(3));

\regBd|reg0|reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(3),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(3));

\regBd|readData2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[3]~3_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(3))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(3),
	datab => \regBd|reg0|reg|Q\(3),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[3]~3_combout\);

\RIDEX|output_read2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(3));

\ALU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~11_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(3)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(3),
	combout => \ALU|Add0~11_combout\);

\regBd|readData1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[3]~3_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(3))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(3),
	datab => \regBd|reg0|reg|Q\(3),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[3]~3_combout\);

\RIDEX|output_read1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(3));

\ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = ((\ALU|Add0~11_combout\ $ (\RIDEX|output_read1\(3) $ (!\ALU|Add0~10\)))) # (GND)
-- \ALU|Add0~13\ = CARRY((\ALU|Add0~11_combout\ & ((\RIDEX|output_read1\(3)) # (!\ALU|Add0~10\))) # (!\ALU|Add0~11_combout\ & (\RIDEX|output_read1\(3) & !\ALU|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~11_combout\,
	datab => \RIDEX|output_read1\(3),
	datad => VCC,
	cin => \ALU|Add0~10\,
	combout => \ALU|Add0~12_combout\,
	cout => \ALU|Add0~13\);

\ALU|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux28~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(3) & (\RIDEX|output_read1\(3) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(3),
	datac => \RIDEX|output_read1\(3),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux28~0_combout\);

\REXMEM|output_result[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[3]~3_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux28~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~12_combout\,
	datab => \ALU|Mux28~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[3]~3_combout\);

\ALU|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux13~1_combout\ = (\RIDEX|output_imed\(0)) # ((\RIDEX|output_imed\(1)) # (!\RIDEX|output_instruction_EX\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(0),
	datab => \RIDEX|output_imed\(1),
	datad => \RIDEX|output_instruction_EX\(0),
	combout => \ALU|Mux13~1_combout\);

\ALU|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux28~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(3)) # ((\RIDEX|output_read2\(3) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(3),
	datab => \RIDEX|output_read2\(3),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux28~1_combout\);

\REXMEM|output_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[3]~3_combout\,
	asdata => \ALU|Mux28~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(3));

\RMEMWB|output_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(3));

\regBd|reg1|reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(4),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(4));

\regBd|reg0|reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(4),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(4));

\regBd|readData2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[4]~4_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(4))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(4),
	datab => \regBd|reg0|reg|Q\(4),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[4]~4_combout\);

\RIDEX|output_read2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(4));

\ALU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~14_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(4)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(4),
	combout => \ALU|Add0~14_combout\);

\regBd|readData1[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[4]~4_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(4))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(4),
	datab => \regBd|reg0|reg|Q\(4),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[4]~4_combout\);

\RIDEX|output_read1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(4));

\ALU|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~15_combout\ = (\ALU|Add0~14_combout\ & ((\RIDEX|output_read1\(4) & (\ALU|Add0~13\ & VCC)) # (!\RIDEX|output_read1\(4) & (!\ALU|Add0~13\)))) # (!\ALU|Add0~14_combout\ & ((\RIDEX|output_read1\(4) & (!\ALU|Add0~13\)) # (!\RIDEX|output_read1\(4) & 
-- ((\ALU|Add0~13\) # (GND)))))
-- \ALU|Add0~16\ = CARRY((\ALU|Add0~14_combout\ & (!\RIDEX|output_read1\(4) & !\ALU|Add0~13\)) # (!\ALU|Add0~14_combout\ & ((!\ALU|Add0~13\) # (!\RIDEX|output_read1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~14_combout\,
	datab => \RIDEX|output_read1\(4),
	datad => VCC,
	cin => \ALU|Add0~13\,
	combout => \ALU|Add0~15_combout\,
	cout => \ALU|Add0~16\);

\ALU|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux27~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(4) & (\RIDEX|output_read1\(4) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(4),
	datac => \RIDEX|output_read1\(4),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux27~0_combout\);

\REXMEM|output_result[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[4]~4_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux27~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~15_combout\,
	datab => \ALU|Mux27~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[4]~4_combout\);

\ALU|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux27~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(4)) # ((\RIDEX|output_read2\(4) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(4),
	datab => \RIDEX|output_read2\(4),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux27~1_combout\);

\REXMEM|output_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[4]~4_combout\,
	asdata => \ALU|Mux27~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(4));

\RMEMWB|output_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(4));

\regBd|reg1|reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(5),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(5));

\regBd|reg0|reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(5),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(5));

\regBd|readData2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[5]~5_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(5))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(5),
	datab => \regBd|reg0|reg|Q\(5),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[5]~5_combout\);

\RIDEX|output_read2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(5));

\ALU|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~17_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(5)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(5),
	combout => \ALU|Add0~17_combout\);

\regBd|readData1[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[5]~5_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(5))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(5),
	datab => \regBd|reg0|reg|Q\(5),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[5]~5_combout\);

\RIDEX|output_read1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(5));

\ALU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~18_combout\ = ((\ALU|Add0~17_combout\ $ (\RIDEX|output_read1\(5) $ (!\ALU|Add0~16\)))) # (GND)
-- \ALU|Add0~19\ = CARRY((\ALU|Add0~17_combout\ & ((\RIDEX|output_read1\(5)) # (!\ALU|Add0~16\))) # (!\ALU|Add0~17_combout\ & (\RIDEX|output_read1\(5) & !\ALU|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~17_combout\,
	datab => \RIDEX|output_read1\(5),
	datad => VCC,
	cin => \ALU|Add0~16\,
	combout => \ALU|Add0~18_combout\,
	cout => \ALU|Add0~19\);

\ALU|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux26~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(5) & (\RIDEX|output_read1\(5) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(5),
	datac => \RIDEX|output_read1\(5),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux26~0_combout\);

\REXMEM|output_result[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[5]~5_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux26~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~18_combout\,
	datab => \ALU|Mux26~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[5]~5_combout\);

\ALU|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux26~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(5)) # ((\RIDEX|output_read2\(5) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(5),
	datab => \RIDEX|output_read2\(5),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux26~1_combout\);

\REXMEM|output_result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[5]~5_combout\,
	asdata => \ALU|Mux26~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(5));

\RMEMWB|output_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(5));

\regBd|reg1|reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(6),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(6));

\regBd|reg0|reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(6),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(6));

\regBd|readData2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[6]~6_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(6))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(6),
	datab => \regBd|reg0|reg|Q\(6),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[6]~6_combout\);

\RIDEX|output_read2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(6));

\ALU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~20_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(6)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(6),
	combout => \ALU|Add0~20_combout\);

\regBd|readData1[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[6]~6_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(6))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(6),
	datab => \regBd|reg0|reg|Q\(6),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[6]~6_combout\);

\RIDEX|output_read1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(6));

\ALU|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~21_combout\ = (\ALU|Add0~20_combout\ & ((\RIDEX|output_read1\(6) & (\ALU|Add0~19\ & VCC)) # (!\RIDEX|output_read1\(6) & (!\ALU|Add0~19\)))) # (!\ALU|Add0~20_combout\ & ((\RIDEX|output_read1\(6) & (!\ALU|Add0~19\)) # (!\RIDEX|output_read1\(6) & 
-- ((\ALU|Add0~19\) # (GND)))))
-- \ALU|Add0~22\ = CARRY((\ALU|Add0~20_combout\ & (!\RIDEX|output_read1\(6) & !\ALU|Add0~19\)) # (!\ALU|Add0~20_combout\ & ((!\ALU|Add0~19\) # (!\RIDEX|output_read1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~20_combout\,
	datab => \RIDEX|output_read1\(6),
	datad => VCC,
	cin => \ALU|Add0~19\,
	combout => \ALU|Add0~21_combout\,
	cout => \ALU|Add0~22\);

\ALU|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux25~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(6) & (\RIDEX|output_read1\(6) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(6),
	datac => \RIDEX|output_read1\(6),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux25~0_combout\);

\REXMEM|output_result[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[6]~6_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux25~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~21_combout\,
	datab => \ALU|Mux25~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[6]~6_combout\);

\ALU|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux25~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(6)) # ((\RIDEX|output_read2\(6) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(6),
	datab => \RIDEX|output_read2\(6),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux25~1_combout\);

\REXMEM|output_result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[6]~6_combout\,
	asdata => \ALU|Mux25~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(6));

\RMEMWB|output_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(6));

\regBd|reg1|reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(7),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(7));

\regBd|reg0|reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(7),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(7));

\regBd|readData2[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[7]~7_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(7))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(7),
	datab => \regBd|reg0|reg|Q\(7),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[7]~7_combout\);

\RIDEX|output_read2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(7));

\ALU|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~23_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(7)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(7),
	combout => \ALU|Add0~23_combout\);

\regBd|readData1[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[7]~7_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(7))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(7),
	datab => \regBd|reg0|reg|Q\(7),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[7]~7_combout\);

\RIDEX|output_read1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(7));

\ALU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~24_combout\ = ((\ALU|Add0~23_combout\ $ (\RIDEX|output_read1\(7) $ (!\ALU|Add0~22\)))) # (GND)
-- \ALU|Add0~25\ = CARRY((\ALU|Add0~23_combout\ & ((\RIDEX|output_read1\(7)) # (!\ALU|Add0~22\))) # (!\ALU|Add0~23_combout\ & (\RIDEX|output_read1\(7) & !\ALU|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~23_combout\,
	datab => \RIDEX|output_read1\(7),
	datad => VCC,
	cin => \ALU|Add0~22\,
	combout => \ALU|Add0~24_combout\,
	cout => \ALU|Add0~25\);

\ALU|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux24~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(7) & (\RIDEX|output_read1\(7) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(7),
	datac => \RIDEX|output_read1\(7),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux24~0_combout\);

\REXMEM|output_result[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[7]~7_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux24~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~24_combout\,
	datab => \ALU|Mux24~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[7]~7_combout\);

\ALU|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux24~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(7)) # ((\RIDEX|output_read2\(7) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(7),
	datab => \RIDEX|output_read2\(7),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux24~1_combout\);

\REXMEM|output_result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[7]~7_combout\,
	asdata => \ALU|Mux24~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(7));

\RMEMWB|output_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(7));

\regBd|reg1|reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(8),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(8));

\regBd|reg0|reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(8),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(8));

\regBd|readData2[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[8]~8_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(8))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(8),
	datab => \regBd|reg0|reg|Q\(8),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[8]~8_combout\);

\RIDEX|output_read2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(8));

\ALU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~26_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(8)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(8),
	combout => \ALU|Add0~26_combout\);

\regBd|readData1[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[8]~8_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(8))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(8),
	datab => \regBd|reg0|reg|Q\(8),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[8]~8_combout\);

\RIDEX|output_read1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(8));

\ALU|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~27_combout\ = (\ALU|Add0~26_combout\ & ((\RIDEX|output_read1\(8) & (\ALU|Add0~25\ & VCC)) # (!\RIDEX|output_read1\(8) & (!\ALU|Add0~25\)))) # (!\ALU|Add0~26_combout\ & ((\RIDEX|output_read1\(8) & (!\ALU|Add0~25\)) # (!\RIDEX|output_read1\(8) & 
-- ((\ALU|Add0~25\) # (GND)))))
-- \ALU|Add0~28\ = CARRY((\ALU|Add0~26_combout\ & (!\RIDEX|output_read1\(8) & !\ALU|Add0~25\)) # (!\ALU|Add0~26_combout\ & ((!\ALU|Add0~25\) # (!\RIDEX|output_read1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~26_combout\,
	datab => \RIDEX|output_read1\(8),
	datad => VCC,
	cin => \ALU|Add0~25\,
	combout => \ALU|Add0~27_combout\,
	cout => \ALU|Add0~28\);

\ALU|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux23~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(8) & (\RIDEX|output_read1\(8) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(8),
	datac => \RIDEX|output_read1\(8),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux23~0_combout\);

\REXMEM|output_result[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[8]~8_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux23~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~27_combout\,
	datab => \ALU|Mux23~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[8]~8_combout\);

\ALU|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux23~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(8)) # ((\RIDEX|output_read2\(8) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(8),
	datab => \RIDEX|output_read2\(8),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux23~1_combout\);

\REXMEM|output_result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[8]~8_combout\,
	asdata => \ALU|Mux23~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(8));

\RMEMWB|output_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(8));

\regBd|reg1|reg|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(9),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(9));

\regBd|reg0|reg|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(9),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(9));

\regBd|readData2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[9]~9_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(9))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(9),
	datab => \regBd|reg0|reg|Q\(9),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[9]~9_combout\);

\RIDEX|output_read2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(9));

\ALU|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~29_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(9)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(9),
	combout => \ALU|Add0~29_combout\);

\regBd|readData1[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[9]~9_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(9))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(9),
	datab => \regBd|reg0|reg|Q\(9),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[9]~9_combout\);

\RIDEX|output_read1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(9));

\ALU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~30_combout\ = ((\ALU|Add0~29_combout\ $ (\RIDEX|output_read1\(9) $ (!\ALU|Add0~28\)))) # (GND)
-- \ALU|Add0~31\ = CARRY((\ALU|Add0~29_combout\ & ((\RIDEX|output_read1\(9)) # (!\ALU|Add0~28\))) # (!\ALU|Add0~29_combout\ & (\RIDEX|output_read1\(9) & !\ALU|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~29_combout\,
	datab => \RIDEX|output_read1\(9),
	datad => VCC,
	cin => \ALU|Add0~28\,
	combout => \ALU|Add0~30_combout\,
	cout => \ALU|Add0~31\);

\ALU|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux22~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(9) & (\RIDEX|output_read1\(9) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(9),
	datac => \RIDEX|output_read1\(9),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux22~0_combout\);

\REXMEM|output_result[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[9]~9_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux22~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~30_combout\,
	datab => \ALU|Mux22~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[9]~9_combout\);

\ALU|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux22~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(9)) # ((\RIDEX|output_read2\(9) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(9),
	datab => \RIDEX|output_read2\(9),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux22~1_combout\);

\REXMEM|output_result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[9]~9_combout\,
	asdata => \ALU|Mux22~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(9));

\RMEMWB|output_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(9));

\regBd|reg1|reg|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(10),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(10));

\regBd|reg0|reg|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(10),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(10));

\regBd|readData2[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[10]~10_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(10))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(10),
	datab => \regBd|reg0|reg|Q\(10),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[10]~10_combout\);

\RIDEX|output_read2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(10));

\ALU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~32_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(10)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(10),
	combout => \ALU|Add0~32_combout\);

\regBd|readData1[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[10]~10_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(10))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(10),
	datab => \regBd|reg0|reg|Q\(10),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[10]~10_combout\);

\RIDEX|output_read1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(10));

\ALU|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~33_combout\ = (\ALU|Add0~32_combout\ & ((\RIDEX|output_read1\(10) & (\ALU|Add0~31\ & VCC)) # (!\RIDEX|output_read1\(10) & (!\ALU|Add0~31\)))) # (!\ALU|Add0~32_combout\ & ((\RIDEX|output_read1\(10) & (!\ALU|Add0~31\)) # (!\RIDEX|output_read1\(10) 
-- & ((\ALU|Add0~31\) # (GND)))))
-- \ALU|Add0~34\ = CARRY((\ALU|Add0~32_combout\ & (!\RIDEX|output_read1\(10) & !\ALU|Add0~31\)) # (!\ALU|Add0~32_combout\ & ((!\ALU|Add0~31\) # (!\RIDEX|output_read1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~32_combout\,
	datab => \RIDEX|output_read1\(10),
	datad => VCC,
	cin => \ALU|Add0~31\,
	combout => \ALU|Add0~33_combout\,
	cout => \ALU|Add0~34\);

\ALU|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux21~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(10) & (\RIDEX|output_read1\(10) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(10),
	datac => \RIDEX|output_read1\(10),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux21~0_combout\);

\REXMEM|output_result[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[10]~10_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux21~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~33_combout\,
	datab => \ALU|Mux21~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[10]~10_combout\);

\ALU|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux21~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(10)) # ((\RIDEX|output_read2\(10) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(10),
	datab => \RIDEX|output_read2\(10),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux21~1_combout\);

\REXMEM|output_result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[10]~10_combout\,
	asdata => \ALU|Mux21~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(10));

\RMEMWB|output_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(10));

\regBd|reg1|reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(11),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(11));

\regBd|reg0|reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(11),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(11));

\regBd|readData2[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[11]~11_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(11))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(11),
	datab => \regBd|reg0|reg|Q\(11),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[11]~11_combout\);

\RIDEX|output_read2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(11));

\ALU|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~35_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(11)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(11),
	combout => \ALU|Add0~35_combout\);

\regBd|readData1[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[11]~11_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(11))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(11),
	datab => \regBd|reg0|reg|Q\(11),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[11]~11_combout\);

\RIDEX|output_read1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(11));

\ALU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~36_combout\ = ((\ALU|Add0~35_combout\ $ (\RIDEX|output_read1\(11) $ (!\ALU|Add0~34\)))) # (GND)
-- \ALU|Add0~37\ = CARRY((\ALU|Add0~35_combout\ & ((\RIDEX|output_read1\(11)) # (!\ALU|Add0~34\))) # (!\ALU|Add0~35_combout\ & (\RIDEX|output_read1\(11) & !\ALU|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~35_combout\,
	datab => \RIDEX|output_read1\(11),
	datad => VCC,
	cin => \ALU|Add0~34\,
	combout => \ALU|Add0~36_combout\,
	cout => \ALU|Add0~37\);

\ALU|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux20~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(11) & (\RIDEX|output_read1\(11) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(11),
	datac => \RIDEX|output_read1\(11),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux20~0_combout\);

\REXMEM|output_result[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[11]~11_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux20~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~36_combout\,
	datab => \ALU|Mux20~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[11]~11_combout\);

\ALU|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux20~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(11)) # ((\RIDEX|output_read2\(11) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(11),
	datab => \RIDEX|output_read2\(11),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux20~1_combout\);

\REXMEM|output_result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[11]~11_combout\,
	asdata => \ALU|Mux20~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(11));

\RMEMWB|output_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(11));

\regBd|reg1|reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(12),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(12));

\regBd|reg0|reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(12),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(12));

\regBd|readData2[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[12]~12_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(12))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(12),
	datab => \regBd|reg0|reg|Q\(12),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[12]~12_combout\);

\RIDEX|output_read2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(12));

\ALU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~38_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(12)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(12),
	combout => \ALU|Add0~38_combout\);

\regBd|readData1[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[12]~12_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(12))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(12),
	datab => \regBd|reg0|reg|Q\(12),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[12]~12_combout\);

\RIDEX|output_read1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(12));

\ALU|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~39_combout\ = (\ALU|Add0~38_combout\ & ((\RIDEX|output_read1\(12) & (\ALU|Add0~37\ & VCC)) # (!\RIDEX|output_read1\(12) & (!\ALU|Add0~37\)))) # (!\ALU|Add0~38_combout\ & ((\RIDEX|output_read1\(12) & (!\ALU|Add0~37\)) # (!\RIDEX|output_read1\(12) 
-- & ((\ALU|Add0~37\) # (GND)))))
-- \ALU|Add0~40\ = CARRY((\ALU|Add0~38_combout\ & (!\RIDEX|output_read1\(12) & !\ALU|Add0~37\)) # (!\ALU|Add0~38_combout\ & ((!\ALU|Add0~37\) # (!\RIDEX|output_read1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~38_combout\,
	datab => \RIDEX|output_read1\(12),
	datad => VCC,
	cin => \ALU|Add0~37\,
	combout => \ALU|Add0~39_combout\,
	cout => \ALU|Add0~40\);

\ALU|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux19~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(12) & (\RIDEX|output_read1\(12) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(12),
	datac => \RIDEX|output_read1\(12),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux19~0_combout\);

\REXMEM|output_result[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[12]~12_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux19~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~39_combout\,
	datab => \ALU|Mux19~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[12]~12_combout\);

\ALU|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux19~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(12)) # ((\RIDEX|output_read2\(12) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(12),
	datab => \RIDEX|output_read2\(12),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux19~1_combout\);

\REXMEM|output_result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[12]~12_combout\,
	asdata => \ALU|Mux19~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(12));

\RMEMWB|output_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(12));

\regBd|reg1|reg|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(13),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(13));

\regBd|reg0|reg|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(13),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(13));

\regBd|readData2[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[13]~13_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(13))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(13),
	datab => \regBd|reg0|reg|Q\(13),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[13]~13_combout\);

\RIDEX|output_read2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(13));

\ALU|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~41_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(13)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(13),
	combout => \ALU|Add0~41_combout\);

\regBd|readData1[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[13]~13_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(13))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(13),
	datab => \regBd|reg0|reg|Q\(13),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[13]~13_combout\);

\RIDEX|output_read1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(13));

\ALU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~42_combout\ = ((\ALU|Add0~41_combout\ $ (\RIDEX|output_read1\(13) $ (!\ALU|Add0~40\)))) # (GND)
-- \ALU|Add0~43\ = CARRY((\ALU|Add0~41_combout\ & ((\RIDEX|output_read1\(13)) # (!\ALU|Add0~40\))) # (!\ALU|Add0~41_combout\ & (\RIDEX|output_read1\(13) & !\ALU|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~41_combout\,
	datab => \RIDEX|output_read1\(13),
	datad => VCC,
	cin => \ALU|Add0~40\,
	combout => \ALU|Add0~42_combout\,
	cout => \ALU|Add0~43\);

\ALU|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux18~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(13) & (\RIDEX|output_read1\(13) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(13),
	datac => \RIDEX|output_read1\(13),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux18~0_combout\);

\REXMEM|output_result[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[13]~13_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux18~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~42_combout\,
	datab => \ALU|Mux18~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[13]~13_combout\);

\ALU|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux18~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(13)) # ((\RIDEX|output_read2\(13) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(13),
	datab => \RIDEX|output_read2\(13),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux18~1_combout\);

\REXMEM|output_result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[13]~13_combout\,
	asdata => \ALU|Mux18~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(13));

\RMEMWB|output_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(13));

\regBd|reg1|reg|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(14),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(14));

\regBd|reg0|reg|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(14),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(14));

\regBd|readData2[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[14]~14_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(14))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(14),
	datab => \regBd|reg0|reg|Q\(14),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[14]~14_combout\);

\RIDEX|output_read2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(14));

\ALU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~44_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(14)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(14),
	combout => \ALU|Add0~44_combout\);

\regBd|readData1[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[14]~14_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(14))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(14),
	datab => \regBd|reg0|reg|Q\(14),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[14]~14_combout\);

\RIDEX|output_read1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(14));

\ALU|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~45_combout\ = (\ALU|Add0~44_combout\ & ((\RIDEX|output_read1\(14) & (\ALU|Add0~43\ & VCC)) # (!\RIDEX|output_read1\(14) & (!\ALU|Add0~43\)))) # (!\ALU|Add0~44_combout\ & ((\RIDEX|output_read1\(14) & (!\ALU|Add0~43\)) # (!\RIDEX|output_read1\(14) 
-- & ((\ALU|Add0~43\) # (GND)))))
-- \ALU|Add0~46\ = CARRY((\ALU|Add0~44_combout\ & (!\RIDEX|output_read1\(14) & !\ALU|Add0~43\)) # (!\ALU|Add0~44_combout\ & ((!\ALU|Add0~43\) # (!\RIDEX|output_read1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~44_combout\,
	datab => \RIDEX|output_read1\(14),
	datad => VCC,
	cin => \ALU|Add0~43\,
	combout => \ALU|Add0~45_combout\,
	cout => \ALU|Add0~46\);

\ALU|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux17~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(14) & (\RIDEX|output_read1\(14) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(14),
	datac => \RIDEX|output_read1\(14),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux17~0_combout\);

\REXMEM|output_result[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[14]~14_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux17~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~45_combout\,
	datab => \ALU|Mux17~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[14]~14_combout\);

\ALU|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux17~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(14)) # ((\RIDEX|output_read2\(14) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(14),
	datab => \RIDEX|output_read2\(14),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux17~1_combout\);

\REXMEM|output_result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[14]~14_combout\,
	asdata => \ALU|Mux17~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(14));

\RMEMWB|output_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(14));

\regBd|reg1|reg|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(15),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(15));

\regBd|reg0|reg|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(15),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(15));

\regBd|readData2[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[15]~15_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(15))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(15),
	datab => \regBd|reg0|reg|Q\(15),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[15]~15_combout\);

\RIDEX|output_read2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(15));

\ALU|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~47_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(15)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(15),
	combout => \ALU|Add0~47_combout\);

\regBd|readData1[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[15]~15_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(15))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(15),
	datab => \regBd|reg0|reg|Q\(15),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[15]~15_combout\);

\RIDEX|output_read1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(15));

\ALU|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~48_combout\ = ((\ALU|Add0~47_combout\ $ (\RIDEX|output_read1\(15) $ (!\ALU|Add0~46\)))) # (GND)
-- \ALU|Add0~49\ = CARRY((\ALU|Add0~47_combout\ & ((\RIDEX|output_read1\(15)) # (!\ALU|Add0~46\))) # (!\ALU|Add0~47_combout\ & (\RIDEX|output_read1\(15) & !\ALU|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~47_combout\,
	datab => \RIDEX|output_read1\(15),
	datad => VCC,
	cin => \ALU|Add0~46\,
	combout => \ALU|Add0~48_combout\,
	cout => \ALU|Add0~49\);

\ALU|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux16~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(15) & (\RIDEX|output_read1\(15) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(15),
	datac => \RIDEX|output_read1\(15),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux16~0_combout\);

\REXMEM|output_result[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[15]~15_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux16~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~48_combout\,
	datab => \ALU|Mux16~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[15]~15_combout\);

\ALU|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux16~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(15)) # ((\RIDEX|output_read2\(15) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(15),
	datab => \RIDEX|output_read2\(15),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux16~1_combout\);

\REXMEM|output_result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[15]~15_combout\,
	asdata => \ALU|Mux16~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(15));

\RMEMWB|output_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(15));

\regBd|reg1|reg|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(16),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(16));

\regBd|reg0|reg|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(16),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(16));

\regBd|readData2[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[16]~16_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(16))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(16),
	datab => \regBd|reg0|reg|Q\(16),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[16]~16_combout\);

\RIDEX|output_read2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(16));

\ALU|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~50_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(16)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(16),
	combout => \ALU|Add0~50_combout\);

\regBd|readData1[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[16]~16_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(16))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(16),
	datab => \regBd|reg0|reg|Q\(16),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[16]~16_combout\);

\RIDEX|output_read1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(16));

\ALU|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~51_combout\ = (\ALU|Add0~50_combout\ & ((\RIDEX|output_read1\(16) & (\ALU|Add0~49\ & VCC)) # (!\RIDEX|output_read1\(16) & (!\ALU|Add0~49\)))) # (!\ALU|Add0~50_combout\ & ((\RIDEX|output_read1\(16) & (!\ALU|Add0~49\)) # (!\RIDEX|output_read1\(16) 
-- & ((\ALU|Add0~49\) # (GND)))))
-- \ALU|Add0~52\ = CARRY((\ALU|Add0~50_combout\ & (!\RIDEX|output_read1\(16) & !\ALU|Add0~49\)) # (!\ALU|Add0~50_combout\ & ((!\ALU|Add0~49\) # (!\RIDEX|output_read1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~50_combout\,
	datab => \RIDEX|output_read1\(16),
	datad => VCC,
	cin => \ALU|Add0~49\,
	combout => \ALU|Add0~51_combout\,
	cout => \ALU|Add0~52\);

\ALU|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux15~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(16) & (\RIDEX|output_read1\(16) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(16),
	datac => \RIDEX|output_read1\(16),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux15~0_combout\);

\REXMEM|output_result[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[16]~16_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux15~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~51_combout\,
	datab => \ALU|Mux15~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[16]~16_combout\);

\ALU|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux15~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(16)) # ((\RIDEX|output_read2\(16) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(16),
	datab => \RIDEX|output_read2\(16),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux15~1_combout\);

\REXMEM|output_result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[16]~16_combout\,
	asdata => \ALU|Mux15~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(16));

\RMEMWB|output_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(16));

\regBd|reg1|reg|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(17),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(17));

\regBd|reg0|reg|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(17),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(17));

\regBd|readData2[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[17]~17_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(17))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(17),
	datab => \regBd|reg0|reg|Q\(17),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[17]~17_combout\);

\RIDEX|output_read2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(17));

\ALU|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~53_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(17)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(17),
	combout => \ALU|Add0~53_combout\);

\regBd|readData1[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[17]~17_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(17))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(17),
	datab => \regBd|reg0|reg|Q\(17),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[17]~17_combout\);

\RIDEX|output_read1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(17));

\ALU|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~54_combout\ = ((\ALU|Add0~53_combout\ $ (\RIDEX|output_read1\(17) $ (!\ALU|Add0~52\)))) # (GND)
-- \ALU|Add0~55\ = CARRY((\ALU|Add0~53_combout\ & ((\RIDEX|output_read1\(17)) # (!\ALU|Add0~52\))) # (!\ALU|Add0~53_combout\ & (\RIDEX|output_read1\(17) & !\ALU|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~53_combout\,
	datab => \RIDEX|output_read1\(17),
	datad => VCC,
	cin => \ALU|Add0~52\,
	combout => \ALU|Add0~54_combout\,
	cout => \ALU|Add0~55\);

\ALU|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux14~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(17) & (\RIDEX|output_read1\(17) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(17),
	datac => \RIDEX|output_read1\(17),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux14~0_combout\);

\REXMEM|output_result[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[17]~17_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux14~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~54_combout\,
	datab => \ALU|Mux14~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[17]~17_combout\);

\ALU|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux14~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(17)) # ((\RIDEX|output_read2\(17) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(17),
	datab => \RIDEX|output_read2\(17),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux14~1_combout\);

\REXMEM|output_result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[17]~17_combout\,
	asdata => \ALU|Mux14~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(17));

\RMEMWB|output_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(17));

\regBd|reg1|reg|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(18),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(18));

\regBd|reg0|reg|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(18),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(18));

\regBd|readData2[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[18]~18_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(18))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(18),
	datab => \regBd|reg0|reg|Q\(18),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[18]~18_combout\);

\RIDEX|output_read2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(18));

\ALU|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~56_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(18)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(18),
	combout => \ALU|Add0~56_combout\);

\regBd|readData1[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[18]~18_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(18))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(18),
	datab => \regBd|reg0|reg|Q\(18),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[18]~18_combout\);

\RIDEX|output_read1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(18));

\ALU|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~57_combout\ = (\ALU|Add0~56_combout\ & ((\RIDEX|output_read1\(18) & (\ALU|Add0~55\ & VCC)) # (!\RIDEX|output_read1\(18) & (!\ALU|Add0~55\)))) # (!\ALU|Add0~56_combout\ & ((\RIDEX|output_read1\(18) & (!\ALU|Add0~55\)) # (!\RIDEX|output_read1\(18) 
-- & ((\ALU|Add0~55\) # (GND)))))
-- \ALU|Add0~58\ = CARRY((\ALU|Add0~56_combout\ & (!\RIDEX|output_read1\(18) & !\ALU|Add0~55\)) # (!\ALU|Add0~56_combout\ & ((!\ALU|Add0~55\) # (!\RIDEX|output_read1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~56_combout\,
	datab => \RIDEX|output_read1\(18),
	datad => VCC,
	cin => \ALU|Add0~55\,
	combout => \ALU|Add0~57_combout\,
	cout => \ALU|Add0~58\);

\ALU|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux13~2_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(18) & (\RIDEX|output_read1\(18) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(18),
	datac => \RIDEX|output_read1\(18),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux13~2_combout\);

\REXMEM|output_result[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[18]~18_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux13~2_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~57_combout\,
	datab => \ALU|Mux13~2_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[18]~18_combout\);

\ALU|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux13~3_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(18)) # ((\RIDEX|output_read2\(18) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(18),
	datab => \RIDEX|output_read2\(18),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux13~3_combout\);

\REXMEM|output_result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[18]~18_combout\,
	asdata => \ALU|Mux13~3_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(18));

\RMEMWB|output_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(18));

\regBd|reg1|reg|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(19),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(19));

\regBd|reg0|reg|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(19),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(19));

\regBd|readData2[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[19]~19_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(19))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(19),
	datab => \regBd|reg0|reg|Q\(19),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[19]~19_combout\);

\RIDEX|output_read2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(19));

\ALU|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~59_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(19)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(19),
	combout => \ALU|Add0~59_combout\);

\regBd|readData1[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[19]~19_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(19))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(19),
	datab => \regBd|reg0|reg|Q\(19),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[19]~19_combout\);

\RIDEX|output_read1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(19));

\ALU|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~60_combout\ = ((\ALU|Add0~59_combout\ $ (\RIDEX|output_read1\(19) $ (!\ALU|Add0~58\)))) # (GND)
-- \ALU|Add0~61\ = CARRY((\ALU|Add0~59_combout\ & ((\RIDEX|output_read1\(19)) # (!\ALU|Add0~58\))) # (!\ALU|Add0~59_combout\ & (\RIDEX|output_read1\(19) & !\ALU|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~59_combout\,
	datab => \RIDEX|output_read1\(19),
	datad => VCC,
	cin => \ALU|Add0~58\,
	combout => \ALU|Add0~60_combout\,
	cout => \ALU|Add0~61\);

\ALU|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux12~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(19) & (\RIDEX|output_read1\(19) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(19),
	datac => \RIDEX|output_read1\(19),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux12~0_combout\);

\REXMEM|output_result[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[19]~19_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux12~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~60_combout\,
	datab => \ALU|Mux12~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[19]~19_combout\);

\ALU|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux12~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(19)) # ((\RIDEX|output_read2\(19) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(19),
	datab => \RIDEX|output_read2\(19),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux12~1_combout\);

\REXMEM|output_result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[19]~19_combout\,
	asdata => \ALU|Mux12~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(19));

\RMEMWB|output_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(19));

\regBd|reg1|reg|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(20),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(20));

\regBd|reg0|reg|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(20),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(20));

\regBd|readData2[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[20]~20_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(20))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(20),
	datab => \regBd|reg0|reg|Q\(20),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[20]~20_combout\);

\RIDEX|output_read2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(20));

\ALU|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~62_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(20)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(20),
	combout => \ALU|Add0~62_combout\);

\regBd|readData1[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[20]~20_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(20))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(20),
	datab => \regBd|reg0|reg|Q\(20),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[20]~20_combout\);

\RIDEX|output_read1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(20));

\ALU|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~63_combout\ = (\ALU|Add0~62_combout\ & ((\RIDEX|output_read1\(20) & (\ALU|Add0~61\ & VCC)) # (!\RIDEX|output_read1\(20) & (!\ALU|Add0~61\)))) # (!\ALU|Add0~62_combout\ & ((\RIDEX|output_read1\(20) & (!\ALU|Add0~61\)) # (!\RIDEX|output_read1\(20) 
-- & ((\ALU|Add0~61\) # (GND)))))
-- \ALU|Add0~64\ = CARRY((\ALU|Add0~62_combout\ & (!\RIDEX|output_read1\(20) & !\ALU|Add0~61\)) # (!\ALU|Add0~62_combout\ & ((!\ALU|Add0~61\) # (!\RIDEX|output_read1\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~62_combout\,
	datab => \RIDEX|output_read1\(20),
	datad => VCC,
	cin => \ALU|Add0~61\,
	combout => \ALU|Add0~63_combout\,
	cout => \ALU|Add0~64\);

\ALU|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux11~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(20) & (\RIDEX|output_read1\(20) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(20),
	datac => \RIDEX|output_read1\(20),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux11~0_combout\);

\REXMEM|output_result[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[20]~20_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux11~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~63_combout\,
	datab => \ALU|Mux11~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[20]~20_combout\);

\ALU|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux11~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(20)) # ((\RIDEX|output_read2\(20) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(20),
	datab => \RIDEX|output_read2\(20),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux11~1_combout\);

\REXMEM|output_result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[20]~20_combout\,
	asdata => \ALU|Mux11~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(20));

\RMEMWB|output_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(20));

\regBd|reg1|reg|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(21),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(21));

\regBd|reg0|reg|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(21),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(21));

\regBd|readData2[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[21]~21_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(21))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(21),
	datab => \regBd|reg0|reg|Q\(21),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[21]~21_combout\);

\RIDEX|output_read2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(21));

\ALU|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~65_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(21)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(21),
	combout => \ALU|Add0~65_combout\);

\regBd|readData1[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[21]~21_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(21))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(21),
	datab => \regBd|reg0|reg|Q\(21),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[21]~21_combout\);

\RIDEX|output_read1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(21));

\ALU|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~66_combout\ = ((\ALU|Add0~65_combout\ $ (\RIDEX|output_read1\(21) $ (!\ALU|Add0~64\)))) # (GND)
-- \ALU|Add0~67\ = CARRY((\ALU|Add0~65_combout\ & ((\RIDEX|output_read1\(21)) # (!\ALU|Add0~64\))) # (!\ALU|Add0~65_combout\ & (\RIDEX|output_read1\(21) & !\ALU|Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~65_combout\,
	datab => \RIDEX|output_read1\(21),
	datad => VCC,
	cin => \ALU|Add0~64\,
	combout => \ALU|Add0~66_combout\,
	cout => \ALU|Add0~67\);

\ALU|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux10~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(21) & (\RIDEX|output_read1\(21) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(21),
	datac => \RIDEX|output_read1\(21),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux10~0_combout\);

\REXMEM|output_result[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[21]~21_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux10~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~66_combout\,
	datab => \ALU|Mux10~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[21]~21_combout\);

\ALU|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux10~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(21)) # ((\RIDEX|output_read2\(21) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(21),
	datab => \RIDEX|output_read2\(21),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux10~1_combout\);

\REXMEM|output_result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[21]~21_combout\,
	asdata => \ALU|Mux10~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(21));

\RMEMWB|output_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(21));

\regBd|reg1|reg|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(22),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(22));

\regBd|reg0|reg|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(22),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(22));

\regBd|readData2[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[22]~22_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(22))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(22),
	datab => \regBd|reg0|reg|Q\(22),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[22]~22_combout\);

\RIDEX|output_read2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(22));

\ALU|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~68_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(22)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(22),
	combout => \ALU|Add0~68_combout\);

\regBd|readData1[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[22]~22_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(22))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(22),
	datab => \regBd|reg0|reg|Q\(22),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[22]~22_combout\);

\RIDEX|output_read1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(22));

\ALU|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~69_combout\ = (\ALU|Add0~68_combout\ & ((\RIDEX|output_read1\(22) & (\ALU|Add0~67\ & VCC)) # (!\RIDEX|output_read1\(22) & (!\ALU|Add0~67\)))) # (!\ALU|Add0~68_combout\ & ((\RIDEX|output_read1\(22) & (!\ALU|Add0~67\)) # (!\RIDEX|output_read1\(22) 
-- & ((\ALU|Add0~67\) # (GND)))))
-- \ALU|Add0~70\ = CARRY((\ALU|Add0~68_combout\ & (!\RIDEX|output_read1\(22) & !\ALU|Add0~67\)) # (!\ALU|Add0~68_combout\ & ((!\ALU|Add0~67\) # (!\RIDEX|output_read1\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~68_combout\,
	datab => \RIDEX|output_read1\(22),
	datad => VCC,
	cin => \ALU|Add0~67\,
	combout => \ALU|Add0~69_combout\,
	cout => \ALU|Add0~70\);

\ALU|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux9~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(22) & (\RIDEX|output_read1\(22) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(22),
	datac => \RIDEX|output_read1\(22),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux9~0_combout\);

\REXMEM|output_result[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[22]~22_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux9~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~69_combout\,
	datab => \ALU|Mux9~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[22]~22_combout\);

\ALU|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux9~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(22)) # ((\RIDEX|output_read2\(22) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(22),
	datab => \RIDEX|output_read2\(22),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux9~1_combout\);

\REXMEM|output_result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[22]~22_combout\,
	asdata => \ALU|Mux9~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(22));

\RMEMWB|output_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(22));

\regBd|reg1|reg|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(23),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(23));

\regBd|reg0|reg|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(23),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(23));

\regBd|readData2[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[23]~23_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(23))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(23),
	datab => \regBd|reg0|reg|Q\(23),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[23]~23_combout\);

\RIDEX|output_read2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(23));

\ALU|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~71_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(23)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(23),
	combout => \ALU|Add0~71_combout\);

\regBd|readData1[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[23]~23_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(23))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(23),
	datab => \regBd|reg0|reg|Q\(23),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[23]~23_combout\);

\RIDEX|output_read1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(23));

\ALU|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~72_combout\ = ((\ALU|Add0~71_combout\ $ (\RIDEX|output_read1\(23) $ (!\ALU|Add0~70\)))) # (GND)
-- \ALU|Add0~73\ = CARRY((\ALU|Add0~71_combout\ & ((\RIDEX|output_read1\(23)) # (!\ALU|Add0~70\))) # (!\ALU|Add0~71_combout\ & (\RIDEX|output_read1\(23) & !\ALU|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~71_combout\,
	datab => \RIDEX|output_read1\(23),
	datad => VCC,
	cin => \ALU|Add0~70\,
	combout => \ALU|Add0~72_combout\,
	cout => \ALU|Add0~73\);

\ALU|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux8~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(23) & (\RIDEX|output_read1\(23) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(23),
	datac => \RIDEX|output_read1\(23),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux8~0_combout\);

\REXMEM|output_result[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[23]~23_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux8~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~72_combout\,
	datab => \ALU|Mux8~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[23]~23_combout\);

\ALU|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux8~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(23)) # ((\RIDEX|output_read2\(23) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(23),
	datab => \RIDEX|output_read2\(23),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux8~1_combout\);

\REXMEM|output_result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[23]~23_combout\,
	asdata => \ALU|Mux8~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(23));

\RMEMWB|output_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(23));

\regBd|reg1|reg|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(24),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(24));

\regBd|reg0|reg|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(24),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(24));

\regBd|readData2[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[24]~24_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(24))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(24),
	datab => \regBd|reg0|reg|Q\(24),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[24]~24_combout\);

\RIDEX|output_read2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(24));

\ALU|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~74_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(24)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(24),
	combout => \ALU|Add0~74_combout\);

\regBd|readData1[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[24]~24_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(24))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(24),
	datab => \regBd|reg0|reg|Q\(24),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[24]~24_combout\);

\RIDEX|output_read1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(24));

\ALU|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~75_combout\ = (\ALU|Add0~74_combout\ & ((\RIDEX|output_read1\(24) & (\ALU|Add0~73\ & VCC)) # (!\RIDEX|output_read1\(24) & (!\ALU|Add0~73\)))) # (!\ALU|Add0~74_combout\ & ((\RIDEX|output_read1\(24) & (!\ALU|Add0~73\)) # (!\RIDEX|output_read1\(24) 
-- & ((\ALU|Add0~73\) # (GND)))))
-- \ALU|Add0~76\ = CARRY((\ALU|Add0~74_combout\ & (!\RIDEX|output_read1\(24) & !\ALU|Add0~73\)) # (!\ALU|Add0~74_combout\ & ((!\ALU|Add0~73\) # (!\RIDEX|output_read1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~74_combout\,
	datab => \RIDEX|output_read1\(24),
	datad => VCC,
	cin => \ALU|Add0~73\,
	combout => \ALU|Add0~75_combout\,
	cout => \ALU|Add0~76\);

\ALU|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux7~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(24) & (\RIDEX|output_read1\(24) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(24),
	datac => \RIDEX|output_read1\(24),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux7~0_combout\);

\REXMEM|output_result[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[24]~24_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux7~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~75_combout\,
	datab => \ALU|Mux7~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[24]~24_combout\);

\ALU|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux7~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(24)) # ((\RIDEX|output_read2\(24) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(24),
	datab => \RIDEX|output_read2\(24),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux7~1_combout\);

\REXMEM|output_result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[24]~24_combout\,
	asdata => \ALU|Mux7~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(24));

\RMEMWB|output_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(24));

\regBd|reg1|reg|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(25),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(25));

\regBd|reg0|reg|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(25),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(25));

\regBd|readData2[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[25]~25_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(25))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(25),
	datab => \regBd|reg0|reg|Q\(25),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[25]~25_combout\);

\RIDEX|output_read2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(25));

\ALU|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~77_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(25)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(25),
	combout => \ALU|Add0~77_combout\);

\regBd|readData1[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[25]~25_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(25))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(25),
	datab => \regBd|reg0|reg|Q\(25),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[25]~25_combout\);

\RIDEX|output_read1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(25));

\ALU|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~78_combout\ = ((\ALU|Add0~77_combout\ $ (\RIDEX|output_read1\(25) $ (!\ALU|Add0~76\)))) # (GND)
-- \ALU|Add0~79\ = CARRY((\ALU|Add0~77_combout\ & ((\RIDEX|output_read1\(25)) # (!\ALU|Add0~76\))) # (!\ALU|Add0~77_combout\ & (\RIDEX|output_read1\(25) & !\ALU|Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~77_combout\,
	datab => \RIDEX|output_read1\(25),
	datad => VCC,
	cin => \ALU|Add0~76\,
	combout => \ALU|Add0~78_combout\,
	cout => \ALU|Add0~79\);

\ALU|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux6~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(25) & (\RIDEX|output_read1\(25) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(25),
	datac => \RIDEX|output_read1\(25),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux6~0_combout\);

\REXMEM|output_result[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[25]~25_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux6~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~78_combout\,
	datab => \ALU|Mux6~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[25]~25_combout\);

\ALU|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux6~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(25)) # ((\RIDEX|output_read2\(25) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(25),
	datab => \RIDEX|output_read2\(25),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux6~1_combout\);

\REXMEM|output_result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[25]~25_combout\,
	asdata => \ALU|Mux6~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(25));

\RMEMWB|output_addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(25));

\regBd|reg1|reg|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(26),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(26));

\regBd|reg0|reg|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(26),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(26));

\regBd|readData2[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[26]~26_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(26))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(26),
	datab => \regBd|reg0|reg|Q\(26),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[26]~26_combout\);

\RIDEX|output_read2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(26));

\ALU|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~80_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(26)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(26),
	combout => \ALU|Add0~80_combout\);

\regBd|readData1[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[26]~26_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(26))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(26),
	datab => \regBd|reg0|reg|Q\(26),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[26]~26_combout\);

\RIDEX|output_read1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(26));

\ALU|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~81_combout\ = (\ALU|Add0~80_combout\ & ((\RIDEX|output_read1\(26) & (\ALU|Add0~79\ & VCC)) # (!\RIDEX|output_read1\(26) & (!\ALU|Add0~79\)))) # (!\ALU|Add0~80_combout\ & ((\RIDEX|output_read1\(26) & (!\ALU|Add0~79\)) # (!\RIDEX|output_read1\(26) 
-- & ((\ALU|Add0~79\) # (GND)))))
-- \ALU|Add0~82\ = CARRY((\ALU|Add0~80_combout\ & (!\RIDEX|output_read1\(26) & !\ALU|Add0~79\)) # (!\ALU|Add0~80_combout\ & ((!\ALU|Add0~79\) # (!\RIDEX|output_read1\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~80_combout\,
	datab => \RIDEX|output_read1\(26),
	datad => VCC,
	cin => \ALU|Add0~79\,
	combout => \ALU|Add0~81_combout\,
	cout => \ALU|Add0~82\);

\ALU|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux5~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(26) & (\RIDEX|output_read1\(26) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(26),
	datac => \RIDEX|output_read1\(26),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux5~0_combout\);

\REXMEM|output_result[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[26]~26_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux5~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~81_combout\,
	datab => \ALU|Mux5~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[26]~26_combout\);

\ALU|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux5~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(26)) # ((\RIDEX|output_read2\(26) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(26),
	datab => \RIDEX|output_read2\(26),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux5~1_combout\);

\REXMEM|output_result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[26]~26_combout\,
	asdata => \ALU|Mux5~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(26));

\RMEMWB|output_addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(26));

\regBd|reg1|reg|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(27),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(27));

\regBd|reg0|reg|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(27),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(27));

\regBd|readData2[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[27]~27_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(27))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(27),
	datab => \regBd|reg0|reg|Q\(27),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[27]~27_combout\);

\RIDEX|output_read2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(27));

\ALU|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~83_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(27)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(27),
	combout => \ALU|Add0~83_combout\);

\regBd|readData1[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[27]~27_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(27))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(27),
	datab => \regBd|reg0|reg|Q\(27),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[27]~27_combout\);

\RIDEX|output_read1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(27));

\ALU|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~84_combout\ = ((\ALU|Add0~83_combout\ $ (\RIDEX|output_read1\(27) $ (!\ALU|Add0~82\)))) # (GND)
-- \ALU|Add0~85\ = CARRY((\ALU|Add0~83_combout\ & ((\RIDEX|output_read1\(27)) # (!\ALU|Add0~82\))) # (!\ALU|Add0~83_combout\ & (\RIDEX|output_read1\(27) & !\ALU|Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~83_combout\,
	datab => \RIDEX|output_read1\(27),
	datad => VCC,
	cin => \ALU|Add0~82\,
	combout => \ALU|Add0~84_combout\,
	cout => \ALU|Add0~85\);

\ALU|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux4~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(27) & (\RIDEX|output_read1\(27) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(27),
	datac => \RIDEX|output_read1\(27),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux4~0_combout\);

\REXMEM|output_result[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[27]~27_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux4~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~84_combout\,
	datab => \ALU|Mux4~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[27]~27_combout\);

\ALU|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux4~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(27)) # ((\RIDEX|output_read2\(27) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(27),
	datab => \RIDEX|output_read2\(27),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux4~1_combout\);

\REXMEM|output_result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[27]~27_combout\,
	asdata => \ALU|Mux4~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(27));

\RMEMWB|output_addr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(27));

\regBd|reg1|reg|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(28),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(28));

\regBd|reg0|reg|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(28),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(28));

\regBd|readData2[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[28]~28_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(28))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(28),
	datab => \regBd|reg0|reg|Q\(28),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[28]~28_combout\);

\RIDEX|output_read2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(28));

\ALU|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~86_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(28)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(28),
	combout => \ALU|Add0~86_combout\);

\regBd|readData1[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[28]~28_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(28))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(28),
	datab => \regBd|reg0|reg|Q\(28),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[28]~28_combout\);

\RIDEX|output_read1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(28));

\ALU|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~87_combout\ = (\ALU|Add0~86_combout\ & ((\RIDEX|output_read1\(28) & (\ALU|Add0~85\ & VCC)) # (!\RIDEX|output_read1\(28) & (!\ALU|Add0~85\)))) # (!\ALU|Add0~86_combout\ & ((\RIDEX|output_read1\(28) & (!\ALU|Add0~85\)) # (!\RIDEX|output_read1\(28) 
-- & ((\ALU|Add0~85\) # (GND)))))
-- \ALU|Add0~88\ = CARRY((\ALU|Add0~86_combout\ & (!\RIDEX|output_read1\(28) & !\ALU|Add0~85\)) # (!\ALU|Add0~86_combout\ & ((!\ALU|Add0~85\) # (!\RIDEX|output_read1\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~86_combout\,
	datab => \RIDEX|output_read1\(28),
	datad => VCC,
	cin => \ALU|Add0~85\,
	combout => \ALU|Add0~87_combout\,
	cout => \ALU|Add0~88\);

\ALU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(28) & (\RIDEX|output_read1\(28) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(28),
	datac => \RIDEX|output_read1\(28),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux3~0_combout\);

\REXMEM|output_result[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[28]~28_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux3~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~87_combout\,
	datab => \ALU|Mux3~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[28]~28_combout\);

\ALU|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(28)) # ((\RIDEX|output_read2\(28) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(28),
	datab => \RIDEX|output_read2\(28),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux3~1_combout\);

\REXMEM|output_result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[28]~28_combout\,
	asdata => \ALU|Mux3~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(28));

\RMEMWB|output_addr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(28));

\regBd|reg1|reg|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(29),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(29));

\regBd|reg0|reg|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(29),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(29));

\regBd|readData2[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[29]~29_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(29))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(29),
	datab => \regBd|reg0|reg|Q\(29),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[29]~29_combout\);

\RIDEX|output_read2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(29));

\ALU|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~89_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(29)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(29),
	combout => \ALU|Add0~89_combout\);

\regBd|readData1[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[29]~29_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(29))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(29),
	datab => \regBd|reg0|reg|Q\(29),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[29]~29_combout\);

\RIDEX|output_read1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(29));

\ALU|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~90_combout\ = ((\ALU|Add0~89_combout\ $ (\RIDEX|output_read1\(29) $ (!\ALU|Add0~88\)))) # (GND)
-- \ALU|Add0~91\ = CARRY((\ALU|Add0~89_combout\ & ((\RIDEX|output_read1\(29)) # (!\ALU|Add0~88\))) # (!\ALU|Add0~89_combout\ & (\RIDEX|output_read1\(29) & !\ALU|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~89_combout\,
	datab => \RIDEX|output_read1\(29),
	datad => VCC,
	cin => \ALU|Add0~88\,
	combout => \ALU|Add0~90_combout\,
	cout => \ALU|Add0~91\);

\ALU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(29) & (\RIDEX|output_read1\(29) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(29),
	datac => \RIDEX|output_read1\(29),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux2~0_combout\);

\REXMEM|output_result[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[29]~29_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux2~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~90_combout\,
	datab => \ALU|Mux2~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[29]~29_combout\);

\ALU|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(29)) # ((\RIDEX|output_read2\(29) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(29),
	datab => \RIDEX|output_read2\(29),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux2~1_combout\);

\REXMEM|output_result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[29]~29_combout\,
	asdata => \ALU|Mux2~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(29));

\RMEMWB|output_addr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(29));

\regBd|reg1|reg|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(30),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(30));

\regBd|reg0|reg|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(30),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(30));

\regBd|readData2[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[30]~30_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(30))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(30),
	datab => \regBd|reg0|reg|Q\(30),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[30]~30_combout\);

\RIDEX|output_read2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(30));

\ALU|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~92_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(30)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(30),
	combout => \ALU|Add0~92_combout\);

\regBd|readData1[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[30]~30_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(30))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(30),
	datab => \regBd|reg0|reg|Q\(30),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[30]~30_combout\);

\RIDEX|output_read1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(30));

\ALU|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~93_combout\ = (\ALU|Add0~92_combout\ & ((\RIDEX|output_read1\(30) & (\ALU|Add0~91\ & VCC)) # (!\RIDEX|output_read1\(30) & (!\ALU|Add0~91\)))) # (!\ALU|Add0~92_combout\ & ((\RIDEX|output_read1\(30) & (!\ALU|Add0~91\)) # (!\RIDEX|output_read1\(30) 
-- & ((\ALU|Add0~91\) # (GND)))))
-- \ALU|Add0~94\ = CARRY((\ALU|Add0~92_combout\ & (!\RIDEX|output_read1\(30) & !\ALU|Add0~91\)) # (!\ALU|Add0~92_combout\ & ((!\ALU|Add0~91\) # (!\RIDEX|output_read1\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~92_combout\,
	datab => \RIDEX|output_read1\(30),
	datad => VCC,
	cin => \ALU|Add0~91\,
	combout => \ALU|Add0~93_combout\,
	cout => \ALU|Add0~94\);

\ALU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(30) & (\RIDEX|output_read1\(30) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(30),
	datac => \RIDEX|output_read1\(30),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux1~0_combout\);

\REXMEM|output_result[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[30]~30_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux1~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~93_combout\,
	datab => \ALU|Mux1~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[30]~30_combout\);

\ALU|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(30)) # ((\RIDEX|output_read2\(30) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(30),
	datab => \RIDEX|output_read2\(30),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux1~1_combout\);

\REXMEM|output_result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[30]~30_combout\,
	asdata => \ALU|Mux1~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(30));

\RMEMWB|output_addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(30));

\regBd|reg1|reg|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(31),
	ena => \regBd|Rin1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg1|reg|Q\(31));

\regBd|reg0|reg|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~input_o\,
	d => \RMEMWB|output_addr\(31),
	ena => \regBd|Rin1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regBd|reg0|reg|Q\(31));

\regBd|readData2[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData2[31]~31_combout\ = (\RIFIF|out_instr\(15) & (\regBd|reg1|reg|Q\(31))) # (!\RIFIF|out_instr\(15) & ((\regBd|reg0|reg|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(31),
	datab => \regBd|reg0|reg|Q\(31),
	datad => \RIFIF|out_instr\(15),
	combout => \regBd|readData2[31]~31_combout\);

\RIDEX|output_read2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read2\(31));

\ALU|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~95_combout\ = (\RIDEX|output_imed\(1) & (\RIDEX|output_instruction_EX\(0) $ (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(31)))))) # (!\RIDEX|output_imed\(1) & (((!\RIDEX|output_instruction_EX\(4) & \RIDEX|output_read2\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_imed\(1),
	datab => \RIDEX|output_instruction_EX\(0),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \RIDEX|output_read2\(31),
	combout => \ALU|Add0~95_combout\);

\regBd|readData1[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regBd|readData1[31]~31_combout\ = (\RIFIF|out_instr\(30) & (\regBd|reg1|reg|Q\(31))) # (!\RIFIF|out_instr\(30) & ((\regBd|reg0|reg|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regBd|reg1|reg|Q\(31),
	datab => \regBd|reg0|reg|Q\(31),
	datad => \RIFIF|out_instr\(30),
	combout => \regBd|readData1[31]~31_combout\);

\RIDEX|output_read1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \regBd|readData1[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RIDEX|output_read1\(31));

\ALU|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~96_combout\ = \ALU|Add0~95_combout\ $ (\RIDEX|output_read1\(31) $ (!\ALU|Add0~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~95_combout\,
	datab => \RIDEX|output_read1\(31),
	cin => \ALU|Add0~94\,
	combout => \ALU|Add0~96_combout\);

\ALU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~0_combout\ = (\ULACONTROL|Mux4~0_combout\ & (\RIDEX|output_read2\(31) & (\RIDEX|output_read1\(31) & !\RIDEX|output_instruction_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULACONTROL|Mux4~0_combout\,
	datab => \RIDEX|output_read2\(31),
	datac => \RIDEX|output_read1\(31),
	datad => \RIDEX|output_instruction_EX\(4),
	combout => \ALU|Mux0~0_combout\);

\REXMEM|output_result[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \REXMEM|output_result[31]~31_combout\ = (\ALU|Mux13~0_combout\ & ((\ALU|Mux0~0_combout\))) # (!\ALU|Mux13~0_combout\ & (\ALU|Add0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~96_combout\,
	datab => \ALU|Mux0~0_combout\,
	datad => \ALU|Mux13~0_combout\,
	combout => \REXMEM|output_result[31]~31_combout\);

\ALU|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~1_combout\ = (!\ALU|Mux13~1_combout\ & ((\RIDEX|output_read1\(31)) # ((\RIDEX|output_read2\(31) & !\RIDEX|output_instruction_EX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RIDEX|output_read1\(31),
	datab => \RIDEX|output_read2\(31),
	datac => \RIDEX|output_instruction_EX\(4),
	datad => \ALU|Mux13~1_combout\,
	combout => \ALU|Mux0~1_combout\);

\REXMEM|output_result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result[31]~31_combout\,
	asdata => \ALU|Mux0~1_combout\,
	sload => \ULACONTROL|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REXMEM|output_result\(31));

\RMEMWB|output_addr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \REXMEM|output_result\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RMEMWB|output_addr\(31));

ww_Debugdata(0) <= \Debugdata[0]~output_o\;

ww_Debugdata(1) <= \Debugdata[1]~output_o\;

ww_Debugdata(2) <= \Debugdata[2]~output_o\;

ww_Debugdata(3) <= \Debugdata[3]~output_o\;

ww_Debugdata(4) <= \Debugdata[4]~output_o\;

ww_Debugdata(5) <= \Debugdata[5]~output_o\;

ww_Debugdata(6) <= \Debugdata[6]~output_o\;

ww_Debugdata(7) <= \Debugdata[7]~output_o\;

ww_Debugdata(8) <= \Debugdata[8]~output_o\;

ww_Debugdata(9) <= \Debugdata[9]~output_o\;

ww_Debugdata(10) <= \Debugdata[10]~output_o\;

ww_Debugdata(11) <= \Debugdata[11]~output_o\;

ww_Debugdata(12) <= \Debugdata[12]~output_o\;

ww_Debugdata(13) <= \Debugdata[13]~output_o\;

ww_Debugdata(14) <= \Debugdata[14]~output_o\;

ww_Debugdata(15) <= \Debugdata[15]~output_o\;

ww_Debugdata(16) <= \Debugdata[16]~output_o\;

ww_Debugdata(17) <= \Debugdata[17]~output_o\;

ww_Debugdata(18) <= \Debugdata[18]~output_o\;

ww_Debugdata(19) <= \Debugdata[19]~output_o\;

ww_Debugdata(20) <= \Debugdata[20]~output_o\;

ww_Debugdata(21) <= \Debugdata[21]~output_o\;

ww_Debugdata(22) <= \Debugdata[22]~output_o\;

ww_Debugdata(23) <= \Debugdata[23]~output_o\;

ww_Debugdata(24) <= \Debugdata[24]~output_o\;

ww_Debugdata(25) <= \Debugdata[25]~output_o\;

ww_Debugdata(26) <= \Debugdata[26]~output_o\;

ww_Debugdata(27) <= \Debugdata[27]~output_o\;

ww_Debugdata(28) <= \Debugdata[28]~output_o\;

ww_Debugdata(29) <= \Debugdata[29]~output_o\;

ww_Debugdata(30) <= \Debugdata[30]~output_o\;

ww_Debugdata(31) <= \Debugdata[31]~output_o\;

ww_DEBUGREGWRITE <= \DEBUGREGWRITE~output_o\;

ww_Debugaddress(0) <= \Debugaddress[0]~output_o\;

ww_Debugaddress(1) <= \Debugaddress[1]~output_o\;

ww_Debugaddress(2) <= \Debugaddress[2]~output_o\;

ww_Debugaddress(3) <= \Debugaddress[3]~output_o\;

ww_Debugaddress(4) <= \Debugaddress[4]~output_o\;

ww_DEBUGFUNC1(0) <= \DEBUGFUNC1[0]~output_o\;

ww_DEBUGFUNC1(1) <= \DEBUGFUNC1[1]~output_o\;

ww_DEBUGFUNC1(2) <= \DEBUGFUNC1[2]~output_o\;

ww_DEBUGFUNC1(3) <= \DEBUGFUNC1[3]~output_o\;

ww_DEBUGFUNC1(4) <= \DEBUGFUNC1[4]~output_o\;

ww_DEBUGFUNC1(5) <= \DEBUGFUNC1[5]~output_o\;

ww_DEBUGFUNC2(0) <= \DEBUGFUNC2[0]~output_o\;

ww_DEBUGFUNC2(1) <= \DEBUGFUNC2[1]~output_o\;

ww_DEBUGFUNC2(2) <= \DEBUGFUNC2[2]~output_o\;

ww_DEBUGFUNC2(3) <= \DEBUGFUNC2[3]~output_o\;

ww_DEBUGFUNC2(4) <= \DEBUGFUNC2[4]~output_o\;

ww_DEBUGFUNC2(5) <= \DEBUGFUNC2[5]~output_o\;

ww_ALUCTRLDEBUG(0) <= \ALUCTRLDEBUG[0]~output_o\;

ww_ALUCTRLDEBUG(1) <= \ALUCTRLDEBUG[1]~output_o\;

ww_ALUCTRLDEBUG(2) <= \ALUCTRLDEBUG[2]~output_o\;
END structure;


