
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8b is
    Port (
        cero    : in std_logic_vector (7 downto 0);
        uno     : in std_logic_vector (7 downto 0);
        ctrl    : in std_logic;
        salida  : out std_logic_vector (7 downto 0)
         );
end mux8b;

architecture Behavioral of mux8b is

begin

    process
    begin

        case ctrl is
            when '0' =>
                salida <= cero;
            when others =>
                salida <= uno;
        end case;
    
    end process;

end Behavioral;
