
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2024 03:58:54 PM
-- Design Name: 
-- Module Name: Comp_Unit_tb - Behavioral
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
use STD.ENV.FINISH;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comp_Unit_tb is
--  Port ( );
end Comp_Unit_tb;

architecture Behavioral of Comp_Unit_tb is
signal P,Q:std_logic_vector(7 downto 0);
signal Sel:std_logic_vector(3 downto 0);
signal Y: std_logic_vector(7 downto 0);
begin
UUT:entity work.Comp_Unit(behavioral)
port map(P=>P,Q=>Q,Y=>Y,Sel=>Sel);
stimulus:process
begin
P<="00000001";Q<="00000000";Sel<="0001";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="0010";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="0011";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="0100";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="0101";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="0110";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="0111";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1000";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1001";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1010";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1011";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1100";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1101";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1110";wait for 10ns;
P<="00000001";Q<="00000000";Sel<="1111";wait for 10ns;
end process;
end Behavioral;
