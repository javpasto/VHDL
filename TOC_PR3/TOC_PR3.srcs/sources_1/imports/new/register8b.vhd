library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register8b is
    port(
        id      : in std_logic;
        clk     : in std_logic;
        rst     : in std_logic;
        entrada : in std_logic_vector(7 downto 0);
        salida  : out std_logic_vector(7 downto 0)
    );
end register8b;

architecture Behavioral of register8b is

    signal reg  : std_logic_vector (7 downto 0);

begin

	salida <= reg;

    registerProcess    : process (clk, rst)
    begin
    
       if rst = '1' then
            reg <= (others => '0');
	   elsif rising_edge(clk) then
	       if id = '1' then
	           reg <= entrada;
	       end if;
       end if;
    
    end process registerProcess;

end Behavioral;
