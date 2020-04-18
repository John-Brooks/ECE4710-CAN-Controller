----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2020 04:17:02 PM
-- Design Name: 
-- Module Name: con_reg_d - Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
port ( clock, resetn: in std_logic;
	       E: in std_logic; -- sclr: Synchronous clear
			 D: in std_logic;
	       Q_Dff: out std_logic);
end reg;

architecture Behavioral of reg is
	signal Qt: std_logic;
begin
	process (resetn, clock, E)
	begin
		if resetn = '0' then
			Qt <= '0';
		elsif (clock'event and clock = '1') then
			if E = '1' then	
					Qt <= D;
				end if;
			end if;
	end process;
	Q_Dff <= Qt;
end Behavioral;

