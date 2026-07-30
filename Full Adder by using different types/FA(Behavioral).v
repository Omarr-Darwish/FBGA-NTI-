module falladder_bh 
(
  input  wire a,
  input  wire b,
  input  wire cin,

  output reg cout,
  output reg s
);

always @(*)
begin
   {cout,s} = a + b + cin;
end
endmodule

