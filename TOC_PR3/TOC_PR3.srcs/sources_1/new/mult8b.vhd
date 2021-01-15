library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity mult8b is
port(
    X       : in std_logic_vector(7 downto 0); --para q todos los muxes sean de 8b
    Y       : in std_logic_vector(7 downto 0);
    Z       : out std_logic_vector(7 downto 0);
    clk     : in std_logic;
    rst     : in std_logic; --al 0
    ini     : in std_logic;
    ready   : out std_logic;
    n_param :in std_logic_vector (7 downto 0) -- hasta 256
);
end mult8b;


architecture Behavioral of mult8b is

    --Declaracion de componentes
    component mux8b
        port(
            cero    : in std_logic_vector (7 downto 0);
            uno     : in std_logic_vector (7 downto 0);
            ctrl    : in std_logic;
            salida  : out std_logic_vector (7 downto 0) );
    end component;
    
    component left_shifter
        port (
            input   : in std_logic_vector(7 downto 0);
            output  : out std_logic_vector(7 downto 0) );
    end component;
    
    component right_shifter
        port (
            input   : in std_logic_vector(7 downto 0);
            output  : out std_logic_vector(7 downto 0) );
    end component;
    
    component adder
        port(
            a: in std_logic_vector(7 downto 0);
            b: in std_logic_vector(7 downto 0);
            c: out std_logic_vector(7 downto 0) );
    end component;
    
    component register8b
        port(
            id      : in std_logic;
            clk     : in std_logic;
            rst     : in std_logic;
            entrada : in std_logic_vector(7 downto 0);
            salida  : out std_logic_vector(7 downto 0) );
    end component;
    
    --Los bits de control son por orden:
    --a_mux, b_mux, acc_mux, n_mux, a_reg, b_reg, acc_reg, n_reg
    signal ctrl         : std_logic_vector(7 downto 0); --aun por ver el tamaño
    signal state        : std_logic_vector(2 downto 0); --5 estados tenemos
    signal next_state   : std_logic_vector(2 downto 0); --5 estados tenemos
    
    --Signals de entrada y salida de distintos componentes
    signal salida_lshifter, salida_rshifter  : std_logic_vector (7 downto 0);
    signal salida_a_mux, salida_b_mux, salida_acc_mux, salida_n_mux : std_logic_vector (7 downto 0);
    signal salida_adderacc, salida_addern   : std_logic_vector (7 downto 0);
    signal salida_n_reg, salida_a_reg, salida_acc_reg , salida_b_reg    : std_logic_vector (7 downto 0);
    
    
begin

    --Instanciacion de componentes
    a_mux   : mux8b port map(
        cero => salida_lshifter,
        uno => X,
        ctrl => ctrl(0),
        salida => salida_a_mux );
    
    b_mux   : mux8b port map(
        cero => salida_rshifter,
        uno => Y,
        ctrl => ctrl(1),
        salida => salida_b_mux );
    
    acc_mux : mux8b port map(
        cero => "00000000",
        uno => salida_adderacc,
        ctrl => ctrl(2),
        salida => salida_acc_mux );
    
    n_mux   : mux8b port map(
        cero => "00000000",
        uno => salida_addern,
        ctrl => ctrl(3),
        salida => salida_n_mux );
        
    addern  : adder port map(
        a => "00000001",
        b => salida_n_reg,
        c => salida_addern );
        
    adderacc: adder port map(
        a => salida_a_reg,
        b => salida_acc_reg,
        c => salida_adderacc );
        
    a_reg   : register8b port map(
        id => ctrl(4),
        clk => clk,
        rst => rst,
        entrada => salida_a_mux,
        salida => salida_a_reg );
    
    b_reg   : register8b port map(
        id => ctrl(5),
        clk => clk,
        rst => rst,
        entrada => salida_b_mux,
        salida => salida_b_reg );
    
    acc_reg : register8b port map(
        id => ctrl(6),
        clk => clk,
        rst => rst,
        entrada => salida_acc_mux,
        salida => salida_acc_reg );
    
    n_reg   : register8b port map(
        id => ctrl(7),
        clk => clk,
        rst => rst,
        entrada => salida_n_mux,
        salida => salida_n_reg );
    
    lshifter: left_shifter port map(
        input => salida_a_reg,
        output => salida_lshifter );

    rshifter: right_shifter port map(
        input => salida_b_reg,
        output => salida_rshifter );
        
    --Administra el reloj, el reset y el siguiente estado
    clock_process   : process (clk, rst)
    begin
        if rst = '0' then
            state <= "000";
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process clock_process;
    
    --Calcua el siguiente estado del proceso
    next_state_process  : process (state)
    begin
        
        case state is
            when "000" =>
                if ini = '1' then
                    next_state <= "001";
                end if;
            when "001" =>
                next_state <= "010";
            when "010" =>
                if salida_n_reg = n_param then
                    next_state <= "000";
                    ready <= '1';
                    Z <= salida_acc_reg; --El algoritmo ha finalizado, no se si hace falta un registro para Z
                else
                    if salida_b_reg(0) = '1' then
                        next_state <= "011";
                    else 
                        next_state <= "100";
                    end if;
                end if;
            when "011" =>
                next_state <= "010";
            when others =>
                next_state <= "010";
        end case;

    end process next_state_process;
    
    --Administra las operaciones, el control y las salidas de cada estado
    ctrl_process   : process (state)
    begin
        --ctrl => a_mux, b_mux, acc_mux, n_mux, a_reg, b_reg, acc_reg, n_reg
        case state is
            when "000" =>
                --ready <= '0';
                ctrl <= "00000000";
            when "001" =>
                ctrl <= "11001111";
            when "010" =>
                --ctrl no cambia
            when "011" =>
                ctrl <= "00111111";
            when others =>
                ctrl <= "00011101";
        end case;
    end process ctrl_process;
    
end Behavioral;
