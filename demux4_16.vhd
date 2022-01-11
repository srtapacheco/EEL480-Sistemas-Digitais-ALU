library ieee; 
use IEEE.STD_LOGIC_1164.ALL; 

-- aqui foi criado um mux 2:1 com portas logicas para ser utilizado no sistema de dividisao
ENTITY demux4_16 IS 
PORT (I0_demux4_16,I1_demux4_16,I2_demux4_16,I3_demux4_16, S0_controle_demux4_16,S1_controle_demux4_16: in std_logic;
 Y0_demux4_16,Y1_demux4_16,Y2_demux4_16,Y3_demux4_16,Y4_demux4_16,Y5_demux4_16,Y6_demux4_16,Y7_demux4_16,Y8_demux4_16,
 Y9_demux4_16,Y10_demux4_16,Y11_demux4_16,Y12_demux4_16,Y13_demux4_16,Y14_demux4_16,Y15_demux4_16: out std_logic);
END demux4_16; 


ARCHITECTURE dataflow OF demux4_16 IS 


component demux1_4
PORT (I_demux1_4, S0_demux1_4,S1_demux1_4: in std_logic;
 Y0_demux1_4,Y1_demux1_4,Y2_demux1_4,Y3_demux1_4: out std_logic);
end component;

BEGIN

sc0x_demux1: demux1_4 PORT MAP(I0_demux4_16,S0_controle_demux4_16,S1_controle_demux4_16,Y0_demux4_16,Y1_demux4_16,Y2_demux4_16,Y3_demux4_16);
sc1x_demux1: demux1_4 PORT MAP(I1_demux4_16,S0_controle_demux4_16,S1_controle_demux4_16,Y4_demux4_16,Y5_demux4_16,Y6_demux4_16,Y7_demux4_16);
sc2x_demux1: demux1_4 PORT MAP(I2_demux4_16,S0_controle_demux4_16,S1_controle_demux4_16,Y8_demux4_16,Y9_demux4_16,Y10_demux4_16,Y11_demux4_16);
sc3x_demux1: demux1_4 PORT MAP(I3_demux4_16,S0_controle_demux4_16,S1_controle_demux4_16,Y12_demux4_16,Y13_demux4_16,Y14_demux4_16,Y15_demux4_16);




END dataflow;


