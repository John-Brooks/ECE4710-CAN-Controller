----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2020 10:59:32 PM
-- Design Name: 
-- Module Name: FSM - Behavioral
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.math_real.log2;
use ieee.math_real.ceil;

entity Destuffer_FSM is
port (resetn, SDP_CLk,Re_Count: in std_logic; 
            data: in std_logic;
			E_S: out std_logic;
		    FSM_EOF : out STD_logic;
			counter_out: out integer range 0 to 108-1);
end Destuffer_FSM;
architecture Behavioral of Destuffer_FSM is

component counter is
generic (N: INTEGER:= 108);
        port ( clock, resetn, E, sclr,Re_Count: in std_logic;
            z: out std_logic;
            C: out integer range 0 to 108-1);
        end component;
        
    type state is (S0, S1_1,S1_0, S2_1,S2_0, S3_1,S3_0, S4_1,S4_0,S5);
    signal y: state;	
	signal C_signal: integer range 0 to 108-1;
	signal con_done, E_con: std_logic;
begin
con: counter generic map (n => 108)
            port map (clock => SDP_CLk, resetn => resetn, Re_Count => Re_Count, E => E_con , sclr => '0',  z => con_done, C => C_signal);
 FSM_EOF <= con_done;
            Trans: process (resetn, data, SDP_CLk,C_signal)
	begin
		if resetn = '0' then -- asynchronous signal
			y <= S0;
			--counter_out <= C_signal;
		elsif (SDP_CLk'event and SDP_CLk = '1') then
			case y is
				when S0 =>
					if data = '1' then y <= S1_1; 
					              else y <= S1_0; end if;
					             
					              
				when S1_1 =>
					if data = '1' then y <= S2_1; 
					              else y <= S1_0; end if;
				when S2_1 =>
					if data = '1' then y <= S3_1; 
					              else y <= S1_0; end if;
			    when S3_1 =>
					if data = '1' then y <= S4_1; 
					              else y <= S1_0; end if;      
			    when S4_1 =>
			    if C_signal < 84 then 
					if data = '1' then y <= S5; 
					              else y <= S1_0; end if;
				else y <= S0; end if;	              
					              
				when S1_0 =>
					if data = '0' then y <= S2_0; 
					              else y <= S1_1; end if;
				when S2_0 =>
					if data = '0' then y <= S3_0; 
					              else y <= S1_1; end if;
			    when S3_0 =>
					if data = '0' then y <= S4_0; 
					              else y <= S1_1; end if;      
			    when S4_0 =>
			    if C_signal < 84 then 
					if data = '0' then y <= S5;
					              else y <= S1_1; end if; 
			    else y <= S0; end if;	              
					          
			    when S5 => 
			        y <= S0; 

			end case;			
		end if;		
	end process;
	Output: process (y, data ,C_signal)
	begin
		-- Default values of FSM outputs:
		E_con <= '1'; E_S <= '1'; -- C_signal <= '0';
		
		case y is	
		      	when S0 =>
					E_con <= '1'; 
			        E_S <= '1';
					             
				when S1_1 =>
					E_con <= '1'; 
			        E_S <= '1';
				when S2_1 =>
					E_con <= '1'; 
			        E_S <= '1';
			    when S3_1 =>
					E_con <= '1'; 
			        E_S <= '1';      
			    when S4_1 =>
					E_con <= '1'; 
			        E_S <= '1';
					              
				when S1_0 =>
					E_con <= '1'; 
			        E_S <= '1';
				when S2_0 =>
					E_con <= '1'; 
			        E_S <= '1';
			    when S3_0 =>
					E_con <= '1'; 
			        E_S <= '1';      
			    when S4_0 =>
					E_con <= '1'; 
			        E_S <= '1';	    				       
			    when S5 => 
			        E_con <= '0'; 
			        E_S <= '0';
			 --   end if;
		        end case;
           end process;
     counter_out <= C_signal;
end Behavioral;
