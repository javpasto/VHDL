library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use std.textio.all;


entity mult8b_numeric_std is
port(
    X : in std_logic_vector(3 downto 0);
    Y : in std_logic_vector(3 downto 0);
    Z : out std_logic_vector(7 downto 0)
);
end mult8b_numeric_std;

architecture Behavioral of mult8b_numeric_std is

begin
    
    mult : process
        
    begin
    
        Z <= std_logic_vector(unsigned(X) * unsigned(Y));
    
    end process mult;

end Behavioral;
