library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODE3X8 is
    port (
        din  : in  std_logic_vector(2 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end DECODE3X8;

architecture ARCH_DECODE3X8 of DECODE3X8 is
begin

    process(din)
    begin
        case din is
            when "000"  => dout <= "00000001";
            when "001"  => dout <= "00000010";
            when "010"  => dout <= "00000100";
            when "011"  => dout <= "00001000";
            when "100"  => dout <= "00010000";
            when "101"  => dout <= "00100000";
            when "110"  => dout <= "01000000";
            when "111"  => dout <= "10000000";
            when others => dout <= (others => '0');
        end case;
    end process;

end ARCH_DECODE3X8;