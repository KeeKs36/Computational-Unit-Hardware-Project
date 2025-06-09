
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2024 04:55:37 PM
-- Design Name: 
-- Module Name: Final_tb - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.FINISH;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Final_tb is
--  Port ( );
end Final_tb;

architecture Behavioral of Final_tb is
signal A,B,C,D:std_logic_vector(7 downto 0);
signal S1,S2,S3:std_logic_vector(3 downto 0);
signal O:std_logic_vector(7 downto 0);
begin
UUT:entity work.Final(behavioral)
port map(A=>A,B=>B,C=>C,D=>D,S1=>S1,S2=>S2,S3=>S3,O=>O);
stimulus:process
begin
A<="10101011";B<="01011100";C<="11011001";D<="10010011";S1<="0010";S2<="0111";S3<="1100";wait for 10ns;
A<="11011011";B<="11001100";C<="10111001";D<="10010011";S1<="0001";S2<="1101";S3<="1000";wait for 10ns;
finish;
end process;
end Behavioral;
