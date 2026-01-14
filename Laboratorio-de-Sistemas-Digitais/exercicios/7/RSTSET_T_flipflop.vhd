---EXERCISE 6. Provide a VHDL behavioral model of the T flip-flop shown on the right. The S and R inputs are an active low asynchronous preset and clear. Assume both the S and R inputs will never be asserted simultaneously.
---

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sr_dff IS
    PORT (
        T, S, R : IN  std_logic;
        CLK     : IN  std_logic;
        Q       : OUT std_logic
    );
END ENTITY sr_dff;

ARCHITECTURE behavioral OF sr_dff IS
BEGIN
    ff_process : PROCESS (S, R, CLK)
    VARIABLE q_reg : std_logic := '0';
    BEGIN 
        IF S = '0' THEN
            q_reg := '1'; -- cannot be directly Q, because it needs to update the Q while updating q_reg
        ELSIF R = '0' THEN
            q_reg := '0';
        ELSIF rising_edge(CLK) THEN
            IF (T = '1') THEN
                q_reg := not(q_reg); -- bit flip
            END IF;
        END IF;
        Q <= q_reg;
    END PROCESS ff_process;

END ARCHITECTURE behavioral;
