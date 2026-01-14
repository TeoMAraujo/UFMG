library IEEE;
use IEEE.std_logic_1164.all;

entity decoder is
port(
	a : in std_logic_vector(2 downto 0);
	y : out std_logic_vector(7 downto 0)
    );
end decoder;

architecture decoder_arch of decoder is
begin
	y <= (others => '0'); -- é tp um debounce
	decoder_proc : process (a)
		begin 
			if a = "000" then y(0) <= '1';
			elsif a = "001" then y(1) <= '1';
			elsif a = "010" then y(2) <= '1';
			elsif a = "011" then y(3) <= '1';
			elsif a = "100" then y(4) <= '1';
			elsif a = "101" then y(5) <= '1';
			elsif a = "110" then y(6) <= '1';
			else y(7) <= '1';
			end if;
		end process decoder_proc;
	end decoder_arch;
