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

-- DATE "11/30/2025 23:41:08"

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

ENTITY 	barramento IS
    PORT (
	CLK : IN std_logic;
	addr : IN std_logic_vector(2 DOWNTO 0);
	data : INOUT std_logic_vector(7 DOWNTO 0);
	readw : IN std_logic
	);
END barramento;

-- Design Ports Information
-- data[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readw	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF barramento IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_readw : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \readw~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \P6|process_0~0_combout\ : std_logic;
SIGNAL \P6|data~0_combout\ : std_logic;
SIGNAL \P7|process_0~0_combout\ : std_logic;
SIGNAL \P7|data~0_combout\ : std_logic;
SIGNAL \P1|data[0]~11_combout\ : std_logic;
SIGNAL \P5|data~0_combout\ : std_logic;
SIGNAL \P4|process_0~0_combout\ : std_logic;
SIGNAL \P5|process_0~0_combout\ : std_logic;
SIGNAL \P4|data~0_combout\ : std_logic;
SIGNAL \P1|data[0]~9_combout\ : std_logic;
SIGNAL \P3|data~0_combout\ : std_logic;
SIGNAL \P2|process_0~0_combout\ : std_logic;
SIGNAL \P3|process_0~0_combout\ : std_logic;
SIGNAL \P2|data~0_combout\ : std_logic;
SIGNAL \P1|data[0]~8_combout\ : std_logic;
SIGNAL \P1|data[0]~10_combout\ : std_logic;
SIGNAL \P1|process_0~0_combout\ : std_logic;
SIGNAL \P1|data~12_combout\ : std_logic;
SIGNAL \P1|data[0]~13_combout\ : std_logic;
SIGNAL \P1|data[0]~14_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \P1|data[1]~15_combout\ : std_logic;
SIGNAL \P5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \P1|data[1]~16_combout\ : std_logic;
SIGNAL \P1|data[1]~17_combout\ : std_logic;
SIGNAL \P1|data[1]~18_combout\ : std_logic;
SIGNAL \P1|data[1]~19_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \P3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \P1|data[2]~20_combout\ : std_logic;
SIGNAL \P7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \P1|data[2]~23_combout\ : std_logic;
SIGNAL \P1|data[2]~21_combout\ : std_logic;
SIGNAL \P1|data[2]~22_combout\ : std_logic;
SIGNAL \P1|data[2]~24_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \P3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \P1|data[3]~25_combout\ : std_logic;
SIGNAL \P5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \P1|data[3]~26_combout\ : std_logic;
SIGNAL \P1|data[3]~27_combout\ : std_logic;
SIGNAL \P1|data[3]~28_combout\ : std_logic;
SIGNAL \P1|data[3]~29_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \P7|Q[4]~feeder_combout\ : std_logic;
SIGNAL \P1|data[4]~33_combout\ : std_logic;
SIGNAL \P3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \P1|data[4]~30_combout\ : std_logic;
SIGNAL \P5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \P1|data[4]~31_combout\ : std_logic;
SIGNAL \P1|data[4]~32_combout\ : std_logic;
SIGNAL \P1|data[4]~34_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \P3|Q[5]~feeder_combout\ : std_logic;
SIGNAL \P1|data[5]~35_combout\ : std_logic;
SIGNAL \P1|data[5]~37_combout\ : std_logic;
SIGNAL \P1|data[5]~36_combout\ : std_logic;
SIGNAL \P7|Q[5]~feeder_combout\ : std_logic;
SIGNAL \P1|data[5]~38_combout\ : std_logic;
SIGNAL \P1|data[5]~39_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \P5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \P1|data[6]~41_combout\ : std_logic;
SIGNAL \P1|data[6]~40_combout\ : std_logic;
SIGNAL \P1|data[6]~42_combout\ : std_logic;
SIGNAL \P1|data[6]~43_combout\ : std_logic;
SIGNAL \P1|data[6]~44_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \P3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \P1|data[7]~45_combout\ : std_logic;
SIGNAL \P1|data[7]~47_combout\ : std_logic;
SIGNAL \P5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \P1|data[7]~46_combout\ : std_logic;
SIGNAL \P7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \P1|data[7]~48_combout\ : std_logic;
SIGNAL \P1|data[7]~49_combout\ : std_logic;
SIGNAL \P1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P7|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P4|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P5|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P6|Q\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_addr <= addr;
ww_readw <= readw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X51_Y54_N23
\data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[0]~13_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[1]~19_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[2]~24_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[3]~29_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[4]~34_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[5]~39_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[6]~44_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|data[7]~49_combout\,
	oe => \P1|data[0]~14_combout\,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

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

-- Location: IOIBUF_X51_Y54_N22
\data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\readw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readw,
	o => \readw~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\addr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: LCCOMB_X56_Y50_N8
\P6|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P6|process_0~0_combout\ = (\addr[1]~input_o\ & (\readw~input_o\ & (\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P6|process_0~0_combout\);

-- Location: FF_X54_Y50_N9
\P6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(0));

-- Location: LCCOMB_X56_Y50_N10
\P6|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P6|data~0_combout\ = (\addr[1]~input_o\ & (!\readw~input_o\ & (\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P6|data~0_combout\);

-- Location: LCCOMB_X56_Y50_N18
\P7|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P7|process_0~0_combout\ = (\addr[1]~input_o\ & (\readw~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P7|process_0~0_combout\);

-- Location: FF_X52_Y50_N21
\P7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(0));

-- Location: LCCOMB_X56_Y50_N24
\P7|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P7|data~0_combout\ = (\addr[1]~input_o\ & (!\readw~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P7|data~0_combout\);

-- Location: LCCOMB_X52_Y50_N20
\P1|data[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[0]~11_combout\ = (\P6|Q\(0) & (((\P7|Q\(0)) # (!\P7|data~0_combout\)))) # (!\P6|Q\(0) & (!\P6|data~0_combout\ & ((\P7|Q\(0)) # (!\P7|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P6|Q\(0),
	datab => \P6|data~0_combout\,
	datac => \P7|Q\(0),
	datad => \P7|data~0_combout\,
	combout => \P1|data[0]~11_combout\);

-- Location: LCCOMB_X56_Y50_N20
\P5|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P5|data~0_combout\ = (!\addr[1]~input_o\ & (!\readw~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P5|data~0_combout\);

-- Location: LCCOMB_X56_Y50_N28
\P4|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P4|process_0~0_combout\ = (!\addr[1]~input_o\ & (\readw~input_o\ & (\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P4|process_0~0_combout\);

-- Location: FF_X55_Y50_N25
\P4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(0));

-- Location: LCCOMB_X56_Y50_N14
\P5|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P5|process_0~0_combout\ = (!\addr[1]~input_o\ & (\readw~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P5|process_0~0_combout\);

-- Location: FF_X55_Y50_N27
\P5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(0));

-- Location: LCCOMB_X56_Y50_N22
\P4|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P4|data~0_combout\ = (!\addr[1]~input_o\ & (!\readw~input_o\ & (\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P4|data~0_combout\);

-- Location: LCCOMB_X55_Y50_N26
\P1|data[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[0]~9_combout\ = (\P5|data~0_combout\ & (\P5|Q\(0) & ((\P4|Q\(0)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & ((\P4|Q\(0)) # ((!\P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P4|Q\(0),
	datac => \P5|Q\(0),
	datad => \P4|data~0_combout\,
	combout => \P1|data[0]~9_combout\);

-- Location: LCCOMB_X56_Y50_N0
\P3|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3|data~0_combout\ = (\addr[1]~input_o\ & (!\readw~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P3|data~0_combout\);

-- Location: LCCOMB_X56_Y50_N16
\P2|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2|process_0~0_combout\ = (\addr[1]~input_o\ & (\readw~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P2|process_0~0_combout\);

-- Location: FF_X51_Y50_N9
\P2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(0));

-- Location: LCCOMB_X56_Y50_N26
\P3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3|process_0~0_combout\ = (\addr[1]~input_o\ & (\readw~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P3|process_0~0_combout\);

-- Location: FF_X52_Y50_N1
\P3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(0));

-- Location: LCCOMB_X56_Y50_N2
\P2|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2|data~0_combout\ = (\addr[1]~input_o\ & (!\readw~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P2|data~0_combout\);

-- Location: LCCOMB_X52_Y50_N0
\P1|data[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[0]~8_combout\ = (\P3|data~0_combout\ & (\P3|Q\(0) & ((\P2|Q\(0)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & ((\P2|Q\(0)) # ((!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P2|Q\(0),
	datac => \P3|Q\(0),
	datad => \P2|data~0_combout\,
	combout => \P1|data[0]~8_combout\);

-- Location: LCCOMB_X52_Y50_N10
\P1|data[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[0]~10_combout\ = (\P1|data[0]~9_combout\ & \P1|data[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data[0]~9_combout\,
	datab => \P1|data[0]~8_combout\,
	combout => \P1|data[0]~10_combout\);

-- Location: LCCOMB_X56_Y50_N4
\P1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|process_0~0_combout\ = (!\addr[1]~input_o\ & (\readw~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P1|process_0~0_combout\);

-- Location: FF_X51_Y50_N3
\P1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(0));

-- Location: LCCOMB_X56_Y50_N12
\P1|data~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data~12_combout\ = (!\addr[1]~input_o\ & (!\readw~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P1|data~12_combout\);

-- Location: LCCOMB_X51_Y50_N2
\P1|data[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[0]~13_combout\ = (\P1|data[0]~11_combout\ & (\P1|data[0]~10_combout\ & ((\P1|Q\(0)) # (!\P1|data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data[0]~11_combout\,
	datab => \P1|data[0]~10_combout\,
	datac => \P1|Q\(0),
	datad => \P1|data~12_combout\,
	combout => \P1|data[0]~13_combout\);

-- Location: LCCOMB_X56_Y50_N30
\P1|data[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[0]~14_combout\ = (!\readw~input_o\ & ((\addr[1]~input_o\) # ((\addr[2]~input_o\) # (\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \readw~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \P1|data[0]~14_combout\);

-- Location: IOIBUF_X54_Y54_N29
\data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(1),
	o => \data[1]~input_o\);

-- Location: FF_X52_Y50_N7
\P3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(1));

-- Location: FF_X51_Y50_N21
\P2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(1));

-- Location: LCCOMB_X51_Y50_N20
\P1|data[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[1]~15_combout\ = (\P3|data~0_combout\ & (\P3|Q\(1) & ((\P2|Q\(1)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & (((\P2|Q\(1)) # (!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P3|Q\(1),
	datac => \P2|Q\(1),
	datad => \P2|data~0_combout\,
	combout => \P1|data[1]~15_combout\);

-- Location: FF_X55_Y50_N7
\P4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(1));

-- Location: LCCOMB_X55_Y50_N12
\P5|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P5|Q[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \P5|Q[1]~feeder_combout\);

-- Location: FF_X55_Y50_N13
\P5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P5|Q[1]~feeder_combout\,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(1));

-- Location: LCCOMB_X55_Y50_N6
\P1|data[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[1]~16_combout\ = (\P5|data~0_combout\ & (\P5|Q\(1) & ((\P4|Q\(1)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & (((\P4|Q\(1))) # (!\P4|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P4|data~0_combout\,
	datac => \P4|Q\(1),
	datad => \P5|Q\(1),
	combout => \P1|data[1]~16_combout\);

-- Location: LCCOMB_X54_Y50_N2
\P1|data[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[1]~17_combout\ = (\P1|data[1]~15_combout\ & \P1|data[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1|data[1]~15_combout\,
	datad => \P1|data[1]~16_combout\,
	combout => \P1|data[1]~17_combout\);

-- Location: FF_X54_Y50_N31
\P1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(1));

-- Location: FF_X52_Y50_N17
\P7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(1));

-- Location: FF_X54_Y50_N21
\P6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(1));

-- Location: LCCOMB_X54_Y50_N20
\P1|data[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[1]~18_combout\ = (\P7|Q\(1) & (((\P6|Q\(1))) # (!\P6|data~0_combout\))) # (!\P7|Q\(1) & (!\P7|data~0_combout\ & ((\P6|Q\(1)) # (!\P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P7|Q\(1),
	datab => \P6|data~0_combout\,
	datac => \P6|Q\(1),
	datad => \P7|data~0_combout\,
	combout => \P1|data[1]~18_combout\);

-- Location: LCCOMB_X54_Y50_N30
\P1|data[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[1]~19_combout\ = (\P1|data[1]~17_combout\ & (\P1|data[1]~18_combout\ & ((\P1|Q\(1)) # (!\P1|data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data~12_combout\,
	datab => \P1|data[1]~17_combout\,
	datac => \P1|Q\(1),
	datad => \P1|data[1]~18_combout\,
	combout => \P1|data[1]~19_combout\);

-- Location: IOIBUF_X51_Y54_N1
\data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X52_Y50_N18
\P3|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3|Q[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \P3|Q[2]~feeder_combout\);

-- Location: FF_X52_Y50_N19
\P3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P3|Q[2]~feeder_combout\,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(2));

-- Location: FF_X51_Y50_N23
\P2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(2));

-- Location: LCCOMB_X51_Y50_N22
\P1|data[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[2]~20_combout\ = (\P3|data~0_combout\ & (\P3|Q\(2) & ((\P2|Q\(2)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & (((\P2|Q\(2)) # (!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P3|Q\(2),
	datac => \P2|Q\(2),
	datad => \P2|data~0_combout\,
	combout => \P1|data[2]~20_combout\);

-- Location: LCCOMB_X52_Y50_N4
\P7|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P7|Q[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \P7|Q[2]~feeder_combout\);

-- Location: FF_X52_Y50_N5
\P7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P7|Q[2]~feeder_combout\,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(2));

-- Location: FF_X54_Y50_N27
\P6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(2));

-- Location: LCCOMB_X54_Y50_N26
\P1|data[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[2]~23_combout\ = (\P7|Q\(2) & (((\P6|Q\(2))) # (!\P6|data~0_combout\))) # (!\P7|Q\(2) & (!\P7|data~0_combout\ & ((\P6|Q\(2)) # (!\P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P7|Q\(2),
	datab => \P6|data~0_combout\,
	datac => \P6|Q\(2),
	datad => \P7|data~0_combout\,
	combout => \P1|data[2]~23_combout\);

-- Location: FF_X55_Y50_N1
\P5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(2));

-- Location: FF_X55_Y50_N3
\P4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(2));

-- Location: LCCOMB_X55_Y50_N2
\P1|data[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[2]~21_combout\ = (\P5|data~0_combout\ & (\P5|Q\(2) & ((\P4|Q\(2)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & (((\P4|Q\(2)) # (!\P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P5|Q\(2),
	datac => \P4|Q\(2),
	datad => \P4|data~0_combout\,
	combout => \P1|data[2]~21_combout\);

-- Location: FF_X54_Y50_N25
\P1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(2));

-- Location: LCCOMB_X54_Y50_N24
\P1|data[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[2]~22_combout\ = (\P1|Q\(2)) # (!\P1|data~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data~12_combout\,
	datac => \P1|Q\(2),
	combout => \P1|data[2]~22_combout\);

-- Location: LCCOMB_X51_Y50_N0
\P1|data[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[2]~24_combout\ = (\P1|data[2]~20_combout\ & (\P1|data[2]~23_combout\ & (\P1|data[2]~21_combout\ & \P1|data[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data[2]~20_combout\,
	datab => \P1|data[2]~23_combout\,
	datac => \P1|data[2]~21_combout\,
	datad => \P1|data[2]~22_combout\,
	combout => \P1|data[2]~24_combout\);

-- Location: IOIBUF_X54_Y54_N8
\data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X52_Y50_N22
\P3|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3|Q[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \P3|Q[3]~feeder_combout\);

-- Location: FF_X52_Y50_N23
\P3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P3|Q[3]~feeder_combout\,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(3));

-- Location: FF_X51_Y50_N27
\P2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(3));

-- Location: LCCOMB_X51_Y50_N26
\P1|data[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[3]~25_combout\ = (\P3|data~0_combout\ & (\P3|Q\(3) & ((\P2|Q\(3)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & (((\P2|Q\(3)) # (!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P3|Q\(3),
	datac => \P2|Q\(3),
	datad => \P2|data~0_combout\,
	combout => \P1|data[3]~25_combout\);

-- Location: LCCOMB_X55_Y50_N4
\P5|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P5|Q[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \P5|Q[3]~feeder_combout\);

-- Location: FF_X55_Y50_N5
\P5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P5|Q[3]~feeder_combout\,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(3));

-- Location: FF_X55_Y50_N15
\P4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(3));

-- Location: LCCOMB_X55_Y50_N14
\P1|data[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[3]~26_combout\ = (\P5|data~0_combout\ & (\P5|Q\(3) & ((\P4|Q\(3)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & (((\P4|Q\(3)) # (!\P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P5|Q\(3),
	datac => \P4|Q\(3),
	datad => \P4|data~0_combout\,
	combout => \P1|data[3]~26_combout\);

-- Location: LCCOMB_X54_Y50_N8
\P1|data[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[3]~27_combout\ = (\P1|data[3]~25_combout\ & \P1|data[3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data[3]~25_combout\,
	datad => \P1|data[3]~26_combout\,
	combout => \P1|data[3]~27_combout\);

-- Location: FF_X54_Y50_N15
\P1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(3));

-- Location: FF_X52_Y50_N11
\P7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(3));

-- Location: FF_X54_Y50_N29
\P6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(3));

-- Location: LCCOMB_X54_Y50_N28
\P1|data[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[3]~28_combout\ = (\P7|Q\(3) & (((\P6|Q\(3))) # (!\P6|data~0_combout\))) # (!\P7|Q\(3) & (!\P7|data~0_combout\ & ((\P6|Q\(3)) # (!\P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P7|Q\(3),
	datab => \P6|data~0_combout\,
	datac => \P6|Q\(3),
	datad => \P7|data~0_combout\,
	combout => \P1|data[3]~28_combout\);

-- Location: LCCOMB_X54_Y50_N14
\P1|data[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[3]~29_combout\ = (\P1|data[3]~27_combout\ & (\P1|data[3]~28_combout\ & ((\P1|Q\(3)) # (!\P1|data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data~12_combout\,
	datab => \P1|data[3]~27_combout\,
	datac => \P1|Q\(3),
	datad => \P1|data[3]~28_combout\,
	combout => \P1|data[3]~29_combout\);

-- Location: IOIBUF_X54_Y54_N1
\data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X52_Y50_N26
\P7|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P7|Q[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \P7|Q[4]~feeder_combout\);

-- Location: FF_X52_Y50_N27
\P7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P7|Q[4]~feeder_combout\,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(4));

-- Location: FF_X54_Y50_N19
\P6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(4));

-- Location: LCCOMB_X54_Y50_N18
\P1|data[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[4]~33_combout\ = (\P7|Q\(4) & (((\P6|Q\(4))) # (!\P6|data~0_combout\))) # (!\P7|Q\(4) & (!\P7|data~0_combout\ & ((\P6|Q\(4)) # (!\P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P7|Q\(4),
	datab => \P6|data~0_combout\,
	datac => \P6|Q\(4),
	datad => \P7|data~0_combout\,
	combout => \P1|data[4]~33_combout\);

-- Location: FF_X54_Y50_N13
\P1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(4));

-- Location: LCCOMB_X52_Y50_N24
\P3|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3|Q[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \P3|Q[4]~feeder_combout\);

-- Location: FF_X52_Y50_N25
\P3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P3|Q[4]~feeder_combout\,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(4));

-- Location: FF_X51_Y50_N29
\P2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(4));

-- Location: LCCOMB_X51_Y50_N28
\P1|data[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[4]~30_combout\ = (\P3|data~0_combout\ & (\P3|Q\(4) & ((\P2|Q\(4)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & (((\P2|Q\(4)) # (!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P3|Q\(4),
	datac => \P2|Q\(4),
	datad => \P2|data~0_combout\,
	combout => \P1|data[4]~30_combout\);

-- Location: LCCOMB_X55_Y50_N8
\P5|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P5|Q[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \P5|Q[4]~feeder_combout\);

-- Location: FF_X55_Y50_N9
\P5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P5|Q[4]~feeder_combout\,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(4));

-- Location: FF_X55_Y50_N19
\P4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(4));

-- Location: LCCOMB_X55_Y50_N18
\P1|data[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[4]~31_combout\ = (\P5|data~0_combout\ & (\P5|Q\(4) & ((\P4|Q\(4)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & (((\P4|Q\(4)) # (!\P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P5|Q\(4),
	datac => \P4|Q\(4),
	datad => \P4|data~0_combout\,
	combout => \P1|data[4]~31_combout\);

-- Location: LCCOMB_X54_Y50_N16
\P1|data[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[4]~32_combout\ = (\P1|data[4]~30_combout\ & \P1|data[4]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P1|data[4]~30_combout\,
	datad => \P1|data[4]~31_combout\,
	combout => \P1|data[4]~32_combout\);

-- Location: LCCOMB_X54_Y50_N12
\P1|data[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[4]~34_combout\ = (\P1|data[4]~33_combout\ & (\P1|data[4]~32_combout\ & ((\P1|Q\(4)) # (!\P1|data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data~12_combout\,
	datab => \P1|data[4]~33_combout\,
	datac => \P1|Q\(4),
	datad => \P1|data[4]~32_combout\,
	combout => \P1|data[4]~34_combout\);

-- Location: IOIBUF_X51_Y54_N29
\data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(5),
	o => \data[5]~input_o\);

-- Location: LCCOMB_X52_Y50_N28
\P3|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3|Q[5]~feeder_combout\ = \data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[5]~input_o\,
	combout => \P3|Q[5]~feeder_combout\);

-- Location: FF_X52_Y50_N29
\P3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P3|Q[5]~feeder_combout\,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(5));

-- Location: FF_X51_Y50_N31
\P2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(5));

-- Location: LCCOMB_X51_Y50_N30
\P1|data[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[5]~35_combout\ = (\P3|data~0_combout\ & (\P3|Q\(5) & ((\P2|Q\(5)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & (((\P2|Q\(5)) # (!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P3|Q\(5),
	datac => \P2|Q\(5),
	datad => \P2|data~0_combout\,
	combout => \P1|data[5]~35_combout\);

-- Location: FF_X51_Y50_N25
\P1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(5));

-- Location: LCCOMB_X51_Y50_N24
\P1|data[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[5]~37_combout\ = (\P1|Q\(5)) # (!\P1|data~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P1|Q\(5),
	datad => \P1|data~12_combout\,
	combout => \P1|data[5]~37_combout\);

-- Location: FF_X55_Y50_N21
\P5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(5));

-- Location: FF_X55_Y50_N23
\P4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(5));

-- Location: LCCOMB_X55_Y50_N22
\P1|data[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[5]~36_combout\ = (\P5|data~0_combout\ & (\P5|Q\(5) & ((\P4|Q\(5)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & (((\P4|Q\(5)) # (!\P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P5|Q\(5),
	datac => \P4|Q\(5),
	datad => \P4|data~0_combout\,
	combout => \P1|data[5]~36_combout\);

-- Location: LCCOMB_X52_Y50_N14
\P7|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P7|Q[5]~feeder_combout\ = \data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[5]~input_o\,
	combout => \P7|Q[5]~feeder_combout\);

-- Location: FF_X52_Y50_N15
\P7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P7|Q[5]~feeder_combout\,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(5));

-- Location: FF_X54_Y50_N23
\P6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(5));

-- Location: LCCOMB_X54_Y50_N22
\P1|data[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[5]~38_combout\ = (\P7|Q\(5) & (((\P6|Q\(5))) # (!\P6|data~0_combout\))) # (!\P7|Q\(5) & (!\P7|data~0_combout\ & ((\P6|Q\(5)) # (!\P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P7|Q\(5),
	datab => \P6|data~0_combout\,
	datac => \P6|Q\(5),
	datad => \P7|data~0_combout\,
	combout => \P1|data[5]~38_combout\);

-- Location: LCCOMB_X51_Y50_N10
\P1|data[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[5]~39_combout\ = (\P1|data[5]~35_combout\ & (\P1|data[5]~37_combout\ & (\P1|data[5]~36_combout\ & \P1|data[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data[5]~35_combout\,
	datab => \P1|data[5]~37_combout\,
	datac => \P1|data[5]~36_combout\,
	datad => \P1|data[5]~38_combout\,
	combout => \P1|data[5]~39_combout\);

-- Location: IOIBUF_X54_Y54_N15
\data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(6),
	o => \data[6]~input_o\);

-- Location: LCCOMB_X55_Y50_N16
\P5|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P5|Q[6]~feeder_combout\ = \data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[6]~input_o\,
	combout => \P5|Q[6]~feeder_combout\);

-- Location: FF_X55_Y50_N17
\P5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P5|Q[6]~feeder_combout\,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(6));

-- Location: FF_X55_Y50_N11
\P4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(6));

-- Location: LCCOMB_X55_Y50_N10
\P1|data[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[6]~41_combout\ = (\P5|data~0_combout\ & (\P5|Q\(6) & ((\P4|Q\(6)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & (((\P4|Q\(6)) # (!\P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P5|Q\(6),
	datac => \P4|Q\(6),
	datad => \P4|data~0_combout\,
	combout => \P1|data[6]~41_combout\);

-- Location: FF_X52_Y50_N9
\P3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(6));

-- Location: FF_X51_Y50_N13
\P2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(6));

-- Location: LCCOMB_X51_Y50_N12
\P1|data[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[6]~40_combout\ = (\P3|data~0_combout\ & (\P3|Q\(6) & ((\P2|Q\(6)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & (((\P2|Q\(6)) # (!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P3|Q\(6),
	datac => \P2|Q\(6),
	datad => \P2|data~0_combout\,
	combout => \P1|data[6]~40_combout\);

-- Location: LCCOMB_X54_Y50_N0
\P1|data[6]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[6]~42_combout\ = (\P1|data[6]~41_combout\ & \P1|data[6]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1|data[6]~41_combout\,
	datad => \P1|data[6]~40_combout\,
	combout => \P1|data[6]~42_combout\);

-- Location: FF_X54_Y50_N5
\P1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(6));

-- Location: FF_X52_Y50_N3
\P7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(6));

-- Location: FF_X54_Y50_N11
\P6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(6));

-- Location: LCCOMB_X54_Y50_N10
\P1|data[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[6]~43_combout\ = (\P7|Q\(6) & (((\P6|Q\(6))) # (!\P6|data~0_combout\))) # (!\P7|Q\(6) & (!\P7|data~0_combout\ & ((\P6|Q\(6)) # (!\P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P7|Q\(6),
	datab => \P6|data~0_combout\,
	datac => \P6|Q\(6),
	datad => \P7|data~0_combout\,
	combout => \P1|data[6]~43_combout\);

-- Location: LCCOMB_X54_Y50_N4
\P1|data[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[6]~44_combout\ = (\P1|data[6]~42_combout\ & (\P1|data[6]~43_combout\ & ((\P1|Q\(6)) # (!\P1|data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data~12_combout\,
	datab => \P1|data[6]~42_combout\,
	datac => \P1|Q\(6),
	datad => \P1|data[6]~43_combout\,
	combout => \P1|data[6]~44_combout\);

-- Location: IOIBUF_X51_Y54_N8
\data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(7),
	o => \data[7]~input_o\);

-- Location: LCCOMB_X52_Y50_N12
\P3|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3|Q[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \P3|Q[7]~feeder_combout\);

-- Location: FF_X52_Y50_N13
\P3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P3|Q[7]~feeder_combout\,
	ena => \P3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P3|Q\(7));

-- Location: FF_X51_Y50_N7
\P2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \P2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|Q\(7));

-- Location: LCCOMB_X51_Y50_N6
\P1|data[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[7]~45_combout\ = (\P3|data~0_combout\ & (\P3|Q\(7) & ((\P2|Q\(7)) # (!\P2|data~0_combout\)))) # (!\P3|data~0_combout\ & (((\P2|Q\(7)) # (!\P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3|data~0_combout\,
	datab => \P3|Q\(7),
	datac => \P2|Q\(7),
	datad => \P2|data~0_combout\,
	combout => \P1|data[7]~45_combout\);

-- Location: FF_X51_Y50_N17
\P1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \P1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|Q\(7));

-- Location: LCCOMB_X51_Y50_N16
\P1|data[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[7]~47_combout\ = (\P1|Q\(7)) # (!\P1|data~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P1|Q\(7),
	datad => \P1|data~12_combout\,
	combout => \P1|data[7]~47_combout\);

-- Location: LCCOMB_X55_Y50_N28
\P5|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P5|Q[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \P5|Q[7]~feeder_combout\);

-- Location: FF_X55_Y50_N29
\P5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P5|Q[7]~feeder_combout\,
	ena => \P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P5|Q\(7));

-- Location: FF_X55_Y50_N31
\P4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P4|Q\(7));

-- Location: LCCOMB_X55_Y50_N30
\P1|data[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[7]~46_combout\ = (\P5|data~0_combout\ & (\P5|Q\(7) & ((\P4|Q\(7)) # (!\P4|data~0_combout\)))) # (!\P5|data~0_combout\ & (((\P4|Q\(7)) # (!\P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|data~0_combout\,
	datab => \P5|Q\(7),
	datac => \P4|Q\(7),
	datad => \P4|data~0_combout\,
	combout => \P1|data[7]~46_combout\);

-- Location: LCCOMB_X52_Y50_N30
\P7|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P7|Q[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \P7|Q[7]~feeder_combout\);

-- Location: FF_X52_Y50_N31
\P7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \P7|Q[7]~feeder_combout\,
	ena => \P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P7|Q\(7));

-- Location: FF_X54_Y50_N7
\P6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P6|Q\(7));

-- Location: LCCOMB_X54_Y50_N6
\P1|data[7]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[7]~48_combout\ = (\P7|Q\(7) & (((\P6|Q\(7))) # (!\P6|data~0_combout\))) # (!\P7|Q\(7) & (!\P7|data~0_combout\ & ((\P6|Q\(7)) # (!\P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P7|Q\(7),
	datab => \P6|data~0_combout\,
	datac => \P6|Q\(7),
	datad => \P7|data~0_combout\,
	combout => \P1|data[7]~48_combout\);

-- Location: LCCOMB_X51_Y50_N18
\P1|data[7]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1|data[7]~49_combout\ = (\P1|data[7]~45_combout\ & (\P1|data[7]~47_combout\ & (\P1|data[7]~46_combout\ & \P1|data[7]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1|data[7]~45_combout\,
	datab => \P1|data[7]~47_combout\,
	datac => \P1|data[7]~46_combout\,
	datad => \P1|data[7]~48_combout\,
	combout => \P1|data[7]~49_combout\);

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

data(0) <= \data[0]~output_o\;

data(1) <= \data[1]~output_o\;

data(2) <= \data[2]~output_o\;

data(3) <= \data[3]~output_o\;

data(4) <= \data[4]~output_o\;

data(5) <= \data[5]~output_o\;

data(6) <= \data[6]~output_o\;

data(7) <= \data[7]~output_o\;
END structure;


