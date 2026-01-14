library IEEE;
use ieee.std_logic_1164.all;

entity logic is
port(
    A_1, A_2 : in  std_logic;
    B_1, B_2 : in  std_logic;
    D_1      : in  std_logic;
    E_out    : out std_logic
    );
end entity;

architecture behavourial of logic is
begin
    process (A_1, A_2, B_1, B_2, D_1)
    variable a, b, c, d: std_logic;
    begin
        if D_1 = '0' then
            d :='1';
        else
            d := '0';
        end if;
        
        if A_1 = '1' AND A_2 = '1' then
            a :='1';
        else 
            a := '0'; 
        end if;

        if B_1 = '1' OR B_2 = '1' then
            b :='1';
        else 
            b := '0';
        end if;

        if d = '1' AND B_2 = '1' then
            c := '1';
        else
            c := '0';
        end if;
        
        if a = '1' OR b = '1' OR c = '1' then
            E_out <= '1';
        else
            E_out <= '0';
        end if;
    end process;
end architecture;
