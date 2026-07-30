module half_adder
(
input  wire A,
input  wire B,

output wire S,
output wire Cout

);

  assign{Cout,S} = A + B;

endmodule

module full_adder_mixed
(
input  wire A,
input  wire B,
input  wire Cin,

output wire S,
output wire Cout
);

wire HAD2,WCout,S1;
   half_adder HA1 (.A(A), .B(B), .S(S1), .Cout(HAD2));
   half_adder HA2 (.A(Cin), .B(S1), .Cout(WCout), .S(S));
   or OR(Cout, WCout, HAD2);

endmodule
 
