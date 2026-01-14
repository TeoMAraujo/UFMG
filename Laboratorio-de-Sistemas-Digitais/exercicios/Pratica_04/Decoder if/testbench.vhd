library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_and_gate is
end entity;

architecture sim of tb_and_gate is
    
    component decoder
        port(
            a : in std_logic_vector(2 downto 0);
            y : out std_logic_vector(7 downto 0)
        );
    end component;

    signal a : std_logic_vector(2 downto 0) := "000";
    signal y : std_logic_vector(7 downto 0);

begin
 
    uut: decoder port map(
        a => a,
        y => y
    );

    process
    begin
        for i in 0 to 7 loop
            a <= std_logic_vector(to_unsigned(i, 3));
            wait for 10 ns;
        end loop;
        wait; 
    end process;

end sim;

