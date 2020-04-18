
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
    port (  resetn: in std_logic;
            DATA : in STD_LOGIC;
            SPD_CLK : in STD_logic;
            End_of_Frame : out STD_logic;
            C_OUT: out integer range 0 to 108-1;
            --shift_counter: out integer range 0 to 108-1;
            Q_OUT: out std_logic_vector (108-1 downto 0));
end Top_destuffer;

architecture Behavioral of Top_destuffer is

component shift_reg is
     generic (N: INTEGER:= 108;
	         DIR: STRING:= "RIGHT"); -- only "LEFT", "RIGHT" are supported
	port ( clock, resetn: in std_logic;
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
port (resetn, SDP_CLk: in std_logic; 
            data: in std_logic;
			E_S: out std_logic;
		    End_of_Frame : out STD_logic;
			counter_out: out integer range 0 to 108-1);
end component;
--constant n:integer:=1;
signal con_done, E_ShiftR,Dff_to_ShReg: std_logic;
begin

shiftreg: shift_reg generic map ( n => 108 , DIR => "LEFT" )
                port map (clock => SPD_CLK, resetn => resetn, shiftin => data , E => E_ShiftR, Q => Q_OUT );
--regis: reg  port map (clock => SPD_CLK, resetn => resetn, E =>'1' , D => DATA, Q_Dff => Dff_to_ShReg);
FSM_C: Destuffer_FSM  port map (SDP_CLk => SPD_CLK, resetn => resetn , data => DATA , E_S => E_ShiftR, End_of_Frame => End_of_Frame , counter_out => C_out);
end Behavioral;
