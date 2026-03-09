library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BITWISE_INVERTER is
    port (
        entrada : in  std_logic_vector(7 downto 0);
        saida   : out std_logic_vector(7 downto 0)
    );
end BITWISE_INVERTER;

architecture BEHAVIORAL of BITWISE_INVERTER is
begin

    process(entrada)
        variable temp : std_logic_vector(7 downto 0);
    begin
        -- Loop para inverter bit a bit
        for i in 0 to 7 loop
            temp(i) := not entrada(i);
        end loop;
        
        saida <= temp;
    end process;

end BEHAVIORAL;