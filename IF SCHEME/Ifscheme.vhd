----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2020 08:59:47
-- Design Name: 
-- Module Name: Ifscheme - Behavioral
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

entity Ifscheme is
Port (
input1 : in std_logic_vector(3 downto 0);
output1 : out std_logic_Vector(3 downto 0)
 );
end Ifscheme;

architecture Behavioral of Ifscheme is

begin
For_loop: for i in 0 to 3 generate
IF_1: if (i = 3) generate
      output1(i) <= input1(0);
end generate IF_1;
IF_2: if (i < 3) generate
     output1(i) <= input1(i+1);
end generate IF_2;
end generate For_loop;
end Behavioral;
