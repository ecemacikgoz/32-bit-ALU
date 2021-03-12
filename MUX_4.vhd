library IEEE;
use IEEE.std_logic_1164.all;
entity mux4 is
  port(
    subs1      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs2      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs3      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs4      : in  std_logic_vector(31 downto 0) := (others => '0');
    selAluc    : in  std_logic_vector(1 downto 0)  := '00';
    mux4Out    : out std_logic_vector(31 downto 0) := (others => '0');
  end mux4;
architecture rtl of mux4 is
begin
p_mux : process(subs1, subs2, subs3, subs4, selAluc)
begin
  case selAluc is
    when "00" => r <= subs1 ;
    when "01" => r <= subs2 ;
    when "10" => r <= subs3 ;
    when others => r <= subs4 ;
  end case;
end process p_mux;
end rtl;
