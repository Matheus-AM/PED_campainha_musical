library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DivClock is
    Port ( clk : in STD_LOGIC;
           clk1 : out STD_LOGIC
           );
end DivClock;

architecture archClock of DivClock is
    signal aux:     STD_LOGIC:='0';
    signal count:   integer range 0 to 50_000_000;
    constant count1:  integer := 50_000_000;
begin
    process (clk)
    begin
        if (rising_edge(clk)) then 
            count <= count +1;
            if (count = count1 -1) then -- for(int i; i<n; i++)
                count <= 0;
                aux<=not aux;
            end if;
        end if;
    end process;
    clk1 <= aux;
end archClock;