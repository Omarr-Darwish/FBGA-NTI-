`timescale 1ns / 1ps
module G2B_tb;

   reg  [3:0] gray;
   wire [3:0] binary;

   gray2binary uut
   (
      .gray (gray),
      .binary (binary)
   );

   initial begin
      gray = 4'b0000;
      #10;
      if (binary !== gray) begin
	$display("wornge one binary expected value is %b", gray);
	$stop;
      end
      else begin
      gray = 4'b0001;
      #10;
      gray = 4'b0011;
      #10;
      gray = 4'b0010;
      #10;
      gray = 4'b0110;
      #10;
      gray = 4'b0100;
      #10;
      $stop; end
   end

endmodule
        
