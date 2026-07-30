module mux4_1_dataflow
(
    input wire [3:0] D,
    input wire [1:0] S,

    output wire Y
);

  assign  Y = (S == 2'b00) ? D[0] :
	      (S == 2'b01) ? D[1] : 
	      (S == 2'b10) ? D[2] : 
			     D[3] ;

endmodule
