library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PORTA_NOT is
    port ( 
        e1 : in  std_logic;
        s  : out std_logic
    );
end PORTA_NOT;

architecture PORTA_NOT_ARCH of PORTA_NOT is
begin
    s <= not e1;
end PORTA_NOT_ARCH;