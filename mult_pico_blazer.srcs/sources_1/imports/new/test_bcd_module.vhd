----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2016 09:41:03 AM
-- Design Name: 
-- Module Name: test_bcd_module - Behavioral
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

entity test_bcd_module is
    Port ( clk : in  STD_LOGIC;
       sw : in  STD_LOGIC_VECTOR (15 downto 0);
       an : out  STD_LOGIC_VECTOR (3 downto 0);
       seg : out  STD_LOGIC_VECTOR (6 downto 0));
end test_bcd_module;

architecture Behavioral of test_bcd_module is
	component Decodificador
    Port ( clk : in  STD_LOGIC;
           inp : in  STD_LOGIC_VECTOR (15 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

begin

	U1: Decodificador port map (	 	clk => clk,
                                        inp => sw,
                                        an => an,
                                        seg => seg
                                );


end Behavioral;
