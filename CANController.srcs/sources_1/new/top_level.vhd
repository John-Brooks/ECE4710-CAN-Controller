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
           CAN_tx : out STD_LOGIC;
           byte_out: out STD_LOGIC_VECTOR(7 downto 0);
           debug_out: out std_logic_vector(7 downto 0);
           SEGS: out std_logic_vector(7 downto 0);
           AN_SEL: out std_logic_vector(7 downto 0)
           );
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

    component serializer is
	port (resetn, clock: in std_logic; -- resetn: active-low input, pause: active-high input
	      A, B, C, D, E, F, G, H: in std_logic_vector (3 downto 0);
			segs: out std_logic_vector (6 downto 0); -- active-low input for all 7-segment displays
			AN: out std_logic_vector (7 downto 0)); -- eight active-low enable for each 7-segment display
    end component;
    
    component CRC_top is
    Port ( clock, resetn : in STD_LOGIC;
           bitcount : in STD_LOGIC_VECTOR (6 downto 0);
           CRC_IN : in STD_LOGIC_VECTOR (82 downto 0);
           CRC_OUT : out STD_LOGIC_VECTOR (14 downto 0);
           done : out STD_LOGIC);
    end component;
    
    component Top_destuffer is
    port (  resetn,AC_clock: in std_logic;
            DATA : in STD_LOGIC;
            SPD_CLK : in STD_logic;
            Des_EOF : out STD_logic;
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
    signal CRC_extended: std_logic_vector(15 downto 0);
    signal databytes: std_logic_vector(63 downto 0);
    signal byte1: std_logic_vector(7 downto 0);
    
    signal debug7: std_logic;
    
    signal segs_internal: std_logic_vector(6 downto 0);

begin
    SEGS <= '1'&segs_internal;
    byte_out <= byte1;
    byte1 <= databytes(63 downto 56);
    CRC_extended <= '0'&CRC;
    bit_rx_count_vec <= std_logic_vector(to_unsigned(bit_rx_count, 7));
    debug_out(3 downto 0) <= bit_rx_count_vec(3 downto 0);
    debug_out(4) <= EOF;
    debug_out(5) <= CAN_rx;
    debug_out(6) <= '0';
    debug_out(7) <= debug7;
    debug7 <= '1';
--    process( resetn, bit_clock )
--    begin
--        if resetn = '0' then
--	       debug7 <= '0';
--        elsif (bit_clock'event and bit_clock = '1') then 
--           debug7 <= not debug7;
--        end if;   
--    end process;
    
    process (EOF, resetn)
	begin
	    if resetn = '0' then
	       databytes <= x"0000000000000000";
        elsif (EOF'event and EOF = '1') then 
           databytes <= can_frame(88 downto 25);
        end if;
    end process;


    sdp_impl: SerialDataProcessor port map( clock => clock,
                                            resetn => resetn,
                                            raw => CAN_rx,
                                            EOF => EOF,
                                            bit_clock => bit_clock);
                                            
    ds_impl: Top_destuffer port map(    AC_clock => clock,
                                        resetn => resetn,
                                        DATA => CAN_rx,
                                        SPD_CLK => bit_clock,
                                        Des_EOF => EOF,
                                        C_OUT => bit_rx_count,
                                        Q_OUT => can_frame);
                                        
    crc_impl: CRC_top port map(  resetn => resetn,
                                clock => clock,
                                bitcount => bit_rx_count_vec,
                                CRC_IN => can_frame(82 downto 0),
                                CRC_OUT => CRC,
                                done => CRC_done);
                                
    sevenseg_impl: serializer port map( resetn => resetn,
                                        clock => clock,
                                        H => databytes(63 downto 60),
                                        G => databytes(59 downto 56),
                                        F => databytes(55 downto 52),
                                        E => databytes(51 downto 48),
                                        --D => databytes(47 downto 44),
                                        --C => databytes(43 downto 40),
                                        --B => databytes(39 downto 36),
                                        --A => databytes(35 downto 32),
                                        D => CRC_extended(15 downto 12),
                                        C => CRC_extended(11 downto 8),
                                        B => CRC_extended(7 downto 4),
                                        A => CRC_extended(3 downto 0),
                                        AN => AN_SEL,
                                        segs => segs_internal);
                                                                                                                       
end Behavioral;
