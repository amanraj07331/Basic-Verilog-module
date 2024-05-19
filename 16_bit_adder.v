module ALU(X,Y,Z,SIGN,ZERO,CARRY,PARITY,OVERFLOW);
  input[15:0] X,Y;
  output[15:0]Z;
  output SIGN,ZERO,CARRY,PARITY,OVERFLOW;
  assign {CARRY,Z} = X + Y;
  assign SIGN = Z[15];
  assign ZERO = ~|Z;
  assign PARITY= ~^Z;
  assign OVERFLOW = (X[15]&Y[15]&~Z[15])|(~X[15]&~Y[15]&Z[15]);
    endmodule
