library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder_1bit IS
    PORT(
        cin, a, b : IN STD_LOGIC;
        s, cout   : OUT STD_LOGIC
    );
END full_adder_1bit;

ARCHITECTURE full_adder_1bit_arch OF full_adder_1bit IS
BEGIN

    s <= a XOR b XOR cin;

    cout <= (a AND b) OR (cin AND a) OR (cin AND b);

END full_adder_1bit_arch;