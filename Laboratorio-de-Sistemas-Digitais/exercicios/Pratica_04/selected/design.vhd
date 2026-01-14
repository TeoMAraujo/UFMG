library IEEE;
use IEEE.std_logic_1164.all;

entity selected is
    port (
        A,B,C,D : in std_logic;
        F : out std_logic
    );
end entity;

architecture selected_arch of selected is
    signal ABCD : std_logic_vector(3 downto 0);
begin
    ABCD <= A & B & C & D;
    
    with ABCD select
        F <= '1' when "0010" | "0110" | "0011" | "1010" | "1011" | "1110",
             '0' when others;
end architecture;

