module fulladder3 
(
input  wire A,
input  wire B,
input  wire Cin,

output wire S,
output wire Cout
);
wire   AND1,AND2,OR1,XOR1;

  and op1(AND1,A,B);
  xor op2(XOR1,A,B);
  xor op3(S,XOR1,cin);
  and op4(AND2,XOR1,Cin);
  or  op5(Cout,AND1,AND2);
 
endmodule