library ieee;
use ieee.std_logic_1164.all;

entity addsub32 is
  port (
    a   : in  std_logic_vector(31 downto 0);
    b   : in  std_logic_vector(31 downto 0);
    sub : in  std_logic;
    s   : out std_logic_vector(31 downto 0)
  );
end addsub32;

architecture behavioral of addsub32 is
begin
  
end behavioral;
