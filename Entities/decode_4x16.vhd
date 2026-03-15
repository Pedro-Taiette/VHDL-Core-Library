library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decode_4x16 is
    port (
        din  : in  std_logic_vector(3 downto 0);
        dout : out std_logic_vector(6 downto 0)
    );
end decode_4x16;

architecture arch_decode_4x16 of decode_4x16 is
begin

    process(din)
    begin
        case din is					 -- abcdefg
            when "0000"  => dout <= "0000001"; -- 0
            when "0001"  => dout <= "1001111"; -- 1
            when "0010"  => dout <= "0010010"; -- 2
            when "0011"  => dout <= "0000110"; -- 3
            when "0100"  => dout <= "1001100"; -- 4
            when "0101"  => dout <= "0100110"; -- 5
            when "0110"  => dout <= "0100000"; -- 6 
            when "0111"  => dout <= "0001111"; -- 7
				when "1000"  => dout <= "0000000"; -- 8
				when "1001"  => dout <= "0001100"; -- 9
				when "1010"  => dout <= "0001000"; -- 10 - a
				when "1011"  => dout <= "1100000"; -- 11 - b
				when "1100"  => dout <= "0110001"; -- 12 - c
				when "1101"  => dout <= "1000010"; -- 13 - d
				when "1110"  => dout <= "0111000"; -- 14 - e
				when "1111"  => dout <= "0111000"; -- 15 - f
            when others => dout <= (others => '0');
        end case;
    end process;

end arch_decode_4x16;