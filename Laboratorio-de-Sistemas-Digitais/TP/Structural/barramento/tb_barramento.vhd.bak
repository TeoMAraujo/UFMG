library IEEE;
use IEEE.std_logic_1164.all;

entity tb_barramento is
end tb_barramento;

architecture behavior of tb_barramento is

    component barramento
        port (
            CLK   : in    std_logic;
            addr  : in    std_logic_vector(2 downto 0);
            data  : inout std_logic_vector(7 downto 0);
            readw : in    std_logic
        );
    end component;

    signal s_CLK        : std_logic := '0';
    signal s_addr       : std_logic_vector(2 downto 0) := (others => '0');
    signal s_data       : std_logic_vector(7 downto 0);
    signal s_readw      : std_logic := '1';
    signal s_data_drive : std_logic_vector(7 downto 0) := (others => '0');

    constant clk_period : time := 10 ns;

begin

    uut: barramento
        port map (
            CLK   => s_CLK,
            addr  => s_addr,
            data  => s_data,
            readw => s_readw
        );

    s_data <= s_data_drive when s_readw = '0' else (others => 'Z');

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

        s_readw <= '0';

        s_addr <= "001";
        s_data_drive <= "10101010";
        wait for clk_period;

        s_addr <= "010";
        s_data_drive <= "11001100";
        wait for clk_period;

        s_addr <= "011";
        s_data_drive <= "11110000";
        wait for clk_period;

        s_readw <= '1';
        
        s_addr <= "001";
        wait for clk_period;

        s_addr <= "010";
        wait for clk_period;

        s_addr <= "011";
        wait for clk_period;

        s_addr <= "111";
        wait for clk_period;

        wait;
    end process;

end behavior;
