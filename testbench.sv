module tb_mux_4to1_tristate;
  reg I0, I1, I2, I3;
  reg S0, S1;
  wire Y;
  
  mux_4to1_tristate uut (.I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Y(Y));
  
  initial begin
    $dumpfile("mux_4to1_tristate.vcd");
    $dumpvars;
    
    I0 = 1; I1 = 0; I2 = 0; I3 = 0;
    S1 = 0; S0 = 0;
    #10;
    
    S1 = 0; S0 = 1;
    #10;
    
    S1 = 1; S0 = 0;
    #10;
    
    S1 = 1; S0 = 1;
    #10;
    
    $finish;
  end
endmodule