-- Code your condicional here
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity condicional is
  Port ( A, B, C, D : in STD_LOGIC;
         F : out STD_LOGIC);
end entity;

architecture comportamento of condicional is
begin
  F <= '1' when (A = '0' and C = '1' and D = '0') else
       '1' when (B = '0' and C = '1') else
       '1' when (B = '1' and C = '1' and D = '0') else
       '0';
end architecture;
