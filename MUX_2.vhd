library IEEE;
use IEEE.std_logic_1164.all;
entity mux2 is
  port(
    subs1      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs2      : in  std_logic_vector(31 downto 0) := (others => '0');
    selAluc    : in  std_logic := '0';
    mux2Out    : out std_logic_vector(31 downto 0) := (others => '0');
  end mux2;
architecture rtl of mux2 is
begin
p_mux : process(subs1, subs2, selAluc)
begin
  case selAluc is
    when "0" => r <= subs1 ;
    when others => r <= subs2 ;
  end case;
end process p_mux;
end rtl;
