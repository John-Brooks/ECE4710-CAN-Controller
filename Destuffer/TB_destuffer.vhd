
-- Create Date: 04/08/2020 12:13:32 AM
-- Design Name: 
-- Module Name: TB_destuffer - Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_destuffer is
--  Port ( );
end TB_destuffer;

architecture Behavioral of TB_destuffer is
component Top_destuffer is
    port (  resetn: in std_logic;
            DATA : in STD_LOGIC;
            SPD_CLK : in STD_logic;
            End_of_Frame : out STD_logic;
            C_OUT: out integer range 0 to 108-1;
            --shift_counter: out integer range 0 to 108-1;
            Q_OUT: out std_logic_vector (108-1 downto 0));
end component;
            signal resetn: std_logic;
            signal DATA : STD_LOGIC;
            signal SPD_CLK: STD_logic;
            signal End_of_Frame: STD_logic;
            signal C_OUT: integer range 0 to 108-1;
            --signal shift_counter: integer range 0 to 108-1;
            signal Q_OUT: std_logic_vector (108-1 downto 0);
            constant T : time := 10 ns;
			constant k:integer:=1;
begin
m1: Top_destuffer port map (resetn => resetn ,DATA => DATA ,SPD_CLK =>SPD_CLK,
                            End_of_Frame =>End_of_Frame , C_OUT => C_OUT , Q_OUT => Q_OUT );	
        

clock_process :process
   begin
        
		SPD_CLK <= '0'; 		wait for T/2;
		SPD_CLK <= '1'; 		wait for T/2;
    end process;
    
stim_proc: process
   begin
		resetn <= '0';   wait for T/2 ;
        resetn <= '1';
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T; --0001 1
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --0010 2 
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T; --0011 3
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T; --0001 1
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --0000 0
        data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --0100 4
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T; --0001 1 
        data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --1000 8 
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --0010 2
        data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --1000 8
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --0010 2
        data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --0110 6                    
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --0000 0      
        data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --1100 c
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T; --0001 1 
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --0010 2
        data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --1000 8
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T; --0011 3
        data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T; --1000 8 
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --0010 2
        data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --1110 E 
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T; --0001 1
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T; --0001 1
        data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T; --1001 9       
        data<= '0';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T; --0011 3
        data<= '1';wait for k*T;    data<= '0';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T; --1011 B
        data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '0';wait for k*T; --1110 E
        data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T; --1111 F
        data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T;    data<= '1';wait for k*T; --1111 F
        
-- 0001-0010-0011-0001-0000-0100-0001-1000-0010-1000-0010-0110-0000-1100-0001-0010-1000-0011-1000-0010-1110-0001-0001-1001-0011-1011-1110-1111-1111
-- 0001-0010-0011-0001-0000-0000-0010-0000-0100-0000-0110-0000-1000-0000-1010-0000-1100-0000-1110-0001-0001-1001-0011-1011-1110-1111-1111
-- 000100100011000100000000001000000100000001100000100000001010000011000000111000010001100100111011111011111111
        

        resetn <= '0';
         wait;
   end process;
end Behavioral;
