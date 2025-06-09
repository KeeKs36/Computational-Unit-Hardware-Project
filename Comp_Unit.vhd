----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2024 10:30:27 AM
-- Design Name: 
-- Module Name: Comp_Unit - Behavioral
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

entity Comp_Unit is
Port (
    P: in std_logic_vector(7 downto 0);
    Q: in std_logic_vector(7 downto 0);
    Sel: in std_logic_vector(3 downto 0);
    Y: out std_logic_vector(7 downto 0);
    X: inout std_logic_vector(15 downto 0)
     );
end Comp_Unit;

architecture Behavioral of Comp_Unit is
begin
Comp_Unit_proc:process(P,Q,Sel)
    begin
    case Sel is 
    when "0001"=> Y <=P and Q;
    when "0010"=> Y <=P or Q;
    when "0011"=> Y <=P nand Q;
    when "0100"=> Y <=P nor Q;
    when "0101"=> Y <=P xor Q;
    when "0110"=> Y <=P xnor Q;
    when "0111"=> Y <=std_logic_vector(unsigned (P) + unsigned (Q));
    when "1000"=> Y <=std_logic_vector(unsigned (P) - unsigned (Q));
    when "1001"=> x <=std_logic_vector(unsigned (P) * unsigned (Q));
    Y<=X(7 downto 0);
    when "1010"=>
    if (P>=Q) then
    Y<="11111111";
    else
    Y<="00000000";
    end if;
    when "1011"=>
    if (P<=Q) then
    Y<="11111111";
    else
    Y<="00000000";
    end if;
    when "1100"=>
    if (P>Q) then
    Y<="11111111";
    else
    Y<="00000000";
    end if;
    when "1101"=>
    if (P<Q) then
    Y<="11111111";
    else
    Y<="00000000";
    end if;
    when "1110"=>
    if (P=Q) then
    Y<="11111111";
    else
    Y<="00000000";
    end if;
    when "1111"=>
    if (P/=Q) then
    Y<="11111111";
    else
    Y<="00000000";
    end if;
    when others =>
    Y<="XXXXXXXX";
    end case;
end process;
end Behavioral;
