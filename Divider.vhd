----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2022 05:18:26 PM
-- Design Name: 
-- Module Name: Divider - Behavioral
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
use IEEE.NUMERIC_STD.all;
--use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Divider is
    Port (A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC_VECTOR(7 downto 0);
          Quotient : out STD_LOGIC_VECTOR(7 downto 0);
          Remainder : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Divider;

architecture Behavioral of Divider is
Signal A1 : unsigned(7 downto 0);
Signal B1 : unsigned(7 downto 0);
Signal Quotient1 : unsigned(7 downto 0);
Signal Remainder1 : unsigned(7 downto 0);
  
begin
    
        A1 <= unsigned(A);                          --changes to unsinged
        B1 <= unsigned(B);                          --changes to unsinged
        Quotient1 <=  (A1)/(B1);                    --finds the quotient
        Remainder1 <= A1 mod B1;                    --finds remainder
        Quotient <= std_logic_vector(Quotient1);    --changes to td logic vector
        Remainder <= std_logic_vector(Remainder1);  --changes to td logic vector 

end Behavioral;