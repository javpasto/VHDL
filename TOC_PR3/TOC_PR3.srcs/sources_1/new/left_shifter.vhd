library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity left_shifter is
    Port (
        input   : in std_logic_vector(7 downto 0);
        output  : out std_logic_vector(7 downto 0) );
end left_shifter;

architecture Behavioral of left_shifter is

begin

    output <= '0' & input (7 downto 1) ;

end Behavioral;
