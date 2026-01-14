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

-- DATE "12/09/2025 22:31:19"

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

ENTITY 	arithmetic_control IS
    PORT (
	OPCODE : IN std_logic_vector(2 DOWNTO 0);
	OPERAND1 : IN std_logic_vector(7 DOWNTO 0);
	OPERAND2 : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	OUTP : BUFFER std_logic_vector(7 DOWNTO 0);
	ADDR : BUFFER std_logic_vector(2 DOWNTO 0);
	DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	READW : BUFFER std_logic
	);
END arithmetic_control;

-- Design Ports Information
-- OUTP[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READW	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF arithmetic_control IS
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
SIGNAL ww_ADDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_READW : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \OUTP[0]~output_o\ : std_logic;
SIGNAL \OUTP[1]~output_o\ : std_logic;
SIGNAL \OUTP[2]~output_o\ : std_logic;
SIGNAL \OUTP[3]~output_o\ : std_logic;
SIGNAL \OUTP[4]~output_o\ : std_logic;
SIGNAL \OUTP[5]~output_o\ : std_logic;
SIGNAL \OUTP[6]~output_o\ : std_logic;
SIGNAL \OUTP[7]~output_o\ : std_logic;
SIGNAL \ADDR[0]~output_o\ : std_logic;
SIGNAL \ADDR[1]~output_o\ : std_logic;
SIGNAL \ADDR[2]~output_o\ : std_logic;
SIGNAL \READW~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \OPERAND1[0]~input_o\ : std_logic;
SIGNAL \U_DFF2|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \U_DFF1|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \U_DFF1|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \U_COMP|Equal0~0_combout\ : std_logic;
SIGNAL \OPERAND1[1]~input_o\ : std_logic;
SIGNAL \OPERAND1[2]~input_o\ : std_logic;
SIGNAL \U_DFF2|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[3]~input_o\ : std_logic;
SIGNAL \U_DFF2|internal_Q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[4]~input_o\ : std_logic;
SIGNAL \U_DFF2|internal_Q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[5]~input_o\ : std_logic;
SIGNAL \U_DFF2|internal_Q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[6]~input_o\ : std_logic;
SIGNAL \U_DFF2|internal_Q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[7]~input_o\ : std_logic;
SIGNAL \U_DFF2|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_DFFALU1|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_DFFALU2|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_DFFALU3|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \U_DFF5|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \U_DFFALU1|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_DFFALU2|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_DFFALU3|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_ALU|Add0~2_cout\ : std_logic;
SIGNAL \U_ALU|Add0~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux7~4_combout\ : std_logic;
SIGNAL \U_ALU|Add0~5_combout\ : std_logic;
SIGNAL \U_ALU|Add0~4\ : std_logic;
SIGNAL \U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_ALU|Add0~7\ : std_logic;
SIGNAL \U_ALU|Add0~9_combout\ : std_logic;
SIGNAL \U_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~11_combout\ : std_logic;
SIGNAL \U_ALU|Add0~10\ : std_logic;
SIGNAL \U_ALU|Add0~12_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \U_ALU|Add0~14_combout\ : std_logic;
SIGNAL \U_ALU|Add0~13\ : std_logic;
SIGNAL \U_ALU|Add0~15_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~17_combout\ : std_logic;
SIGNAL \U_ALU|Add0~16\ : std_logic;
SIGNAL \U_ALU|Add0~18_combout\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \U_DFF5|internal_Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \U_ALU|Add0~20_combout\ : std_logic;
SIGNAL \U_ALU|Add0~19\ : std_logic;
SIGNAL \U_ALU|Add0~21_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \U_ALU|Add0~23_combout\ : std_logic;
SIGNAL \U_ALU|Add0~22\ : std_logic;
SIGNAL \U_ALU|Add0~24_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \OPERAND2[0]~input_o\ : std_logic;
SIGNAL \U_MUX|Selector2~0_combout\ : std_logic;
SIGNAL \OPERAND2[1]~input_o\ : std_logic;
SIGNAL \U_MUX|Selector1~0_combout\ : std_logic;
SIGNAL \OPERAND2[2]~input_o\ : std_logic;
SIGNAL \U_MUX|Selector0~0_combout\ : std_logic;
SIGNAL \U_DFFALU1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DFFALU2|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DFF1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DFF5|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_DFF2|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_DFFALU3|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DFF3|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DFF4|internal_Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

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
ADDR <= ww_ADDR;
DATA <= ww_DATA;
READW <= ww_READW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X51_Y54_N30
\DATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(0),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\DATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(1),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\DATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(2),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\DATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(3),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\DATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(4),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\DATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(5),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\DATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(6),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\DATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_DFF2|internal_Q\(7),
	oe => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\OUTP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \OUTP[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\OUTP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\OUTP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\OUTP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\OUTP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\OUTP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \OUTP[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\OUTP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \OUTP[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\OUTP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \OUTP[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \ADDR[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \ADDR[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\ADDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \ADDR[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\READW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \READW~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N15
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

-- Location: LCCOMB_X51_Y51_N6
\U_DFF2|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF2|internal_Q[0]~feeder_combout\ = \OPERAND1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[0]~input_o\,
	combout => \U_DFF2|internal_Q[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
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

-- Location: FF_X51_Y51_N7
\U_DFF2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF2|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(0));

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X46_Y51_N16
\U_DFF1|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF1|internal_Q[0]~feeder_combout\ = \OPCODE[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPCODE[0]~input_o\,
	combout => \U_DFF1|internal_Q[0]~feeder_combout\);

-- Location: FF_X46_Y51_N17
\U_DFF1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF1|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF1|internal_Q\(0));

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: LCCOMB_X46_Y51_N26
\U_DFF1|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF1|internal_Q[1]~feeder_combout\ = \OPCODE[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPCODE[1]~input_o\,
	combout => \U_DFF1|internal_Q[1]~feeder_combout\);

-- Location: FF_X46_Y51_N27
\U_DFF1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF1|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF1|internal_Q\(1));

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: FF_X47_Y51_N5
\U_DFF1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPCODE[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF1|internal_Q\(2));

-- Location: LCCOMB_X46_Y51_N20
\U_COMP|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COMP|Equal0~0_combout\ = (!\U_DFF1|internal_Q\(0) & (!\U_DFF1|internal_Q\(1) & !\U_DFF1|internal_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFF1|internal_Q\(0),
	datac => \U_DFF1|internal_Q\(1),
	datad => \U_DFF1|internal_Q\(2),
	combout => \U_COMP|Equal0~0_combout\);

-- Location: IOIBUF_X36_Y39_N29
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

-- Location: FF_X46_Y51_N29
\U_DFF2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(1));

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: LCCOMB_X46_Y51_N4
\U_DFF2|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF2|internal_Q[2]~feeder_combout\ = \OPERAND1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[2]~input_o\,
	combout => \U_DFF2|internal_Q[2]~feeder_combout\);

-- Location: FF_X46_Y51_N5
\U_DFF2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF2|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(2));

-- Location: IOIBUF_X58_Y54_N15
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

-- Location: LCCOMB_X58_Y51_N12
\U_DFF2|internal_Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF2|internal_Q[3]~feeder_combout\ = \OPERAND1[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[3]~input_o\,
	combout => \U_DFF2|internal_Q[3]~feeder_combout\);

-- Location: FF_X58_Y51_N13
\U_DFF2|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF2|internal_Q[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(3));

-- Location: IOIBUF_X56_Y54_N15
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

-- Location: LCCOMB_X56_Y51_N12
\U_DFF2|internal_Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF2|internal_Q[4]~feeder_combout\ = \OPERAND1[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[4]~input_o\,
	combout => \U_DFF2|internal_Q[4]~feeder_combout\);

-- Location: FF_X56_Y51_N13
\U_DFF2|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF2|internal_Q[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(4));

-- Location: IOIBUF_X56_Y54_N29
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

-- Location: LCCOMB_X55_Y51_N8
\U_DFF2|internal_Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF2|internal_Q[5]~feeder_combout\ = \OPERAND1[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[5]~input_o\,
	combout => \U_DFF2|internal_Q[5]~feeder_combout\);

-- Location: FF_X55_Y51_N9
\U_DFF2|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF2|internal_Q[5]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(5));

-- Location: IOIBUF_X58_Y54_N8
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

-- Location: LCCOMB_X58_Y51_N10
\U_DFF2|internal_Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF2|internal_Q[6]~feeder_combout\ = \OPERAND1[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[6]~input_o\,
	combout => \U_DFF2|internal_Q[6]~feeder_combout\);

-- Location: FF_X58_Y51_N11
\U_DFF2|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF2|internal_Q[6]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(6));

-- Location: IOIBUF_X60_Y54_N8
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

-- Location: LCCOMB_X56_Y51_N22
\U_DFF2|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF2|internal_Q[7]~feeder_combout\ = \OPERAND1[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND1[7]~input_o\,
	combout => \U_DFF2|internal_Q[7]~feeder_combout\);

-- Location: FF_X56_Y51_N23
\U_DFF2|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF2|internal_Q[7]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|internal_Q\(7));

-- Location: LCCOMB_X46_Y51_N8
\U_DFFALU1|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFFALU1|internal_Q[1]~feeder_combout\ = \U_DFF1|internal_Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF1|internal_Q\(1),
	combout => \U_DFFALU1|internal_Q[1]~feeder_combout\);

-- Location: FF_X46_Y51_N9
\U_DFFALU1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFFALU1|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU1|internal_Q\(1));

-- Location: LCCOMB_X46_Y51_N0
\U_DFFALU2|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFFALU2|internal_Q[1]~feeder_combout\ = \U_DFFALU1|internal_Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFFALU1|internal_Q\(1),
	combout => \U_DFFALU2|internal_Q[1]~feeder_combout\);

-- Location: FF_X46_Y51_N1
\U_DFFALU2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFFALU2|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU2|internal_Q\(1));

-- Location: LCCOMB_X46_Y51_N18
\U_DFFALU3|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFFALU3|internal_Q[1]~feeder_combout\ = \U_DFFALU2|internal_Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_DFFALU2|internal_Q\(1),
	combout => \U_DFFALU3|internal_Q[1]~feeder_combout\);

-- Location: FF_X46_Y51_N19
\U_DFFALU3|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFFALU3|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU3|internal_Q\(1));

-- Location: FF_X47_Y51_N15
\U_DFFALU1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_DFF1|internal_Q\(2),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU1|internal_Q\(2));

-- Location: FF_X47_Y51_N31
\U_DFFALU2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_DFFALU1|internal_Q\(2),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU2|internal_Q\(2));

-- Location: FF_X47_Y51_N13
\U_DFFALU3|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_DFFALU2|internal_Q\(2),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU3|internal_Q\(2));

-- Location: LCCOMB_X51_Y51_N10
\U_ALU|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~0_combout\ = (\U_DFFALU3|internal_Q\(1) & \U_DFFALU3|internal_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFFALU3|internal_Q\(1),
	datad => \U_DFFALU3|internal_Q\(2),
	combout => \U_ALU|Mux1~0_combout\);

-- Location: IOIBUF_X51_Y54_N8
\DATA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(1),
	o => \DATA[1]~input_o\);

-- Location: FF_X51_Y51_N1
\U_DFF5|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(1));

-- Location: IOIBUF_X51_Y54_N29
\DATA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(0),
	o => \DATA[0]~input_o\);

-- Location: LCCOMB_X51_Y51_N28
\U_DFF5|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF5|internal_Q[0]~feeder_combout\ = \DATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[0]~input_o\,
	combout => \U_DFF5|internal_Q[0]~feeder_combout\);

-- Location: FF_X51_Y51_N29
\U_DFF5|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF5|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N26
\U_ALU|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux7~1_combout\ = (!\U_DFFALU3|internal_Q\(2) & (\DATA[0]~input_o\ & ((\U_DFF5|internal_Q\(0)) # (!\U_DFFALU3|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFFALU3|internal_Q\(2),
	datab => \U_DFF5|internal_Q\(0),
	datac => \U_DFFALU3|internal_Q\(1),
	datad => \DATA[0]~input_o\,
	combout => \U_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X46_Y51_N2
\U_DFFALU1|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFFALU1|internal_Q[0]~feeder_combout\ = \U_DFF1|internal_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_DFF1|internal_Q\(0),
	combout => \U_DFFALU1|internal_Q[0]~feeder_combout\);

-- Location: FF_X46_Y51_N3
\U_DFFALU1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFFALU1|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU1|internal_Q\(0));

-- Location: LCCOMB_X46_Y51_N10
\U_DFFALU2|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFFALU2|internal_Q[0]~feeder_combout\ = \U_DFFALU1|internal_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_DFFALU1|internal_Q\(0),
	combout => \U_DFFALU2|internal_Q[0]~feeder_combout\);

-- Location: FF_X46_Y51_N11
\U_DFFALU2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFFALU2|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU2|internal_Q\(0));

-- Location: LCCOMB_X46_Y51_N24
\U_DFFALU3|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFFALU3|internal_Q[0]~feeder_combout\ = \U_DFFALU2|internal_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_DFFALU2|internal_Q\(0),
	combout => \U_DFFALU3|internal_Q[0]~feeder_combout\);

-- Location: FF_X46_Y51_N25
\U_DFFALU3|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFFALU3|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFFALU3|internal_Q\(0));

-- Location: LCCOMB_X51_Y51_N12
\U_ALU|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux7~2_combout\ = (\U_DFFALU3|internal_Q\(0) & ((\U_ALU|Mux7~1_combout\) # ((\U_ALU|Mux1~0_combout\ & \U_DFF5|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_DFF5|internal_Q\(1),
	datac => \U_ALU|Mux7~1_combout\,
	datad => \U_DFFALU3|internal_Q\(0),
	combout => \U_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X51_Y51_N22
\U_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~0_combout\ = \U_DFFALU3|internal_Q\(0) $ (\U_DFF5|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFF5|internal_Q\(0),
	combout => \U_ALU|Add0~0_combout\);

-- Location: LCCOMB_X50_Y51_N6
\U_ALU|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~2_cout\ = CARRY(\U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datad => VCC,
	cout => \U_ALU|Add0~2_cout\);

-- Location: LCCOMB_X50_Y51_N8
\U_ALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~3_combout\ = (\DATA[0]~input_o\ & ((\U_ALU|Add0~0_combout\ & (\U_ALU|Add0~2_cout\ & VCC)) # (!\U_ALU|Add0~0_combout\ & (!\U_ALU|Add0~2_cout\)))) # (!\DATA[0]~input_o\ & ((\U_ALU|Add0~0_combout\ & (!\U_ALU|Add0~2_cout\)) # 
-- (!\U_ALU|Add0~0_combout\ & ((\U_ALU|Add0~2_cout\) # (GND)))))
-- \U_ALU|Add0~4\ = CARRY((\DATA[0]~input_o\ & (!\U_ALU|Add0~0_combout\ & !\U_ALU|Add0~2_cout\)) # (!\DATA[0]~input_o\ & ((!\U_ALU|Add0~2_cout\) # (!\U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[0]~input_o\,
	datab => \U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_ALU|Add0~2_cout\,
	combout => \U_ALU|Add0~3_combout\,
	cout => \U_ALU|Add0~4\);

-- Location: LCCOMB_X51_Y51_N16
\U_ALU|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux7~0_combout\ = (\U_DFFALU3|internal_Q\(2) & (!\U_DFFALU3|internal_Q\(1) & \U_ALU|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFFALU3|internal_Q\(2),
	datac => \U_DFFALU3|internal_Q\(1),
	datad => \U_ALU|Add0~3_combout\,
	combout => \U_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X51_Y51_N30
\U_ALU|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux7~3_combout\ = (!\U_DFFALU3|internal_Q\(2) & ((\U_DFFALU3|internal_Q\(1) & ((!\DATA[0]~input_o\))) # (!\U_DFFALU3|internal_Q\(1) & (\U_DFF5|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFFALU3|internal_Q\(2),
	datab => \U_DFF5|internal_Q\(0),
	datac => \U_DFFALU3|internal_Q\(1),
	datad => \DATA[0]~input_o\,
	combout => \U_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X51_Y51_N8
\U_ALU|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux7~4_combout\ = (\U_ALU|Mux7~2_combout\) # ((\U_ALU|Mux7~0_combout\) # ((\U_ALU|Mux7~3_combout\ & !\U_DFFALU3|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux7~2_combout\,
	datab => \U_ALU|Mux7~0_combout\,
	datac => \U_ALU|Mux7~3_combout\,
	datad => \U_DFFALU3|internal_Q\(0),
	combout => \U_ALU|Mux7~4_combout\);

-- Location: LCCOMB_X51_Y51_N2
\U_ALU|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~5_combout\ = \U_DFFALU3|internal_Q\(0) $ (\U_DFF5|internal_Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFF5|internal_Q\(1),
	combout => \U_ALU|Add0~5_combout\);

-- Location: LCCOMB_X50_Y51_N10
\U_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~6_combout\ = ((\U_ALU|Add0~5_combout\ $ (\DATA[1]~input_o\ $ (!\U_ALU|Add0~4\)))) # (GND)
-- \U_ALU|Add0~7\ = CARRY((\U_ALU|Add0~5_combout\ & ((\DATA[1]~input_o\) # (!\U_ALU|Add0~4\))) # (!\U_ALU|Add0~5_combout\ & (\DATA[1]~input_o\ & !\U_ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~5_combout\,
	datab => \DATA[1]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~4\,
	combout => \U_ALU|Add0~6_combout\,
	cout => \U_ALU|Add0~7\);

-- Location: IOIBUF_X49_Y54_N22
\DATA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(2),
	o => \DATA[2]~input_o\);

-- Location: FF_X50_Y51_N29
\U_DFF5|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(2));

-- Location: LCCOMB_X51_Y51_N14
\U_ALU|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux6~0_combout\ = (\U_DFFALU3|internal_Q\(0) & (\DATA[1]~input_o\ & ((\U_DFF5|internal_Q\(1)) # (!\U_DFFALU3|internal_Q\(1))))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFFALU3|internal_Q\(1) & ((!\DATA[1]~input_o\))) # (!\U_DFFALU3|internal_Q\(1) & 
-- (\U_DFF5|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFFALU3|internal_Q\(1),
	datab => \U_DFF5|internal_Q\(1),
	datac => \DATA[1]~input_o\,
	datad => \U_DFFALU3|internal_Q\(0),
	combout => \U_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y51_N24
\U_ALU|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~1_combout\ = (\U_DFFALU3|internal_Q\(2) & ((\U_DFFALU3|internal_Q\(0)) # (!\U_DFFALU3|internal_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datac => \U_DFFALU3|internal_Q\(1),
	datad => \U_DFFALU3|internal_Q\(2),
	combout => \U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X51_Y51_N4
\U_ALU|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux6~1_combout\ = (\U_ALU|Mux1~0_combout\ & ((\U_DFF5|internal_Q\(0)) # ((\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux1~0_combout\ & (((\U_ALU|Mux6~0_combout\ & !\U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_DFF5|internal_Q\(0),
	datac => \U_ALU|Mux6~0_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X51_Y51_N18
\U_ALU|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux6~2_combout\ = (\U_ALU|Mux6~1_combout\ & (((\U_DFF5|internal_Q\(2)) # (!\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux6~1_combout\ & (\U_ALU|Add0~6_combout\ & ((\U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~6_combout\,
	datab => \U_DFF5|internal_Q\(2),
	datac => \U_ALU|Mux6~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_ALU|Mux6~2_combout\);

-- Location: IOIBUF_X56_Y54_N8
\DATA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(3),
	o => \DATA[3]~input_o\);

-- Location: FF_X47_Y51_N29
\U_DFF5|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[3]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(3));

-- Location: LCCOMB_X50_Y51_N30
\U_ALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~8_combout\ = \U_DFFALU3|internal_Q\(0) $ (\U_DFF5|internal_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFF5|internal_Q\(2),
	combout => \U_ALU|Add0~8_combout\);

-- Location: LCCOMB_X50_Y51_N12
\U_ALU|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~9_combout\ = (\U_ALU|Add0~8_combout\ & ((\DATA[2]~input_o\ & (\U_ALU|Add0~7\ & VCC)) # (!\DATA[2]~input_o\ & (!\U_ALU|Add0~7\)))) # (!\U_ALU|Add0~8_combout\ & ((\DATA[2]~input_o\ & (!\U_ALU|Add0~7\)) # (!\DATA[2]~input_o\ & ((\U_ALU|Add0~7\) # 
-- (GND)))))
-- \U_ALU|Add0~10\ = CARRY((\U_ALU|Add0~8_combout\ & (!\DATA[2]~input_o\ & !\U_ALU|Add0~7\)) # (!\U_ALU|Add0~8_combout\ & ((!\U_ALU|Add0~7\) # (!\DATA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~8_combout\,
	datab => \DATA[2]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~7\,
	combout => \U_ALU|Add0~9_combout\,
	cout => \U_ALU|Add0~10\);

-- Location: LCCOMB_X50_Y51_N24
\U_ALU|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux5~0_combout\ = (\U_DFFALU3|internal_Q\(0) & (\DATA[2]~input_o\ & ((\U_DFF5|internal_Q\(2)) # (!\U_DFFALU3|internal_Q\(1))))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFFALU3|internal_Q\(1) & (!\DATA[2]~input_o\)) # (!\U_DFFALU3|internal_Q\(1) & 
-- ((\U_DFF5|internal_Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFFALU3|internal_Q\(1),
	datab => \U_DFFALU3|internal_Q\(0),
	datac => \DATA[2]~input_o\,
	datad => \U_DFF5|internal_Q\(2),
	combout => \U_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y51_N4
\U_ALU|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux5~1_combout\ = (\U_ALU|Mux1~1_combout\ & ((\U_ALU|Add0~9_combout\) # ((\U_ALU|Mux1~0_combout\)))) # (!\U_ALU|Mux1~1_combout\ & (((!\U_ALU|Mux1~0_combout\ & \U_ALU|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~9_combout\,
	datab => \U_ALU|Mux1~1_combout\,
	datac => \U_ALU|Mux1~0_combout\,
	datad => \U_ALU|Mux5~0_combout\,
	combout => \U_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X51_Y51_N20
\U_ALU|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux5~2_combout\ = (\U_ALU|Mux5~1_combout\ & ((\U_DFF5|internal_Q\(3)) # ((!\U_ALU|Mux1~0_combout\)))) # (!\U_ALU|Mux5~1_combout\ & (((\U_DFF5|internal_Q\(1) & \U_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|internal_Q\(3),
	datab => \U_DFF5|internal_Q\(1),
	datac => \U_ALU|Mux5~1_combout\,
	datad => \U_ALU|Mux1~0_combout\,
	combout => \U_ALU|Mux5~2_combout\);

-- Location: IOIBUF_X54_Y54_N15
\DATA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(4),
	o => \DATA[4]~input_o\);

-- Location: FF_X47_Y51_N27
\U_DFF5|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[4]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(4));

-- Location: LCCOMB_X47_Y51_N22
\U_ALU|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~0_combout\ = (\U_DFFALU3|internal_Q\(0) & (\DATA[3]~input_o\ & ((\U_DFF5|internal_Q\(3)) # (!\U_DFFALU3|internal_Q\(1))))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFFALU3|internal_Q\(1) & (!\DATA[3]~input_o\)) # (!\U_DFFALU3|internal_Q\(1) & 
-- ((\U_DFF5|internal_Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[3]~input_o\,
	datab => \U_DFF5|internal_Q\(3),
	datac => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFFALU3|internal_Q\(1),
	combout => \U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y51_N2
\U_ALU|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~1_combout\ = (\U_ALU|Mux1~0_combout\ & (((\U_DFF5|internal_Q\(2)) # (\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux1~0_combout\ & (\U_ALU|Mux4~0_combout\ & ((!\U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux4~0_combout\,
	datab => \U_DFF5|internal_Q\(2),
	datac => \U_ALU|Mux1~0_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y51_N16
\U_ALU|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~11_combout\ = \U_DFF5|internal_Q\(3) $ (\U_DFFALU3|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF5|internal_Q\(3),
	datad => \U_DFFALU3|internal_Q\(0),
	combout => \U_ALU|Add0~11_combout\);

-- Location: LCCOMB_X50_Y51_N14
\U_ALU|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~12_combout\ = ((\U_ALU|Add0~11_combout\ $ (\DATA[3]~input_o\ $ (!\U_ALU|Add0~10\)))) # (GND)
-- \U_ALU|Add0~13\ = CARRY((\U_ALU|Add0~11_combout\ & ((\DATA[3]~input_o\) # (!\U_ALU|Add0~10\))) # (!\U_ALU|Add0~11_combout\ & (\DATA[3]~input_o\ & !\U_ALU|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~11_combout\,
	datab => \DATA[3]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~10\,
	combout => \U_ALU|Add0~12_combout\,
	cout => \U_ALU|Add0~13\);

-- Location: LCCOMB_X50_Y51_N0
\U_ALU|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~2_combout\ = (\U_ALU|Mux4~1_combout\ & ((\U_DFF5|internal_Q\(4)) # ((!\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux4~1_combout\ & (((\U_ALU|Add0~12_combout\ & \U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|internal_Q\(4),
	datab => \U_ALU|Mux4~1_combout\,
	datac => \U_ALU|Add0~12_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_ALU|Mux4~2_combout\);

-- Location: LCCOMB_X50_Y51_N26
\U_ALU|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~14_combout\ = \U_DFFALU3|internal_Q\(0) $ (\U_DFF5|internal_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datac => \U_DFF5|internal_Q\(4),
	combout => \U_ALU|Add0~14_combout\);

-- Location: LCCOMB_X50_Y51_N16
\U_ALU|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~15_combout\ = (\U_ALU|Add0~14_combout\ & ((\DATA[4]~input_o\ & (\U_ALU|Add0~13\ & VCC)) # (!\DATA[4]~input_o\ & (!\U_ALU|Add0~13\)))) # (!\U_ALU|Add0~14_combout\ & ((\DATA[4]~input_o\ & (!\U_ALU|Add0~13\)) # (!\DATA[4]~input_o\ & 
-- ((\U_ALU|Add0~13\) # (GND)))))
-- \U_ALU|Add0~16\ = CARRY((\U_ALU|Add0~14_combout\ & (!\DATA[4]~input_o\ & !\U_ALU|Add0~13\)) # (!\U_ALU|Add0~14_combout\ & ((!\U_ALU|Add0~13\) # (!\DATA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~14_combout\,
	datab => \DATA[4]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~13\,
	combout => \U_ALU|Add0~15_combout\,
	cout => \U_ALU|Add0~16\);

-- Location: LCCOMB_X47_Y51_N0
\U_ALU|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~0_combout\ = (\U_DFFALU3|internal_Q\(0) & (\DATA[4]~input_o\ & ((\U_DFF5|internal_Q\(4)) # (!\U_DFFALU3|internal_Q\(1))))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFFALU3|internal_Q\(1) & ((!\DATA[4]~input_o\))) # (!\U_DFFALU3|internal_Q\(1) & 
-- (\U_DFF5|internal_Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|internal_Q\(4),
	datab => \U_DFFALU3|internal_Q\(0),
	datac => \DATA[4]~input_o\,
	datad => \U_DFFALU3|internal_Q\(1),
	combout => \U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y51_N20
\U_ALU|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~1_combout\ = (\U_ALU|Mux1~0_combout\ & (\U_ALU|Mux1~1_combout\)) # (!\U_ALU|Mux1~0_combout\ & ((\U_ALU|Mux1~1_combout\ & (\U_ALU|Add0~15_combout\)) # (!\U_ALU|Mux1~1_combout\ & ((\U_ALU|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_ALU|Mux1~1_combout\,
	datac => \U_ALU|Add0~15_combout\,
	datad => \U_ALU|Mux3~0_combout\,
	combout => \U_ALU|Mux3~1_combout\);

-- Location: IOIBUF_X54_Y54_N8
\DATA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(5),
	o => \DATA[5]~input_o\);

-- Location: FF_X47_Y51_N3
\U_DFF5|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[5]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(5));

-- Location: LCCOMB_X47_Y51_N28
\U_ALU|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~2_combout\ = (\U_ALU|Mux1~0_combout\ & ((\U_ALU|Mux3~1_combout\ & ((\U_DFF5|internal_Q\(5)))) # (!\U_ALU|Mux3~1_combout\ & (\U_DFF5|internal_Q\(3))))) # (!\U_ALU|Mux1~0_combout\ & (\U_ALU|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_ALU|Mux3~1_combout\,
	datac => \U_DFF5|internal_Q\(3),
	datad => \U_DFF5|internal_Q\(5),
	combout => \U_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X47_Y51_N8
\U_ALU|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~0_combout\ = (\U_DFFALU3|internal_Q\(0) & (\DATA[5]~input_o\ & ((\U_DFF5|internal_Q\(5)) # (!\U_DFFALU3|internal_Q\(1))))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFFALU3|internal_Q\(1) & ((!\DATA[5]~input_o\))) # (!\U_DFFALU3|internal_Q\(1) & 
-- (\U_DFF5|internal_Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|internal_Q\(5),
	datab => \U_DFFALU3|internal_Q\(0),
	datac => \DATA[5]~input_o\,
	datad => \U_DFFALU3|internal_Q\(1),
	combout => \U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y51_N26
\U_ALU|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~1_combout\ = (\U_ALU|Mux1~0_combout\ & ((\U_ALU|Mux1~1_combout\) # ((\U_DFF5|internal_Q\(4))))) # (!\U_ALU|Mux1~0_combout\ & (!\U_ALU|Mux1~1_combout\ & ((\U_ALU|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_ALU|Mux1~1_combout\,
	datac => \U_DFF5|internal_Q\(4),
	datad => \U_ALU|Mux2~0_combout\,
	combout => \U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X47_Y51_N30
\U_ALU|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~17_combout\ = \U_DFFALU3|internal_Q\(0) $ (\U_DFF5|internal_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFF5|internal_Q\(5),
	combout => \U_ALU|Add0~17_combout\);

-- Location: LCCOMB_X50_Y51_N18
\U_ALU|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~18_combout\ = ((\DATA[5]~input_o\ $ (\U_ALU|Add0~17_combout\ $ (!\U_ALU|Add0~16\)))) # (GND)
-- \U_ALU|Add0~19\ = CARRY((\DATA[5]~input_o\ & ((\U_ALU|Add0~17_combout\) # (!\U_ALU|Add0~16\))) # (!\DATA[5]~input_o\ & (\U_ALU|Add0~17_combout\ & !\U_ALU|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[5]~input_o\,
	datab => \U_ALU|Add0~17_combout\,
	datad => VCC,
	cin => \U_ALU|Add0~16\,
	combout => \U_ALU|Add0~18_combout\,
	cout => \U_ALU|Add0~19\);

-- Location: IOIBUF_X56_Y54_N1
\DATA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(6),
	o => \DATA[6]~input_o\);

-- Location: FF_X47_Y51_N7
\U_DFF5|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[6]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(6));

-- Location: LCCOMB_X47_Y51_N18
\U_ALU|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~2_combout\ = (\U_ALU|Mux2~1_combout\ & (((\U_DFF5|internal_Q\(6)) # (!\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux2~1_combout\ & (\U_ALU|Add0~18_combout\ & ((\U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~1_combout\,
	datab => \U_ALU|Add0~18_combout\,
	datac => \U_DFF5|internal_Q\(6),
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_ALU|Mux2~2_combout\);

-- Location: IOIBUF_X54_Y54_N22
\DATA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(7),
	o => \DATA[7]~input_o\);

-- Location: LCCOMB_X46_Y51_N12
\U_DFF5|internal_Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF5|internal_Q[7]~feeder_combout\ = \DATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[7]~input_o\,
	combout => \U_DFF5|internal_Q[7]~feeder_combout\);

-- Location: FF_X46_Y51_N13
\U_DFF5|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF5|internal_Q[7]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|internal_Q\(7));

-- Location: LCCOMB_X47_Y51_N6
\U_ALU|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~2_combout\ = (\U_DFFALU3|internal_Q\(0) & (\DATA[6]~input_o\ & ((\U_DFF5|internal_Q\(6)) # (!\U_DFFALU3|internal_Q\(1))))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFFALU3|internal_Q\(1) & (!\DATA[6]~input_o\)) # (!\U_DFFALU3|internal_Q\(1) & 
-- ((\U_DFF5|internal_Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[6]~input_o\,
	datab => \U_DFFALU3|internal_Q\(0),
	datac => \U_DFF5|internal_Q\(6),
	datad => \U_DFFALU3|internal_Q\(1),
	combout => \U_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X50_Y51_N28
\U_ALU|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~20_combout\ = \U_DFFALU3|internal_Q\(0) $ (\U_DFF5|internal_Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFF5|internal_Q\(6),
	combout => \U_ALU|Add0~20_combout\);

-- Location: LCCOMB_X50_Y51_N20
\U_ALU|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~21_combout\ = (\U_ALU|Add0~20_combout\ & ((\DATA[6]~input_o\ & (\U_ALU|Add0~19\ & VCC)) # (!\DATA[6]~input_o\ & (!\U_ALU|Add0~19\)))) # (!\U_ALU|Add0~20_combout\ & ((\DATA[6]~input_o\ & (!\U_ALU|Add0~19\)) # (!\DATA[6]~input_o\ & 
-- ((\U_ALU|Add0~19\) # (GND)))))
-- \U_ALU|Add0~22\ = CARRY((\U_ALU|Add0~20_combout\ & (!\DATA[6]~input_o\ & !\U_ALU|Add0~19\)) # (!\U_ALU|Add0~20_combout\ & ((!\U_ALU|Add0~19\) # (!\DATA[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~20_combout\,
	datab => \DATA[6]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~19\,
	combout => \U_ALU|Add0~21_combout\,
	cout => \U_ALU|Add0~22\);

-- Location: LCCOMB_X47_Y51_N24
\U_ALU|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~3_combout\ = (\U_ALU|Mux1~1_combout\ & (((\U_ALU|Add0~21_combout\) # (\U_ALU|Mux1~0_combout\)))) # (!\U_ALU|Mux1~1_combout\ & (\U_ALU|Mux1~2_combout\ & ((!\U_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~2_combout\,
	datab => \U_ALU|Mux1~1_combout\,
	datac => \U_ALU|Add0~21_combout\,
	datad => \U_ALU|Mux1~0_combout\,
	combout => \U_ALU|Mux1~3_combout\);

-- Location: LCCOMB_X47_Y51_N2
\U_ALU|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~4_combout\ = (\U_ALU|Mux1~3_combout\ & ((\U_DFF5|internal_Q\(7)) # ((!\U_ALU|Mux1~0_combout\)))) # (!\U_ALU|Mux1~3_combout\ & (((\U_DFF5|internal_Q\(5) & \U_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|internal_Q\(7),
	datab => \U_ALU|Mux1~3_combout\,
	datac => \U_DFF5|internal_Q\(5),
	datad => \U_ALU|Mux1~0_combout\,
	combout => \U_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X47_Y51_N4
\U_ALU|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~23_combout\ = \U_DFFALU3|internal_Q\(0) $ (\U_DFF5|internal_Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFF5|internal_Q\(7),
	combout => \U_ALU|Add0~23_combout\);

-- Location: LCCOMB_X50_Y51_N22
\U_ALU|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~24_combout\ = \U_ALU|Add0~23_combout\ $ (\U_ALU|Add0~22\ $ (!\DATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Add0~23_combout\,
	datad => \DATA[7]~input_o\,
	cin => \U_ALU|Add0~22\,
	combout => \U_ALU|Add0~24_combout\);

-- Location: LCCOMB_X47_Y51_N10
\U_ALU|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~2_combout\ = (\U_DFFALU3|internal_Q\(0) & (\DATA[7]~input_o\ & ((\U_DFF5|internal_Q\(7)) # (!\U_DFFALU3|internal_Q\(1))))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFFALU3|internal_Q\(1) & ((!\DATA[7]~input_o\))) # (!\U_DFFALU3|internal_Q\(1) & 
-- (\U_DFF5|internal_Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|internal_Q\(7),
	datab => \U_DFFALU3|internal_Q\(0),
	datac => \DATA[7]~input_o\,
	datad => \U_DFFALU3|internal_Q\(1),
	combout => \U_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X47_Y51_N12
\U_ALU|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~3_combout\ = (\U_DFFALU3|internal_Q\(2) & (\U_ALU|Add0~24_combout\ & (!\U_DFFALU3|internal_Q\(1)))) # (!\U_DFFALU3|internal_Q\(2) & (((\U_ALU|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~24_combout\,
	datab => \U_DFFALU3|internal_Q\(1),
	datac => \U_DFFALU3|internal_Q\(2),
	datad => \U_ALU|Mux0~2_combout\,
	combout => \U_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X47_Y51_N14
\U_ALU|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~4_combout\ = (\U_DFFALU3|internal_Q\(0) & (\U_DFF5|internal_Q\(7))) # (!\U_DFFALU3|internal_Q\(0) & ((\U_DFF5|internal_Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|internal_Q\(7),
	datab => \U_DFFALU3|internal_Q\(0),
	datad => \U_DFF5|internal_Q\(6),
	combout => \U_ALU|Mux0~4_combout\);

-- Location: LCCOMB_X47_Y51_N16
\U_ALU|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~5_combout\ = (\U_ALU|Mux0~3_combout\) # ((\U_DFFALU3|internal_Q\(1) & (\U_DFFALU3|internal_Q\(2) & \U_ALU|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~3_combout\,
	datab => \U_DFFALU3|internal_Q\(1),
	datac => \U_DFFALU3|internal_Q\(2),
	datad => \U_ALU|Mux0~4_combout\,
	combout => \U_ALU|Mux0~5_combout\);

-- Location: FF_X46_Y51_N21
\U_DFF4|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_COMP|Equal0~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF4|internal_Q\(0));

-- Location: IOIBUF_X46_Y54_N15
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

-- Location: FF_X46_Y51_N15
\U_DFF3|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND2[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF3|internal_Q\(0));

-- Location: LCCOMB_X46_Y51_N14
\U_MUX|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MUX|Selector2~0_combout\ = (\U_DFF4|internal_Q\(0) & (!\U_COMP|Equal0~0_combout\ & ((\U_DFF2|internal_Q\(0))))) # (!\U_DFF4|internal_Q\(0) & (((\U_DFF3|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF4|internal_Q\(0),
	datab => \U_COMP|Equal0~0_combout\,
	datac => \U_DFF3|internal_Q\(0),
	datad => \U_DFF2|internal_Q\(0),
	combout => \U_MUX|Selector2~0_combout\);

-- Location: IOIBUF_X49_Y54_N8
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

-- Location: FF_X46_Y51_N31
\U_DFF3|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND2[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF3|internal_Q\(1));

-- Location: LCCOMB_X46_Y51_N30
\U_MUX|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MUX|Selector1~0_combout\ = (\U_DFF4|internal_Q\(0) & (\U_DFF2|internal_Q\(1) & ((!\U_COMP|Equal0~0_combout\)))) # (!\U_DFF4|internal_Q\(0) & (((\U_DFF3|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF4|internal_Q\(0),
	datab => \U_DFF2|internal_Q\(1),
	datac => \U_DFF3|internal_Q\(1),
	datad => \U_COMP|Equal0~0_combout\,
	combout => \U_MUX|Selector1~0_combout\);

-- Location: IOIBUF_X49_Y54_N15
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

-- Location: FF_X46_Y51_N7
\U_DFF3|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND2[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF3|internal_Q\(2));

-- Location: LCCOMB_X46_Y51_N6
\U_MUX|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MUX|Selector0~0_combout\ = (\U_DFF4|internal_Q\(0) & (\U_DFF2|internal_Q\(2) & ((!\U_COMP|Equal0~0_combout\)))) # (!\U_DFF4|internal_Q\(0) & (((\U_DFF3|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF4|internal_Q\(0),
	datab => \U_DFF2|internal_Q\(2),
	datac => \U_DFF3|internal_Q\(2),
	datad => \U_COMP|Equal0~0_combout\,
	combout => \U_MUX|Selector0~0_combout\);

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

ww_ADDR(0) <= \ADDR[0]~output_o\;

ww_ADDR(1) <= \ADDR[1]~output_o\;

ww_ADDR(2) <= \ADDR[2]~output_o\;

ww_READW <= \READW~output_o\;

DATA(0) <= \DATA[0]~output_o\;

DATA(1) <= \DATA[1]~output_o\;

DATA(2) <= \DATA[2]~output_o\;

DATA(3) <= \DATA[3]~output_o\;

DATA(4) <= \DATA[4]~output_o\;

DATA(5) <= \DATA[5]~output_o\;

DATA(6) <= \DATA[6]~output_o\;

DATA(7) <= \DATA[7]~output_o\;
END structure;


