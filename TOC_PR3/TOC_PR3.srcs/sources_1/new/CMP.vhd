library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CMP is
    port (
        input   : in std_logic;
        equals  : out std_logic );
end CMP;

architecture Behavioral of CMP is

begin

    process
    begin
        if input = '0' then 
            equals <= '1';
        else
            equals <= '0';
        end if;
    end process;
    
end Behavioral;
