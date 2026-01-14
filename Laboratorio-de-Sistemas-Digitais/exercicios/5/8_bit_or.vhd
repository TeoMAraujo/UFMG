library IEEE;
use ieee.std_logic_1164.all;

entity logic is
port(
    A : in  std_logic_vector(7 downto 0);
    A_out    : out std_logic
    );
end entity;

architecture behavourial of logic is
begin
    process (A)
    variable temp : std_logic;
    begin
        temp := '0';
        for i in 7 downto 0 loop
            temp := temp OR A(i);
        end loop;
        A_out <= temp;
    end process;
end architecture;
