library IEEE;
use IEEE.std_logic_1164.all;

entity tb_D_flip_flop is
end entity tb_D_flip_flop ;

architecture arch of tb_D_flip_flop is

    component D_flip_flop
        port (
            D     : in  std_logic;
            CLK   : in  std_logic;
            Q     : out std_logic;
            Qn    : out std_logic
        );
    end component;

    constant CLK_PERIOD : time := 10 ns; 

    signal CLK_tb  : std_logic := '0';
    signal D_tb    : std_logic := '0';
    signal Q_tb    : std_logic;
    signal Qn_tb   : std_logic;

begin

    DUT : d_flip_flop
        port map (
            D     => D_tb,
            CLK   => CLK_tb,
            Q     => Q_tb,
            Qn    => Qn_tb
        );

    CLK_gen : process
    begin
        loop
            CLK_tb <= '0';
            wait for CLK_PERIOD/2;
            CLK_tb <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process CLK_gen;

    stimulus_process : process
    begin

        wait for CLK_PERIOD/4;

        D_tb <= '1';
        wait for CLK_PERIOD;
    
        D_tb <= '0';
        wait for CLK_PERIOD;
    
        D_tb <= '1';
        wait for CLK_PERIOD * 2;
        
        wait;
    end process stimulus_process;
end architecture arch;
