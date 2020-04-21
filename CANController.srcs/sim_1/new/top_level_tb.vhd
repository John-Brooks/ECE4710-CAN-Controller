----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2020 09:38:06 AM
-- Design Name: 
-- Module Name: top_level_tb - Behavioral
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

entity top_level_tb is
--  Port ( );
end top_level_tb;

architecture Behavioral of top_level_tb is
    component top_level is
    Port ( clock : in STD_LOGIC;
           resetn : in STD_LOGIC;
           CAN_rx : in STD_LOGIC;
           CAN_tx : out STD_LOGIC;
           byte_out: out STD_LOGIC_VECTOR(7 downto 0);
           debug_out: out std_logic_vector(7 downto 0));
    end component;

    signal clock, resetn, CAN_rx, CAN_tx: std_logic;
    
    signal can_frame_bits: std_logic_vector(115 downto 0);
    signal current_bit_index: integer range 0 to 115;
    signal byte_out, debug_out: std_logic_vector(7 downto 0);

begin
    can_frame_bits <= "00010010001100010000010000011000001010000010011000001100000100101000001110000010111000010001100100111011111011111111";
    
    uut: top_level port map(clock => clock,
                            resetn => resetn,
                            CAN_rx => CAN_rx,
                            CAN_tx => CAN_tx,
                            byte_out => byte_out,
                            debug_out => debug_out);
    
    clock_process : process
    begin
        clock <= '0';
        wait for 5 ns;
        clock <= '1';
        wait for 5 ns;
    end process;
    
    can_frame_process : process
    begin
        resetn <= '0';
        CAN_rx <= '1';
        current_bit_index <= 115;
        
        wait for 25 ns;
        resetn <= '1';
        wait for 25 ns;
        
        --first can frame
        while current_bit_index >= 0 loop
            CAN_rx <= can_frame_bits(current_bit_index);
            current_bit_index <= current_bit_index-1;
            wait for 2 us;
        end loop;
        
        wait for 10 us;
        current_bit_index <= 115;
        wait for 10 us;
        
        --second can frame
        while current_bit_index >= 0 loop
            CAN_rx <= can_frame_bits(current_bit_index);
            current_bit_index <= current_bit_index-1;
            wait for 2 us;
        end loop;
        wait;
        
    end process;
    
    
end Behavioral;
