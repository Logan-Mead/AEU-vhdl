----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2022 07:25:26 PM
-- Design Name: 
-- Module Name: Multiplexer - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplexer is
    Port (Add : in std_logic;
          Subtract : in std_logic;
          Multiply : in std_logic;
          Divide : in std_logic;
          AddSumOutput : in std_logic_vector(15 downto 0);
          MultOutput : in std_logic_vector(15 downto 0);
          DivideOutput : in std_logic_vector(15 downto 0);
          Result : out std_logic_vector(15 downto 0)  
    );
end Multiplexer;
architecture Behavioral of Multiplexer is
begin
    Process(Add, Subtract, Multiply, Divide, AddSumOutput, MultOutput, DivideOutput)
        begin         
            if(Add = '1') then                                      --if adding set output to sum
                Result <= AddSumOutput;
                
            elsif(Subtract = '1')then                               --if subtracting set output to difference
                Result <= AddSumOutput;
                
            elsif(Multiply = '1')then                               --if multiplying set output to product
                Result <= MultOutput;
                
            elsif(Divide = '1')then                                 --if dividing set output to qutient with reminder
                Result <= DivideOutput;
                
            else
                Result <= "0000000000000000";                
            end if;
    end process;
end Behavioral;
