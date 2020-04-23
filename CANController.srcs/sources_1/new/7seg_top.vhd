----------------------------------------------------------------------------------
-- Company: 
-- Engineer:
-- 
-- Create Date: 04/21/2020 04:49:53 PM
-- Design Name: 
-- Module Name: 7seg_top - Behavioral
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

entity sevenseg_top is
    Port ( IN7 : in STD_LOGIC_VECTOR (31 downto 0);
           AN0 : out STD_LOGIC_VECTOR (6 downto 0);
           AN1 : out STD_LOGIC_VECTOR (6 downto 0);
           AN2 : out STD_LOGIC_VECTOR (6 downto 0);
           AN3 : out STD_LOGIC_VECTOR (6 downto 0);
           AN4 : out STD_LOGIC_VECTOR (6 downto 0);
           AN5 : out STD_LOGIC_VECTOR (6 downto 0);
           AN6 : out STD_LOGIC_VECTOR (6 downto 0);
           AN7 : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_top;

architecture Behavioral of sevenseg_top is

component sevenseg
	port (bcd: in std_logic_vector (3 downto 0);
       sevseg: out std_logic_vector (6 downto 0));
end component;

begin

seg0 : sevenseg port map (bcd => IN7 (3 downto 0), sevseg => AN0);
seg1 : sevenseg port map (bcd => IN7 (7 downto 4), sevseg => AN1);
seg2 : sevenseg port map (bcd => IN7 (11 downto 8), sevseg => AN2);
seg3 : sevenseg port map (bcd => IN7 (15 downto 12), sevseg => AN3);
seg4 : sevenseg port map (bcd => IN7 (19 downto 16), sevseg => AN4);
seg5 : sevenseg port map (bcd => IN7 (23 downto 20), sevseg => AN5);
seg6 : sevenseg port map (bcd => IN7 (27 downto 24), sevseg => AN6);
seg7 : sevenseg port map (bcd => IN7 (31 downto 28), sevseg => AN7);


end Behavioral;
