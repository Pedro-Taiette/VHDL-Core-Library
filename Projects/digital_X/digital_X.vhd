library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Importa todos os componentes declarados no seu pacote customizado
use work.components_pkg.all; 

entity digital_X is
    port ( 
        a, b, c : in  std_logic;
        S       : out std_logic
    );
end digital_X;

architecture digital_X_arch of digital_X is

    -- Agora você só precisa declarar os sinais internos (fios)
    signal t1, t2 : std_logic;

begin
    -------------------------------------------------------
    -- Descrição Estrutural (Instanciação Direta)
    -------------------------------------------------------

    -- Primeira porta AND: entrada (a, b) -> sinal interno t1
    and1 : porta_and port map (a, b, t1);

    -- Porta NOT: inverte o sinal t1 -> sinal interno t2
    not1 : porta_not port map (t1, t2);

    -- Segunda porta AND: entrada (t2, c) -> saída final S
    and2 : porta_and port map (t2, c, S);

end digital_X_arch;