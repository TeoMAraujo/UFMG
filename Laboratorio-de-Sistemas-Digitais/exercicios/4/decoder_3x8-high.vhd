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
         S <= '00000001' when "001",
              '00000010' when "010",
              '00000100' when "011",
              '00001000' when "100",
              '00010000' when "101",
              '00100000' when "110",
              '01000000' when "000",
              '10000000' when "111",
              '00000000' when others;
end architecture;
