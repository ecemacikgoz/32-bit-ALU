library ieee;
use ieee.std_logic_1164.all;

entity xor32 is
  port (
    a   : in  std_logic_vector(31 downto 0) := (others => '0');
    b   : in  std_logic_vector(31 downto 0) := (others => '0');
    c   : out std_logic_vector(31 downto 0) := (others => '0')
  );
end xor32;

architecture behavioral of xor32 is
begin
  c <= a xor b;
end behavioral;
