module B2G_GL
( 
  input  wire [3:0] b,
  output wire [3:0] g
);

  buf op0 (g[3], b[3]);       
  xor op1 (g[2], b[3], b[2]);
  xor op2 (g[1], b[2], b[1]);
  xor op3 (g[0], b[1], b[0]);

endmodule
