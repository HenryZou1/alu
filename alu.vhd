library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 
entity alu is 
port( Clk : in std_logic; --clock signal 
        A,B : in signed(7 downto 0); --input operands 
        Op : in unsigned(7 downto 0); --Operation to be performed 
        R : out signed(7 downto 0)  --output of ALU 
		Q           : BUFFER std_logic_vector (2 downto 0)); --counter
        ); 
end alu; 

architecture Behavioral of alu is 
--temporary signal declaration. 
signal Reg1,Reg2,Reg3 : signed(7 downto 0) := (others => '0'); 
begin 
Reg1 <= A; 
Reg2 <= B; 
R <= Reg3; 
process(Clk, Op) 
begin 
    if(rising_edge(Clk)) then --Do the calculation at the positive edge of clock cycle. 
        
		   if (Q = "000" OR "001")
		    Reg3 <= (A OR B);
			if(Q = "010" OR Q = "011")
			Reg3 <=  (A XOR B);
			if(Q = "100" OR Q = "101")
			Reg3 <=  (A+ B);
			if(Q = "110" OR Q = "111")
			Reg3 <=  NOT(A);
			
			if(rising_edge(Clk)) then
				Q <= Q + '1'; 
			end if
			     
    end if; 
end process;    
end Behavioral; 