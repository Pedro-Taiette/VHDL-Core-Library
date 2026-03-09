library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PORTA_OR is
    port ( 
        e1, e2 : in  std_logic;
        s      : out std_logic
    );
end PORTA_OR;

architecture PORTA_OR_ARCH of PORTA_OR is
begin
    s <= e1 or e2;
end PORTA_OR_ARCH;