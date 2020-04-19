-- Engineer: Evan Manser
-- Create Date: 04/14/2020 04:25:01 PM
-- Module Name: CRC_tb - Behavioral
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CRC_tb is

end CRC_tb;

architecture Behavioral of CRC_tb is

component CRC_top
    Port ( clock, resetn : in STD_LOGIC;
           bitcount : in STD_LOGIC_VECTOR (6 downto 0);
           CRC_IN : in STD_LOGIC_VECTOR (82 downto 0);
           CRC_OUT : out STD_LOGIC_VECTOR (14 downto 0);
           done : out STD_LOGIC);
end component;

signal clock, resetn, done : std_logic := '0';
signal bitcount : std_logic_vector (6 downto 0) := "0000000";
                                                --SOF (1), ID (11), RTR(1), EXT(1) FDF(1), DLC(4), DATA 1-8 (8), CRC (15) --expected CRC 0x64EF 110010011101111
                                                --0 00100100011 0 0 0 1000 00000001 00000010 00000011 00000100 00000101 00000110 00000111 00001000 
signal crci : std_logic_vector (82 downto 0) := "00010000111000000110000010100000001000001100000001000000100000000001000110001001000";--(reversed input)
                                              --
                                              --"00010010001100010000000000100000010000000110000010000000101000001100000011100001000"; (actual frame)                                            
signal crco : std_logic_vector (14 downto 0) := "000000000000000";

constant T : time := 10ns;

begin

uut : CRC_top port map (clock => clock, resetn => resetn, bitcount => bitcount, CRC_IN => crci, CRC_OUT => crco, done => done);
                          
   
   clock_process : process
            begin
                 clock <= '0';
                 wait for T/2;
                 clock <= '1';
                 wait for T/2;
            end process;
            
   stim_process : process
            begin
            resetn <= '0';  
            wait for 10*T;
            resetn <= '1';
            wait for 2*T;
            
            bitcount <= "1010011";
            wait for T;
            bitcount <= "0000000";
            wait for 200*T;
            wait;          
            end process;

end Behavioral;