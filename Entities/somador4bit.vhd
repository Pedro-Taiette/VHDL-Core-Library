library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.components_pkg.all; 

entity somador4bit is
    port (
        cin      : in  std_logic;                      -- Carry de entrada (normalmente '0')
        a        : in  std_logic_vector(3 downto 0);   -- Vetor de 4 bits para entrada A
        b        : in  std_logic_vector(3 downto 0);   -- Vetor de 4 bits para entrada B
        s        : out std_logic_vector(3 downto 0);   -- Vetor de 4 bits para a Soma
        overflow : out std_logic                       -- Carry de saída final
    );
end somador4bit;

architecture somador4bit_arch of somador4bit is

    -- Sinais internos para transportar o "vai-um" (carry) entre os blocos
    signal t1, t2, t3 : std_logic;

begin

    -- Instanciação do Bit 0 (Menos Significativo)
    -- Conecta o cin externo e gera o primeiro carry interno t1
    somador0 : full_adder_1bit port map (
        cin  => cin, 
        a    => a(0), 
        b    => b(0), 
        s    => s(0), 
        cout => t1
    );

    -- Instanciação do Bit 1
    -- Recebe t1 e gera t2
    somador1 : full_adder_1bit port map (
        cin  => t1, 
        a    => a(1), 
        b    => b(1), 
        s    => s(1), 
        cout => t2
    );

    -- Instanciação do Bit 2
    -- Recebe t2 e gera t3
    somador2 : full_adder_1bit port map (
        cin  => t2, 
        a    => a(2), 
        b    => b(2), 
        s    => s(2), 
        cout => t3
    );

    -- Instanciação do Bit 3 (Mais Significativo)
    -- Recebe t3 e gera o overflow final
    somador3 : full_adder_1bit port map (
        cin  => t3, 
        a    => a(3), 
        b    => b(3), 
        s    => s(3), 
        cout => overflow
    );

end somador4bit_arch;