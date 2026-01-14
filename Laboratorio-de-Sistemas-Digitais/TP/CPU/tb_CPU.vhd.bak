 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_cpu is
end tb_cpu;

architecture sim of tb_cpu is

    component CPU
    port (
        OPCODE   : in    std_logic_vector(2 downto 0);
        OPERAND1 : in    std_logic_vector(7 downto 0);
        OPERAND2 : in    std_logic_vector(2 downto 0);
        CLK      : in    std_logic;
        OUTP     : out   std_logic_vector(7 downto 0)
    );
    end component;

    signal s_OPCODE   : std_logic_vector(2 downto 0) := (others => '0');
    signal s_OPERAND1 : std_logic_vector(7 downto 0) := (others => '0');
    signal s_OPERAND2 : std_logic_vector(2 downto 0) := (others => '0');
    signal s_CLK      : std_logic := '0';
    signal s_OUTP     : std_logic_vector(7 downto 0);

    constant clk_period : time := 20 ns;

begin

    uut: CPU
    port map (
        OPCODE   => s_OPCODE,
        OPERAND1 => s_OPERAND1,
        OPERAND2 => s_OPERAND2,
        CLK      => s_CLK,
        OUTP     => s_OUTP
    );

    clk_process: process
    begin
        s_CLK <= '0';
        wait for clk_period/2;
        s_CLK <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        wait for 100 ns;

        -- Write 0x0A to Register 1
        s_OPCODE   <= "000";
        s_OPERAND1 <= x"0A";
        s_OPERAND2 <= "001";
        wait for clk_period;

        -- Write 0x05 to Register 2
        s_OPCODE   <= "000";
        s_OPERAND1 <= x"05";
        s_OPERAND2 <= "010";
        wait for clk_period;

        -- ADD operation using Register 1
        s_OPCODE   <= "100";
        s_OPERAND2 <= "001";
        wait for clk_period;

        -- ADD operation using Register 2
        s_OPCODE   <= "100";
        s_OPERAND2 <= "010";
        wait for clk_period;

        wait;
    end process;

end sim;
