 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity arithmetic_control_tb is
end arithmetic_control_tb;

architecture sim of arithmetic_control_tb is

    component arithmetic_control
    port (
        OPCODE   : in    std_logic_vector(2 downto 0);
        OPERAND1 : in    std_logic_vector(7 downto 0);
        OPERAND2 : in    std_logic_vector(2 downto 0);
        CLK      : in    std_logic;
        OUTP     : out   std_logic_vector(7 downto 0);
        ADDR     : out   std_logic_vector(2 downto 0);
        DATA     : inout std_logic_vector(7 downto 0);
        READW    : out   std_logic
    );
    end component;

    signal s_OPCODE   : std_logic_vector(2 downto 0) := (others => '0');
    signal s_OPERAND1 : std_logic_vector(7 downto 0) := (others => '0');
    signal s_OPERAND2 : std_logic_vector(2 downto 0) := (others => '0');
    signal s_CLK      : std_logic := '0';
    
    signal s_OUTP     : std_logic_vector(7 downto 0);
    signal s_ADDR     : std_logic_vector(2 downto 0);
    signal s_READW    : std_logic;

    signal s_DATA     : std_logic_vector(7 downto 0);
    signal s_TB_DATA  : std_logic_vector(7 downto 0) := (others => '0'); 

    constant clk_period : time := 20 ns;

begin

    uut: arithmetic_control
    port map (
        OPCODE   => s_OPCODE,
        OPERAND1 => s_OPERAND1,
        OPERAND2 => s_OPERAND2,
        CLK      => s_CLK,
        OUTP     => s_OUTP,
        ADDR     => s_ADDR,
        DATA     => s_DATA,
        READW    => s_READW
    );

    -- Bidirectional Bus Logic: TB drives when READW='0' (Read), releases (Z) when READW='1' (Write)
    s_DATA <= s_TB_DATA when s_READW = '0' else (others => 'Z');

    clk_process: process
    begin
        s_CLK <= '0';
        wait for clk_period/2;
        s_CLK <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        report "Starting Arithmetic Control Testbench..." severity note;
        
        -- Initialize
        s_OPCODE   <= "111"; 
        s_OPERAND1 <= x"00";
        s_OPERAND2 <= "000";
        s_TB_DATA  <= x"00";
        wait for clk_period * 2;

        -- Test 1: Opcode 000 (Write Mode - DUT drives bus)
        s_OPCODE   <= "000";
        s_OPERAND1 <= x"AA"; 
        s_OPERAND2 <= "011";
        
        wait for clk_period; 
        
        assert (s_READW = '1') 
            report "Error Test 1: READW should be '1' for Opcode 000" severity error;
            
        if s_DATA = x"AA" then
            report "Test 1 Passed: Bus driven with xAA";
        else
            report "Error Test 1: Bus Value Mismatch. Expected AA, got " & 
                   integer'image(to_integer(unsigned(s_DATA))) severity error;
        end if;

        -- Test 2: Opcode 100 (ALU Mode - TB drives bus)
        s_OPCODE   <= "100";
        s_TB_DATA  <= x"55"; 
        
        wait for clk_period;
        
        assert (s_READW = '0') 
            report "Error Test 2: READW should be '0' for Opcode 100" severity error;

        assert (s_DATA = x"55")
            report "Error Test 2: Bus contention or mismatch" severity error;

        report "ALU Output check: " & integer'image(to_integer(unsigned(s_OUTP)));

        wait for clk_period * 2;

        report "Testbench Completed";
        wait;
    end process;

end sim;
