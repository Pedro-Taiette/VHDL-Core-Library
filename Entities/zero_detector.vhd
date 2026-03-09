library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.components_pkg.all;

entity detector_zero is
    generic (n : integer := 8); -- 'n' define o tamanho do barramento
    port (
        entrada : in  std_logic_vector(n-1 downto 0);
        is_zero : out std_logic
    );
end detector_zero;

architecture structural of detector_zero is
    signal temp_or : std_logic_vector(n-1 downto 0);
begin
    temp_or(0) <= entrada(0);
    
    -- Cascata de portas OR para verificar se qualquer bit é '1'
    gen_or: for i in 1 to n-1 generate
        or_inst: porta_or port map (
            e1 => temp_or(i-1),
            e2 => entrada(i),
            s  => temp_or(i)
        );
    end generate;

    -- Se o resultado final do OR for '0', significa que tudo era zero
    not_final: porta_not port map (
        e1 => temp_or(n-1),
        s  => is_zero
    );
end structural;