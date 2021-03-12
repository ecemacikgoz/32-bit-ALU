library ieee;
use ieee.std_logic_1164.all;

entity lui32 is
  port (
    b      : in   std_logic_vector (31 downto 0) := (others => '0');
    bNew   : out  std_logic_vector (31 downto 0) := (others => '0')
  );
end lui32;

architecture behavioral of lui32 is
signal bNewTemp : std_logic_vector (31 downto 0) := (others => '0');
begin
  
  
end behavioral;
