mux4x1_1bitlibrary IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.components_pkg.all; 

entity mux4x1_1bit is
    port (
        a, b, c, d : in  std_logic;
        sel        : in  std_logic_vector(1 downto 0);
        y          : out std_logic
    );
end mux4x1_1bit;

architecture structural of mux4x1_1bit is
    -- Sinais intermediários para conectar os muxes
    signal mux_top_out, mux_bot_out : std_logic;
begin

    -- Primeiro nível de multiplexação (seleciona entre A/B e C/D usando sel(0))
    inst_mux_top: mux2x1 port map (
        E1  => a, 
        E2  => b, 
        SEL => sel(0), 
        S   => mux_top_out
    );

    inst_mux_bot: mux2x1 port map (
        E1  => c, 
        E2  => d, 
        SEL => sel(0), 
        S   => mux_bot_out
    );

    -- Segundo nível (seleciona entre os resultados anteriores usando sel(1))
    inst_mux_final: mux2x1 port map (
        E1  => mux_top_out, 
        E2  => mux_bot_out, 
        SEL => sel(1), 
        S   => y
    );

end structural;