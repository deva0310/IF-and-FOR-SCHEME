----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2020 08:38:47
-- Design Name: 
-- Module Name: ForSchemeTest - example
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

entity ForSchemeTest is
Port ( 
 a: in std_logic_vector(3 downto 0);
 b: in std_logic_vector(3 downto 0);
 c: in  std_logic_vector(3 downto 0);
out1: out std_logic_vector(11 downto 0)
);
end ForSchemeTest;

architecture example of ForSchemeTest is
--signal a: std_logic_vector(3 downto 0) :="1010";
--signal b: std_logic_vector(3 downto 0) :="1011";
--signal c: std_logic_vector(3 downto 0) :="1000";
--signal out1: std_logic_vector(11 downto 0);
begin
First_For_Loop: for i in 0 to 3 generate
out1(3*i)   <= a(i);
out1(3*i+1) <= b(i);
out1(3*i+2) <= c(i);
end generate First_For_Loop;

end example;
