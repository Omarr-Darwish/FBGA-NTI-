module decoder 
(
   input  wire A,
   input  wire B,
   input  wire En,

   output reg [3:0] F
);
always@(*)
begin 
   if(En == 1)
      begin
      case({B,A})
	   2'b00   : F = 4'b1000;
	   2'b01   : F = 4'b0100;
	   2'b10   : F = 4'b0010;
	   default : F = 4'b0001;
      endcase
      end
   else
      F = 4'b0000;    
end

endmodule

