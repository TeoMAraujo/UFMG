library IEEE;
use IEEE.std_logic_1164.all;

entity mux_8x1 is   
port(
    A   : in std_logic_vector(2 downto 0);
    S   : in std_logic_vector(7 downto 0);

end entity;

architecture mux_arch of mux_8x1 is
begin    
    with A select
         S <= '11111110' when "001",
              '11111101' when "010",
              '11111011' when "011",
              '11110111' when "100",
              '11101111' when "101",
              '11011111' when "110",
              '10111111' when "000",
              '01111111' when "111",
              '11111111' when others;
end architecture;
