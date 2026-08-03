module Seven_segment
(
   input  wire [3:0] gray,
   output reg  [7:0] Seven_segment
);
   wire [3:0] w_7seg;
   G2B OP
   (
      .gray (gray),
      .binary (w_7seg)
   );

always @(*) begin
    case (w_7seg)
        4'b0000 : Seven_segment = 8'b11111100; // 0
        4'b0001 : Seven_segment = 8'b01100000; // 1
        4'b0010 : Seven_segment = 8'b11011010; // 2 
        4'b0011 : Seven_segment = 8'b11110010; // 3
        4'b0100 : Seven_segment = 8'b01100110; // 4
        4'b0101 : Seven_segment = 8'b10110110; // 5
        4'b0110 : Seven_segment = 8'b10111110; // 6
        4'b0111 : Seven_segment = 8'b11100000; // 7
        4'b1000 : Seven_segment = 8'b11111110; // 8
        4'b1001 : Seven_segment = 8'b11110110; // 9
        4'b1010 : Seven_segment = 8'b11101110; // A
        4'b1011 : Seven_segment = 8'b00111110; // b 
        4'b1100 : Seven_segment = 8'b10011100; // C
        4'b1101 : Seven_segment = 8'b01111010; // d 
        4'b1110 : Seven_segment = 8'b10011110; // E
        4'b1111 : Seven_segment = 8'b10001110; // F
        default : Seven_segment = 8'b00000000; // unexpected value
    endcase
end
endmodule     
 