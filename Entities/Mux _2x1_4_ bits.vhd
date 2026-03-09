library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.components_pkg.all;

entity mux_4bit_bus is
    port (
        entrada1 : in  std_logic_vector(3 downto 0);
        entrada2 : in  std_logic_vector(3 downto 0);
        selecao  : in  std_logic;
        saida    : out std_logic_vector(3 downto 0)
    );
end mux_4bit_bus;

architecture structural of mux_4bit_bus is
begin
    -- Usamos o comando 'generate' para não ter que escrever 4 vezes a mesma coisa
    gen_mux: for i in 0 to 3 generate
        mux_inst: mux2x1 port map (
            E1  => entrada1(i),
            E2  => entrada2(i),
            SEL => selecao,
            S   => saida(i)
        );
    end generate;
end structural;