---------------------------------------------------------------------------
-- This VHDL file was developed by Daniel Llamocca (2013).  It may be
-- freely copied and/or distributed at no cost.  Any persons using this
-- file for any purpose do so at their own risk, and are responsible for
-- the results of such use.  Daniel Llamocca does not guarantee that
-- this file is complete, correct, or fit for any particular purpose.
-- NO WARRANTY OF ANY KIND IS EXPRESSED OR IMPLIED.  This notice must
-- accompany any copy of this file.
--------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
	port ( clock, resetn: in std_logic;
	       E, sclr: in std_logic; -- sclr: Synchronous clear
			 D: in std_logic;
	       Q: out std_logic);
end reg;

architecture Behavioral of reg is

	signal Qt: std_logic;
	
begin

	process (resetn, clock)
	begin
		if resetn = '0' then
			Qt <= '0';
		elsif (clock'event and clock = '1') then
			if E = '1' then	
				if sclr = '1' then
					Qt <= '0';
				else
					Qt <= D;
				end if;
			end if;
		end if;
		
	end process;

	Q <= Qt;
end Behavioral;