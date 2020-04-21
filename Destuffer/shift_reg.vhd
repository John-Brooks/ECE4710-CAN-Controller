---------------------------------------------------------------------------
-- This VHDL file was developed by Daniel Llamocca (2013).  It may be
-- freely copied and/or distributed at no cost.  Any persons using this
-- file for any purpose do so at their own risk, and are responsible for
-- the results of such use.  Daniel Llamocca does not guarantee that
-- this file is complete, correct, or fit for any particular purpose.
-- NO WARRANTY OF ANY KIND IS EXPRESSED OR IMPLIED.  This notice must
-- accompany any copy of this file.
--------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- N-bit Shift register:
-- DIR = "LEFT" --> Shift to the left: from LSB to MSB
-- DIR = "RIGHT" --> Shift to the right: from MSB to LSB
entity shift_reg is
   generic (N: INTEGER:= 108;
	         DIR: STRING:= "LEFT"); -- only "LEFT", "RIGHT" are supported
	port ( clock, resetn,Re_Count: in std_logic;
	       shiftin, E: in std_logic;
	       --shiftout: out std_logic;
	       --End_of_Frame : out STD_logic;
	       --shift_counter: out integer range 0 to 108;
	       Q: out std_logic_vector (N-1 downto 0));
end shift_reg;

architecture Behavioral of shift_reg is

	signal Qt: std_logic_vector (N-1 downto 0);
	
--	signal done: std_logic;
--	component counter is
--generic (N: INTEGER:= 108);
--        port ( clock, resetn, E, sclr: in std_logic;
--            z: out std_logic;
--            C: out integer range 0 to 108-1);
--        end component;
begin
--con: counter generic map (n => 108)
--            port map (clock => clock, resetn => resetn, E => E , sclr => '0',  z => done, C => shift_counter);
a0: assert (DIR = "LEFT" or DIR = "RIGHT")
    report "DIR can only be LEFT or RIGHT"
	 severity error;
	 
	process (resetn, clock)
	begin
		if resetn = '0' or Re_Count= '1' then
			Qt <= (others => '0');
		elsif (clock'event and clock = '1') then
			if E = '1' then
				if DIR = "LEFT" then
					Qt(0) <= shiftin;
					for i in 1 to N-1 loop
						Qt(i) <= Qt(i-1);
					end loop;
				elsif DIR = "RIGHT" then
					Qt(N-1) <= shiftin;
					for i in 0 to N-2 loop
						Qt(i) <= Qt(i+1);
					end loop;
				end if;
			end if;
		end if;
		
	end process;
	Q <= Qt;

--	gl: if DIR = "LEFT" generate
--			 shiftout <= Qt(N-1);
--		 end generate;
--	gr: if DIR = "RIGHT" generate
--			 shiftout <= Qt(0);
--		 end generate;
		 
end Behavioral;