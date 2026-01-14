-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/12/2025 16:16:52"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	OPCODE : IN std_logic_vector(2 DOWNTO 0);
	OPERAND1 : IN std_logic_vector(7 DOWNTO 0);
	OPERAND2 : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	OUTP : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- OPERAND1[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[7]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OPCODE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OPERAND1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OPERAND2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_OUTP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \OPERAND1[3]~input_o\ : std_logic;
SIGNAL \OPERAND1[4]~input_o\ : std_logic;
SIGNAL \OPERAND1[5]~input_o\ : std_logic;
SIGNAL \OPERAND1[6]~input_o\ : std_logic;
SIGNAL \OPERAND1[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OUTP[0]~output_o\ : std_logic;
SIGNAL \OUTP[1]~output_o\ : std_logic;
SIGNAL \OUTP[2]~output_o\ : std_logic;
SIGNAL \OUTP[3]~output_o\ : std_logic;
SIGNAL \OUTP[4]~output_o\ : std_logic;
SIGNAL \OUTP[5]~output_o\ : std_logic;
SIGNAL \OUTP[6]~output_o\ : std_logic;
SIGNAL \OUTP[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \U_AC|U_FSM|NS~0_combout\ : std_logic;
SIGNAL \U_AC|U_FSM|CS~q\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \U_AC|U_FSM|comb~0_combout\ : std_logic;
SIGNAL \U_AC|U_FSM|ENABLE~combout\ : std_logic;
SIGNAL \OPERAND2[2]~input_o\ : std_logic;
SIGNAL \OPERAND1[2]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX_ADDR|Selector0~0_combout\ : std_logic;
SIGNAL \OPERAND2[1]~input_o\ : std_logic;
SIGNAL \OPERAND1[1]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX_ADDR|Selector1~0_combout\ : std_logic;
SIGNAL \OPERAND2[0]~input_o\ : std_logic;
SIGNAL \OPERAND1[0]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX_ADDR|Selector2~0_combout\ : std_logic;
SIGNAL \U_REG|P3|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P6|data~0_combout\ : std_logic;
SIGNAL \U_REG|P6|write_enable~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~3_combout\ : std_logic;
SIGNAL \U_REG|P3|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~4_combout\ : std_logic;
SIGNAL \U_REG|P4|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P4|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P2|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P4|data~0_combout\ : std_logic;
SIGNAL \U_REG|P2|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~2_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P5|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P5|data~0_combout\ : std_logic;
SIGNAL \U_REG|P7|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P7|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~1_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P1|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P1|data~0_combout\ : std_logic;
SIGNAL \U_REG|P0|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P0|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~5_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU2|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~9_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~8_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~7_combout\ : std_logic;
SIGNAL \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~6_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~10_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~11_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~2_cout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~3_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU1|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU2|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFFALU3|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \U_REG|P6|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~14_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P4|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~12_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~13_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~15_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~16_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~17_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~5_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~4\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~3_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~4_combout\ : std_logic;
SIGNAL \U_REG|P6|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~21_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~19_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~18_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~20_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~22_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~23_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~7\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~9_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~25_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P0|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~24_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~26_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P4|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~27_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~28_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~29_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~11_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~10\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~12_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~14_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~13\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~15_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~34_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~33_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~31_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P0|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~30_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~32_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~35_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~38_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~37_combout\ : std_logic;
SIGNAL \U_REG|P6|my_storage_element|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~39_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~36_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~40_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~41_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~17_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~16\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~18_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~44_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P0|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~42_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P4|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~43_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~45_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~46_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~47_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~20_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~19\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~21_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~23_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~22\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~24_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux6~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux5~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux4~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux3~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux2~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux1~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux0~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux13~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux12~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux11~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux10~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux9~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux8~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux7~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux20~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux18~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|Mux15~0_combout\ : std_logic;
SIGNAL \U_AC|U_DFFALU3|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_DFF2|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P0|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF_EN1|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF_EN2|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF3|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_DFF_ALU2|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_REG|P1|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P5|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P7|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P2|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P4|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P3|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P6|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF_ALU1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_DFF1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_FSM|ALT_INV_ENABLE~combout\ : std_logic;
SIGNAL \U_DISPLAY|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_DISPLAY|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_DISPLAY|ALT_INV_Mux7~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OPCODE <= OPCODE;
ww_OPERAND1 <= OPERAND1;
ww_OPERAND2 <= OPERAND2;
ww_CLK <= CLK;
ww_RST <= RST;
OUTP <= ww_OUTP;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\U_AC|U_FSM|ALT_INV_ENABLE~combout\ <= NOT \U_AC|U_FSM|ENABLE~combout\;
\U_DISPLAY|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\U_DISPLAY|ALT_INV_Mux0~0_combout\ <= NOT \U_DISPLAY|Mux0~0_combout\;
\U_DISPLAY|ALT_INV_Mux7~0_combout\ <= NOT \U_DISPLAY|Mux7~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\OUTP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\OUTP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \OUTP[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\OUTP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\OUTP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\OUTP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\OUTP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\OUTP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\OUTP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \OUTP[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\OPCODE[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(1),
	o => \OPCODE[1]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X52_Y53_N21
\U_AC|U_DFF1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPCODE[1]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(1));

-- Location: FF_X52_Y53_N7
\U_AC|U_DFF_ALU1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF1|internal_Q\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU1|internal_Q\(1));

-- Location: FF_X52_Y53_N9
\U_AC|U_DFF_ALU2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF_ALU1|internal_Q\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU2|internal_Q\(1));

-- Location: FF_X52_Y53_N15
\U_AC|U_DFFALU3|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF_ALU2|internal_Q\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU3|internal_Q\(1));

-- Location: LCCOMB_X49_Y52_N8
\U_REG|P3|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[1]~5_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: IOIBUF_X54_Y54_N29
\OPCODE[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(2),
	o => \OPCODE[2]~input_o\);

-- Location: LCCOMB_X51_Y51_N16
\U_AC|U_FSM|NS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_FSM|NS~0_combout\ = (!\U_AC|U_FSM|CS~q\ & ((\OPCODE[2]~input_o\) # (\OPCODE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[2]~input_o\,
	datab => \U_AC|U_FSM|CS~q\,
	datad => \OPCODE[1]~input_o\,
	combout => \U_AC|U_FSM|NS~0_combout\);

-- Location: FF_X52_Y51_N17
\U_AC|U_FSM|CS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_FSM|NS~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_FSM|CS~q\);

-- Location: IOIBUF_X51_Y54_N22
\OPCODE[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(0),
	o => \OPCODE[0]~input_o\);

-- Location: LCCOMB_X52_Y51_N2
\U_AC|U_FSM|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_FSM|comb~0_combout\ = (!\OPCODE[1]~input_o\ & (!\OPCODE[2]~input_o\ & (!\OPCODE[0]~input_o\ & !\U_AC|U_FSM|CS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \OPCODE[2]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \U_AC|U_FSM|CS~q\,
	combout => \U_AC|U_FSM|comb~0_combout\);

-- Location: LCCOMB_X50_Y51_N10
\U_AC|U_FSM|ENABLE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_FSM|ENABLE~combout\ = (!\U_AC|U_FSM|comb~0_combout\ & ((\U_AC|U_FSM|CS~q\) # (\U_AC|U_FSM|ENABLE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|CS~q\,
	datac => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|U_FSM|ENABLE~combout\,
	combout => \U_AC|U_FSM|ENABLE~combout\);

-- Location: IOIBUF_X69_Y54_N1
\OPERAND2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND2(2),
	o => \OPERAND2[2]~input_o\);

-- Location: FF_X52_Y51_N15
\U_AC|U_DFF3|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND2[2]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF3|internal_Q\(2));

-- Location: IOIBUF_X54_Y54_N15
\OPERAND1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(2),
	o => \OPERAND1[2]~input_o\);

-- Location: FF_X52_Y51_N21
\U_AC|U_DFF2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[2]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(2));

-- Location: LCCOMB_X52_Y51_N14
\U_AC|U_MUX_ADDR|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX_ADDR|Selector0~0_combout\ = (\U_AC|U_FSM|ENABLE~combout\ & ((\U_AC|U_DFF2|internal_Q\(2)))) # (!\U_AC|U_FSM|ENABLE~combout\ & (\U_AC|U_DFF3|internal_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|ENABLE~combout\,
	datac => \U_AC|U_DFF3|internal_Q\(2),
	datad => \U_AC|U_DFF2|internal_Q\(2),
	combout => \U_AC|U_MUX_ADDR|Selector0~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\OPERAND2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND2(1),
	o => \OPERAND2[1]~input_o\);

-- Location: FF_X52_Y51_N23
\U_AC|U_DFF3|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND2[1]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF3|internal_Q\(1));

-- Location: IOIBUF_X49_Y54_N1
\OPERAND1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(1),
	o => \OPERAND1[1]~input_o\);

-- Location: FF_X52_Y51_N25
\U_AC|U_DFF2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[1]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(1));

-- Location: LCCOMB_X52_Y51_N22
\U_AC|U_MUX_ADDR|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX_ADDR|Selector1~0_combout\ = (\U_AC|U_FSM|ENABLE~combout\ & ((\U_AC|U_DFF2|internal_Q\(1)))) # (!\U_AC|U_FSM|ENABLE~combout\ & (\U_AC|U_DFF3|internal_Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|ENABLE~combout\,
	datac => \U_AC|U_DFF3|internal_Q\(1),
	datad => \U_AC|U_DFF2|internal_Q\(1),
	combout => \U_AC|U_MUX_ADDR|Selector1~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\OPERAND2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND2(0),
	o => \OPERAND2[0]~input_o\);

-- Location: FF_X52_Y51_N31
\U_AC|U_DFF3|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND2[0]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF3|internal_Q\(0));

-- Location: IOIBUF_X54_Y54_N22
\OPERAND1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(0),
	o => \OPERAND1[0]~input_o\);

-- Location: FF_X52_Y51_N5
\U_AC|U_DFF2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[0]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(0));

-- Location: LCCOMB_X52_Y51_N30
\U_AC|U_MUX_ADDR|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX_ADDR|Selector2~0_combout\ = (\U_AC|U_FSM|ENABLE~combout\ & ((\U_AC|U_DFF2|internal_Q\(0)))) # (!\U_AC|U_FSM|ENABLE~combout\ & (\U_AC|U_DFF3|internal_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|ENABLE~combout\,
	datac => \U_AC|U_DFF3|internal_Q\(0),
	datad => \U_AC|U_DFF2|internal_Q\(0),
	combout => \U_AC|U_MUX_ADDR|Selector2~0_combout\);

-- Location: LCCOMB_X51_Y52_N6
\U_REG|P3|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|write_enable~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_FSM|comb~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & \U_AC|U_MUX_ADDR|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	combout => \U_REG|P3|write_enable~0_combout\);

-- Location: FF_X49_Y52_N9
\U_REG|P3|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X52_Y51_N6
\U_REG|P6|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P6|data~0_combout\);

-- Location: LCCOMB_X52_Y52_N14
\U_REG|P6|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|write_enable~0_combout\ = (\U_AC|U_FSM|comb~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & !\U_AC|U_MUX_ADDR|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	combout => \U_REG|P6|write_enable~0_combout\);

-- Location: FF_X51_Y52_N23
\U_REG|P6|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[1]~5_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X52_Y51_N24
\U_AC|DATA[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~3_combout\ = (\U_REG|P6|data~0_combout\ & (\U_REG|P6|my_storage_element|internal_Q\(1) & ((\U_AC|U_DFF2|internal_Q\(1)) # (!\U_AC|U_FSM|comb~0_combout\)))) # (!\U_REG|P6|data~0_combout\ & (((\U_AC|U_DFF2|internal_Q\(1))) # 
-- (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|data~0_combout\,
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_DFF2|internal_Q\(1),
	datad => \U_REG|P6|my_storage_element|internal_Q\(1),
	combout => \U_AC|DATA[1]~3_combout\);

-- Location: LCCOMB_X52_Y51_N0
\U_REG|P3|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P3|data~0_combout\);

-- Location: LCCOMB_X51_Y52_N12
\U_AC|DATA[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~4_combout\ = (\U_AC|DATA[1]~3_combout\ & ((\U_REG|P3|my_storage_element|internal_Q\(1)) # (!\U_REG|P3|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REG|P3|my_storage_element|internal_Q\(1),
	datac => \U_AC|DATA[1]~3_combout\,
	datad => \U_REG|P3|data~0_combout\,
	combout => \U_AC|DATA[1]~4_combout\);

-- Location: LCCOMB_X50_Y52_N16
\U_REG|P4|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[1]~5_combout\,
	combout => \U_REG|P4|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: LCCOMB_X50_Y52_N18
\U_REG|P4|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|write_enable~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & \U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P4|write_enable~0_combout\);

-- Location: FF_X50_Y52_N17
\U_REG|P4|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P4|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X52_Y52_N28
\U_REG|P2|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[1]~5_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: LCCOMB_X52_Y52_N16
\U_REG|P2|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|write_enable~0_combout\ = (\U_AC|U_FSM|comb~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & !\U_AC|U_MUX_ADDR|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	combout => \U_REG|P2|write_enable~0_combout\);

-- Location: FF_X52_Y52_N29
\U_REG|P2|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X51_Y51_N0
\U_REG|P4|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P4|data~0_combout\);

-- Location: LCCOMB_X52_Y51_N18
\U_REG|P2|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P2|data~0_combout\);

-- Location: LCCOMB_X51_Y52_N24
\U_AC|DATA[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~2_combout\ = (\U_REG|P4|my_storage_element|internal_Q\(1) & ((\U_REG|P2|my_storage_element|internal_Q\(1)) # ((!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P4|my_storage_element|internal_Q\(1) & (!\U_REG|P4|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(1)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|my_storage_element|internal_Q\(1),
	datab => \U_REG|P2|my_storage_element|internal_Q\(1),
	datac => \U_REG|P4|data~0_combout\,
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[1]~2_combout\);

-- Location: LCCOMB_X50_Y51_N16
\U_REG|P5|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[1]~5_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: LCCOMB_X50_Y51_N12
\U_REG|P5|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|write_enable~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & \U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P5|write_enable~0_combout\);

-- Location: FF_X50_Y51_N17
\U_REG|P5|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X51_Y51_N4
\U_REG|P5|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P5|data~0_combout\);

-- Location: LCCOMB_X51_Y51_N14
\U_REG|P7|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|write_enable~0_combout\ = (\U_AC|U_FSM|comb~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & \U_AC|U_MUX_ADDR|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	combout => \U_REG|P7|write_enable~0_combout\);

-- Location: FF_X51_Y51_N27
\U_REG|P7|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~5_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X52_Y51_N28
\U_REG|P7|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P7|data~0_combout\);

-- Location: LCCOMB_X51_Y51_N26
\U_AC|DATA[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~1_combout\ = (\U_REG|P5|my_storage_element|internal_Q\(1) & (((\U_REG|P7|my_storage_element|internal_Q\(1)) # (!\U_REG|P7|data~0_combout\)))) # (!\U_REG|P5|my_storage_element|internal_Q\(1) & (!\U_REG|P5|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(1)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|my_storage_element|internal_Q\(1),
	datab => \U_REG|P5|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(1),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[1]~1_combout\);

-- Location: LCCOMB_X50_Y50_N8
\U_REG|P1|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[1]~5_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: LCCOMB_X50_Y50_N6
\U_REG|P1|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|write_enable~0_combout\ = (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (\U_AC|U_FSM|comb~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & !\U_AC|U_MUX_ADDR|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	combout => \U_REG|P1|write_enable~0_combout\);

-- Location: FF_X50_Y50_N9
\U_REG|P1|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X52_Y51_N26
\U_REG|P1|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|data~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P1|data~0_combout\);

-- Location: LCCOMB_X51_Y50_N28
\U_REG|P0|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|write_enable~0_combout\ = (\U_AC|U_FSM|comb~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & !\U_AC|U_MUX_ADDR|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	combout => \U_REG|P0|write_enable~0_combout\);

-- Location: FF_X51_Y50_N5
\U_REG|P0|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~5_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X52_Y51_N8
\U_REG|P0|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|data~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P0|data~0_combout\);

-- Location: LCCOMB_X51_Y50_N4
\U_AC|DATA[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~0_combout\ = (\U_REG|P1|my_storage_element|internal_Q\(1) & (((\U_REG|P0|my_storage_element|internal_Q\(1)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|my_storage_element|internal_Q\(1) & (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(1)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|my_storage_element|internal_Q\(1),
	datab => \U_REG|P1|data~0_combout\,
	datac => \U_REG|P0|my_storage_element|internal_Q\(1),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[1]~0_combout\);

-- Location: LCCOMB_X51_Y52_N22
\U_AC|DATA[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~5_combout\ = (\U_AC|DATA[1]~4_combout\ & (\U_AC|DATA[1]~2_combout\ & (\U_AC|DATA[1]~1_combout\ & \U_AC|DATA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[1]~4_combout\,
	datab => \U_AC|DATA[1]~2_combout\,
	datac => \U_AC|DATA[1]~1_combout\,
	datad => \U_AC|DATA[1]~0_combout\,
	combout => \U_AC|DATA[1]~5_combout\);

-- Location: FF_X51_Y53_N25
\U_AC|U_DFF_EN1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~5_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(1));

-- Location: FF_X52_Y53_N11
\U_AC|U_DFF1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPCODE[0]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(0));

-- Location: FF_X52_Y53_N13
\U_AC|U_DFF_ALU1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF1|internal_Q\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU1|internal_Q\(0));

-- Location: LCCOMB_X52_Y53_N4
\U_AC|U_DFF_ALU2|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_ALU2|internal_Q[0]~feeder_combout\ = \U_AC|U_DFF_ALU1|internal_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF_ALU1|internal_Q\(0),
	combout => \U_AC|U_DFF_ALU2|internal_Q[0]~feeder_combout\);

-- Location: FF_X52_Y53_N5
\U_AC|U_DFF_ALU2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU2|internal_Q[0]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU2|internal_Q\(0));

-- Location: FF_X52_Y53_N25
\U_AC|U_DFFALU3|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF_ALU2|internal_Q\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU3|internal_Q\(0));

-- Location: FF_X51_Y51_N23
\U_REG|P7|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[0]~11_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(0));

-- Location: FF_X51_Y52_N31
\U_REG|P6|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~11_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N12
\U_AC|DATA[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~9_combout\ = (\U_REG|P7|my_storage_element|internal_Q\(0) & ((\U_REG|P6|my_storage_element|internal_Q\(0)) # ((!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|my_storage_element|internal_Q\(0) & (!\U_REG|P7|data~0_combout\ & 
-- ((\U_REG|P6|my_storage_element|internal_Q\(0)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|my_storage_element|internal_Q\(0),
	datab => \U_REG|P6|my_storage_element|internal_Q\(0),
	datac => \U_REG|P6|data~0_combout\,
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[0]~9_combout\);

-- Location: LCCOMB_X50_Y51_N14
\U_REG|P5|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~11_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: FF_X50_Y51_N15
\U_REG|P5|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X50_Y52_N30
\U_REG|P4|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~11_combout\,
	combout => \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: FF_X50_Y52_N31
\U_REG|P4|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N28
\U_AC|DATA[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~8_combout\ = (\U_REG|P5|my_storage_element|internal_Q\(0) & ((\U_REG|P4|my_storage_element|internal_Q\(0)) # ((!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|my_storage_element|internal_Q\(0) & (!\U_REG|P5|data~0_combout\ & 
-- ((\U_REG|P4|my_storage_element|internal_Q\(0)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|my_storage_element|internal_Q\(0),
	datab => \U_REG|P4|my_storage_element|internal_Q\(0),
	datac => \U_REG|P5|data~0_combout\,
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[0]~8_combout\);

-- Location: LCCOMB_X52_Y52_N26
\U_REG|P2|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[0]~11_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: FF_X52_Y52_N27
\U_REG|P2|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X52_Y50_N0
\U_REG|P3|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~11_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: FF_X52_Y50_N1
\U_REG|P3|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N30
\U_AC|DATA[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~7_combout\ = (\U_REG|P2|my_storage_element|internal_Q\(0) & (((\U_REG|P3|my_storage_element|internal_Q\(0))) # (!\U_REG|P3|data~0_combout\))) # (!\U_REG|P2|my_storage_element|internal_Q\(0) & (!\U_REG|P2|data~0_combout\ & 
-- ((\U_REG|P3|my_storage_element|internal_Q\(0)) # (!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|my_storage_element|internal_Q\(0),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|data~0_combout\,
	datad => \U_REG|P3|my_storage_element|internal_Q\(0),
	combout => \U_AC|DATA[0]~7_combout\);

-- Location: LCCOMB_X51_Y50_N2
\U_REG|P0|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~11_combout\,
	combout => \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: FF_X51_Y50_N3
\U_REG|P0|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(0));

-- Location: FF_X54_Y51_N13
\U_REG|P1|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~11_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X54_Y51_N12
\U_AC|DATA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~6_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(0) & ((\U_REG|P0|my_storage_element|internal_Q\(0)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(0)) # ((!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|data~0_combout\,
	datab => \U_REG|P0|my_storage_element|internal_Q\(0),
	datac => \U_REG|P1|my_storage_element|internal_Q\(0),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[0]~6_combout\);

-- Location: LCCOMB_X51_Y51_N18
\U_AC|DATA[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~10_combout\ = (\U_AC|DATA[0]~9_combout\ & (\U_AC|DATA[0]~8_combout\ & (\U_AC|DATA[0]~7_combout\ & \U_AC|DATA[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[0]~9_combout\,
	datab => \U_AC|DATA[0]~8_combout\,
	datac => \U_AC|DATA[0]~7_combout\,
	datad => \U_AC|DATA[0]~6_combout\,
	combout => \U_AC|DATA[0]~10_combout\);

-- Location: LCCOMB_X51_Y51_N22
\U_AC|DATA[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~11_combout\ = (\U_AC|DATA[0]~10_combout\ & ((\U_AC|U_DFF2|internal_Q\(0)) # (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_DFF2|internal_Q\(0),
	datad => \U_AC|DATA[0]~10_combout\,
	combout => \U_AC|DATA[0]~11_combout\);

-- Location: FF_X51_Y53_N7
\U_AC|U_DFF_EN1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~11_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(0));

-- Location: LCCOMB_X51_Y53_N8
\U_AC|U_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~0_combout\ = \U_AC|U_DFFALU3|internal_Q\(0) $ (\U_AC|U_DFF_EN1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => \U_AC|U_DFF_EN1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~0_combout\);

-- Location: FF_X50_Y53_N25
\U_AC|U_DFF_EN2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~11_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(0));

-- Location: LCCOMB_X52_Y53_N10
\U_AC|U_ALU|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~2_cout\ = CARRY(\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => VCC,
	cout => \U_AC|U_ALU|Add0~2_cout\);

-- Location: LCCOMB_X52_Y53_N12
\U_AC|U_ALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~3_combout\ = (\U_AC|U_ALU|Add0~0_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(0) & (\U_AC|U_ALU|Add0~2_cout\ & VCC)) # (!\U_AC|U_DFF_EN2|internal_Q\(0) & (!\U_AC|U_ALU|Add0~2_cout\)))) # (!\U_AC|U_ALU|Add0~0_combout\ & 
-- ((\U_AC|U_DFF_EN2|internal_Q\(0) & (!\U_AC|U_ALU|Add0~2_cout\)) # (!\U_AC|U_DFF_EN2|internal_Q\(0) & ((\U_AC|U_ALU|Add0~2_cout\) # (GND)))))
-- \U_AC|U_ALU|Add0~4\ = CARRY((\U_AC|U_ALU|Add0~0_combout\ & (!\U_AC|U_DFF_EN2|internal_Q\(0) & !\U_AC|U_ALU|Add0~2_cout\)) # (!\U_AC|U_ALU|Add0~0_combout\ & ((!\U_AC|U_ALU|Add0~2_cout\) # (!\U_AC|U_DFF_EN2|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~0_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(0),
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~2_cout\,
	combout => \U_AC|U_ALU|Add0~3_combout\,
	cout => \U_AC|U_ALU|Add0~4\);

-- Location: LCCOMB_X50_Y53_N22
\U_AC|U_ALU|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(1) & ((\U_AC|U_DFFALU3|internal_Q\(0))))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (((\U_AC|U_ALU|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datab => \U_AC|U_DFF_EN1|internal_Q\(1),
	datac => \U_AC|U_ALU|Add0~3_combout\,
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux7~0_combout\);

-- Location: FF_X50_Y53_N17
\U_AC|U_DFF1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPCODE[2]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(2));

-- Location: LCCOMB_X50_Y53_N2
\U_AC|U_DFF_ALU1|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_ALU1|internal_Q[2]~feeder_combout\ = \U_AC|U_DFF1|internal_Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF1|internal_Q\(2),
	combout => \U_AC|U_DFF_ALU1|internal_Q[2]~feeder_combout\);

-- Location: FF_X50_Y53_N3
\U_AC|U_DFF_ALU1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU1|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU1|internal_Q\(2));

-- Location: LCCOMB_X50_Y53_N28
\U_AC|U_DFF_ALU2|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_ALU2|internal_Q[2]~feeder_combout\ = \U_AC|U_DFF_ALU1|internal_Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF_ALU1|internal_Q\(2),
	combout => \U_AC|U_DFF_ALU2|internal_Q[2]~feeder_combout\);

-- Location: FF_X50_Y53_N29
\U_AC|U_DFF_ALU2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU2|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU2|internal_Q\(2));

-- Location: LCCOMB_X50_Y53_N4
\U_AC|U_DFFALU3|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFFALU3|internal_Q[2]~feeder_combout\ = \U_AC|U_DFF_ALU2|internal_Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF_ALU2|internal_Q\(2),
	combout => \U_AC|U_DFFALU3|internal_Q[2]~feeder_combout\);

-- Location: FF_X50_Y53_N5
\U_AC|U_DFFALU3|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFFALU3|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU3|internal_Q\(2));

-- Location: LCCOMB_X50_Y53_N24
\U_AC|U_ALU|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~1_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(0) & ((\U_AC|U_DFF_EN1|internal_Q\(0)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(0)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(0),
	datab => \U_AC|U_DFFALU3|internal_Q\(0),
	datac => \U_AC|U_DFF_EN2|internal_Q\(0),
	datad => \U_AC|U_DFFALU3|internal_Q\(1),
	combout => \U_AC|U_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X50_Y53_N30
\U_AC|U_ALU|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~2_combout\ = (\U_AC|U_DFFALU3|internal_Q\(2) & (\U_AC|U_ALU|Mux7~0_combout\)) # (!\U_AC|U_DFFALU3|internal_Q\(2) & ((\U_AC|U_ALU|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux7~0_combout\,
	datac => \U_AC|U_DFFALU3|internal_Q\(2),
	datad => \U_AC|U_ALU|Mux7~1_combout\,
	combout => \U_AC|U_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X50_Y53_N20
\U_AC|U_ALU|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(2) & ((\U_AC|U_DFFALU3|internal_Q\(0)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFFALU3|internal_Q\(2),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y52_N18
\U_REG|P6|my_storage_element|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|my_storage_element|internal_Q[2]~feeder_combout\ = \U_AC|DATA[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[2]~17_combout\,
	combout => \U_REG|P6|my_storage_element|internal_Q[2]~feeder_combout\);

-- Location: FF_X51_Y52_N19
\U_REG|P6|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P6|my_storage_element|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(2));

-- Location: FF_X51_Y50_N17
\U_REG|P0|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X51_Y50_N16
\U_AC|DATA[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~14_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(2) & (((\U_REG|P0|my_storage_element|internal_Q\(2)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P6|my_storage_element|internal_Q\(2) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(2)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(2),
	datab => \U_REG|P6|data~0_combout\,
	datac => \U_REG|P0|my_storage_element|internal_Q\(2),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[2]~14_combout\);

-- Location: LCCOMB_X50_Y51_N8
\U_REG|P5|my_storage_element|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[2]~feeder_combout\ = \U_AC|DATA[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[2]~17_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[2]~feeder_combout\);

-- Location: FF_X50_Y51_N9
\U_REG|P5|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X50_Y52_N28
\U_REG|P4|my_storage_element|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|my_storage_element|internal_Q[2]~feeder_combout\ = \U_AC|DATA[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[2]~17_combout\,
	combout => \U_REG|P4|my_storage_element|internal_Q[2]~feeder_combout\);

-- Location: FF_X50_Y52_N29
\U_REG|P4|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P4|my_storage_element|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X51_Y52_N4
\U_AC|DATA[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~12_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|my_storage_element|internal_Q\(2) & ((\U_REG|P5|my_storage_element|internal_Q\(2)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & 
-- ((\U_REG|P5|my_storage_element|internal_Q\(2)) # ((!\U_REG|P5|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(2),
	datac => \U_REG|P4|my_storage_element|internal_Q\(2),
	datad => \U_REG|P5|data~0_combout\,
	combout => \U_AC|DATA[2]~12_combout\);

-- Location: LCCOMB_X50_Y50_N10
\U_REG|P1|my_storage_element|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[2]~feeder_combout\ = \U_AC|DATA[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[2]~17_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[2]~feeder_combout\);

-- Location: FF_X50_Y50_N11
\U_REG|P1|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(2));

-- Location: FF_X52_Y50_N19
\U_REG|P3|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X52_Y50_N18
\U_AC|DATA[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~13_combout\ = (\U_REG|P1|my_storage_element|internal_Q\(2) & (((\U_REG|P3|my_storage_element|internal_Q\(2)) # (!\U_REG|P3|data~0_combout\)))) # (!\U_REG|P1|my_storage_element|internal_Q\(2) & (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P3|my_storage_element|internal_Q\(2)) # (!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|my_storage_element|internal_Q\(2),
	datab => \U_REG|P1|data~0_combout\,
	datac => \U_REG|P3|my_storage_element|internal_Q\(2),
	datad => \U_REG|P3|data~0_combout\,
	combout => \U_AC|DATA[2]~13_combout\);

-- Location: LCCOMB_X52_Y52_N4
\U_REG|P2|my_storage_element|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[2]~feeder_combout\ = \U_AC|DATA[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[2]~17_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[2]~feeder_combout\);

-- Location: FF_X52_Y52_N5
\U_REG|P2|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X52_Y51_N20
\U_AC|DATA[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~15_combout\ = (\U_AC|U_FSM|comb~0_combout\ & (\U_AC|U_DFF2|internal_Q\(2) & ((\U_REG|P2|my_storage_element|internal_Q\(2)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_AC|U_FSM|comb~0_combout\ & ((\U_REG|P2|my_storage_element|internal_Q\(2)) # 
-- ((!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_REG|P2|my_storage_element|internal_Q\(2),
	datac => \U_AC|U_DFF2|internal_Q\(2),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[2]~15_combout\);

-- Location: FF_X52_Y51_N13
\U_REG|P7|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X52_Y51_N12
\U_AC|DATA[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~16_combout\ = (\U_AC|DATA[2]~15_combout\ & ((\U_REG|P7|my_storage_element|internal_Q\(2)) # (!\U_REG|P7|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[2]~15_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(2),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[2]~16_combout\);

-- Location: LCCOMB_X52_Y52_N22
\U_AC|DATA[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~17_combout\ = (\U_AC|DATA[2]~14_combout\ & (\U_AC|DATA[2]~12_combout\ & (\U_AC|DATA[2]~13_combout\ & \U_AC|DATA[2]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[2]~14_combout\,
	datab => \U_AC|DATA[2]~12_combout\,
	datac => \U_AC|DATA[2]~13_combout\,
	datad => \U_AC|DATA[2]~16_combout\,
	combout => \U_AC|DATA[2]~17_combout\);

-- Location: FF_X51_Y53_N27
\U_AC|U_DFF_EN1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(2));

-- Location: FF_X52_Y53_N31
\U_AC|U_DFF_EN2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~5_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(1));

-- Location: LCCOMB_X54_Y53_N24
\U_AC|U_ALU|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~5_combout\ = \U_AC|U_DFF_EN1|internal_Q\(1) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF_EN1|internal_Q\(1),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~5_combout\);

-- Location: LCCOMB_X52_Y53_N14
\U_AC|U_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~6_combout\ = ((\U_AC|U_DFF_EN2|internal_Q\(1) $ (\U_AC|U_ALU|Add0~5_combout\ $ (!\U_AC|U_ALU|Add0~4\)))) # (GND)
-- \U_AC|U_ALU|Add0~7\ = CARRY((\U_AC|U_DFF_EN2|internal_Q\(1) & ((\U_AC|U_ALU|Add0~5_combout\) # (!\U_AC|U_ALU|Add0~4\))) # (!\U_AC|U_DFF_EN2|internal_Q\(1) & (\U_AC|U_ALU|Add0~5_combout\ & !\U_AC|U_ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN2|internal_Q\(1),
	datab => \U_AC|U_ALU|Add0~5_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~4\,
	combout => \U_AC|U_ALU|Add0~6_combout\,
	cout => \U_AC|U_ALU|Add0~7\);

-- Location: LCCOMB_X50_Y53_N18
\U_AC|U_ALU|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~1_combout\ = (\U_AC|U_DFFALU3|internal_Q\(2) & \U_AC|U_DFFALU3|internal_Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFFALU3|internal_Q\(2),
	datad => \U_AC|U_DFFALU3|internal_Q\(1),
	combout => \U_AC|U_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X52_Y53_N30
\U_AC|U_ALU|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~2_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(1) & ((\U_AC|U_DFF_EN1|internal_Q\(1)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(1)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(1),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(1),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X51_Y53_N6
\U_AC|U_ALU|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~3_combout\ = (\U_AC|U_ALU|Mux6~0_combout\ & (\U_AC|U_ALU|Mux6~1_combout\)) # (!\U_AC|U_ALU|Mux6~0_combout\ & ((\U_AC|U_ALU|Mux6~1_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(0))) # (!\U_AC|U_ALU|Mux6~1_combout\ & 
-- ((\U_AC|U_ALU|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux6~0_combout\,
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(0),
	datad => \U_AC|U_ALU|Mux6~2_combout\,
	combout => \U_AC|U_ALU|Mux6~3_combout\);

-- Location: LCCOMB_X51_Y53_N20
\U_AC|U_ALU|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~4_combout\ = (\U_AC|U_ALU|Mux6~0_combout\ & ((\U_AC|U_ALU|Mux6~3_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(2))) # (!\U_AC|U_ALU|Mux6~3_combout\ & ((\U_AC|U_ALU|Add0~6_combout\))))) # (!\U_AC|U_ALU|Mux6~0_combout\ & 
-- (((\U_AC|U_ALU|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux6~0_combout\,
	datab => \U_AC|U_DFF_EN1|internal_Q\(2),
	datac => \U_AC|U_ALU|Add0~6_combout\,
	datad => \U_AC|U_ALU|Mux6~3_combout\,
	combout => \U_AC|U_ALU|Mux6~4_combout\);

-- Location: LCCOMB_X51_Y52_N2
\U_REG|P6|my_storage_element|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|my_storage_element|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[3]~23_combout\,
	combout => \U_REG|P6|my_storage_element|internal_Q[3]~feeder_combout\);

-- Location: FF_X51_Y52_N3
\U_REG|P6|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P6|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(3));

-- Location: FF_X52_Y51_N11
\U_REG|P7|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X52_Y51_N10
\U_AC|DATA[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~21_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(3) & (((\U_REG|P7|my_storage_element|internal_Q\(3))) # (!\U_REG|P7|data~0_combout\))) # (!\U_REG|P6|my_storage_element|internal_Q\(3) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(3)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(3),
	datab => \U_REG|P7|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(3),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[3]~21_combout\);

-- Location: LCCOMB_X49_Y52_N22
\U_REG|P3|my_storage_element|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[3]~23_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\);

-- Location: FF_X49_Y52_N23
\U_REG|P3|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X52_Y52_N0
\U_REG|P2|my_storage_element|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[3]~23_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[3]~feeder_combout\);

-- Location: FF_X52_Y52_N1
\U_REG|P2|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X51_Y52_N16
\U_AC|DATA[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~19_combout\ = (\U_REG|P3|my_storage_element|internal_Q\(3) & (((\U_REG|P2|my_storage_element|internal_Q\(3)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|my_storage_element|internal_Q\(3) & (!\U_REG|P3|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(3)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|my_storage_element|internal_Q\(3),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|my_storage_element|internal_Q\(3),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[3]~19_combout\);

-- Location: LCCOMB_X50_Y50_N12
\U_REG|P1|my_storage_element|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[3]~23_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[3]~feeder_combout\);

-- Location: FF_X50_Y50_N13
\U_REG|P1|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(3));

-- Location: FF_X51_Y50_N19
\U_REG|P0|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X51_Y50_N18
\U_AC|DATA[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~18_combout\ = (\U_REG|P1|my_storage_element|internal_Q\(3) & (((\U_REG|P0|my_storage_element|internal_Q\(3)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|my_storage_element|internal_Q\(3) & (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(3)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|my_storage_element|internal_Q\(3),
	datab => \U_REG|P1|data~0_combout\,
	datac => \U_REG|P0|my_storage_element|internal_Q\(3),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[3]~18_combout\);

-- Location: LCCOMB_X50_Y51_N2
\U_REG|P5|my_storage_element|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[3]~23_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[3]~feeder_combout\);

-- Location: FF_X50_Y51_N3
\U_REG|P5|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(3));

-- Location: FF_X50_Y52_N23
\U_REG|P4|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X50_Y52_N22
\U_AC|DATA[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~20_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|my_storage_element|internal_Q\(3) & ((\U_REG|P5|my_storage_element|internal_Q\(3)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & 
-- ((\U_REG|P5|my_storage_element|internal_Q\(3)) # ((!\U_REG|P5|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(3),
	datac => \U_REG|P4|my_storage_element|internal_Q\(3),
	datad => \U_REG|P5|data~0_combout\,
	combout => \U_AC|DATA[3]~20_combout\);

-- Location: LCCOMB_X51_Y52_N0
\U_AC|DATA[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~22_combout\ = (\U_AC|DATA[3]~21_combout\ & (\U_AC|DATA[3]~19_combout\ & (\U_AC|DATA[3]~18_combout\ & \U_AC|DATA[3]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[3]~21_combout\,
	datab => \U_AC|DATA[3]~19_combout\,
	datac => \U_AC|DATA[3]~18_combout\,
	datad => \U_AC|DATA[3]~20_combout\,
	combout => \U_AC|DATA[3]~22_combout\);

-- Location: LCCOMB_X51_Y52_N14
\U_AC|DATA[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~23_combout\ = (!\U_AC|U_FSM|comb~0_combout\ & \U_AC|DATA[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|DATA[3]~22_combout\,
	combout => \U_AC|DATA[3]~23_combout\);

-- Location: FF_X51_Y53_N13
\U_AC|U_DFF_EN1|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(3));

-- Location: FF_X52_Y53_N1
\U_AC|U_DFF_EN2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(2));

-- Location: LCCOMB_X52_Y53_N0
\U_AC|U_ALU|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(2) & ((\U_AC|U_DFF_EN1|internal_Q\(2)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(2)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(2),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(2),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y53_N6
\U_AC|U_ALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~8_combout\ = \U_AC|U_DFF_EN1|internal_Q\(2) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(2),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~8_combout\);

-- Location: LCCOMB_X52_Y53_N16
\U_AC|U_ALU|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~9_combout\ = (\U_AC|U_ALU|Add0~8_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(2) & (\U_AC|U_ALU|Add0~7\ & VCC)) # (!\U_AC|U_DFF_EN2|internal_Q\(2) & (!\U_AC|U_ALU|Add0~7\)))) # (!\U_AC|U_ALU|Add0~8_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(2) 
-- & (!\U_AC|U_ALU|Add0~7\)) # (!\U_AC|U_DFF_EN2|internal_Q\(2) & ((\U_AC|U_ALU|Add0~7\) # (GND)))))
-- \U_AC|U_ALU|Add0~10\ = CARRY((\U_AC|U_ALU|Add0~8_combout\ & (!\U_AC|U_DFF_EN2|internal_Q\(2) & !\U_AC|U_ALU|Add0~7\)) # (!\U_AC|U_ALU|Add0~8_combout\ & ((!\U_AC|U_ALU|Add0~7\) # (!\U_AC|U_DFF_EN2|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~8_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(2),
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~7\,
	combout => \U_AC|U_ALU|Add0~9_combout\,
	cout => \U_AC|U_ALU|Add0~10\);

-- Location: LCCOMB_X51_Y53_N30
\U_AC|U_ALU|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~1_combout\ = (\U_AC|U_ALU|Mux6~0_combout\ & ((\U_AC|U_ALU|Mux6~1_combout\) # ((\U_AC|U_ALU|Add0~9_combout\)))) # (!\U_AC|U_ALU|Mux6~0_combout\ & (!\U_AC|U_ALU|Mux6~1_combout\ & (\U_AC|U_ALU|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux6~0_combout\,
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_ALU|Mux5~0_combout\,
	datad => \U_AC|U_ALU|Add0~9_combout\,
	combout => \U_AC|U_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X51_Y53_N24
\U_AC|U_ALU|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~2_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & ((\U_AC|U_ALU|Mux5~1_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(3))) # (!\U_AC|U_ALU|Mux5~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(1)))))) # (!\U_AC|U_ALU|Mux6~1_combout\ & 
-- (((\U_AC|U_ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(3),
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(1),
	datad => \U_AC|U_ALU|Mux5~1_combout\,
	combout => \U_AC|U_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X52_Y52_N6
\U_REG|P2|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X52_Y52_N7
\U_REG|P2|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(4));

-- Location: FF_X51_Y52_N21
\U_REG|P6|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X51_Y52_N20
\U_AC|DATA[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~25_combout\ = (\U_REG|P6|data~0_combout\ & (\U_REG|P6|my_storage_element|internal_Q\(4) & ((\U_REG|P2|my_storage_element|internal_Q\(4)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(4)) # ((!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|data~0_combout\,
	datab => \U_REG|P2|my_storage_element|internal_Q\(4),
	datac => \U_REG|P6|my_storage_element|internal_Q\(4),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[4]~25_combout\);

-- Location: LCCOMB_X50_Y50_N22
\U_REG|P1|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X50_Y50_N23
\U_REG|P1|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X51_Y50_N20
\U_REG|P0|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P0|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X51_Y50_N21
\U_REG|P0|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P0|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X51_Y51_N20
\U_AC|DATA[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~24_combout\ = (\U_REG|P1|my_storage_element|internal_Q\(4) & ((\U_REG|P0|my_storage_element|internal_Q\(4)) # ((!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|my_storage_element|internal_Q\(4) & (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(4)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|my_storage_element|internal_Q\(4),
	datab => \U_REG|P0|my_storage_element|internal_Q\(4),
	datac => \U_REG|P0|data~0_combout\,
	datad => \U_REG|P1|data~0_combout\,
	combout => \U_AC|DATA[4]~24_combout\);

-- Location: FF_X51_Y51_N11
\U_REG|P7|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X51_Y51_N10
\U_AC|DATA[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~26_combout\ = (!\U_AC|U_FSM|comb~0_combout\ & ((\U_REG|P7|my_storage_element|internal_Q\(4)) # (!\U_REG|P7|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(4),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[4]~26_combout\);

-- Location: LCCOMB_X49_Y52_N16
\U_REG|P3|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X49_Y52_N17
\U_REG|P3|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X50_Y52_N20
\U_REG|P4|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P4|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X50_Y52_N21
\U_REG|P4|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P4|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(4));

-- Location: FF_X50_Y51_N1
\U_REG|P5|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X50_Y51_N0
\U_AC|DATA[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~27_combout\ = (\U_REG|P4|my_storage_element|internal_Q\(4) & (((\U_REG|P5|my_storage_element|internal_Q\(4)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|my_storage_element|internal_Q\(4) & (!\U_REG|P4|data~0_combout\ & 
-- ((\U_REG|P5|my_storage_element|internal_Q\(4)) # (!\U_REG|P5|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|my_storage_element|internal_Q\(4),
	datab => \U_REG|P4|data~0_combout\,
	datac => \U_REG|P5|my_storage_element|internal_Q\(4),
	datad => \U_REG|P5|data~0_combout\,
	combout => \U_AC|DATA[4]~27_combout\);

-- Location: LCCOMB_X50_Y52_N10
\U_AC|DATA[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~28_combout\ = (\U_AC|DATA[4]~27_combout\ & ((\U_REG|P3|my_storage_element|internal_Q\(4)) # (!\U_REG|P3|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P3|my_storage_element|internal_Q\(4),
	datad => \U_AC|DATA[4]~27_combout\,
	combout => \U_AC|DATA[4]~28_combout\);

-- Location: LCCOMB_X50_Y52_N0
\U_AC|DATA[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~29_combout\ = (\U_AC|DATA[4]~25_combout\ & (\U_AC|DATA[4]~24_combout\ & (\U_AC|DATA[4]~26_combout\ & \U_AC|DATA[4]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[4]~25_combout\,
	datab => \U_AC|DATA[4]~24_combout\,
	datac => \U_AC|DATA[4]~26_combout\,
	datad => \U_AC|DATA[4]~28_combout\,
	combout => \U_AC|DATA[4]~29_combout\);

-- Location: FF_X51_Y53_N11
\U_AC|U_DFF_EN1|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(4));

-- Location: LCCOMB_X52_Y53_N8
\U_AC|U_ALU|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~11_combout\ = \U_AC|U_DFF_EN1|internal_Q\(3) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(3),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~11_combout\);

-- Location: FF_X52_Y53_N3
\U_AC|U_DFF_EN2|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(3));

-- Location: LCCOMB_X52_Y53_N18
\U_AC|U_ALU|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~12_combout\ = ((\U_AC|U_ALU|Add0~11_combout\ $ (\U_AC|U_DFF_EN2|internal_Q\(3) $ (!\U_AC|U_ALU|Add0~10\)))) # (GND)
-- \U_AC|U_ALU|Add0~13\ = CARRY((\U_AC|U_ALU|Add0~11_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(3)) # (!\U_AC|U_ALU|Add0~10\))) # (!\U_AC|U_ALU|Add0~11_combout\ & (\U_AC|U_DFF_EN2|internal_Q\(3) & !\U_AC|U_ALU|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~11_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(3),
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~10\,
	combout => \U_AC|U_ALU|Add0~12_combout\,
	cout => \U_AC|U_ALU|Add0~13\);

-- Location: LCCOMB_X52_Y53_N2
\U_AC|U_ALU|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux4~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(3) & ((\U_AC|U_DFF_EN1|internal_Q\(3)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(3)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(3),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(3),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\U_AC|U_ALU|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux4~1_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & (((\U_AC|U_DFF_EN1|internal_Q\(2)) # (\U_AC|U_ALU|Mux6~0_combout\)))) # (!\U_AC|U_ALU|Mux6~1_combout\ & (\U_AC|U_ALU|Mux4~0_combout\ & ((!\U_AC|U_ALU|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux4~0_combout\,
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(2),
	datad => \U_AC|U_ALU|Mux6~0_combout\,
	combout => \U_AC|U_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
\U_AC|U_ALU|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux4~2_combout\ = (\U_AC|U_ALU|Mux4~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(4)) # ((!\U_AC|U_ALU|Mux6~0_combout\)))) # (!\U_AC|U_ALU|Mux4~1_combout\ & (((\U_AC|U_ALU|Add0~12_combout\ & \U_AC|U_ALU|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(4),
	datab => \U_AC|U_ALU|Add0~12_combout\,
	datac => \U_AC|U_ALU|Mux4~1_combout\,
	datad => \U_AC|U_ALU|Mux6~0_combout\,
	combout => \U_AC|U_ALU|Mux4~2_combout\);

-- Location: FF_X50_Y53_N13
\U_AC|U_DFF_EN2|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(4));

-- Location: LCCOMB_X50_Y53_N12
\U_AC|U_ALU|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(4) & ((\U_AC|U_DFF_EN1|internal_Q\(4)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(4)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datab => \U_AC|U_DFF_EN1|internal_Q\(4),
	datac => \U_AC|U_DFF_EN2|internal_Q\(4),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y53_N10
\U_AC|U_ALU|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~14_combout\ = \U_AC|U_DFF_EN1|internal_Q\(4) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(4),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~14_combout\);

-- Location: LCCOMB_X52_Y53_N20
\U_AC|U_ALU|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~15_combout\ = (\U_AC|U_ALU|Add0~14_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(4) & (\U_AC|U_ALU|Add0~13\ & VCC)) # (!\U_AC|U_DFF_EN2|internal_Q\(4) & (!\U_AC|U_ALU|Add0~13\)))) # (!\U_AC|U_ALU|Add0~14_combout\ & 
-- ((\U_AC|U_DFF_EN2|internal_Q\(4) & (!\U_AC|U_ALU|Add0~13\)) # (!\U_AC|U_DFF_EN2|internal_Q\(4) & ((\U_AC|U_ALU|Add0~13\) # (GND)))))
-- \U_AC|U_ALU|Add0~16\ = CARRY((\U_AC|U_ALU|Add0~14_combout\ & (!\U_AC|U_DFF_EN2|internal_Q\(4) & !\U_AC|U_ALU|Add0~13\)) # (!\U_AC|U_ALU|Add0~14_combout\ & ((!\U_AC|U_ALU|Add0~13\) # (!\U_AC|U_DFF_EN2|internal_Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~14_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(4),
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~13\,
	combout => \U_AC|U_ALU|Add0~15_combout\,
	cout => \U_AC|U_ALU|Add0~16\);

-- Location: LCCOMB_X51_Y53_N22
\U_AC|U_ALU|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~1_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & (((\U_AC|U_ALU|Mux6~0_combout\)))) # (!\U_AC|U_ALU|Mux6~1_combout\ & ((\U_AC|U_ALU|Mux6~0_combout\ & ((\U_AC|U_ALU|Add0~15_combout\))) # (!\U_AC|U_ALU|Mux6~0_combout\ & 
-- (\U_AC|U_ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux3~0_combout\,
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_ALU|Mux6~0_combout\,
	datad => \U_AC|U_ALU|Add0~15_combout\,
	combout => \U_AC|U_ALU|Mux3~1_combout\);

-- Location: FF_X51_Y52_N27
\U_REG|P6|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[5]~35_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(5));

-- Location: FF_X51_Y51_N7
\U_REG|P7|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X51_Y51_N6
\U_AC|DATA[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~34_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(5) & (((\U_REG|P7|my_storage_element|internal_Q\(5))) # (!\U_REG|P7|data~0_combout\))) # (!\U_REG|P6|my_storage_element|internal_Q\(5) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(5)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(5),
	datab => \U_REG|P7|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(5),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[5]~34_combout\);

-- Location: LCCOMB_X50_Y51_N18
\U_REG|P5|my_storage_element|internal_Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[5]~feeder_combout\ = \U_AC|DATA[5]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~35_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[5]~feeder_combout\);

-- Location: FF_X50_Y51_N19
\U_REG|P5|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(5));

-- Location: FF_X50_Y52_N7
\U_REG|P4|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X50_Y52_N6
\U_AC|DATA[5]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~33_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|my_storage_element|internal_Q\(5) & ((\U_REG|P5|my_storage_element|internal_Q\(5)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & 
-- ((\U_REG|P5|my_storage_element|internal_Q\(5)) # ((!\U_REG|P5|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(5),
	datac => \U_REG|P4|my_storage_element|internal_Q\(5),
	datad => \U_REG|P5|data~0_combout\,
	combout => \U_AC|DATA[5]~33_combout\);

-- Location: LCCOMB_X52_Y52_N20
\U_REG|P2|my_storage_element|internal_Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[5]~feeder_combout\ = \U_AC|DATA[5]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~35_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[5]~feeder_combout\);

-- Location: FF_X52_Y52_N21
\U_REG|P2|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X52_Y50_N8
\U_REG|P3|my_storage_element|internal_Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[5]~feeder_combout\ = \U_AC|DATA[5]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~35_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[5]~feeder_combout\);

-- Location: FF_X52_Y50_N9
\U_REG|P3|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X51_Y52_N10
\U_AC|DATA[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~31_combout\ = (\U_REG|P2|my_storage_element|internal_Q\(5) & (((\U_REG|P3|my_storage_element|internal_Q\(5))) # (!\U_REG|P3|data~0_combout\))) # (!\U_REG|P2|my_storage_element|internal_Q\(5) & (!\U_REG|P2|data~0_combout\ & 
-- ((\U_REG|P3|my_storage_element|internal_Q\(5)) # (!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|my_storage_element|internal_Q\(5),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P3|my_storage_element|internal_Q\(5),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[5]~31_combout\);

-- Location: LCCOMB_X50_Y50_N0
\U_REG|P1|my_storage_element|internal_Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[5]~feeder_combout\ = \U_AC|DATA[5]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~35_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[5]~feeder_combout\);

-- Location: FF_X50_Y50_N1
\U_REG|P1|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X51_Y50_N30
\U_REG|P0|my_storage_element|internal_Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|my_storage_element|internal_Q[5]~feeder_combout\ = \U_AC|DATA[5]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~35_combout\,
	combout => \U_REG|P0|my_storage_element|internal_Q[5]~feeder_combout\);

-- Location: FF_X51_Y50_N31
\U_REG|P0|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P0|my_storage_element|internal_Q[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X51_Y51_N24
\U_AC|DATA[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~30_combout\ = (\U_REG|P1|my_storage_element|internal_Q\(5) & ((\U_REG|P0|my_storage_element|internal_Q\(5)) # ((!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|my_storage_element|internal_Q\(5) & (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(5)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|my_storage_element|internal_Q\(5),
	datab => \U_REG|P0|my_storage_element|internal_Q\(5),
	datac => \U_REG|P0|data~0_combout\,
	datad => \U_REG|P1|data~0_combout\,
	combout => \U_AC|DATA[5]~30_combout\);

-- Location: LCCOMB_X51_Y52_N28
\U_AC|DATA[5]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~32_combout\ = (\U_AC|DATA[5]~31_combout\ & \U_AC|DATA[5]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[5]~31_combout\,
	datad => \U_AC|DATA[5]~30_combout\,
	combout => \U_AC|DATA[5]~32_combout\);

-- Location: LCCOMB_X51_Y52_N26
\U_AC|DATA[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~35_combout\ = (!\U_AC|U_FSM|comb~0_combout\ & (\U_AC|DATA[5]~34_combout\ & (\U_AC|DATA[5]~33_combout\ & \U_AC|DATA[5]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|DATA[5]~34_combout\,
	datac => \U_AC|DATA[5]~33_combout\,
	datad => \U_AC|DATA[5]~32_combout\,
	combout => \U_AC|DATA[5]~35_combout\);

-- Location: FF_X51_Y53_N1
\U_AC|U_DFF_EN1|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(5));

-- Location: LCCOMB_X51_Y53_N12
\U_AC|U_ALU|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~2_combout\ = (\U_AC|U_ALU|Mux3~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(5)) # ((!\U_AC|U_ALU|Mux6~1_combout\)))) # (!\U_AC|U_ALU|Mux3~1_combout\ & (((\U_AC|U_DFF_EN1|internal_Q\(3) & \U_AC|U_ALU|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux3~1_combout\,
	datab => \U_AC|U_DFF_EN1|internal_Q\(5),
	datac => \U_AC|U_DFF_EN1|internal_Q\(3),
	datad => \U_AC|U_ALU|Mux6~1_combout\,
	combout => \U_AC|U_ALU|Mux3~2_combout\);

-- Location: FF_X52_Y53_N17
\U_AC|U_DFF_EN2|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(5));

-- Location: LCCOMB_X50_Y53_N14
\U_AC|U_ALU|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux2~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(5) & ((\U_AC|U_DFF_EN1|internal_Q\(5)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- (!\U_AC|U_DFF_EN2|internal_Q\(5))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & ((\U_AC|U_DFF_EN1|internal_Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datab => \U_AC|U_DFF_EN2|internal_Q\(5),
	datac => \U_AC|U_DFF_EN1|internal_Q\(5),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y53_N10
\U_AC|U_ALU|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux2~1_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & (((\U_AC|U_DFF_EN1|internal_Q\(4)) # (\U_AC|U_ALU|Mux6~0_combout\)))) # (!\U_AC|U_ALU|Mux6~1_combout\ & (\U_AC|U_ALU|Mux2~0_combout\ & ((!\U_AC|U_ALU|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux2~0_combout\,
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(4),
	datad => \U_AC|U_ALU|Mux6~0_combout\,
	combout => \U_AC|U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X50_Y51_N28
\U_REG|P5|my_storage_element|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[6]~41_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\);

-- Location: FF_X50_Y51_N29
\U_REG|P5|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(6));

-- Location: FF_X50_Y52_N13
\U_REG|P4|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(6));

-- Location: LCCOMB_X50_Y52_N12
\U_AC|DATA[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~38_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|my_storage_element|internal_Q\(6) & ((\U_REG|P5|my_storage_element|internal_Q\(6)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & 
-- ((\U_REG|P5|my_storage_element|internal_Q\(6)) # ((!\U_REG|P5|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(6),
	datac => \U_REG|P4|my_storage_element|internal_Q\(6),
	datad => \U_REG|P5|data~0_combout\,
	combout => \U_AC|DATA[6]~38_combout\);

-- Location: LCCOMB_X52_Y50_N10
\U_REG|P3|my_storage_element|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[6]~41_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[6]~feeder_combout\);

-- Location: FF_X52_Y50_N11
\U_REG|P3|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(6));

-- Location: FF_X52_Y52_N3
\U_REG|P2|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(6));

-- Location: LCCOMB_X52_Y52_N2
\U_AC|DATA[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~37_combout\ = (\U_REG|P3|my_storage_element|internal_Q\(6) & (((\U_REG|P2|my_storage_element|internal_Q\(6)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|my_storage_element|internal_Q\(6) & (!\U_REG|P3|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(6)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|my_storage_element|internal_Q\(6),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|my_storage_element|internal_Q\(6),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[6]~37_combout\);

-- Location: LCCOMB_X51_Y52_N8
\U_REG|P6|my_storage_element|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|my_storage_element|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[6]~41_combout\,
	combout => \U_REG|P6|my_storage_element|internal_Q[6]~feeder_combout\);

-- Location: FF_X51_Y52_N9
\U_REG|P6|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P6|my_storage_element|internal_Q[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(6));

-- Location: FF_X51_Y51_N9
\U_REG|P7|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(6));

-- Location: LCCOMB_X51_Y51_N8
\U_AC|DATA[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~39_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(6) & (((\U_REG|P7|my_storage_element|internal_Q\(6))) # (!\U_REG|P7|data~0_combout\))) # (!\U_REG|P6|my_storage_element|internal_Q\(6) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(6)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(6),
	datab => \U_REG|P7|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(6),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[6]~39_combout\);

-- Location: LCCOMB_X50_Y50_N14
\U_REG|P1|my_storage_element|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[6]~41_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[6]~feeder_combout\);

-- Location: FF_X50_Y50_N15
\U_REG|P1|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(6));

-- Location: FF_X51_Y50_N1
\U_REG|P0|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(6));

-- Location: LCCOMB_X51_Y50_N0
\U_AC|DATA[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~36_combout\ = (\U_REG|P1|my_storage_element|internal_Q\(6) & (((\U_REG|P0|my_storage_element|internal_Q\(6))) # (!\U_REG|P0|data~0_combout\))) # (!\U_REG|P1|my_storage_element|internal_Q\(6) & (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(6)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|my_storage_element|internal_Q\(6),
	datab => \U_REG|P0|data~0_combout\,
	datac => \U_REG|P0|my_storage_element|internal_Q\(6),
	datad => \U_REG|P1|data~0_combout\,
	combout => \U_AC|DATA[6]~36_combout\);

-- Location: LCCOMB_X50_Y52_N14
\U_AC|DATA[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~40_combout\ = (\U_AC|DATA[6]~38_combout\ & (\U_AC|DATA[6]~37_combout\ & (\U_AC|DATA[6]~39_combout\ & \U_AC|DATA[6]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[6]~38_combout\,
	datab => \U_AC|DATA[6]~37_combout\,
	datac => \U_AC|DATA[6]~39_combout\,
	datad => \U_AC|DATA[6]~36_combout\,
	combout => \U_AC|DATA[6]~40_combout\);

-- Location: LCCOMB_X51_Y52_N30
\U_AC|DATA[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~41_combout\ = (!\U_AC|U_FSM|comb~0_combout\ & \U_AC|DATA[6]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|DATA[6]~40_combout\,
	combout => \U_AC|DATA[6]~41_combout\);

-- Location: FF_X51_Y53_N17
\U_AC|U_DFF_EN1|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(6));

-- Location: LCCOMB_X51_Y53_N2
\U_AC|U_ALU|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~17_combout\ = \U_AC|U_DFFALU3|internal_Q\(0) $ (\U_AC|U_DFF_EN1|internal_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => \U_AC|U_DFF_EN1|internal_Q\(5),
	combout => \U_AC|U_ALU|Add0~17_combout\);

-- Location: LCCOMB_X52_Y53_N22
\U_AC|U_ALU|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~18_combout\ = ((\U_AC|U_ALU|Add0~17_combout\ $ (\U_AC|U_DFF_EN2|internal_Q\(5) $ (!\U_AC|U_ALU|Add0~16\)))) # (GND)
-- \U_AC|U_ALU|Add0~19\ = CARRY((\U_AC|U_ALU|Add0~17_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(5)) # (!\U_AC|U_ALU|Add0~16\))) # (!\U_AC|U_ALU|Add0~17_combout\ & (\U_AC|U_DFF_EN2|internal_Q\(5) & !\U_AC|U_ALU|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~17_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(5),
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~16\,
	combout => \U_AC|U_ALU|Add0~18_combout\,
	cout => \U_AC|U_ALU|Add0~19\);

-- Location: LCCOMB_X51_Y53_N18
\U_AC|U_ALU|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux2~2_combout\ = (\U_AC|U_ALU|Mux2~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(6)) # ((!\U_AC|U_ALU|Mux6~0_combout\)))) # (!\U_AC|U_ALU|Mux2~1_combout\ & (((\U_AC|U_ALU|Add0~18_combout\ & \U_AC|U_ALU|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux2~1_combout\,
	datab => \U_AC|U_DFF_EN1|internal_Q\(6),
	datac => \U_AC|U_ALU|Add0~18_combout\,
	datad => \U_AC|U_ALU|Mux6~0_combout\,
	combout => \U_AC|U_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X52_Y50_N16
\U_REG|P3|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X52_Y50_N17
\U_REG|P3|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(7));

-- Location: FF_X51_Y52_N15
\U_REG|P6|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X52_Y52_N10
\U_AC|DATA[7]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~44_combout\ = (\U_REG|P6|data~0_combout\ & (\U_REG|P6|my_storage_element|internal_Q\(7) & ((\U_REG|P3|my_storage_element|internal_Q\(7)) # (!\U_REG|P3|data~0_combout\)))) # (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P3|my_storage_element|internal_Q\(7)) # ((!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|data~0_combout\,
	datab => \U_REG|P3|my_storage_element|internal_Q\(7),
	datac => \U_REG|P6|my_storage_element|internal_Q\(7),
	datad => \U_REG|P3|data~0_combout\,
	combout => \U_AC|DATA[7]~44_combout\);

-- Location: LCCOMB_X50_Y50_N4
\U_REG|P1|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X50_Y50_N5
\U_REG|P1|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X51_Y50_N10
\U_REG|P0|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P0|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X51_Y50_N11
\U_REG|P0|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P0|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X51_Y51_N2
\U_AC|DATA[7]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~42_combout\ = (\U_REG|P1|my_storage_element|internal_Q\(7) & ((\U_REG|P0|my_storage_element|internal_Q\(7)) # ((!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|my_storage_element|internal_Q\(7) & (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(7)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|my_storage_element|internal_Q\(7),
	datab => \U_REG|P0|my_storage_element|internal_Q\(7),
	datac => \U_REG|P0|data~0_combout\,
	datad => \U_REG|P1|data~0_combout\,
	combout => \U_AC|DATA[7]~42_combout\);

-- Location: LCCOMB_X50_Y51_N30
\U_REG|P5|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X50_Y51_N31
\U_REG|P5|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X50_Y52_N24
\U_REG|P4|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P4|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X50_Y52_N25
\U_REG|P4|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P4|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X52_Y52_N8
\U_AC|DATA[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~43_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|my_storage_element|internal_Q\(7) & ((\U_REG|P4|my_storage_element|internal_Q\(7)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & 
-- (((\U_REG|P4|my_storage_element|internal_Q\(7)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(7),
	datac => \U_REG|P4|my_storage_element|internal_Q\(7),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[7]~43_combout\);

-- Location: FF_X51_Y51_N17
\U_REG|P7|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X52_Y52_N24
\U_REG|P2|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X52_Y52_N25
\U_REG|P2|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X52_Y51_N4
\U_AC|DATA[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~45_combout\ = (!\U_AC|U_FSM|comb~0_combout\ & ((\U_REG|P2|my_storage_element|internal_Q\(7)) # (!\U_REG|P2|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|my_storage_element|internal_Q\(7),
	datab => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[7]~45_combout\);

-- Location: LCCOMB_X52_Y51_N16
\U_AC|DATA[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~46_combout\ = (\U_AC|DATA[7]~45_combout\ & ((\U_REG|P7|my_storage_element|internal_Q\(7)) # (!\U_REG|P7|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|my_storage_element|internal_Q\(7),
	datab => \U_AC|DATA[7]~45_combout\,
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[7]~46_combout\);

-- Location: LCCOMB_X52_Y52_N18
\U_AC|DATA[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~47_combout\ = (\U_AC|DATA[7]~44_combout\ & (\U_AC|DATA[7]~42_combout\ & (\U_AC|DATA[7]~43_combout\ & \U_AC|DATA[7]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[7]~44_combout\,
	datab => \U_AC|DATA[7]~42_combout\,
	datac => \U_AC|DATA[7]~43_combout\,
	datad => \U_AC|DATA[7]~46_combout\,
	combout => \U_AC|DATA[7]~47_combout\);

-- Location: FF_X51_Y53_N15
\U_AC|U_DFF_EN1|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(7));

-- Location: FF_X52_Y53_N19
\U_AC|U_DFF_EN2|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(6));

-- Location: LCCOMB_X50_Y53_N10
\U_AC|U_ALU|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(6) & ((\U_AC|U_DFF_EN1|internal_Q\(6)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- (!\U_AC|U_DFF_EN2|internal_Q\(6))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & ((\U_AC|U_DFF_EN1|internal_Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datab => \U_AC|U_DFFALU3|internal_Q\(0),
	datac => \U_AC|U_DFF_EN2|internal_Q\(6),
	datad => \U_AC|U_DFF_EN1|internal_Q\(6),
	combout => \U_AC|U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y53_N0
\U_AC|U_ALU|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~20_combout\ = \U_AC|U_DFF_EN1|internal_Q\(6) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFF_EN1|internal_Q\(6),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~20_combout\);

-- Location: LCCOMB_X52_Y53_N24
\U_AC|U_ALU|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~21_combout\ = (\U_AC|U_ALU|Add0~20_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(6) & (\U_AC|U_ALU|Add0~19\ & VCC)) # (!\U_AC|U_DFF_EN2|internal_Q\(6) & (!\U_AC|U_ALU|Add0~19\)))) # (!\U_AC|U_ALU|Add0~20_combout\ & 
-- ((\U_AC|U_DFF_EN2|internal_Q\(6) & (!\U_AC|U_ALU|Add0~19\)) # (!\U_AC|U_DFF_EN2|internal_Q\(6) & ((\U_AC|U_ALU|Add0~19\) # (GND)))))
-- \U_AC|U_ALU|Add0~22\ = CARRY((\U_AC|U_ALU|Add0~20_combout\ & (!\U_AC|U_DFF_EN2|internal_Q\(6) & !\U_AC|U_ALU|Add0~19\)) # (!\U_AC|U_ALU|Add0~20_combout\ & ((!\U_AC|U_ALU|Add0~19\) # (!\U_AC|U_DFF_EN2|internal_Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~20_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(6),
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~19\,
	combout => \U_AC|U_ALU|Add0~21_combout\,
	cout => \U_AC|U_ALU|Add0~22\);

-- Location: LCCOMB_X51_Y53_N28
\U_AC|U_ALU|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~1_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & (((\U_AC|U_ALU|Mux6~0_combout\)))) # (!\U_AC|U_ALU|Mux6~1_combout\ & ((\U_AC|U_ALU|Mux6~0_combout\ & ((\U_AC|U_ALU|Add0~21_combout\))) # (!\U_AC|U_ALU|Mux6~0_combout\ & 
-- (\U_AC|U_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux1~0_combout\,
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_ALU|Add0~21_combout\,
	datad => \U_AC|U_ALU|Mux6~0_combout\,
	combout => \U_AC|U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X51_Y53_N0
\U_AC|U_ALU|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~2_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & ((\U_AC|U_ALU|Mux1~1_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(7))) # (!\U_AC|U_ALU|Mux1~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(5)))))) # (!\U_AC|U_ALU|Mux6~1_combout\ & 
-- (((\U_AC|U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(7),
	datab => \U_AC|U_ALU|Mux6~1_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(5),
	datad => \U_AC|U_ALU|Mux1~1_combout\,
	combout => \U_AC|U_ALU|Mux1~2_combout\);

-- Location: FF_X52_Y53_N29
\U_AC|U_DFF_EN2|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(7));

-- Location: LCCOMB_X52_Y53_N28
\U_AC|U_ALU|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~2_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(7) & ((\U_AC|U_DFF_EN1|internal_Q\(7)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(7)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(7),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(7),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X51_Y53_N14
\U_AC|U_ALU|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~23_combout\ = \U_AC|U_DFFALU3|internal_Q\(0) $ (\U_AC|U_DFF_EN1|internal_Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datac => \U_AC|U_DFF_EN1|internal_Q\(7),
	combout => \U_AC|U_ALU|Add0~23_combout\);

-- Location: LCCOMB_X52_Y53_N26
\U_AC|U_ALU|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~24_combout\ = \U_AC|U_ALU|Add0~23_combout\ $ (\U_AC|U_ALU|Add0~22\ $ (!\U_AC|U_DFF_EN2|internal_Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Add0~23_combout\,
	datad => \U_AC|U_DFF_EN2|internal_Q\(7),
	cin => \U_AC|U_ALU|Add0~22\,
	combout => \U_AC|U_ALU|Add0~24_combout\);

-- Location: LCCOMB_X50_Y53_N8
\U_AC|U_ALU|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~1_combout\ = (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFFALU3|internal_Q\(2) & \U_AC|U_ALU|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFFALU3|internal_Q\(2),
	datad => \U_AC|U_ALU|Add0~24_combout\,
	combout => \U_AC|U_ALU|Mux0~1_combout\);

-- Location: LCCOMB_X51_Y53_N16
\U_AC|U_ALU|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~0_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & ((\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN1|internal_Q\(7))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFF_EN1|internal_Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datab => \U_AC|U_DFF_EN1|internal_Q\(7),
	datac => \U_AC|U_DFF_EN1|internal_Q\(6),
	datad => \U_AC|U_ALU|Mux6~1_combout\,
	combout => \U_AC|U_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y53_N26
\U_AC|U_ALU|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~3_combout\ = (\U_AC|U_ALU|Mux0~1_combout\) # ((\U_AC|U_ALU|Mux0~0_combout\) # ((\U_AC|U_ALU|Mux0~2_combout\ & !\U_AC|U_DFFALU3|internal_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux0~2_combout\,
	datab => \U_AC|U_DFFALU3|internal_Q\(2),
	datac => \U_AC|U_ALU|Mux0~1_combout\,
	datad => \U_AC|U_ALU|Mux0~0_combout\,
	combout => \U_AC|U_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X56_Y50_N22
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U_AC|U_ALU|Mux2~2_combout\ $ (VCC)
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U_AC|U_ALU|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux2~2_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X56_Y50_N24
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U_AC|U_ALU|Mux1~2_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U_AC|U_ALU|Mux1~2_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U_AC|U_ALU|Mux1~2_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux1~2_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X56_Y50_N26
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U_AC|U_ALU|Mux0~3_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\U_AC|U_ALU|Mux0~3_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\U_AC|U_ALU|Mux0~3_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux0~3_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X56_Y50_N28
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X56_Y50_N30
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X56_Y50_N0
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\U_AC|U_ALU|Mux0~3_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux0~3_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X56_Y50_N18
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\U_AC|U_ALU|Mux1~2_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux1~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X56_Y50_N20
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X57_Y50_N4
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X56_Y50_N2
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\U_AC|U_ALU|Mux2~2_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux2~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X57_Y49_N0
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_AC|U_ALU|Mux3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_AC|U_ALU|Mux3~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X57_Y49_N2
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_AC|U_ALU|Mux3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_AC|U_ALU|Mux3~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X56_Y50_N4
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X56_Y50_N6
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X56_Y50_N8
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X56_Y50_N10
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X56_Y50_N12
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X56_Y50_N16
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\U_AC|U_ALU|Mux0~3_combout\)) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_AC|U_ALU|Mux0~3_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X57_Y50_N2
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X56_Y50_N14
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\U_AC|U_ALU|Mux1~2_combout\))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U_AC|U_ALU|Mux1~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X57_Y50_N8
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X56_Y49_N0
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X57_Y50_N28
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\U_AC|U_ALU|Mux2~2_combout\)) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \U_AC|U_ALU|Mux2~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X57_Y50_N6
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\U_AC|U_ALU|Mux3~2_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux3~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X57_Y50_N0
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X57_Y52_N20
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\U_AC|U_ALU|Mux4~2_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux4~2_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X57_Y52_N22
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\U_AC|U_ALU|Mux4~2_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux4~2_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X57_Y50_N10
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y50_N12
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y50_N14
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y50_N16
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X57_Y50_N18
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X57_Y50_N20
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X57_Y52_N8
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X57_Y50_N30
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X58_Y50_N26
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X57_Y50_N24
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X58_Y50_N16
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X57_Y50_N22
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X57_Y50_N26
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\U_AC|U_ALU|Mux3~2_combout\)) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_AC|U_ALU|Mux3~2_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X58_Y50_N18
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X57_Y52_N6
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X58_Y50_N24
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\U_AC|U_ALU|Mux4~2_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux4~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X57_Y52_N16
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_AC|U_ALU|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_AC|U_ALU|Mux5~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X57_Y52_N30
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_AC|U_ALU|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_AC|U_ALU|Mux5~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X58_Y50_N0
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X58_Y50_N2
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X58_Y50_N4
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X58_Y50_N6
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X58_Y50_N8
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X58_Y50_N10
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X58_Y50_N12
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X58_Y52_N22
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_AC|U_ALU|Mux6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_AC|U_ALU|Mux6~4_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X58_Y52_N20
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_AC|U_ALU|Mux6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_AC|U_ALU|Mux6~4_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X58_Y52_N4
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X58_Y50_N30
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X57_Y52_N4
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X58_Y50_N22
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X58_Y52_N24
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X57_Y52_N12
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X58_Y50_N20
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X58_Y50_N28
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X58_Y50_N14
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X57_Y52_N10
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\U_AC|U_ALU|Mux4~2_combout\)) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux4~2_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X58_Y52_N2
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X57_Y52_N14
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_AC|U_ALU|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U_AC|U_ALU|Mux5~2_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X58_Y52_N28
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X58_Y52_N6
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X58_Y52_N8
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))))
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X58_Y52_N10
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y52_N12
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X58_Y52_N14
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X58_Y52_N16
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X58_Y52_N18
\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X58_Y52_N26
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\U_AC|U_ALU|Mux6~4_combout\)) # 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux6~4_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X58_Y52_N30
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X58_Y52_N0
\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U_DISPLAY|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	combout => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X65_Y53_N24
\U_DISPLAY|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux6~0_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ 
-- & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & \U_AC|U_ALU|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \U_AC|U_ALU|Mux7~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \U_DISPLAY|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y53_N22
\U_DISPLAY|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux5~0_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\U_AC|U_ALU|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \U_AC|U_ALU|Mux7~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \U_DISPLAY|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y53_N12
\U_DISPLAY|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux4~0_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # 
-- (!\U_AC|U_ALU|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \U_AC|U_ALU|Mux7~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \U_DISPLAY|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y53_N2
\U_DISPLAY|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux3~0_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\U_AC|U_ALU|Mux7~2_combout\ & 
-- \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & \U_AC|U_ALU|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \U_AC|U_ALU|Mux7~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \U_DISPLAY|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y53_N28
\U_DISPLAY|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux2~0_combout\ = (\U_AC|U_ALU|Mux7~2_combout\) # ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)) # 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \U_AC|U_ALU|Mux7~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \U_DISPLAY|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y53_N14
\U_DISPLAY|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux1~0_combout\ = (\U_AC|U_ALU|Mux7~2_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\U_AC|U_ALU|Mux7~2_combout\ & ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \U_AC|U_ALU|Mux7~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \U_DISPLAY|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y53_N0
\U_DISPLAY|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux0~0_combout\ = (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\) 
-- # (!\U_AC|U_ALU|Mux7~2_combout\)))) # (!\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (((\U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \U_AC|U_ALU|Mux7~2_combout\,
	datad => \U_DISPLAY|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \U_DISPLAY|Mux0~0_combout\);

-- Location: LCCOMB_X59_Y50_N14
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U_AC|U_ALU|Mux2~2_combout\ $ (VCC)
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U_AC|U_ALU|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux2~2_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X59_Y50_N16
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U_AC|U_ALU|Mux1~2_combout\ & (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U_AC|U_ALU|Mux1~2_combout\ & 
-- (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U_AC|U_ALU|Mux1~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux1~2_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X59_Y50_N18
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U_AC|U_ALU|Mux0~3_combout\ & (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\U_AC|U_ALU|Mux0~3_combout\ & 
-- (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\U_AC|U_ALU|Mux0~3_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux0~3_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X59_Y50_N20
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X59_Y50_N12
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\U_AC|U_ALU|Mux0~3_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux0~3_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X59_Y50_N6
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X61_Y50_N20
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X61_Y50_N22
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_AC|U_ALU|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_AC|U_ALU|Mux1~2_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X59_Y50_N10
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X59_Y50_N4
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\U_AC|U_ALU|Mux2~2_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux2~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X59_Y50_N26
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\U_AC|U_ALU|Mux3~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux3~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X59_Y50_N24
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\U_AC|U_ALU|Mux3~2_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux3~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X60_Y50_N20
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X60_Y50_N22
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X60_Y50_N24
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X60_Y50_N26
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y50_N28
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y50_N0
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X61_Y50_N26
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\U_AC|U_ALU|Mux1~2_combout\))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_AC|U_ALU|Mux1~2_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X59_Y50_N22
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\U_AC|U_ALU|Mux2~2_combout\)) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_AC|U_ALU|Mux2~2_combout\,
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X60_Y51_N8
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X60_Y51_N26
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\U_AC|U_ALU|Mux3~2_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux3~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X60_Y51_N4
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X60_Y51_N10
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\U_AC|U_ALU|Mux4~2_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux4~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X60_Y51_N28
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\U_AC|U_ALU|Mux4~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux4~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X60_Y51_N16
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X60_Y51_N18
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X60_Y51_N20
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X60_Y51_N22
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y51_N24
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X61_Y50_N0
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X61_Y50_N2
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X61_Y50_N4
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X61_Y50_N6
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X61_Y50_N8
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X61_Y50_N10
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X61_Y50_N12
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X62_Y50_N26
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\ = (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\);

-- Location: LCCOMB_X61_Y50_N28
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X61_Y50_N30
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[54]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X61_Y50_N24
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[53]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: LCCOMB_X61_Y50_N18
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[52]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\);

-- Location: LCCOMB_X61_Y50_N16
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\);

-- Location: LCCOMB_X62_Y50_N2
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\ = (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\);

-- Location: LCCOMB_X61_Y50_N14
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\);

-- Location: LCCOMB_X62_Y50_N28
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\ = (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\);

-- Location: LCCOMB_X60_Y51_N30
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X60_Y51_N14
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X60_Y51_N6
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\U_AC|U_ALU|Mux3~2_combout\)) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux3~2_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X57_Y51_N20
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X58_Y51_N4
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X60_Y51_N12
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\U_AC|U_ALU|Mux4~2_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux4~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X56_Y51_N12
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\U_AC|U_ALU|Mux5~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux5~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X56_Y51_N6
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\U_AC|U_ALU|Mux5~2_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux5~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X57_Y51_N10
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X57_Y51_N12
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X57_Y51_N14
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X57_Y51_N16
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y51_N18
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y51_N8
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\ = (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\);

-- Location: LCCOMB_X56_Y51_N4
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X57_Y51_N24
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\);

-- Location: LCCOMB_X62_Y50_N8
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\) # (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\)))
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\) # (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X62_Y50_N10
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\) # 
-- (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\ & 
-- (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\)))
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\ & (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\ & 
-- !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X62_Y50_N12
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & (((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\)))))
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X62_Y50_N14
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\ & (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\ & 
-- !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X62_Y50_N16
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X62_Y50_N18
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\ & !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X62_Y50_N20
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X62_Y50_N22
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X62_Y50_N24
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\) # 
-- ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\);

-- Location: LCCOMB_X62_Y50_N6
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\) # 
-- ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\);

-- Location: LCCOMB_X62_Y50_N30
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\);

-- Location: LCCOMB_X57_Y51_N2
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X57_Y51_N22
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X57_Y51_N4
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X57_Y51_N28
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\U_AC|U_ALU|Mux4~2_combout\))) # (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \U_AC|U_ALU|Mux4~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X56_Y51_N26
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\U_AC|U_ALU|Mux5~2_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux5~2_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X57_Y51_N26
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X56_Y51_N10
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\U_AC|U_ALU|Mux6~4_combout\ & !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux6~4_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X56_Y51_N8
\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\U_AC|U_ALU|Mux6~4_combout\ & \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux6~4_combout\,
	datad => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X56_Y51_N16
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X56_Y51_N18
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X56_Y51_N20
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X56_Y51_N22
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \U_DISPLAY|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X56_Y51_N24
\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y50_N0
\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = !\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

-- Location: LCCOMB_X62_Y50_N4
\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (!\U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	combout => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\);

-- Location: LCCOMB_X69_Y50_N0
\U_DISPLAY|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux13~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\)))) # 
-- (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ $ (((!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	combout => \U_DISPLAY|Mux13~0_combout\);

-- Location: LCCOMB_X69_Y50_N30
\U_DISPLAY|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux12~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\) # (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ 
-- $ (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & 
-- (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	combout => \U_DISPLAY|Mux12~0_combout\);

-- Location: LCCOMB_X69_Y50_N16
\U_DISPLAY|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux11~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\)))) # 
-- (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\) # 
-- (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	combout => \U_DISPLAY|Mux11~0_combout\);

-- Location: LCCOMB_X69_Y50_N22
\U_DISPLAY|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux10~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\) # ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ 
-- & \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ $ 
-- (((!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	combout => \U_DISPLAY|Mux10~0_combout\);

-- Location: LCCOMB_X69_Y50_N28
\U_DISPLAY|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux9~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\) # ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & 
-- ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	combout => \U_DISPLAY|Mux9~0_combout\);

-- Location: LCCOMB_X69_Y50_N2
\U_DISPLAY|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux8~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\) # ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ 
-- & \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\) # 
-- ((!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	combout => \U_DISPLAY|Mux8~0_combout\);

-- Location: LCCOMB_X69_Y50_N12
\U_DISPLAY|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux7~0_combout\ = (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & ((!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\) 
-- # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\)))) # (!\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ $ 
-- ((\U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \U_DISPLAY|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	combout => \U_DISPLAY|Mux7~0_combout\);

-- Location: LCCOMB_X57_Y49_N8
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \U_AC|U_ALU|Mux4~2_combout\ $ (VCC)
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\U_AC|U_ALU|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux4~2_combout\,
	datad => VCC,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X57_Y49_N10
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\U_AC|U_ALU|Mux3~2_combout\ & (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\U_AC|U_ALU|Mux3~2_combout\ & 
-- (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\U_AC|U_ALU|Mux3~2_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux3~2_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X57_Y49_N12
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\U_AC|U_ALU|Mux2~2_combout\ & ((GND) # (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\U_AC|U_ALU|Mux2~2_combout\ & 
-- (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\U_AC|U_ALU|Mux2~2_combout\) # (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux2~2_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X57_Y49_N14
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\U_AC|U_ALU|Mux1~2_combout\ & (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\U_AC|U_ALU|Mux1~2_combout\ & 
-- ((\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\U_AC|U_ALU|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux1~2_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X57_Y49_N16
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\U_AC|U_ALU|Mux0~3_combout\ & (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\U_AC|U_ALU|Mux0~3_combout\ & 
-- (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\U_AC|U_ALU|Mux0~3_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux0~3_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X57_Y49_N18
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X58_Y49_N30
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X58_Y49_N28
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\U_AC|U_ALU|Mux0~3_combout\ & \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux0~3_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X57_Y49_N24
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X58_Y49_N20
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\U_AC|U_ALU|Mux1~2_combout\ & \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux1~2_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X57_Y49_N26
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X58_Y49_N0
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\U_AC|U_ALU|Mux2~2_combout\ & \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux2~2_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X57_Y49_N22
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X57_Y49_N4
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\U_AC|U_ALU|Mux3~2_combout\ & \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux3~2_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X58_Y49_N22
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\U_AC|U_ALU|Mux4~2_combout\ & \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_ALU|Mux4~2_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X58_Y49_N24
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X58_Y49_N26
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\U_AC|U_ALU|Mux5~2_combout\ & \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux5~2_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X58_Y49_N4
\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\U_AC|U_ALU|Mux5~2_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_ALU|Mux5~2_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X58_Y49_N6
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X58_Y49_N8
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X58_Y49_N10
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X58_Y49_N12
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X58_Y49_N14
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X58_Y49_N16
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \U_DISPLAY|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X58_Y49_N18
\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X77_Y44_N16
\U_DISPLAY|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux20~0_combout\ = (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISPLAY|Mux20~0_combout\);

-- Location: LCCOMB_X69_Y46_N16
\U_DISPLAY|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux18~0_combout\ = (\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_DISPLAY|Mux18~0_combout\);

-- Location: LCCOMB_X77_Y42_N8
\U_DISPLAY|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DISPLAY|Mux15~0_combout\ = (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (!\U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_DISPLAY|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \U_DISPLAY|Mux15~0_combout\);

-- Location: IOIBUF_X20_Y39_N1
\OPERAND1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(3),
	o => \OPERAND1[3]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\OPERAND1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(4),
	o => \OPERAND1[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\OPERAND1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(5),
	o => \OPERAND1[5]~input_o\);

-- Location: IOIBUF_X0_Y37_N8
\OPERAND1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(6),
	o => \OPERAND1[6]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\OPERAND1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(7),
	o => \OPERAND1[7]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_OUTP(0) <= \OUTP[0]~output_o\;

ww_OUTP(1) <= \OUTP[1]~output_o\;

ww_OUTP(2) <= \OUTP[2]~output_o\;

ww_OUTP(3) <= \OUTP[3]~output_o\;

ww_OUTP(4) <= \OUTP[4]~output_o\;

ww_OUTP(5) <= \OUTP[5]~output_o\;

ww_OUTP(6) <= \OUTP[6]~output_o\;

ww_OUTP(7) <= \OUTP[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;
END structure;


