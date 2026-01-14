--- EXERCISE 2. Provide a VHDL behavi- oral model of the D flip-flop shown on the right. The S and R inputs are an active low asynchronous preset and clear. Assume the S input takes precedence over the R input in the case where both are asserted simultaneously
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

    ff_process : PROCESS (CLK, S, R)
    BEGIN
        IF S = '0' AND R = '0' THEN
            Q = '0'; -- aint needed this, the code could be the last one, because implicitly are priority to S, but if you wanna explicitly say thats the way, is slower but...
        ELSIF S = '0' THEN
            Q <= '1';
        ELSIF R = '0' THEN
            Q <= '0';
        ELSIF rising_edge(CLK) THEN
            Q <= D;
        END IF;
    END PROCESS ff_process;

END ARCHITECTURE behavioral;
