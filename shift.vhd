library ieee;
use ieee.std_logic_1164.all;

entity shift is
  port (
    sa    : in  std_logic_vector(4 downto 0);
    d     : in  std_logic_vector(31 downto 0);
    right : in  std_logic_vector(1 downto 0);
    arith : in std_logic_vector(1 downto 0);
    sh    : out std_logic_vector(31 downto 0)
  );
end shift;

architecture behavioral of shift is
begin
  
  
  
end behavioral;
