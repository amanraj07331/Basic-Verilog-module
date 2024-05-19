module mux_16_to_1(in, sel, Out);
  input [15:0] in;
  input [3:0] sel;
  output Out;

  assign Out = in[sel];
  
endmodule
