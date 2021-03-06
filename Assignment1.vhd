LIBRARY ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY Assignment1 IS
PORT (clk:IN std_logic;
pause:IN std_logic;
reset:IN std_logic;
sg1:OUT std_logic_vector (6 downto 0);
sg2:OUT std_logic_vector (6 downto 0) );
END Assignment1;

architecture blabla of Assignment1 is

component freq_div
port (old_clk: IN std_logic;
new_clk:OUT std_logic);
end component;

component counter
port(clk:IN std_logic;
pause:IN std_logic;
reset:IN std_logic;
timecount:OUT integer);
end component;

component bcd
port(count: IN integer;
bcd1:OUT std_logic_vector (6 downto 0);
bcd2:OUT std_logic_vector (6 downto 0));
end component;

signal nclk:std_logic ;
signal c:integer;
signal b1:std_logic_vector (6 downto 0);
signal b2:std_logic_vector (6 downto 0);

begin
freqdiv1:freq_div port map (clk,nclk);
counter1:counter port map (nclk,pause,reset,c);
segment1:bcd port map (c,b1,b2);
sg1<=b1;
sg2<=b2;

end blabla;