module B2G_bh
( 
  input  wire [3:0] b,
  output reg [3:0] g
);

always @(*) 
begin
   case(b)
      4'b0000 : g = 4'b0000;
      4'b0001 : g = 4'b0001;
      4'b0010 : g = 4'b0011;
      4'b0011 : g = 4'b0010;
      4'b0100 : g = 4'b0110;
      4'b0101 : g = 4'b0111;
      4'b0110 : g = 4'b0101;
      4'b0111 : g = 4'b0100;
      4'b1000 : g = 4'b1100;
      4'b1001 : g = 4'b1101;
      4'b1010 : g = 4'b1111;
      4'b1011 : g = 4'b1110;
      4'b1100 : g = 4'b1010;
      4'b1101 : g = 4'b1011;
      4'b1110 : g = 4'b1001;
      default : g = 4'b1000;
   endcase
end

endmodule
