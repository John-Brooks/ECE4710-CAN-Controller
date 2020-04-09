----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2020 11:38:53 AM
-- Design Name: 
-- Module Name: SerialDataProcessor_tb - Behavioral
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

entity SerialDataProcessor_tb is
--  Port ( );
end SerialDataProcessor_tb;

architecture Behavioral of SerialDataProcessor_tb is
    component SerialDataProcessor is
        Generic ( CLOCKS_PER_BIT: INTEGER:= 200;
                  CLOCKS_UNTIL_SAMPLE: INTEGER:= 160);
        Port ( raw : in STD_LOGIC;
               clock : in STD_LOGIC;
               resetn : in STD_LOGIC;
               EOF : in STD_LOGIC;
               bit_clock : out STD_LOGIC -- This signal goes high at the 80% sample point, goes low after one clock cycle.
             );
    end component;

    signal clock, resetn, raw, EOF, bit_clock, debug: std_logic;
begin
uut: SerialDataProcessor port map(raw, clock, resetn, EOF, bit_clock);

    proc_1: process
    begin
        L1: loop
            clock <= '1';
            wait for 5 ns;
            clock <= '0';
            wait for 5 ns;
        end loop;
    end process; 

    stim_proc: process
    begin	
        resetn <= '0';
        EOF <= '0';
        raw <= '0';
        wait for 50 ns;
        resetn <= '1';
        
        wait for 20 ns;
        raw <= '1';
--        wait for 1995 ns; --almost a bit
--        raw <= '0';
--        wait for 2000 ns; --exactly a bit
--        raw <= '1';
        
--        wait for 25 us;
--        raw <= '0';
        
        wait;
    end process;

end Behavioral;
