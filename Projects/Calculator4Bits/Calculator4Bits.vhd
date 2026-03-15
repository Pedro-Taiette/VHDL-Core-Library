library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Calculator4Bits is
    port (
        din1 : in  std_logic_vector(3 downto 0);
        din2 : in  std_logic_vector(3 downto 0);

        dout_din1 : out std_logic_vector(6 downto 0);
        dout_din2 : out std_logic_vector(6 downto 0);

        dout_result0 : out std_logic_vector(6 downto 0); -- unidade
        dout_result1 : out std_logic_vector(6 downto 0)  -- mais significativo
    );
end Calculator4Bits;

architecture arch_Calculator4Bits of Calculator4Bits is

    signal sum_result : std_logic_vector(4 downto 0);

    signal hex_low  : std_logic_vector(3 downto 0);
    signal hex_high : std_logic_vector(3 downto 0);

    component decode_4x16 is
        port (
            din  : in  std_logic_vector(3 downto 0);
            dout : out std_logic_vector(6 downto 0)
        );
    end component;

    component Adder4bits is
        port(
            A : in  std_logic_vector(3 downto 0);
            B : in  std_logic_vector(3 downto 0);
            S : out std_logic_vector(4 downto 0)
        );
    end component;

begin

    -----------------------------------------
    -- Somador
    -----------------------------------------
    u0 : Adder4bits
        port map(
            A => din1,
            B => din2,
            S => sum_result
        );

    -----------------------------------------
    -- Separação dos dígitos HEX
    -----------------------------------------
    hex_low  <= sum_result(3 downto 0);
    hex_high <= "000" & sum_result(4);

    -----------------------------------------
    -- Displays das entradas
    -----------------------------------------
    u1 : decode_4x16
        port map(
            din  => din1,
            dout => dout_din1
        );

    u2 : decode_4x16
        port map(
            din  => din2,
            dout => dout_din2
        );

    -----------------------------------------
    -- Displays do resultado
    -----------------------------------------
    u3 : decode_4x16
        port map(
            din  => hex_low,
            dout => dout_result0
        );

    u4 : decode_4x16
        port map(
            din  => hex_high,
            dout => dout_result1
        );

end arch_Calculator4Bits;