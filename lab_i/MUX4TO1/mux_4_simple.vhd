library ieee;
use ieee.std_logic_1164.all;

entity mux_4_simple is
port( S1,S0       : in std_logic;
      I3,I2,I1,I0 : in std_logic;
                Y : out std_logic );
end;

architecture simple of mux_4_simple is
begin
	Y <= (not S1 and not S0 and I0) or (not S1 and S0 and I1) or (S1 and not S0 and I2) or (S1 and S0 and I3);
end;