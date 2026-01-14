library IEEE;
use IEEE.std_logic_1164.all;

entity nor_gate is
port (
    a : in std_logic;
    b : in std_logic;
    y : out std_logic
);
end entity;
architecture rtl of nor_gate is
begin
    y <= not(a or b);
end architecture;

