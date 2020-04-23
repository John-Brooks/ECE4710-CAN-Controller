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

entity sevenseg is
	port (bcd: in std_logic_vector (3 downto 0);
		   sevseg: out std_logic_vector (6 downto 0));
end sevenseg;

architecture structure of sevenseg is

	signal leds: std_logic_vector (6 downto 0);
	
begin
-- |  a  |  b  |  c  |  d  |  e  |  f  | g  |
-- |leds6|leds5|leds4|leds3|leds2|leds1|leds0|
	with bcd select
		leds <= "1111110" when "0000",
		        "0110000" when "0001",
	           "1101101" when "0010",
				  "1111001" when "0011",
				  "0110011" when "0100",
				  "1011011" when "0101",
				  "1011111" when "0110",
				  "1110000" when "0111",
				  "1111111" when "1000",
				  "1111011" when "1001",
				  "1110111" when "1010",
				  "0011111" when "1011",
				  "1001110" when "1100",
				  "0111101" when "1101",
				  "1001111" when "1110",
				  "1000111" when "1111",
				  "-------" when others;

	sevseg <= not(leds);
end structure;

