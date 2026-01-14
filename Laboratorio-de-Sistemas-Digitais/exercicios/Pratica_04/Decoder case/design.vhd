library IEEE;
use IEEE.std_logic_1164.all;

entity decoder is
    port(
        a : in  std_logic_vector(2 downto 0); 
        y : out std_logic_vector(7 downto 0)  
    );
end decoder;

architecture decoder_arch of decoder is
begin
    decoder_proc : process (a) is 
    begin
        y <= (others => '0');

        case (a) is
            when "000" => y(0) <= '1';
            when "001" => y(1) <= '1';
            when "010" => y(2) <= '1';
            when "011" => y(3) <= '1';
            when "100" => y(4) <= '1';
            when "101" => y(5) <= '1';
            when "110" => y(6) <= '1';
            when others => y(7) <= '1';
        end case;
    end process decoder_proc;
end decoder_arch;
