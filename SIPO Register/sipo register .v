module sipo_register
(
   input wire [3:0] d,
   input wire clk,
   input wire rst,
   output reg [3:0] q

);

   always @(posedge clk or posedge rst)
   begin
      if(rst == 1'b1)
         q <= 4'b0000;
      else
         {q[0],q[1],q[2],q[3]} <= {d[1],d[2],d[3],d[0]};
   end
endmodule