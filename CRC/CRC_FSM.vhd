-- Engineer: Evan Manser
-- Create Date: 04/14/2020 11:33:47 AM
-- Module Name: FSM - Behavioral
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.log2;
use ieee.math_real.ceil;

entity CRC_FSM is
    Port ( clock, resetn: in STD_LOGIC;
           bitcount : in STD_LOGIC_VECTOR (6 downto 0);
           E_in : out STD_LOGIC;
           E_out : out STD_LOGIC;
           Eq : out STD_LOGIC;
           done : out STD_LOGIC;
           sel : out STD_LOGIC_VECTOR (6 downto 0));
end CRC_FSM;

architecture Behavioral of CRC_FSM is
    type state is (S1, S2, S3);
signal y: state; 
signal i : integer range 0 to 97;

begin

transitions: process (bitcount, i, clock, resetn)
begin
    if resetn = '0' then
    y <= S1;
    elsif (clock'event and clock ='1') then
    
    case y is       
        when S1 => 
            if bitcount = "1010011"
                then y <= S2;
            else y <= S1;
            end if;
            
        when S2 => 
            if i = 97
                then y <= S3; 
            else y <= S2;
                 i <= i + 1;
            end if;
                     
        when S3 => y <= S1;
         end case;
     end if;             
end process;

outputs : process (y, bitcount, i)
begin
E_in <= '0';
Eq <= '0'; 
E_out <= '0';
done <= '0'; 
sel <= "0000000";

case y is
    when S1 =>
    if bitcount = "1010011"
        then E_in <= '1';
    else 
         E_in <= '0';
    end if;
    
    when S2 =>
    if i = 97
        then E_out <= '1';
    else 
        Eq <= '1';
        sel <= conv_std_logic_vector (i, 7);
    end if;
    when S3 =>
    sel <= "0000000";
    done <= '1';

    end case;
end process;


end Behavioral;