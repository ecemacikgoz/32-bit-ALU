library ieee;
use ieee.std_logic_1164.all;

entity or32 is
  port (
    a   : in  std_logic_vector(31 downto 0);
    b   : in  std_logic_vector(31 downto 0);
    c   : out std_logic_vector(31 downto 0)
  );
end or32;

architecture behavioral of or32 is
begin
  c <= a or b;
end behavioral;
