-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "12/12/2025 13:12:41"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
	OUTP : OUT std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- OUTP[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \U_AC|U_FSM|NS~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_AC|U_FSM|CS~q\ : std_logic;
SIGNAL \U_AC|U_FSM|comb~0_combout\ : std_logic;
SIGNAL \OPERAND1[0]~input_o\ : std_logic;
SIGNAL \U_AC|U_DFF2|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_FSM|ENABLE~combout\ : std_logic;
SIGNAL \OPERAND2[0]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX_ADDR|Selector2~0_combout\ : std_logic;
SIGNAL \OPERAND2[2]~input_o\ : std_logic;
SIGNAL \OPERAND1[2]~input_o\ : std_logic;
SIGNAL \U_AC|U_DFF2|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_MUX_ADDR|Selector0~0_combout\ : std_logic;
SIGNAL \OPERAND2[1]~input_o\ : std_logic;
SIGNAL \OPERAND1[1]~input_o\ : std_logic;
SIGNAL \U_AC|U_DFF2|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_MUX_ADDR|Selector1~0_combout\ : std_logic;
SIGNAL \U_REG|P5|data~0_combout\ : std_logic;
SIGNAL \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P4|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P5|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P4|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~2_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P2|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P3|data~0_combout\ : std_logic;
SIGNAL \U_REG|P3|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P2|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~1_combout\ : std_logic;
SIGNAL \U_REG|P6|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P7|data~0_combout\ : std_logic;
SIGNAL \U_REG|P7|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P6|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~3_combout\ : std_logic;
SIGNAL \U_REG|P1|data~0_combout\ : std_logic;
SIGNAL \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P0|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P1|write_enable~0_combout\ : std_logic;
SIGNAL \U_REG|P0|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~4_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~5_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_EN1|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFF1|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU1|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU2|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU1|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU2|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_ALU2|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFFALU3|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~6_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~9_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~8_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~7_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~10_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~11_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~2_cout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~3_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux7~4_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~12_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~14_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~15_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~13_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~16_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~17_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~5_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~4\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~7\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~9_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~3_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~19_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~20_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~18_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[3]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[3]~21_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~22_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~23_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~4_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_EN2|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~11_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~10\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~12_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \OPERAND1[4]~input_o\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~24_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~26_combout\ : std_logic;
SIGNAL \U_REG|P6|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~27_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~25_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~28_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~29_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \OPERAND1[5]~input_o\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~32_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~31_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~30_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~33_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~34_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~35_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~14_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~13\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~15_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~17_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~16\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~18_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~36_combout\ : std_logic;
SIGNAL \OPERAND1[6]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[6]~39_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~40_combout\ : std_logic;
SIGNAL \U_REG|P0|my_storage_element|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~37_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~38_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~41_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \U_AC|U_DFF_EN2|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~20_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~19\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~21_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \OPERAND1[7]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[7]~45_combout\ : std_logic;
SIGNAL \U_REG|P2|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~43_combout\ : std_logic;
SIGNAL \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~44_combout\ : std_logic;
SIGNAL \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~42_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~46_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~47_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~23_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~22\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~24_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \U_AC|U_DFF1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_DFF_ALU1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_REG|P7|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P6|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P5|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P0|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF_ALU2|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_DFFALU3|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_DFF_EN2|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF_EN1|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P1|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF2|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF3|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_REG|P4|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P2|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P3|my_storage_element|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_AC|U_FSM|ALT_INV_ENABLE~combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\U_AC|U_FSM|ALT_INV_ENABLE~combout\ <= NOT \U_AC|U_FSM|ENABLE~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
	i => \U_AC|U_ALU|Mux7~4_combout\,
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
	i => \U_AC|U_ALU|Mux6~2_combout\,
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
	i => \U_AC|U_ALU|Mux5~4_combout\,
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
	i => \U_AC|U_ALU|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \OUTP[7]~output_o\);

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

-- Location: LCCOMB_X51_Y51_N0
\U_AC|U_FSM|NS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_FSM|NS~0_combout\ = (!\U_AC|U_FSM|CS~q\ & ((\OPCODE[2]~input_o\) # (\OPCODE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[2]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \U_AC|U_FSM|CS~q\,
	combout => \U_AC|U_FSM|NS~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\RST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X51_Y51_N1
\U_AC|U_FSM|CS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_FSM|NS~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_FSM|CS~q\);

-- Location: LCCOMB_X51_Y51_N30
\U_AC|U_FSM|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_FSM|comb~0_combout\ = (!\OPCODE[2]~input_o\ & (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & !\U_AC|U_FSM|CS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[2]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \U_AC|U_FSM|CS~q\,
	combout => \U_AC|U_FSM|comb~0_combout\);

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

-- Location: LCCOMB_X52_Y51_N28
\U_AC|U_DFF2|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF2|internal_Q[0]~feeder_combout\ = \OPERAND1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[0]~input_o\,
	combout => \U_AC|U_DFF2|internal_Q[0]~feeder_combout\);

-- Location: FF_X52_Y51_N29
\U_AC|U_DFF2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF2|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N14
\U_AC|U_FSM|ENABLE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_FSM|ENABLE~combout\ = (!\U_AC|U_FSM|comb~0_combout\ & ((\U_AC|U_FSM|ENABLE~combout\) # (\U_AC|U_FSM|CS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_FSM|ENABLE~combout\,
	datad => \U_AC|U_FSM|CS~q\,
	combout => \U_AC|U_FSM|ENABLE~combout\);

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

-- Location: FF_X52_Y51_N19
\U_AC|U_DFF3|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND2[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF3|internal_Q\(0));

-- Location: LCCOMB_X52_Y51_N18
\U_AC|U_MUX_ADDR|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX_ADDR|Selector2~0_combout\ = (\U_AC|U_FSM|ENABLE~combout\ & ((\U_AC|U_DFF2|internal_Q\(0)))) # (!\U_AC|U_FSM|ENABLE~combout\ & (\U_AC|U_DFF3|internal_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|ENABLE~combout\,
	datac => \U_AC|U_DFF3|internal_Q\(0),
	datad => \U_AC|U_DFF2|internal_Q\(0),
	combout => \U_AC|U_MUX_ADDR|Selector2~0_combout\);

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

-- Location: FF_X51_Y51_N23
\U_AC|U_DFF3|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND2[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
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

-- Location: LCCOMB_X51_Y51_N28
\U_AC|U_DFF2|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF2|internal_Q[2]~feeder_combout\ = \OPERAND1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[2]~input_o\,
	combout => \U_AC|U_DFF2|internal_Q[2]~feeder_combout\);

-- Location: FF_X51_Y51_N29
\U_AC|U_DFF2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF2|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(2));

-- Location: LCCOMB_X51_Y51_N22
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

-- Location: FF_X51_Y51_N11
\U_AC|U_DFF3|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND2[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
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

-- Location: LCCOMB_X51_Y51_N24
\U_AC|U_DFF2|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF2|internal_Q[1]~feeder_combout\ = \OPERAND1[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[1]~input_o\,
	combout => \U_AC|U_DFF2|internal_Q[1]~feeder_combout\);

-- Location: FF_X51_Y51_N25
\U_AC|U_DFF2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF2|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(1));

-- Location: LCCOMB_X51_Y51_N10
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

-- Location: LCCOMB_X50_Y51_N12
\U_REG|P5|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P5|data~0_combout\);

-- Location: LCCOMB_X50_Y51_N28
\U_REG|P4|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~5_combout\,
	combout => \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: LCCOMB_X51_Y51_N18
\U_REG|P4|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|write_enable~0_combout\ = (\U_AC|U_FSM|comb~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & !\U_AC|U_MUX_ADDR|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	combout => \U_REG|P4|write_enable~0_combout\);

-- Location: FF_X50_Y51_N29
\U_REG|P4|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P4|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N20
\U_REG|P5|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|write_enable~0_combout\ = (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (\U_AC|U_FSM|comb~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & \U_AC|U_MUX_ADDR|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	combout => \U_REG|P5|write_enable~0_combout\);

-- Location: FF_X50_Y51_N3
\U_REG|P5|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X50_Y51_N6
\U_REG|P4|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|data~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P4|data~0_combout\);

-- Location: LCCOMB_X50_Y51_N2
\U_AC|DATA[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~2_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|my_storage_element|internal_Q\(0) & ((\U_REG|P4|my_storage_element|internal_Q\(0)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & 
-- ((\U_REG|P4|my_storage_element|internal_Q\(0)) # ((!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P4|my_storage_element|internal_Q\(0),
	datac => \U_REG|P5|my_storage_element|internal_Q\(0),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[0]~2_combout\);

-- Location: LCCOMB_X52_Y52_N16
\U_REG|P2|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~5_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y52_N12
\U_REG|P2|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|write_enable~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & \U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P2|write_enable~0_combout\);

-- Location: FF_X52_Y52_N17
\U_REG|P2|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X52_Y52_N28
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

-- Location: LCCOMB_X52_Y52_N6
\U_REG|P3|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|write_enable~0_combout\ = (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & \U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P3|write_enable~0_combout\);

-- Location: FF_X52_Y52_N23
\U_REG|P3|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X51_Y52_N8
\U_REG|P2|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|data~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P2|data~0_combout\);

-- Location: LCCOMB_X52_Y52_N22
\U_AC|DATA[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~1_combout\ = (\U_REG|P2|my_storage_element|internal_Q\(0) & (((\U_REG|P3|my_storage_element|internal_Q\(0))) # (!\U_REG|P3|data~0_combout\))) # (!\U_REG|P2|my_storage_element|internal_Q\(0) & (!\U_REG|P2|data~0_combout\ & 
-- ((\U_REG|P3|my_storage_element|internal_Q\(0)) # (!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|my_storage_element|internal_Q\(0),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P3|my_storage_element|internal_Q\(0),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[0]~1_combout\);

-- Location: LCCOMB_X51_Y52_N6
\U_REG|P6|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|write_enable~0_combout\ = (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & \U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P6|write_enable~0_combout\);

-- Location: FF_X51_Y52_N19
\U_REG|P6|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N2
\U_REG|P7|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_FSM|comb~0_combout\ & \U_AC|U_MUX_ADDR|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	combout => \U_REG|P7|data~0_combout\);

-- Location: LCCOMB_X50_Y52_N10
\U_REG|P7|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|write_enable~0_combout\ = (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & \U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P7|write_enable~0_combout\);

-- Location: FF_X50_Y52_N31
\U_REG|P7|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[0]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X50_Y52_N20
\U_REG|P6|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|data~0_combout\ = (\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P6|data~0_combout\);

-- Location: LCCOMB_X50_Y52_N14
\U_AC|DATA[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~3_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(0) & (((\U_REG|P7|my_storage_element|internal_Q\(0))) # (!\U_REG|P7|data~0_combout\))) # (!\U_REG|P6|my_storage_element|internal_Q\(0) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(0)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(0),
	datab => \U_REG|P7|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(0),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[0]~3_combout\);

-- Location: LCCOMB_X50_Y50_N30
\U_REG|P1|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|data~0_combout\ = (!\U_AC|U_FSM|comb~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_MUX_ADDR|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	combout => \U_REG|P1|data~0_combout\);

-- Location: LCCOMB_X50_Y52_N4
\U_REG|P0|my_storage_element|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~5_combout\,
	combout => \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y52_N6
\U_REG|P0|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|write_enable~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector2~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & \U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datad => \U_AC|U_FSM|comb~0_combout\,
	combout => \U_REG|P0|write_enable~0_combout\);

-- Location: FF_X50_Y52_N5
\U_REG|P0|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P0|my_storage_element|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X50_Y50_N10
\U_REG|P1|write_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|write_enable~0_combout\ = (\U_AC|U_FSM|comb~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (\U_AC|U_MUX_ADDR|Selector2~0_combout\ & !\U_AC|U_MUX_ADDR|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_FSM|comb~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	combout => \U_REG|P1|write_enable~0_combout\);

-- Location: FF_X50_Y50_N17
\U_REG|P1|my_storage_element|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N4
\U_REG|P0|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|data~0_combout\ = (!\U_AC|U_MUX_ADDR|Selector0~0_combout\ & (!\U_AC|U_MUX_ADDR|Selector1~0_combout\ & (!\U_AC|U_FSM|comb~0_combout\ & !\U_AC|U_MUX_ADDR|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX_ADDR|Selector0~0_combout\,
	datab => \U_AC|U_MUX_ADDR|Selector1~0_combout\,
	datac => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|U_MUX_ADDR|Selector2~0_combout\,
	combout => \U_REG|P0|data~0_combout\);

-- Location: LCCOMB_X50_Y50_N16
\U_AC|DATA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~0_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(0) & ((\U_REG|P0|my_storage_element|internal_Q\(0)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
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
	combout => \U_AC|DATA[0]~0_combout\);

-- Location: LCCOMB_X50_Y52_N16
\U_AC|DATA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~4_combout\ = (\U_AC|DATA[0]~2_combout\ & (\U_AC|DATA[0]~1_combout\ & (\U_AC|DATA[0]~3_combout\ & \U_AC|DATA[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[0]~2_combout\,
	datab => \U_AC|DATA[0]~1_combout\,
	datac => \U_AC|DATA[0]~3_combout\,
	datad => \U_AC|DATA[0]~0_combout\,
	combout => \U_AC|DATA[0]~4_combout\);

-- Location: LCCOMB_X50_Y52_N30
\U_AC|DATA[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~5_combout\ = (\U_AC|DATA[0]~4_combout\ & ((\U_AC|U_DFF2|internal_Q\(0)) # (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_DFF2|internal_Q\(0),
	datad => \U_AC|DATA[0]~4_combout\,
	combout => \U_AC|DATA[0]~5_combout\);

-- Location: LCCOMB_X50_Y53_N28
\U_AC|U_DFF_EN1|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_EN1|internal_Q[0]~feeder_combout\ = \U_AC|DATA[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~5_combout\,
	combout => \U_AC|U_DFF_EN1|internal_Q[0]~feeder_combout\);

-- Location: FF_X50_Y53_N29
\U_AC|U_DFF_EN1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_EN1|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(0));

-- Location: LCCOMB_X51_Y53_N16
\U_AC|U_DFF1|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF1|internal_Q[2]~feeder_combout\ = \OPCODE[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPCODE[2]~input_o\,
	combout => \U_AC|U_DFF1|internal_Q[2]~feeder_combout\);

-- Location: FF_X51_Y53_N17
\U_AC|U_DFF1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF1|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(2));

-- Location: LCCOMB_X51_Y53_N24
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

-- Location: FF_X51_Y53_N25
\U_AC|U_DFF_ALU1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU1|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU1|internal_Q\(2));

-- Location: LCCOMB_X51_Y53_N14
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

-- Location: FF_X51_Y53_N15
\U_AC|U_DFF_ALU2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU2|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU2|internal_Q\(2));

-- Location: FF_X51_Y53_N7
\U_AC|U_DFFALU3|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF_ALU2|internal_Q\(2),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU3|internal_Q\(2));

-- Location: FF_X51_Y53_N27
\U_AC|U_DFF_EN2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[0]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(0));

-- Location: FF_X51_Y53_N11
\U_AC|U_DFF1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPCODE[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(1));

-- Location: LCCOMB_X51_Y53_N28
\U_AC|U_DFF_ALU1|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_ALU1|internal_Q[1]~feeder_combout\ = \U_AC|U_DFF1|internal_Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF1|internal_Q\(1),
	combout => \U_AC|U_DFF_ALU1|internal_Q[1]~feeder_combout\);

-- Location: FF_X51_Y53_N29
\U_AC|U_DFF_ALU1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU1|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU1|internal_Q\(1));

-- Location: LCCOMB_X51_Y53_N30
\U_AC|U_DFF_ALU2|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_ALU2|internal_Q[1]~feeder_combout\ = \U_AC|U_DFF_ALU1|internal_Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF_ALU1|internal_Q\(1),
	combout => \U_AC|U_DFF_ALU2|internal_Q[1]~feeder_combout\);

-- Location: FF_X51_Y53_N31
\U_AC|U_DFF_ALU2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU2|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU2|internal_Q\(1));

-- Location: FF_X51_Y53_N9
\U_AC|U_DFFALU3|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF_ALU2|internal_Q\(1),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU3|internal_Q\(1));

-- Location: LCCOMB_X51_Y53_N26
\U_AC|U_ALU|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~3_combout\ = (!\U_AC|U_DFFALU3|internal_Q\(2) & ((\U_AC|U_DFFALU3|internal_Q\(1) & ((!\U_AC|U_DFF_EN2|internal_Q\(0)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(0),
	datab => \U_AC|U_DFFALU3|internal_Q\(2),
	datac => \U_AC|U_DFF_EN2|internal_Q\(0),
	datad => \U_AC|U_DFFALU3|internal_Q\(1),
	combout => \U_AC|U_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X51_Y53_N20
\U_AC|U_ALU|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~1_combout\ = (\U_AC|U_DFF_EN2|internal_Q\(0) & (!\U_AC|U_DFFALU3|internal_Q\(2) & ((\U_AC|U_DFF_EN1|internal_Q\(0)) # (!\U_AC|U_DFFALU3|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN2|internal_Q\(0),
	datab => \U_AC|U_DFFALU3|internal_Q\(2),
	datac => \U_AC|U_DFFALU3|internal_Q\(1),
	datad => \U_AC|U_DFF_EN1|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
\U_AC|U_ALU|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(1) & \U_AC|U_DFFALU3|internal_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datad => \U_AC|U_DFFALU3|internal_Q\(2),
	combout => \U_AC|U_ALU|Mux5~0_combout\);

-- Location: FF_X52_Y53_N5
\U_AC|U_DFF1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPCODE[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(0));

-- Location: FF_X52_Y53_N11
\U_AC|U_DFF_ALU1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|U_DFF1|internal_Q\(0),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU1|internal_Q\(0));

-- Location: LCCOMB_X52_Y53_N0
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

-- Location: FF_X52_Y53_N1
\U_AC|U_DFF_ALU2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_ALU2|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_ALU2|internal_Q\(0));

-- Location: LCCOMB_X52_Y53_N2
\U_AC|U_DFFALU3|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFFALU3|internal_Q[0]~feeder_combout\ = \U_AC|U_DFF_ALU2|internal_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF_ALU2|internal_Q\(0),
	combout => \U_AC|U_DFFALU3|internal_Q[0]~feeder_combout\);

-- Location: FF_X52_Y53_N3
\U_AC|U_DFFALU3|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFFALU3|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU3|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N8
\U_REG|P1|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[1]~11_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: FF_X51_Y51_N9
\U_REG|P1|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(1));

-- Location: FF_X50_Y52_N27
\U_REG|P0|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X50_Y52_N26
\U_AC|DATA[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~6_combout\ = (\U_REG|P0|data~0_combout\ & (\U_REG|P0|my_storage_element|internal_Q\(1) & ((\U_REG|P1|my_storage_element|internal_Q\(1)) # (!\U_REG|P1|data~0_combout\)))) # (!\U_REG|P0|data~0_combout\ & 
-- ((\U_REG|P1|my_storage_element|internal_Q\(1)) # ((!\U_REG|P1|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~0_combout\,
	datab => \U_REG|P1|my_storage_element|internal_Q\(1),
	datac => \U_REG|P0|my_storage_element|internal_Q\(1),
	datad => \U_REG|P1|data~0_combout\,
	combout => \U_AC|DATA[1]~6_combout\);

-- Location: FF_X51_Y52_N11
\U_REG|P6|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[1]~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(1));

-- Location: FF_X50_Y52_N25
\U_REG|P7|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X50_Y52_N24
\U_AC|DATA[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~9_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(1) & (((\U_REG|P7|my_storage_element|internal_Q\(1))) # (!\U_REG|P7|data~0_combout\))) # (!\U_REG|P6|my_storage_element|internal_Q\(1) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(1)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(1),
	datab => \U_REG|P7|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(1),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[1]~9_combout\);

-- Location: LCCOMB_X50_Y51_N0
\U_REG|P5|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[1]~11_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: FF_X50_Y51_N1
\U_REG|P5|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(1));

-- Location: FF_X50_Y51_N11
\U_REG|P4|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X50_Y51_N10
\U_AC|DATA[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~8_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|my_storage_element|internal_Q\(1) & ((\U_REG|P4|my_storage_element|internal_Q\(1)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & 
-- (((\U_REG|P4|my_storage_element|internal_Q\(1)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(1),
	datac => \U_REG|P4|my_storage_element|internal_Q\(1),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[1]~8_combout\);

-- Location: LCCOMB_X52_Y52_N0
\U_REG|P2|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[1]~11_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: FF_X52_Y52_N1
\U_REG|P2|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X52_Y52_N18
\U_REG|P3|my_storage_element|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\ = \U_AC|DATA[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[1]~11_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\);

-- Location: FF_X52_Y52_N19
\U_REG|P3|my_storage_element|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(1));

-- Location: LCCOMB_X51_Y52_N28
\U_AC|DATA[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~7_combout\ = (\U_REG|P2|my_storage_element|internal_Q\(1) & ((\U_REG|P3|my_storage_element|internal_Q\(1)) # ((!\U_REG|P3|data~0_combout\)))) # (!\U_REG|P2|my_storage_element|internal_Q\(1) & (!\U_REG|P2|data~0_combout\ & 
-- ((\U_REG|P3|my_storage_element|internal_Q\(1)) # (!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|my_storage_element|internal_Q\(1),
	datab => \U_REG|P3|my_storage_element|internal_Q\(1),
	datac => \U_REG|P2|data~0_combout\,
	datad => \U_REG|P3|data~0_combout\,
	combout => \U_AC|DATA[1]~7_combout\);

-- Location: LCCOMB_X50_Y52_N18
\U_AC|DATA[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~10_combout\ = (\U_AC|DATA[1]~6_combout\ & (\U_AC|DATA[1]~9_combout\ & (\U_AC|DATA[1]~8_combout\ & \U_AC|DATA[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[1]~6_combout\,
	datab => \U_AC|DATA[1]~9_combout\,
	datac => \U_AC|DATA[1]~8_combout\,
	datad => \U_AC|DATA[1]~7_combout\,
	combout => \U_AC|DATA[1]~10_combout\);

-- Location: LCCOMB_X51_Y52_N10
\U_AC|DATA[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~11_combout\ = (\U_AC|DATA[1]~10_combout\ & ((\U_AC|U_DFF2|internal_Q\(1)) # (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFF2|internal_Q\(1),
	datac => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|DATA[1]~10_combout\,
	combout => \U_AC|DATA[1]~11_combout\);

-- Location: FF_X52_Y50_N5
\U_AC|U_DFF_EN1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(1));

-- Location: LCCOMB_X51_Y53_N22
\U_AC|U_ALU|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~2_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_ALU|Mux7~1_combout\) # ((\U_AC|U_ALU|Mux5~0_combout\ & \U_AC|U_DFF_EN1|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux7~1_combout\,
	datab => \U_AC|U_ALU|Mux5~0_combout\,
	datac => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => \U_AC|U_DFF_EN1|internal_Q\(1),
	combout => \U_AC|U_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X51_Y53_N12
\U_AC|U_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~0_combout\ = \U_AC|U_DFFALU3|internal_Q\(0) $ (\U_AC|U_DFF_EN1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datab => \U_AC|U_DFF_EN1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~0_combout\);

-- Location: LCCOMB_X52_Y53_N12
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

-- Location: LCCOMB_X52_Y53_N14
\U_AC|U_ALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~3_combout\ = (\U_AC|U_DFF_EN2|internal_Q\(0) & ((\U_AC|U_ALU|Add0~0_combout\ & (\U_AC|U_ALU|Add0~2_cout\ & VCC)) # (!\U_AC|U_ALU|Add0~0_combout\ & (!\U_AC|U_ALU|Add0~2_cout\)))) # (!\U_AC|U_DFF_EN2|internal_Q\(0) & 
-- ((\U_AC|U_ALU|Add0~0_combout\ & (!\U_AC|U_ALU|Add0~2_cout\)) # (!\U_AC|U_ALU|Add0~0_combout\ & ((\U_AC|U_ALU|Add0~2_cout\) # (GND)))))
-- \U_AC|U_ALU|Add0~4\ = CARRY((\U_AC|U_DFF_EN2|internal_Q\(0) & (!\U_AC|U_ALU|Add0~0_combout\ & !\U_AC|U_ALU|Add0~2_cout\)) # (!\U_AC|U_DFF_EN2|internal_Q\(0) & ((!\U_AC|U_ALU|Add0~2_cout\) # (!\U_AC|U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN2|internal_Q\(0),
	datab => \U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~2_cout\,
	combout => \U_AC|U_ALU|Add0~3_combout\,
	cout => \U_AC|U_ALU|Add0~4\);

-- Location: LCCOMB_X51_Y53_N18
\U_AC|U_ALU|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~0_combout\ = (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_ALU|Add0~3_combout\ & \U_AC|U_DFFALU3|internal_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datab => \U_AC|U_ALU|Add0~3_combout\,
	datad => \U_AC|U_DFFALU3|internal_Q\(2),
	combout => \U_AC|U_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X50_Y53_N2
\U_AC|U_ALU|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux7~4_combout\ = (\U_AC|U_ALU|Mux7~2_combout\) # ((\U_AC|U_ALU|Mux7~0_combout\) # ((\U_AC|U_ALU|Mux7~3_combout\ & !\U_AC|U_DFFALU3|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux7~3_combout\,
	datab => \U_AC|U_ALU|Mux7~2_combout\,
	datac => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => \U_AC|U_ALU|Mux7~0_combout\,
	combout => \U_AC|U_ALU|Mux7~4_combout\);

-- Location: FF_X51_Y53_N5
\U_AC|U_DFF_EN2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[1]~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(1));

-- Location: LCCOMB_X51_Y53_N0
\U_AC|U_ALU|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(1) & ((\U_AC|U_DFF_EN1|internal_Q\(1)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(1)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(1),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => \U_AC|U_DFF_EN2|internal_Q\(1),
	combout => \U_AC|U_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y50_N24
\U_AC|U_ALU|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~1_combout\ = (\U_AC|U_DFFALU3|internal_Q\(2) & ((\U_AC|U_DFFALU3|internal_Q\(0)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(2),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X52_Y50_N14
\U_AC|U_ALU|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~1_combout\ = (\U_AC|U_ALU|Mux5~1_combout\ & (((\U_AC|U_ALU|Mux5~0_combout\)))) # (!\U_AC|U_ALU|Mux5~1_combout\ & ((\U_AC|U_ALU|Mux5~0_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(0)))) # (!\U_AC|U_ALU|Mux5~0_combout\ & 
-- (\U_AC|U_ALU|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux6~0_combout\,
	datab => \U_AC|U_ALU|Mux5~1_combout\,
	datac => \U_AC|U_ALU|Mux5~0_combout\,
	datad => \U_AC|U_DFF_EN1|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X50_Y50_N20
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

-- Location: FF_X50_Y50_N21
\U_REG|P1|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(2));

-- Location: FF_X50_Y50_N15
\U_REG|P0|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X50_Y50_N14
\U_AC|DATA[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~12_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(2) & ((\U_REG|P0|my_storage_element|internal_Q\(2)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
-- (((\U_REG|P0|my_storage_element|internal_Q\(2)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|data~0_combout\,
	datab => \U_REG|P1|my_storage_element|internal_Q\(2),
	datac => \U_REG|P0|my_storage_element|internal_Q\(2),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[2]~12_combout\);

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
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(2));

-- Location: FF_X50_Y51_N31
\U_REG|P4|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X50_Y51_N30
\U_AC|DATA[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~14_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|my_storage_element|internal_Q\(2) & ((\U_REG|P4|my_storage_element|internal_Q\(2)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & 
-- (((\U_REG|P4|my_storage_element|internal_Q\(2)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(2),
	datac => \U_REG|P4|my_storage_element|internal_Q\(2),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[2]~14_combout\);

-- Location: FF_X51_Y50_N25
\U_REG|P6|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(2));

-- Location: FF_X50_Y52_N29
\U_REG|P7|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X50_Y52_N28
\U_AC|DATA[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~15_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(2) & (((\U_REG|P7|my_storage_element|internal_Q\(2))) # (!\U_REG|P7|data~0_combout\))) # (!\U_REG|P6|my_storage_element|internal_Q\(2) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(2)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(2),
	datab => \U_REG|P7|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(2),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[2]~15_combout\);

-- Location: LCCOMB_X52_Y52_N26
\U_REG|P3|my_storage_element|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[2]~feeder_combout\ = \U_AC|DATA[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[2]~17_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[2]~feeder_combout\);

-- Location: FF_X52_Y52_N27
\U_REG|P3|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(2));

-- Location: FF_X52_Y52_N9
\U_REG|P2|my_storage_element|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(2));

-- Location: LCCOMB_X52_Y52_N8
\U_AC|DATA[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~13_combout\ = (\U_REG|P3|my_storage_element|internal_Q\(2) & (((\U_REG|P2|my_storage_element|internal_Q\(2)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|my_storage_element|internal_Q\(2) & (!\U_REG|P3|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(2)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|my_storage_element|internal_Q\(2),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|my_storage_element|internal_Q\(2),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[2]~13_combout\);

-- Location: LCCOMB_X51_Y50_N12
\U_AC|DATA[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~16_combout\ = (\U_AC|DATA[2]~12_combout\ & (\U_AC|DATA[2]~14_combout\ & (\U_AC|DATA[2]~15_combout\ & \U_AC|DATA[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[2]~12_combout\,
	datab => \U_AC|DATA[2]~14_combout\,
	datac => \U_AC|DATA[2]~15_combout\,
	datad => \U_AC|DATA[2]~13_combout\,
	combout => \U_AC|DATA[2]~16_combout\);

-- Location: LCCOMB_X51_Y50_N10
\U_AC|DATA[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~17_combout\ = (\U_AC|DATA[2]~16_combout\ & ((\U_AC|U_DFF2|internal_Q\(2)) # (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFF2|internal_Q\(2),
	datac => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|DATA[2]~16_combout\,
	combout => \U_AC|DATA[2]~17_combout\);

-- Location: FF_X52_Y50_N25
\U_AC|U_DFF_EN1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(2));

-- Location: LCCOMB_X52_Y53_N8
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

-- Location: LCCOMB_X52_Y53_N16
\U_AC|U_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~6_combout\ = ((\U_AC|U_ALU|Add0~5_combout\ $ (\U_AC|U_DFF_EN2|internal_Q\(1) $ (!\U_AC|U_ALU|Add0~4\)))) # (GND)
-- \U_AC|U_ALU|Add0~7\ = CARRY((\U_AC|U_ALU|Add0~5_combout\ & ((\U_AC|U_DFF_EN2|internal_Q\(1)) # (!\U_AC|U_ALU|Add0~4\))) # (!\U_AC|U_ALU|Add0~5_combout\ & (\U_AC|U_DFF_EN2|internal_Q\(1) & !\U_AC|U_ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~5_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(1),
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~4\,
	combout => \U_AC|U_ALU|Add0~6_combout\,
	cout => \U_AC|U_ALU|Add0~7\);

-- Location: LCCOMB_X51_Y50_N30
\U_AC|U_ALU|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux6~2_combout\ = (\U_AC|U_ALU|Mux6~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(2)) # ((!\U_AC|U_ALU|Mux5~1_combout\)))) # (!\U_AC|U_ALU|Mux6~1_combout\ & (((\U_AC|U_ALU|Add0~6_combout\ & \U_AC|U_ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux6~1_combout\,
	datab => \U_AC|U_DFF_EN1|internal_Q\(2),
	datac => \U_AC|U_ALU|Add0~6_combout\,
	datad => \U_AC|U_ALU|Mux5~1_combout\,
	combout => \U_AC|U_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X52_Y50_N6
\U_AC|U_ALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~8_combout\ = \U_AC|U_DFFALU3|internal_Q\(0) $ (\U_AC|U_DFF_EN1|internal_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => \U_AC|U_DFF_EN1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~8_combout\);

-- Location: FF_X51_Y50_N21
\U_AC|U_DFF_EN2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[2]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(2));

-- Location: LCCOMB_X52_Y53_N18
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

-- Location: LCCOMB_X51_Y50_N20
\U_AC|U_ALU|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~2_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(2) & ((\U_AC|U_DFF_EN1|internal_Q\(2)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- (!\U_AC|U_DFF_EN2|internal_Q\(2))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & ((\U_AC|U_DFF_EN1|internal_Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(2),
	datad => \U_AC|U_DFF_EN1|internal_Q\(2),
	combout => \U_AC|U_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X52_Y50_N12
\U_AC|U_ALU|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~3_combout\ = (\U_AC|U_ALU|Mux5~1_combout\ & ((\U_AC|U_ALU|Add0~9_combout\) # ((\U_AC|U_ALU|Mux5~0_combout\)))) # (!\U_AC|U_ALU|Mux5~1_combout\ & (((!\U_AC|U_ALU|Mux5~0_combout\ & \U_AC|U_ALU|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~9_combout\,
	datab => \U_AC|U_ALU|Mux5~1_combout\,
	datac => \U_AC|U_ALU|Mux5~0_combout\,
	datad => \U_AC|U_ALU|Mux5~2_combout\,
	combout => \U_AC|U_ALU|Mux5~3_combout\);

-- Location: LCCOMB_X52_Y51_N8
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

-- Location: FF_X52_Y51_N9
\U_REG|P5|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(3));

-- Location: FF_X50_Y51_N25
\U_REG|P4|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X50_Y51_N24
\U_AC|DATA[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~19_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|my_storage_element|internal_Q\(3) & ((\U_REG|P5|my_storage_element|internal_Q\(3)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & 
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
	combout => \U_AC|DATA[3]~19_combout\);

-- Location: LCCOMB_X50_Y53_N12
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

-- Location: FF_X50_Y53_N13
\U_REG|P2|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(3));

-- Location: FF_X51_Y52_N25
\U_REG|P6|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X51_Y52_N24
\U_AC|DATA[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~20_combout\ = (\U_REG|P2|my_storage_element|internal_Q\(3) & (((\U_REG|P6|my_storage_element|internal_Q\(3)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P2|my_storage_element|internal_Q\(3) & (!\U_REG|P2|data~0_combout\ & 
-- ((\U_REG|P6|my_storage_element|internal_Q\(3)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|my_storage_element|internal_Q\(3),
	datab => \U_REG|P2|data~0_combout\,
	datac => \U_REG|P6|my_storage_element|internal_Q\(3),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[3]~20_combout\);

-- Location: LCCOMB_X50_Y50_N12
\U_REG|P1|my_storage_element|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[3]~23_combout\,
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
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(3));

-- Location: FF_X50_Y50_N23
\U_REG|P0|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(3));

-- Location: LCCOMB_X50_Y50_N22
\U_AC|DATA[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~18_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(3) & ((\U_REG|P0|my_storage_element|internal_Q\(3)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
-- (((\U_REG|P0|my_storage_element|internal_Q\(3)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|data~0_combout\,
	datab => \U_REG|P1|my_storage_element|internal_Q\(3),
	datac => \U_REG|P0|my_storage_element|internal_Q\(3),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[3]~18_combout\);

-- Location: LCCOMB_X52_Y52_N10
\U_REG|P3|my_storage_element|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[3]~23_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\);

-- Location: FF_X52_Y52_N11
\U_REG|P3|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(3));

-- Location: FF_X51_Y52_N31
\U_REG|P7|my_storage_element|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[3]~23_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(3));

-- Location: IOIBUF_X49_Y54_N15
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

-- Location: FF_X51_Y51_N7
\U_AC|U_DFF2|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[3]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(3));

-- Location: LCCOMB_X51_Y51_N6
\U_AC|DATA[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~21_combout\ = (\U_REG|P7|my_storage_element|internal_Q\(3) & (((\U_AC|U_DFF2|internal_Q\(3))) # (!\U_AC|U_FSM|comb~0_combout\))) # (!\U_REG|P7|my_storage_element|internal_Q\(3) & (!\U_REG|P7|data~0_combout\ & ((\U_AC|U_DFF2|internal_Q\(3)) # 
-- (!\U_AC|U_FSM|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|my_storage_element|internal_Q\(3),
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_DFF2|internal_Q\(3),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[3]~21_combout\);

-- Location: LCCOMB_X51_Y52_N18
\U_AC|DATA[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~22_combout\ = (\U_AC|DATA[3]~21_combout\ & ((\U_REG|P3|my_storage_element|internal_Q\(3)) # (!\U_REG|P3|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|my_storage_element|internal_Q\(3),
	datab => \U_REG|P3|data~0_combout\,
	datad => \U_AC|DATA[3]~21_combout\,
	combout => \U_AC|DATA[3]~22_combout\);

-- Location: LCCOMB_X51_Y52_N30
\U_AC|DATA[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~23_combout\ = (\U_AC|DATA[3]~19_combout\ & (\U_AC|DATA[3]~20_combout\ & (\U_AC|DATA[3]~18_combout\ & \U_AC|DATA[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[3]~19_combout\,
	datab => \U_AC|DATA[3]~20_combout\,
	datac => \U_AC|DATA[3]~18_combout\,
	datad => \U_AC|DATA[3]~22_combout\,
	combout => \U_AC|DATA[3]~23_combout\);

-- Location: FF_X52_Y50_N19
\U_AC|U_DFF_EN1|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[3]~23_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(3));

-- Location: LCCOMB_X52_Y50_N8
\U_AC|U_ALU|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~4_combout\ = (\U_AC|U_ALU|Mux5~3_combout\ & (((\U_AC|U_DFF_EN1|internal_Q\(3)) # (!\U_AC|U_ALU|Mux5~0_combout\)))) # (!\U_AC|U_ALU|Mux5~3_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(1) & (\U_AC|U_ALU|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux5~3_combout\,
	datab => \U_AC|U_DFF_EN1|internal_Q\(1),
	datac => \U_AC|U_ALU|Mux5~0_combout\,
	datad => \U_AC|U_DFF_EN1|internal_Q\(3),
	combout => \U_AC|U_ALU|Mux5~4_combout\);

-- Location: LCCOMB_X52_Y53_N30
\U_AC|U_DFF_EN2|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_EN2|internal_Q[3]~feeder_combout\ = \U_AC|DATA[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[3]~23_combout\,
	combout => \U_AC|U_DFF_EN2|internal_Q[3]~feeder_combout\);

-- Location: FF_X52_Y53_N31
\U_AC|U_DFF_EN2|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_EN2|internal_Q[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(3));

-- Location: LCCOMB_X52_Y50_N24
\U_AC|U_ALU|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~11_combout\ = \U_AC|U_DFFALU3|internal_Q\(0) $ (\U_AC|U_DFF_EN1|internal_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datad => \U_AC|U_DFF_EN1|internal_Q\(3),
	combout => \U_AC|U_ALU|Add0~11_combout\);

-- Location: LCCOMB_X52_Y53_N20
\U_AC|U_ALU|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~12_combout\ = ((\U_AC|U_DFF_EN2|internal_Q\(3) $ (\U_AC|U_ALU|Add0~11_combout\ $ (!\U_AC|U_ALU|Add0~10\)))) # (GND)
-- \U_AC|U_ALU|Add0~13\ = CARRY((\U_AC|U_DFF_EN2|internal_Q\(3) & ((\U_AC|U_ALU|Add0~11_combout\) # (!\U_AC|U_ALU|Add0~10\))) # (!\U_AC|U_DFF_EN2|internal_Q\(3) & (\U_AC|U_ALU|Add0~11_combout\ & !\U_AC|U_ALU|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN2|internal_Q\(3),
	datab => \U_AC|U_ALU|Add0~11_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~10\,
	combout => \U_AC|U_ALU|Add0~12_combout\,
	cout => \U_AC|U_ALU|Add0~13\);

-- Location: LCCOMB_X52_Y50_N22
\U_AC|U_ALU|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux4~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(3) & ((\U_AC|U_DFF_EN1|internal_Q\(3)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(3)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(1),
	datab => \U_AC|U_DFF_EN1|internal_Q\(3),
	datac => \U_AC|U_DFF_EN2|internal_Q\(3),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y50_N0
\U_AC|U_ALU|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux4~1_combout\ = (\U_AC|U_ALU|Mux5~1_combout\ & (\U_AC|U_ALU|Mux5~0_combout\)) # (!\U_AC|U_ALU|Mux5~1_combout\ & ((\U_AC|U_ALU|Mux5~0_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(2)))) # (!\U_AC|U_ALU|Mux5~0_combout\ & 
-- (\U_AC|U_ALU|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux5~1_combout\,
	datab => \U_AC|U_ALU|Mux5~0_combout\,
	datac => \U_AC|U_ALU|Mux4~0_combout\,
	datad => \U_AC|U_DFF_EN1|internal_Q\(2),
	combout => \U_AC|U_ALU|Mux4~1_combout\);

-- Location: IOIBUF_X54_Y54_N8
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

-- Location: FF_X51_Y53_N19
\U_AC|U_DFF2|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[4]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(4));

-- Location: LCCOMB_X50_Y50_N4
\U_REG|P1|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X50_Y50_N5
\U_REG|P1|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(4));

-- Location: FF_X50_Y50_N7
\U_REG|P0|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X50_Y50_N6
\U_AC|DATA[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~24_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(4) & ((\U_REG|P0|my_storage_element|internal_Q\(4)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
-- (((\U_REG|P0|my_storage_element|internal_Q\(4)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|data~0_combout\,
	datab => \U_REG|P1|my_storage_element|internal_Q\(4),
	datac => \U_REG|P0|my_storage_element|internal_Q\(4),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[4]~24_combout\);

-- Location: LCCOMB_X50_Y51_N26
\U_REG|P5|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X50_Y51_N27
\U_REG|P5|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(4));

-- Location: FF_X50_Y51_N21
\U_REG|P4|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X50_Y51_N20
\U_AC|DATA[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~26_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|my_storage_element|internal_Q\(4) & ((\U_REG|P4|my_storage_element|internal_Q\(4)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & 
-- (((\U_REG|P4|my_storage_element|internal_Q\(4)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(4),
	datac => \U_REG|P4|my_storage_element|internal_Q\(4),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[4]~26_combout\);

-- Location: LCCOMB_X51_Y50_N28
\U_REG|P6|my_storage_element|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|my_storage_element|internal_Q[4]~feeder_combout\ = \U_AC|DATA[4]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[4]~29_combout\,
	combout => \U_REG|P6|my_storage_element|internal_Q[4]~feeder_combout\);

-- Location: FF_X51_Y50_N29
\U_REG|P6|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P6|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(4));

-- Location: FF_X50_Y52_N23
\U_REG|P7|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X50_Y52_N22
\U_AC|DATA[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~27_combout\ = (\U_REG|P6|my_storage_element|internal_Q\(4) & (((\U_REG|P7|my_storage_element|internal_Q\(4)) # (!\U_REG|P7|data~0_combout\)))) # (!\U_REG|P6|my_storage_element|internal_Q\(4) & (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P7|my_storage_element|internal_Q\(4)) # (!\U_REG|P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|my_storage_element|internal_Q\(4),
	datab => \U_REG|P6|data~0_combout\,
	datac => \U_REG|P7|my_storage_element|internal_Q\(4),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[4]~27_combout\);

-- Location: LCCOMB_X52_Y52_N24
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

-- Location: FF_X52_Y52_N25
\U_REG|P3|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(4));

-- Location: FF_X52_Y52_N31
\U_REG|P2|my_storage_element|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(4));

-- Location: LCCOMB_X52_Y52_N30
\U_AC|DATA[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~25_combout\ = (\U_REG|P3|my_storage_element|internal_Q\(4) & (((\U_REG|P2|my_storage_element|internal_Q\(4)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|my_storage_element|internal_Q\(4) & (!\U_REG|P3|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(4)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|my_storage_element|internal_Q\(4),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|my_storage_element|internal_Q\(4),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[4]~25_combout\);

-- Location: LCCOMB_X51_Y50_N18
\U_AC|DATA[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~28_combout\ = (\U_AC|DATA[4]~24_combout\ & (\U_AC|DATA[4]~26_combout\ & (\U_AC|DATA[4]~27_combout\ & \U_AC|DATA[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[4]~24_combout\,
	datab => \U_AC|DATA[4]~26_combout\,
	datac => \U_AC|DATA[4]~27_combout\,
	datad => \U_AC|DATA[4]~25_combout\,
	combout => \U_AC|DATA[4]~28_combout\);

-- Location: LCCOMB_X51_Y50_N8
\U_AC|DATA[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~29_combout\ = (\U_AC|DATA[4]~28_combout\ & ((\U_AC|U_DFF2|internal_Q\(4)) # (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF2|internal_Q\(4),
	datac => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|DATA[4]~28_combout\,
	combout => \U_AC|DATA[4]~29_combout\);

-- Location: FF_X52_Y50_N27
\U_AC|U_DFF_EN1|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(4));

-- Location: LCCOMB_X51_Y50_N6
\U_AC|U_ALU|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux4~2_combout\ = (\U_AC|U_ALU|Mux4~1_combout\ & (((\U_AC|U_DFF_EN1|internal_Q\(4)) # (!\U_AC|U_ALU|Mux5~1_combout\)))) # (!\U_AC|U_ALU|Mux4~1_combout\ & (\U_AC|U_ALU|Add0~12_combout\ & ((\U_AC|U_ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~12_combout\,
	datab => \U_AC|U_ALU|Mux4~1_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(4),
	datad => \U_AC|U_ALU|Mux5~1_combout\,
	combout => \U_AC|U_ALU|Mux4~2_combout\);

-- Location: IOIBUF_X51_Y54_N8
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

-- Location: FF_X51_Y53_N13
\U_AC|U_DFF2|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[5]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(5));

-- Location: LCCOMB_X50_Y51_N14
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

-- Location: FF_X50_Y51_N15
\U_REG|P5|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[5]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(5));

-- Location: FF_X50_Y51_N17
\U_REG|P4|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X50_Y51_N16
\U_AC|DATA[5]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~32_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|my_storage_element|internal_Q\(5) & ((\U_REG|P4|my_storage_element|internal_Q\(5)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & 
-- (((\U_REG|P4|my_storage_element|internal_Q\(5)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|my_storage_element|internal_Q\(5),
	datac => \U_REG|P4|my_storage_element|internal_Q\(5),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[5]~32_combout\);

-- Location: LCCOMB_X52_Y52_N4
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

-- Location: FF_X52_Y52_N5
\U_REG|P3|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[5]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(5));

-- Location: FF_X52_Y52_N3
\U_REG|P2|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X52_Y52_N2
\U_AC|DATA[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~31_combout\ = (\U_REG|P3|my_storage_element|internal_Q\(5) & (((\U_REG|P2|my_storage_element|internal_Q\(5)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|my_storage_element|internal_Q\(5) & (!\U_REG|P3|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(5)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|my_storage_element|internal_Q\(5),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|my_storage_element|internal_Q\(5),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[5]~31_combout\);

-- Location: LCCOMB_X50_Y50_N0
\U_REG|P1|my_storage_element|internal_Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[5]~feeder_combout\ = \U_AC|DATA[5]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[5]~35_combout\,
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
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(5));

-- Location: FF_X50_Y50_N19
\U_REG|P0|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X50_Y50_N18
\U_AC|DATA[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~30_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(5) & ((\U_REG|P0|my_storage_element|internal_Q\(5)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
-- (((\U_REG|P0|my_storage_element|internal_Q\(5)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|data~0_combout\,
	datab => \U_REG|P1|my_storage_element|internal_Q\(5),
	datac => \U_REG|P0|my_storage_element|internal_Q\(5),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[5]~30_combout\);

-- Location: FF_X51_Y52_N15
\U_REG|P6|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[5]~35_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(5));

-- Location: FF_X51_Y52_N17
\U_REG|P7|my_storage_element|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(5));

-- Location: LCCOMB_X51_Y52_N16
\U_AC|DATA[5]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~33_combout\ = (\U_REG|P7|data~0_combout\ & (\U_REG|P7|my_storage_element|internal_Q\(5) & ((\U_REG|P6|my_storage_element|internal_Q\(5)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|data~0_combout\ & 
-- ((\U_REG|P6|my_storage_element|internal_Q\(5)) # ((!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|data~0_combout\,
	datab => \U_REG|P6|my_storage_element|internal_Q\(5),
	datac => \U_REG|P7|my_storage_element|internal_Q\(5),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[5]~33_combout\);

-- Location: LCCOMB_X51_Y52_N20
\U_AC|DATA[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~34_combout\ = (\U_AC|DATA[5]~32_combout\ & (\U_AC|DATA[5]~31_combout\ & (\U_AC|DATA[5]~30_combout\ & \U_AC|DATA[5]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[5]~32_combout\,
	datab => \U_AC|DATA[5]~31_combout\,
	datac => \U_AC|DATA[5]~30_combout\,
	datad => \U_AC|DATA[5]~33_combout\,
	combout => \U_AC|DATA[5]~34_combout\);

-- Location: LCCOMB_X51_Y52_N14
\U_AC|DATA[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~35_combout\ = (\U_AC|DATA[5]~34_combout\ & ((\U_AC|U_DFF2|internal_Q\(5)) # (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFF2|internal_Q\(5),
	datac => \U_AC|U_FSM|comb~0_combout\,
	datad => \U_AC|DATA[5]~34_combout\,
	combout => \U_AC|DATA[5]~35_combout\);

-- Location: FF_X52_Y50_N31
\U_AC|U_DFF_EN1|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(5));

-- Location: FF_X51_Y50_N27
\U_AC|U_DFF_EN2|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[4]~29_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(4));

-- Location: LCCOMB_X51_Y50_N26
\U_AC|U_ALU|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(4) & ((\U_AC|U_DFF_EN1|internal_Q\(4)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- (!\U_AC|U_DFF_EN2|internal_Q\(4))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & ((\U_AC|U_DFF_EN1|internal_Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(4),
	datad => \U_AC|U_DFF_EN1|internal_Q\(4),
	combout => \U_AC|U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y50_N16
\U_AC|U_ALU|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~14_combout\ = \U_AC|U_DFF_EN1|internal_Q\(4) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFF_EN1|internal_Q\(4),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~14_combout\);

-- Location: LCCOMB_X52_Y53_N22
\U_AC|U_ALU|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~15_combout\ = (\U_AC|U_DFF_EN2|internal_Q\(4) & ((\U_AC|U_ALU|Add0~14_combout\ & (\U_AC|U_ALU|Add0~13\ & VCC)) # (!\U_AC|U_ALU|Add0~14_combout\ & (!\U_AC|U_ALU|Add0~13\)))) # (!\U_AC|U_DFF_EN2|internal_Q\(4) & 
-- ((\U_AC|U_ALU|Add0~14_combout\ & (!\U_AC|U_ALU|Add0~13\)) # (!\U_AC|U_ALU|Add0~14_combout\ & ((\U_AC|U_ALU|Add0~13\) # (GND)))))
-- \U_AC|U_ALU|Add0~16\ = CARRY((\U_AC|U_DFF_EN2|internal_Q\(4) & (!\U_AC|U_ALU|Add0~14_combout\ & !\U_AC|U_ALU|Add0~13\)) # (!\U_AC|U_DFF_EN2|internal_Q\(4) & ((!\U_AC|U_ALU|Add0~13\) # (!\U_AC|U_ALU|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN2|internal_Q\(4),
	datab => \U_AC|U_ALU|Add0~14_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~13\,
	combout => \U_AC|U_ALU|Add0~15_combout\,
	cout => \U_AC|U_ALU|Add0~16\);

-- Location: LCCOMB_X52_Y50_N28
\U_AC|U_ALU|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~1_combout\ = (\U_AC|U_ALU|Mux5~1_combout\ & (((\U_AC|U_ALU|Mux5~0_combout\) # (\U_AC|U_ALU|Add0~15_combout\)))) # (!\U_AC|U_ALU|Mux5~1_combout\ & (\U_AC|U_ALU|Mux3~0_combout\ & (!\U_AC|U_ALU|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux3~0_combout\,
	datab => \U_AC|U_ALU|Mux5~1_combout\,
	datac => \U_AC|U_ALU|Mux5~0_combout\,
	datad => \U_AC|U_ALU|Add0~15_combout\,
	combout => \U_AC|U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X52_Y50_N18
\U_AC|U_ALU|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~2_combout\ = (\U_AC|U_ALU|Mux5~0_combout\ & ((\U_AC|U_ALU|Mux3~1_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(5))) # (!\U_AC|U_ALU|Mux3~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(3)))))) # (!\U_AC|U_ALU|Mux5~0_combout\ & 
-- (((\U_AC|U_ALU|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(5),
	datab => \U_AC|U_ALU|Mux5~0_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(3),
	datad => \U_AC|U_ALU|Mux3~1_combout\,
	combout => \U_AC|U_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X52_Y50_N4
\U_AC|U_ALU|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~17_combout\ = \U_AC|U_DFF_EN1|internal_Q\(5) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(5),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~17_combout\);

-- Location: FF_X52_Y50_N21
\U_AC|U_DFF_EN2|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[5]~35_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(5));

-- Location: LCCOMB_X52_Y53_N24
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

-- Location: LCCOMB_X52_Y50_N20
\U_AC|U_ALU|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux2~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(5) & ((\U_AC|U_DFF_EN1|internal_Q\(5)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(5)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN1|internal_Q\(5),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(5),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y50_N26
\U_AC|U_ALU|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux2~1_combout\ = (\U_AC|U_ALU|Mux5~1_combout\ & (\U_AC|U_ALU|Mux5~0_combout\)) # (!\U_AC|U_ALU|Mux5~1_combout\ & ((\U_AC|U_ALU|Mux5~0_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(4))) # (!\U_AC|U_ALU|Mux5~0_combout\ & 
-- ((\U_AC|U_ALU|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux5~1_combout\,
	datab => \U_AC|U_ALU|Mux5~0_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(4),
	datad => \U_AC|U_ALU|Mux2~0_combout\,
	combout => \U_AC|U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X52_Y51_N2
\U_REG|P5|my_storage_element|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[6]~41_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\);

-- Location: FF_X52_Y51_N3
\U_REG|P5|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[6]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(6));

-- Location: FF_X50_Y51_N19
\U_REG|P4|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(6));

-- Location: LCCOMB_X50_Y51_N18
\U_AC|DATA[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~36_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|my_storage_element|internal_Q\(6) & ((\U_REG|P5|my_storage_element|internal_Q\(6)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & 
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
	combout => \U_AC|DATA[6]~36_combout\);

-- Location: FF_X52_Y52_N13
\U_REG|P3|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(6));

-- Location: FF_X51_Y52_N5
\U_REG|P7|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[6]~41_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(6));

-- Location: IOIBUF_X54_Y54_N1
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

-- Location: FF_X51_Y51_N17
\U_AC|U_DFF2|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[6]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(6));

-- Location: LCCOMB_X51_Y51_N16
\U_AC|DATA[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~39_combout\ = (\U_REG|P7|my_storage_element|internal_Q\(6) & (((\U_AC|U_DFF2|internal_Q\(6))) # (!\U_AC|U_FSM|comb~0_combout\))) # (!\U_REG|P7|my_storage_element|internal_Q\(6) & (!\U_REG|P7|data~0_combout\ & ((\U_AC|U_DFF2|internal_Q\(6)) # 
-- (!\U_AC|U_FSM|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|my_storage_element|internal_Q\(6),
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_DFF2|internal_Q\(6),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[6]~39_combout\);

-- Location: LCCOMB_X52_Y52_N12
\U_AC|DATA[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~40_combout\ = (\U_AC|DATA[6]~39_combout\ & ((\U_REG|P3|my_storage_element|internal_Q\(6)) # (!\U_REG|P3|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P3|my_storage_element|internal_Q\(6),
	datad => \U_AC|DATA[6]~39_combout\,
	combout => \U_AC|DATA[6]~40_combout\);

-- Location: LCCOMB_X50_Y52_N8
\U_REG|P0|my_storage_element|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|my_storage_element|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[6]~41_combout\,
	combout => \U_REG|P0|my_storage_element|internal_Q[6]~feeder_combout\);

-- Location: FF_X50_Y52_N9
\U_REG|P0|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P0|my_storage_element|internal_Q[6]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(6));

-- Location: FF_X51_Y52_N23
\U_REG|P6|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(6));

-- Location: LCCOMB_X51_Y52_N22
\U_AC|DATA[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~37_combout\ = (\U_REG|P6|data~0_combout\ & (\U_REG|P6|my_storage_element|internal_Q\(6) & ((\U_REG|P0|my_storage_element|internal_Q\(6)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P6|data~0_combout\ & 
-- ((\U_REG|P0|my_storage_element|internal_Q\(6)) # ((!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P6|data~0_combout\,
	datab => \U_REG|P0|my_storage_element|internal_Q\(6),
	datac => \U_REG|P6|my_storage_element|internal_Q\(6),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[6]~37_combout\);

-- Location: LCCOMB_X50_Y53_N26
\U_REG|P2|my_storage_element|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|my_storage_element|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[6]~41_combout\,
	combout => \U_REG|P2|my_storage_element|internal_Q[6]~feeder_combout\);

-- Location: FF_X50_Y53_N27
\U_REG|P2|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[6]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(6));

-- Location: FF_X50_Y50_N29
\U_REG|P1|my_storage_element|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(6));

-- Location: LCCOMB_X50_Y50_N28
\U_AC|DATA[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~38_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(6) & ((\U_REG|P2|my_storage_element|internal_Q\(6)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
-- ((\U_REG|P2|my_storage_element|internal_Q\(6)) # ((!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|data~0_combout\,
	datab => \U_REG|P2|my_storage_element|internal_Q\(6),
	datac => \U_REG|P1|my_storage_element|internal_Q\(6),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[6]~38_combout\);

-- Location: LCCOMB_X51_Y52_N4
\U_AC|DATA[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~41_combout\ = (\U_AC|DATA[6]~36_combout\ & (\U_AC|DATA[6]~40_combout\ & (\U_AC|DATA[6]~37_combout\ & \U_AC|DATA[6]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[6]~36_combout\,
	datab => \U_AC|DATA[6]~40_combout\,
	datac => \U_AC|DATA[6]~37_combout\,
	datad => \U_AC|DATA[6]~38_combout\,
	combout => \U_AC|DATA[6]~41_combout\);

-- Location: FF_X52_Y50_N11
\U_AC|U_DFF_EN1|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[6]~41_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(6));

-- Location: LCCOMB_X52_Y50_N16
\U_AC|U_ALU|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux2~2_combout\ = (\U_AC|U_ALU|Mux5~1_combout\ & ((\U_AC|U_ALU|Mux2~1_combout\ & ((\U_AC|U_DFF_EN1|internal_Q\(6)))) # (!\U_AC|U_ALU|Mux2~1_combout\ & (\U_AC|U_ALU|Add0~18_combout\)))) # (!\U_AC|U_ALU|Mux5~1_combout\ & 
-- (((\U_AC|U_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~18_combout\,
	datab => \U_AC|U_ALU|Mux5~1_combout\,
	datac => \U_AC|U_ALU|Mux2~1_combout\,
	datad => \U_AC|U_DFF_EN1|internal_Q\(6),
	combout => \U_AC|U_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X52_Y53_N6
\U_AC|U_DFF_EN2|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF_EN2|internal_Q[6]~feeder_combout\ = \U_AC|DATA[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[6]~41_combout\,
	combout => \U_AC|U_DFF_EN2|internal_Q[6]~feeder_combout\);

-- Location: FF_X52_Y53_N7
\U_AC|U_DFF_EN2|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|U_DFF_EN2|internal_Q[6]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(6));

-- Location: LCCOMB_X51_Y50_N4
\U_AC|U_ALU|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~0_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(6) & ((\U_AC|U_DFF_EN1|internal_Q\(6)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- ((!\U_AC|U_DFF_EN2|internal_Q\(6)))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & (\U_AC|U_DFF_EN1|internal_Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datab => \U_AC|U_DFF_EN1|internal_Q\(6),
	datac => \U_AC|U_DFFALU3|internal_Q\(1),
	datad => \U_AC|U_DFF_EN2|internal_Q\(6),
	combout => \U_AC|U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X52_Y50_N10
\U_AC|U_ALU|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~20_combout\ = \U_AC|U_DFF_EN1|internal_Q\(6) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF_EN1|internal_Q\(6),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~20_combout\);

-- Location: LCCOMB_X52_Y53_N26
\U_AC|U_ALU|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~21_combout\ = (\U_AC|U_DFF_EN2|internal_Q\(6) & ((\U_AC|U_ALU|Add0~20_combout\ & (\U_AC|U_ALU|Add0~19\ & VCC)) # (!\U_AC|U_ALU|Add0~20_combout\ & (!\U_AC|U_ALU|Add0~19\)))) # (!\U_AC|U_DFF_EN2|internal_Q\(6) & 
-- ((\U_AC|U_ALU|Add0~20_combout\ & (!\U_AC|U_ALU|Add0~19\)) # (!\U_AC|U_ALU|Add0~20_combout\ & ((\U_AC|U_ALU|Add0~19\) # (GND)))))
-- \U_AC|U_ALU|Add0~22\ = CARRY((\U_AC|U_DFF_EN2|internal_Q\(6) & (!\U_AC|U_ALU|Add0~20_combout\ & !\U_AC|U_ALU|Add0~19\)) # (!\U_AC|U_DFF_EN2|internal_Q\(6) & ((!\U_AC|U_ALU|Add0~19\) # (!\U_AC|U_ALU|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF_EN2|internal_Q\(6),
	datab => \U_AC|U_ALU|Add0~20_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~19\,
	combout => \U_AC|U_ALU|Add0~21_combout\,
	cout => \U_AC|U_ALU|Add0~22\);

-- Location: LCCOMB_X51_Y50_N14
\U_AC|U_ALU|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~1_combout\ = (\U_AC|U_ALU|Mux5~0_combout\ & (\U_AC|U_ALU|Mux5~1_combout\)) # (!\U_AC|U_ALU|Mux5~0_combout\ & ((\U_AC|U_ALU|Mux5~1_combout\ & ((\U_AC|U_ALU|Add0~21_combout\))) # (!\U_AC|U_ALU|Mux5~1_combout\ & 
-- (\U_AC|U_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux5~0_combout\,
	datab => \U_AC|U_ALU|Mux5~1_combout\,
	datac => \U_AC|U_ALU|Mux1~0_combout\,
	datad => \U_AC|U_ALU|Add0~21_combout\,
	combout => \U_AC|U_ALU|Mux1~1_combout\);

-- Location: IOIBUF_X56_Y54_N22
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

-- Location: FF_X52_Y53_N23
\U_AC|U_DFF2|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \OPERAND1[7]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(7));

-- Location: FF_X51_Y52_N27
\U_REG|P6|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_AC|DATA[7]~47_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P6|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|my_storage_element|internal_Q\(7));

-- Location: FF_X51_Y52_N13
\U_REG|P7|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P7|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X51_Y52_N12
\U_AC|DATA[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~45_combout\ = (\U_REG|P7|data~0_combout\ & (\U_REG|P7|my_storage_element|internal_Q\(7) & ((\U_REG|P6|my_storage_element|internal_Q\(7)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|data~0_combout\ & 
-- ((\U_REG|P6|my_storage_element|internal_Q\(7)) # ((!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|data~0_combout\,
	datab => \U_REG|P6|my_storage_element|internal_Q\(7),
	datac => \U_REG|P7|my_storage_element|internal_Q\(7),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[7]~45_combout\);

-- Location: LCCOMB_X52_Y52_N20
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

-- Location: FF_X52_Y52_N21
\U_REG|P2|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P2|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P2|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X52_Y52_N14
\U_REG|P3|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X52_Y52_N15
\U_REG|P3|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P3|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P3|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X51_Y52_N2
\U_AC|DATA[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~43_combout\ = (\U_REG|P2|my_storage_element|internal_Q\(7) & ((\U_REG|P3|my_storage_element|internal_Q\(7)) # ((!\U_REG|P3|data~0_combout\)))) # (!\U_REG|P2|my_storage_element|internal_Q\(7) & (!\U_REG|P2|data~0_combout\ & 
-- ((\U_REG|P3|my_storage_element|internal_Q\(7)) # (!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|my_storage_element|internal_Q\(7),
	datab => \U_REG|P3|my_storage_element|internal_Q\(7),
	datac => \U_REG|P2|data~0_combout\,
	datad => \U_REG|P3|data~0_combout\,
	combout => \U_AC|DATA[7]~43_combout\);

-- Location: LCCOMB_X50_Y51_N4
\U_REG|P5|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X50_Y51_N5
\U_REG|P5|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P5|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P5|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|my_storage_element|internal_Q\(7));

-- Location: FF_X50_Y51_N23
\U_REG|P4|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P4|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X50_Y51_N22
\U_AC|DATA[7]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~44_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|my_storage_element|internal_Q\(7) & ((\U_REG|P4|my_storage_element|internal_Q\(7)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & 
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
	combout => \U_AC|DATA[7]~44_combout\);

-- Location: LCCOMB_X50_Y50_N26
\U_REG|P1|my_storage_element|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\ = \U_AC|DATA[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[7]~47_combout\,
	combout => \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\);

-- Location: FF_X50_Y50_N27
\U_REG|P1|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U_REG|P1|my_storage_element|internal_Q[7]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \U_REG|P1|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|my_storage_element|internal_Q\(7));

-- Location: FF_X50_Y50_N25
\U_REG|P0|my_storage_element|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_REG|P0|write_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|my_storage_element|internal_Q\(7));

-- Location: LCCOMB_X50_Y50_N24
\U_AC|DATA[7]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~42_combout\ = (\U_REG|P1|data~0_combout\ & (\U_REG|P1|my_storage_element|internal_Q\(7) & ((\U_REG|P0|my_storage_element|internal_Q\(7)) # (!\U_REG|P0|data~0_combout\)))) # (!\U_REG|P1|data~0_combout\ & 
-- (((\U_REG|P0|my_storage_element|internal_Q\(7)) # (!\U_REG|P0|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|data~0_combout\,
	datab => \U_REG|P1|my_storage_element|internal_Q\(7),
	datac => \U_REG|P0|my_storage_element|internal_Q\(7),
	datad => \U_REG|P0|data~0_combout\,
	combout => \U_AC|DATA[7]~42_combout\);

-- Location: LCCOMB_X51_Y52_N0
\U_AC|DATA[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~46_combout\ = (\U_AC|DATA[7]~45_combout\ & (\U_AC|DATA[7]~43_combout\ & (\U_AC|DATA[7]~44_combout\ & \U_AC|DATA[7]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[7]~45_combout\,
	datab => \U_AC|DATA[7]~43_combout\,
	datac => \U_AC|DATA[7]~44_combout\,
	datad => \U_AC|DATA[7]~42_combout\,
	combout => \U_AC|DATA[7]~46_combout\);

-- Location: LCCOMB_X51_Y52_N26
\U_AC|DATA[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~47_combout\ = (\U_AC|DATA[7]~46_combout\ & ((\U_AC|U_DFF2|internal_Q\(7)) # (!\U_AC|U_FSM|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_FSM|comb~0_combout\,
	datac => \U_AC|U_DFF2|internal_Q\(7),
	datad => \U_AC|DATA[7]~46_combout\,
	combout => \U_AC|DATA[7]~47_combout\);

-- Location: FF_X52_Y50_N3
\U_AC|U_DFF_EN1|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN1|internal_Q\(7));

-- Location: LCCOMB_X52_Y50_N30
\U_AC|U_ALU|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~2_combout\ = (\U_AC|U_ALU|Mux1~1_combout\ & (((\U_AC|U_DFF_EN1|internal_Q\(7))) # (!\U_AC|U_ALU|Mux5~0_combout\))) # (!\U_AC|U_ALU|Mux1~1_combout\ & (\U_AC|U_ALU|Mux5~0_combout\ & (\U_AC|U_DFF_EN1|internal_Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux1~1_combout\,
	datab => \U_AC|U_ALU|Mux5~0_combout\,
	datac => \U_AC|U_DFF_EN1|internal_Q\(5),
	datad => \U_AC|U_DFF_EN1|internal_Q\(7),
	combout => \U_AC|U_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X52_Y50_N2
\U_AC|U_ALU|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~4_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN1|internal_Q\(7))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFF_EN1|internal_Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datac => \U_AC|U_DFF_EN1|internal_Q\(7),
	datad => \U_AC|U_DFF_EN1|internal_Q\(6),
	combout => \U_AC|U_ALU|Mux0~4_combout\);

-- Location: FF_X51_Y53_N3
\U_AC|U_DFF_EN2|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U_AC|DATA[7]~47_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_AC|U_FSM|ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF_EN2|internal_Q\(7));

-- Location: LCCOMB_X51_Y53_N2
\U_AC|U_ALU|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~2_combout\ = (\U_AC|U_DFFALU3|internal_Q\(0) & (\U_AC|U_DFF_EN2|internal_Q\(7) & ((\U_AC|U_DFF_EN1|internal_Q\(7)) # (!\U_AC|U_DFFALU3|internal_Q\(1))))) # (!\U_AC|U_DFFALU3|internal_Q\(0) & ((\U_AC|U_DFFALU3|internal_Q\(1) & 
-- (!\U_AC|U_DFF_EN2|internal_Q\(7))) # (!\U_AC|U_DFFALU3|internal_Q\(1) & ((\U_AC|U_DFF_EN1|internal_Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU3|internal_Q\(0),
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFF_EN2|internal_Q\(7),
	datad => \U_AC|U_DFF_EN1|internal_Q\(7),
	combout => \U_AC|U_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X52_Y53_N10
\U_AC|U_ALU|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~23_combout\ = \U_AC|U_DFF_EN1|internal_Q\(7) $ (\U_AC|U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFF_EN1|internal_Q\(7),
	datad => \U_AC|U_DFFALU3|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~23_combout\);

-- Location: LCCOMB_X52_Y53_N28
\U_AC|U_ALU|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~24_combout\ = \U_AC|U_ALU|Add0~23_combout\ $ (\U_AC|U_DFF_EN2|internal_Q\(7) $ (!\U_AC|U_ALU|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~23_combout\,
	datab => \U_AC|U_DFF_EN2|internal_Q\(7),
	cin => \U_AC|U_ALU|Add0~22\,
	combout => \U_AC|U_ALU|Add0~24_combout\);

-- Location: LCCOMB_X51_Y53_N6
\U_AC|U_ALU|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~3_combout\ = (\U_AC|U_DFFALU3|internal_Q\(2) & (((!\U_AC|U_DFFALU3|internal_Q\(1) & \U_AC|U_ALU|Add0~24_combout\)))) # (!\U_AC|U_DFFALU3|internal_Q\(2) & (\U_AC|U_ALU|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux0~2_combout\,
	datab => \U_AC|U_DFFALU3|internal_Q\(1),
	datac => \U_AC|U_DFFALU3|internal_Q\(2),
	datad => \U_AC|U_ALU|Add0~24_combout\,
	combout => \U_AC|U_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X51_Y53_N8
\U_AC|U_ALU|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux0~5_combout\ = (\U_AC|U_ALU|Mux0~3_combout\) # ((\U_AC|U_ALU|Mux0~4_combout\ & (\U_AC|U_DFFALU3|internal_Q\(2) & \U_AC|U_DFFALU3|internal_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux0~4_combout\,
	datab => \U_AC|U_DFFALU3|internal_Q\(2),
	datac => \U_AC|U_DFFALU3|internal_Q\(1),
	datad => \U_AC|U_ALU|Mux0~3_combout\,
	combout => \U_AC|U_ALU|Mux0~5_combout\);

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
END structure;


