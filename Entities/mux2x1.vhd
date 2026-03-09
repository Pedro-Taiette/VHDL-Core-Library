LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux2x1 IS
    PORT (
        E1  : IN  STD_LOGIC;
        E2  : IN  STD_LOGIC;
        SEL : IN  STD_LOGIC;
        S   : OUT STD_LOGIC
    );
END ENTITY mux2x1;

ARCHITECTURE arch_mux OF mux2x1 IS
BEGIN

    PROCESS (E1, E2, SEL)
    BEGIN
        IF SEL = '0' THEN
            S <= E1;
        ELSE
            S <= E2;
        END IF;
    END PROCESS;

END arch_mux;