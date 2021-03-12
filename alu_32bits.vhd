library ieee;
use ieee.std_logic_1164.all;

entity alu_32bits is
  Port (
    a    : in  std_logic_vector(31 downto 0) := (others => '0');
    b    : in  std_logic_vector(31 downto 0) := (others => '0');
    aluc : in std_logic_vector(3 downto 0) := (others => '0');
    r    : out std_logic_vector(31 downto 0) := (others => '0');
    z    : out std_logic := '0'
  );
end alu_32bits;

architecture behavioral of alu_32bits is
signal rTemp  : std_logic_vector (31 downto 0) := (others => '0');
signal zTemp : std_logic := '0'; 

------------------------- addsub32 komponent ------------------------
component addsub32 is 
 Port ( 
    a   : in  std_logic_vector(31 downto 0) := (others => '0');
    b   : in  std_logic_vector(31 downto 0) := (others => '0');
    sub : in  std_logic := '0';
    s   : out std_logic_vector(31 downto 0) := (others => '0')
 );
end component;
---------------------------------------------------------------------  
------------------------- and32 komponent --------------------------
component and32 is 
 Port ( 
    a   : in  std_logic_vector (31 downto 0) := (others => '0');
    b   : in  std_logic_vector (31 downto 0) := (others => '0');
    c   : out std_logic_vector (31 downto 0) := (others => '0')
 );
end component;
---------------------------------------------------------------------    
------------------------- or32 komponent ---------------------------
component or32 is 
 Port ( 
    a   : in  std_logic_vector (31 downto 0) := (others => '0');
    b   : in  std_logic_vector (31 downto 0) := (others => '0');
    c   : out std_logic_vector (31 downto 0) := (others => '0')
 );
end component;
---------------------------------------------------------------------   
------------------------- xor32 komponent --------------------------
component xor32 is 
 Port ( 
    a   : in  std_logic_vector (31 downto 0) := (others => '0');
    b   : in  std_logic_vector (31 downto 0) := (others => '0');
    c   : out std_logic_vector (31 downto 0) := (others => '0')
 );
end component;
---------------------------------------------------------------------   
------------------------- lui32 komponent --------------------------
component xor32 is 
 Port ( 
    a   : in  std_logic_vector (31 downto 0) := (others => '0');
    b   : in  std_logic_vector (31 downto 0) := (others => '0');
    c   : out std_logic_vector (31 downto 0) := (others => '0')
 );
end component;
---------------------------------------------------------------------   
------------------------- mux2 komponent ---------------------------
component mux2 is 
 Port ( 
    subs1      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs2      : in  std_logic_vector(31 downto 0) := (others => '0');
    selAluc    : in  std_logic := '0';
    mux2Out    : out std_logic_vector(31 downto 0) := (others => '0');
 );
end component;
---------------------------------------------------------------------
------------------------- mux4 komponent ---------------------------
component mux4 is 
 Port ( 
    subs1      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs2      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs3      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs4      : in  std_logic_vector(31 downto 0) := (others => '0');
    selAluc    : in  std_logic := '00';
    mux4Out    : out std_logic_vector(31 downto 0) := (others => '0');
 );
end component;
---------------------------------------------------------------------  
-------------------------- shift komponent --------------------------
component shift is 
 Port ( 
    sa      : in  std_logic_vector(4 downto 0) := (others => '0');
    d       : in  std_logic_vector(31 downto 0) := (others => '0');
    right   : in  std_logic_vector(1 downto 0) := '00';
    arith   : in  std_logic_vector(1 downto 0) := '00';
    sh      : out std_logic_vector(31 downto 0):= (others => '0')  
 );
end component;
---------------------------------------------------------------------    

begin
    
    
    
end behavioral;
