----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2020 10:38:47 AM
-- Design Name: 
-- Module Name: bit_sample_clock - Behavioral
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.math_real.log2;
use ieee.math_real.ceil;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bit_sample_clock is
    Generic ( CLOCKS_PER_BIT: INTEGER:= 200;
              CLOCKS_UNTIL_SAMPLE: INTEGER:= 160);
    Port ( clock : in STD_LOGIC;
           enable : in STD_LOGIC;
           sync : in STD_LOGIC;
           z : out STD_LOGIC);
end bit_sample_clock;

architecture Behavioral of bit_sample_clock is
    signal counter : integer range 0 to CLOCKS_PER_BIT;
begin
    process (sync, clock, enable)
	begin
		if enable = '0' then
			counter <= CLOCKS_PER_BIT; 
			z <= '0';
		else
		    if (sync'event and sync = '1') then
                counter <= CLOCKS_UNTIL_SAMPLE-2; --account for the couple cycle delay
                z <= '0';
            end if;
		    if (clock'event and clock = '1') then
		        if sync = '1' then
		          counter <= CLOCKS_UNTIL_SAMPLE-2; --account for the couple cycle delay
                elsif counter = 0 then
                    z <= '1';
                    counter <= CLOCKS_PER_BIT-1;
				else
				    counter <= counter -1;
				    z <= '0';
				end if;
		    end if;
		end if;
	end process;
end Behavioral;
