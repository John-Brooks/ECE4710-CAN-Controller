
-- Create Date: 04/06/2020 10:12:19 PM
-- Design Name: 
-- Module Name: Top_destuffer - Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.math_real.log2;
use ieee.math_real.ceil;

entity Top_destuffer is
    port (  resetn,AC_clock: in std_logic;
            DATA : in STD_LOGIC;
            SPD_CLK : in STD_logic;
            Des_EOF : out STD_logic;
            C_OUT: out integer range 0 to 108-1;
            --shift_counter: out integer range 0 to 108-1;
            Q_OUT: out std_logic_vector (108-1 downto 0));
end Top_destuffer;

architecture Behavioral of Top_destuffer is

component shift_reg is
     generic (N: INTEGER:= 108;
	         DIR: STRING:= "RIGHT"); -- only "LEFT", "RIGHT" are supported
	port ( clock, resetn,Re_Count: in std_logic;
	       shiftin, E: in std_logic;
	       --shiftout: out std_logic;
	       --End_of_Frame : out STD_logic;
	       --shift_counter: out integer range 0 to 108;
	       Q: out std_logic_vector (N-1 downto 0));
end component;
--component reg is
--port ( clock, resetn: in std_logic;
--	       E: in std_logic; -- sclr: Synchronous clear
--			 D: in std_logic;
--	       Q_Dff: out std_logic);
--end component;
component Destuffer_FSM is
port (resetn, SDP_CLk,Re_Count: in std_logic; 
            data: in std_logic;
			E_S: out std_logic;
		    FSM_EOF : out STD_logic;
			counter_out: out integer range 0 to 108-1);
end component;
--constant n:integer:=1;
signal con_done, E_ShiftR,Re_Count: std_logic;
begin

process (AC_clock,con_done)
       begin 
        if (AC_clock'event and AC_clock='1') then
                if  con_done = '1' then Re_Count <= '1';
                else  Re_Count <= '0'; end if;
        end if;
        end process;

Des_EOF<= con_done;
shiftreg: shift_reg generic map ( n => 108 , DIR => "LEFT" )
                port map (clock => SPD_CLK, resetn => resetn, shiftin => data , E => E_ShiftR, Re_Count  => Re_Count, Q => Q_OUT );
FSM_C: Destuffer_FSM  port map (SDP_CLk => SPD_CLK, resetn => resetn, Re_Count => Re_Count , data => DATA 
, E_S => E_ShiftR, FSM_EOF => con_done , counter_out => C_out);
end Behavioral;
