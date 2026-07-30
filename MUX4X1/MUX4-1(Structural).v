module mux2
(
input  wire [1:0] d,
input  wire s,

output reg y
);
always @(*)
begin
   if (s == 0)
      y = d[0];
   else 
      y = d[1];
end
endmodule

module mux4_st
(
  input  wire [3:0] d,
  input  wire [1:0] s,

  output wire y
);

   wire mux1, mux2;

   mux2 mx1 (.y(mux1), .d({d[2],d[0]}), .s(s[0]));
   mux2 mx2 (.y(mux2), .d({d[3],d[1]}), .s(s[0]));
   mux2 mx3 (.y(y), .d({mux2,mux1}), .s(s[1]));

endmodule

