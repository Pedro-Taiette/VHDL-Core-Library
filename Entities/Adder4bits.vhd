library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder4bits is
    port(
        A : in  std_logic_vector(3 downto 0);
        B : in  std_logic_vector(3 downto 0);
        S : out std_logic_vector(4 downto 0) -- saída (4 bits) + bit carry (1 bit)
    );
end Adder4bits;

architecture arch_Adder4bits of Adder4bits is
begin

    S <= std_logic_vector(
            unsigned('0' & A) + unsigned('0' & B)
         );

end arch_Adder4bits;