
-- Create Date: 04/06/2020 10:39:02 PM
-- Design Name: 
-- Module Name: counter - Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.math_real.log2;
use ieee.math_real.ceil;

entity counter is
generic (N: INTEGER:= 108);
        port ( clock, resetn, E, sclr,Re_Count: in std_logic;
            z: out std_logic;
            C: out integer range 0 to 108-1);
        end counter;
    architecture bhv of counter is
            signal Qt: integer range 0 to N-1;
    begin
        process (resetn,clock, E)
            begin 
        if resetn = '0' or Re_Count= '1' then
            Qt <= 0;
            z <= '0';
        elsif (clock'event and clock='1') then
            if E = '1' then
                if sclr = '1' then 
                    Qt <= 0;
                    z <= '0';
                else
                    Qt <= Qt + 1;
                    if Qt = (N-1) then
                        z <= '1';
                    else
                        z <= '0';
                    end if;
                end if;
            end if;
        end if;
        end process;
        C <= Qt;
    end bhv;