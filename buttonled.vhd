----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2022 11:20:08 AM
-- Design Name: 
-- Module Name: buttonled - Behavioral
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

entity buttonled is
    Port ( GPIO_SW_LEFT : in STD_LOGIC;
           GPIO_SW_CENTER : in STD_LOGIC;
           GPIO_SW_RIGHT : in STD_LOGIC;
           GPIO_LED_LEFT : out STD_LOGIC;
           GPIO_LED_CENTER : out STD_LOGIC;
           GPIO_LED_RIGHT : out STD_LOGIC);
end buttonled;

architecture Behavioral of buttonled is

begin
    GPIO_LED_LEFT   <=  GPIO_SW_LEFT;
    GPIO_LED_CENTER <=  GPIO_SW_CENTER;
    GPIO_LED_RIGHT  <=  GPIO_SW_RIGHT;
end Behavioral;
