library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decimal_display_driver is
    Port ( 
        val_in : in  std_logic_vector(7 downto 0); -- The full 8-bit number
        hex0   : out std_logic_vector(6 downto 0); -- Ones place
        hex1   : out std_logic_vector(6 downto 0); -- Tens place
        hex2   : out std_logic_vector(6 downto 0)  -- Hundreds place
    );
end decimal_display_driver;

architecture Behavioral of decimal_display_driver is
    
    -- Function to get 7-segment pattern for a single digit (0-9)
    function get_segments(digit : integer) return std_logic_vector is
    begin
        case digit is
            when 0 => return "1000000"; -- 0
            when 1 => return "1111001"; -- 1
            when 2 => return "0100100"; -- 2
            when 3 => return "0110000"; -- 3
            when 4 => return "0011001"; -- 4
            when 5 => return "0010010"; -- 5
            when 6 => return "0000010"; -- 6
            when 7 => return "1111000"; -- 7
            when 8 => return "0000000"; -- 8
            when 9 => return "0010000"; -- 9
            when others => return "1111111"; -- Blank/Error
        end case;
    end function;

    signal int_val : integer range 0 to 255;
    signal d_ones, d_tens, d_hund : integer range 0 to 9;

begin
    -- Convert input bits to integer
    int_val <= to_integer(unsigned(val_in));

    -- Extract Digits
    d_ones <= int_val mod 10;
    d_tens <= (int_val / 10) mod 10;
    d_hund <= (int_val / 100) mod 10;

    -- Assign Patterns to Outputs
    hex0 <= get_segments(d_ones);
    hex1 <= get_segments(d_tens);
    -- Optional: Blank the hundreds place if the number is small (e.g., show "45" not "045")
    -- For now, we display it always (0-9):
    hex2 <= get_segments(d_hund);

end Behavioral;