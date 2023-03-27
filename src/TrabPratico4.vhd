----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2018 21:11:04
-- Design Name: 
-- Module Name: TrabPratico4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TrabPratico4 is
  Port (clock   : in STD_LOGIC;
        btnU    : in STD_LOGIC; -- Btn1
        btnD    : in STD_LOGIC; -- Btn2
        sw      : in STD_LOGIC_VECTOR(15 DOWNTO 0);
        led     : out STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
end TrabPratico4;

architecture Behavioral of TrabPratico4 is
---- deslocador ----
component Deslocador is
  Port ( Btn1   :   in  STD_LOGIC;                      --sentido do deslocamento
         Btn2   :   in  STD_LOGIC;                      --carga paralela
         clk    :   in  STD_LOGIC;                      --clock
         I      :   in  STD_LOGIC_VECTOR(15 DOWNTO 0);  --interruptores
         Q      :   out STD_LOGIC_VECTOR(15 DOWNTO 0)   --Qs
         );
end component;
---- divisor de clock ----
component DivClock is
    Port ( clk : in STD_LOGIC;
           clk1 : out STD_LOGIC
           );
end component;
---- ----
    signal clock1Hz : STD_LOGIC;
    
begin
    divisor_de_frequencia    : DivClock   port map(clk => clock, clk1 => clock1Hz);
    registro_de_deslocamento : Deslocador port map(Btn1 => btnU, Btn2 => btnD, clk => clock1Hz, I => sw, Q => led);
end Behavioral;
