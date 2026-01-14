-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_and_gate is
end entity;

architecture sim of tb_and_gate is
  signal A, B, C, D, F : STD_LOGIC;
begin

  uut: entity work.condicional
    port map (A => A, B => B, C => C, D => D, F => F);

  process
  begin
    A <= '0'; B <= '0'; C <= '0'; D <= '0'; wait for 10 ns;
    A <= '0'; B <= '1'; C <= '1'; D <= '0'; wait for 10 ns;
    A <= '1'; B <= '1'; C <= '1'; D <= '0'; wait for 10 ns;
    A <= '1'; B <= '0'; C <= '1'; D <= '1'; wait for 10 ns;
    A <= '1'; B <= '1'; C <= '0'; D <= '1'; wait for 10 ns;
    wait;
  end process;
end architecture;
