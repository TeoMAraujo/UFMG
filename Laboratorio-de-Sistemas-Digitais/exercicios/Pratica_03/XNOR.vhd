library IEEE;
use IEEE.std_logic_1164.all;

entity xnor_gate is
port (
    a : in std_logic;
    b : in std_logic;
    y : out std_logic
);
end entity;
architecture rtl of xnor_gate is
begin
    y <= a xnor b;
end architecture;

