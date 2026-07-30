module fulladder2
(
  input  wire A,
  input  wire B,
  input  wire Cin,

  output wire S,
  output wire Cout  
);

  assign {Cout,S} = A + B + Cin;

endmodule