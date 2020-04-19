----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2020 08:04:29 PM
-- Design Name: 
-- Module Name: SerialDataProcessor - Behavioral
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

entity SerialDataProcessor is
    Generic ( CLOCKS_PER_BIT: INTEGER:= 200;
              CLOCKS_UNTIL_SAMPLE: INTEGER:= 160);
    Port ( raw : in STD_LOGIC;
           clock : in STD_LOGIC;
           resetn : in STD_LOGIC;
           EOF : in STD_LOGIC;
           bit_clock : out STD_LOGIC -- This signal goes high at the 80% sample point, goes low after one clock cycle.
         );
end SerialDataProcessor;

architecture Behavioral of SerialDataProcessor is
    component bit_sample_clock is
        Generic ( CLOCKS_PER_BIT: INTEGER:= 200;
                  CLOCKS_UNTIL_SAMPLE: INTEGER:= 160);
        Port ( clock : in STD_LOGIC;
               enable : in STD_LOGIC;
               sync : in STD_LOGIC;
               z : out STD_LOGIC);
    end component;
    
    signal bit_clock_internal: std_logic;
    signal frame_in_progress: std_logic;
    signal current_bus_level: std_logic;
    signal input_edge: std_logic;
    signal sampler_enable: std_logic;
    signal EOF_internal: std_logic;
begin

     
    bit_clock <= bit_clock_internal AND frame_in_progress;
    input_edge <= current_bus_level XOR raw;
    sampler_enable <= input_edge OR frame_in_progress;
    
    process (clock, resetn, EOF)
	begin
	    if resetn = '0' then
	       frame_in_progress <= '0';
	       current_bus_level <= raw;
        elsif (clock'event and clock = '1') then 
            if EOF = '1' then
                frame_in_progress <= '0';
            elsif input_edge = '1' then
                frame_in_progress <= '1';
                current_bus_level <= raw;
            end if;
        end if;
    end process;
    
    
    bsc: bit_sample_clock   generic map(CLOCKS_PER_BIT => CLOCKS_PER_BIT, CLOCKS_UNTIL_SAMPLE => CLOCKS_UNTIL_SAMPLE)
                            port map(   clock => clock,
                                        z => bit_clock_internal,
                                        enable => sampler_enable,
                                        sync => input_edge);
                                        
end Behavioral;
