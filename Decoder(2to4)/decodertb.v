`timescale 1ns / 1ps

module decoder_tb;

    reg a;
    reg b;
    reg c;
    wire [3:0] f;

decoder d_tb
(
        .A  (a),
        .B  (b),
        .En (c),
        .F  (f)
);

    initial begin
        a = 0; b = 0; c = 0;
        #10;

        a = 1; b = 0; c = 0;
        #10;

        a = 0; b = 1; c = 0;
        #10;

        a = 1; b = 1; c = 0;
        #10;

        a = 0; b = 0; c = 1;
        #10;

        a = 1; b = 0; c = 1;
        #10;

        a = 0; b = 1; c = 1;
        #10;

        a = 1; b = 1; c = 1;
        #10;

        a = 0; b = 1; c = 0;
        #10;
        
        $stop;
    end

endmodule

