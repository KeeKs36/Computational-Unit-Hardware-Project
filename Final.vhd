----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2024 04:41:12 PM
-- Design Name: 
-- Module Name: Final - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Final is
Port ( A,B,C,D:in std_logic_vector(7 downto 0);
S1,S2,S3: in std_logic_vector(3 downto 0);
O:out std_logic_vector(7 downto 0) );
end Final;

architecture Behavioral of Final is
signal E,F: std_logic_vector(7 downto 0);
begin
mod1:entity work.Comp_Unit(behavioral)
port map(P=>A,Q=>B,Sel=>S1,Y=>E);
mod2:entity work.Comp_Unit(behavioral)
port map(P=>C,Q=>D,Sel=>S2,Y=>F);
mod3:entity work.Comp_Unit(behavioral)
port map(P=>E,Q=>F,Sel=>S3,Y=>O);

end Behavioral;
