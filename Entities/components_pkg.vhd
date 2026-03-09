library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package components_pkg is

    -- 1-bit NOT Gate [cite: 26, 27]
    component PORTA_NOT is
        port ( 
            e1 : in  std_logic;
            s  : out std_logic
        );
    end component;

    -- 2-input AND Gate [cite: 22, 23]
    component porta_and is
        port (
            E1, E2 : in  std_logic;
            S      : out std_logic
        );
    end component;

    -- 2-input OR Gate [cite: 24, 25]
    component PORTA_OR is
        port ( 
            e1, e2 : in  std_logic;
            s      : out std_logic
        );
    end component;

    -- 2x1 Multiplexer [cite: 31, 32]
    component mux2x1 is
        port (
            E1, E2, SEL : in  std_logic;
            S           : out std_logic
        );
    end component;

    -- 1-bit Full Adder [cite: 28, 29]
    component full_adder_1bit is
        port (
            cin, a, b : in  std_logic;
            s, cout   : out std_logic
        );
    end component;

    -- 3x8 Decoder [cite: 11, 12]
    component DECODE3X8 is
        port (
            din  : in  std_logic_vector(2 downto 0);
            dout : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Bitwise Inverter [cite: 1, 2]
    component BITWISE_INVERTER is
        port (
            entrada : in  std_logic_vector(7 downto 0);
            saida   : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Bit Order Reversal [cite: 5, 6]
    component INVERTE_ORDEM is
        port (
            entrada : in  std_logic_vector(7 downto 0);
            saida   : out std_logic_vector(7 downto 0)
        );
    end component;
	 
	 -- mux4x1_1bit
	 component mux4x1_1bit is
        port (
            a, b, c, d : in  std_logic;
            sel        : in  std_logic_vector(1 downto 0);
            y          : out std_logic
        );
    end component;

end package components_pkg;