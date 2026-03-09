library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity INVERTE_ORDEM is
    port (
        entrada : in  std_logic_vector(7 downto 0);
        saida   : out std_logic_vector(7 downto 0)
    );
end INVERTE_ORDEM;

architecture ARCH_INVERTE_ORDEM of INVERTE_ORDEM is
begin

    process(entrada)
        variable temp : std_logic_vector(7 downto 0);
        variable i    : integer;
    begin
        -- Inicialização do índice para contagem regressiva
        i := 7;
        
        -- O loop while executa enquanto a condição i >= 0 for verdadeira
        while i >= 0 loop
            temp(7 - i) := entrada(i);
            i := i - 1;
        end loop;

        -- Atribuição final ao sinal de saída
        saida <= temp;
    end process;

end ARCH_INVERTE_ORDEM;