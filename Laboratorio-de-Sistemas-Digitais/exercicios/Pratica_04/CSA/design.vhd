library IEEE;
use IEEE.std_logic_1164.all;

entity simultanea is
  Port ( A, B, C, D : in STD_LOGIC;
         F : out STD_LOGIC);
end entity;

architecture comportamento of simultanea is
begin
  F <= (not A and C and not D) or
       (not B and C) or
       (B and C and not D);
end architecture;
