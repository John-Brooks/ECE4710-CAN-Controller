----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2020 04:41:27 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
    Port ( clock : in STD_LOGIC;
           resetn : in STD_LOGIC;
           CAN_rx : in STD_LOGIC;
           CAN_tx : out STD_LOGIC);
end top_level;

architecture Behavioral of top_level is
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
    
    component CRC_top is
    Port ( clock, resetn : in STD_LOGIC;
           bitcount : in STD_LOGIC_VECTOR (6 downto 0);
           CRC_IN : in STD_LOGIC_VECTOR (82 downto 0);
           CRC_OUT : out STD_LOGIC_VECTOR (14 downto 0);
           done : out STD_LOGIC);
    end component;
    
    component Top_destuffer is
    port (  resetn: in std_logic;
            DATA : in STD_LOGIC;
            SPD_CLK : in STD_logic;
            End_of_Frame : out STD_logic;
            C_OUT: out integer range 0 to 108-1;
            --shift_counter: out integer range 0 to 108-1;
            Q_OUT: out std_logic_vector (108-1 downto 0));
    end component;
    
    signal EOF: std_logic;
    signal bit_clock: std_logic;
    signal bit_rx_count: integer range 0 to 108-1;
    signal bit_rx_count_vec: std_logic_vector(6 downto 0);
    signal can_frame: std_logic_vector (108-1 downto 0);
    signal CRC: std_logic_vector (14 downto 0);
    signal CRC_done: std_logic;

begin

    bit_rx_count_vec <= std_logic_vector(to_unsigned(bit_rx_count, 7));


    sdp_impl: SerialDataProcessor port map( clock => clock,
                                            resetn => resetn,
                                            raw => CAN_rx,
                                            EOF => EOF,
                                            bit_clock => bit_clock);
                                            
    ds_impl: Top_destuffer port map(    resetn => resetn,
                                        DATA => CAN_rx,
                                        SPD_CLK => bit_clock,
                                        End_of_Frame => EOF,
                                        C_OUT => bit_rx_count,
                                        Q_OUT => can_frame);
                                        
   crc_impl: CRC_top port map(  resetn => resetn,
                                clock => clock,
                                bitcount => bit_rx_count_vec,
                                CRC_IN => can_frame(82 downto 0),
                                CRC_OUT => CRC,
                                done => CRC_done);
                                
                                                                                                                       
end Behavioral;
