library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is
    port (
        CLK    : in  std_logic;
        Opcode : in  std_logic_vector(2 downto 0);
        READW  : out std_logic;
        outALU : out std_logic_vector(7 downto 0)
    );
end FSM;

architecture behavioral of FSM is
    type state_type is (DECODE, STORE, ALU_STATE);
    signal CS, NS : state_type;
    signal equal : std_logic;
begin
    equal <= '1' when Opcode = "000" else '0';

    process(CLK)
    begin
        if rising_edge(CLK) then
            CS <= NS;
        end if;
    end process;

    process(CS, equal)
    begin
        READW <= '0'; 
        NS <= DECODE;

        case CS is
            when DECODE =>
                if equal = '1' then
                    NS <= STORE;
                else
                    NS <= ALU_STATE;
                end if;

            when STORE =>
                READW <= '1';
                NS <= DECODE;

            when ALU_STATE =>
                READW <= '0';
                NS <= DECODE;
                
            when others =>
                NS <= DECODE;
        end case;
    end process;

end behavioral;
