library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WITH_SELECT_DECODER is
    port (
        din  : in  std_logic_vector(2 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end WITH_SELECT_DECODER;

architecture ARCH_WITH_SELECT_DECODER of WITH_SELECT_DECODER is
begin

    with din select
        dout <= "00000001" when "000",
                "00000010" when "001",
                "00000100" when "010",
                "00001000" when "011",
                "00010000" when "100",
                "00100000" when "101",
                "01000000" when "110",
                "10000000" when "111",
                "00000000" when others;

end ARCH_WITH_SELECT_DECODER;