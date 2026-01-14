--- EXERCISE 3. Provide a VHDL behavioral model of the D flip-flop shown on the right. The S and R inputs are synchronous preset and clear. Assume both the S and R inputs will never be asserted simultaneously
---

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sr_dff IS
    PORT (
        D, S, R : IN  std_logic;
        CLK     : IN  std_logic;
        Q       : OUT std_logic
    );
END ENTITY sr_dff;

ARCHITECTURE behavioral OF sr_dff IS
BEGIN

    ff_process : PROCESS (CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF S = '0' THEN
                Q <= '1';
            ELSIF R = '0' THEN
                Q <= '0';
            ELSE
                Q <= D;
            END IF;
        END IF;
    END PROCESS ff_process;

END ARCHITECTURE behavioral;
