module mux4_1_bh
(
    input wire [3:0] D,
    input wire [1:0] S,

    output reg Y
);

always @(*) 
begin
  if (S == 2'b00)
     Y = D[0];
  else if (S == 2'b01)
     Y = D[1];
  else if (S == 2'b10)
     Y = D[2];
  else
     Y = D[3];
end
endmodule
