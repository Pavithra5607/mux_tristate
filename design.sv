module mux_4to1_tristate (input wire I0, I1, I2, I3,
                          input wire S0, S1,
                          output wire Y);
  wire [3:0] enable;
  
  assign enable[0] = -S1 & -S0;
  assign enable[1] = -S1 & -S0;
  assign enable[2] = -S1 & -S0;
  assign enable[3] = -S1 & -S0;
  
  assign Y = enable[0] ? I0 :
             enable[1] ? I1 :
             enable[2] ? I2 :
             enable[3] ? I3 : 1'bz;
endmodule
  