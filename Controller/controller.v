module controller 
(
   input  wire [2:0] opcode,
   input  wire [2:0] phase,
   input  wire zero,
   output reg  sel,
   output reg  rd,
   output reg  ld_ir,
   output reg  halt,
   output reg  wr,
   output reg  ld_ac,
   output reg  inc_pc,
   output reg  ld_pc,
   output reg  data_e
);
   // OpCode Encoding
   localparam integer HLT = 0,
                      SKZ = 1,
                      ADD = 2,
                      AND = 3,
                      XOR = 4,
                      LDA = 5,
                      STO = 6,
                      JMP = 7;
   // Phase Encoding
   localparam integer INST_ADDR  = 0,
                      INST_FETCH = 1,
                      INST_LOAD  = 2,
                      IDLE       = 3,
                      OP_ADDR    = 4,
                      OP_FETCH   = 5,
                      ALU_OP     = 6,
                      STORE      = 7;

//insert opcode's module
alu uua
(
   .opcode(opcode)
);
    reg ALUOP;
always@(*) begin
   ALUOP = (opcode == LDA | opcode == XOR | opcode == AND | opcode == ADD);
   {sel, rd, ld_ir, halt, inc_pc, ld_ac, ld_pc, wr, data_e} = {9{1'b0}};  // intial condation
   case (phase)
      INST_ADDR  : sel    = 1;
      INST_FETCH : begin
                   sel    = 1;
                   rd     = 1; end
      INST_LOAD  : begin
                   sel    = 1;
                   rd     = 1;
                   ld_ir  = 1; end 
      IDLE       : begin 
                   sel    = 1;
                   rd     = 1;
                   ld_ir  = 1; end 
      OP_ADDR    : begin 
                   halt   = (opcode == HLT);
                   inc_pc = 1; end
      OP_FETCH   : rd     = ALUOP;
      ALU_OP     : begin
                   rd     = ALUOP;
                   inc_pc = ((opcode == SKZ) & zero);
                   ld_pc  = (opcode == JMP);
                   data_e = (opcode == STO); end
      STORE      : begin 
                   rd     = ALUOP;
                   ld_pc  = (opcode == JMP);
                   data_e = (opcode == STO);
                   ld_ac  = ALUOP;
                   wr     = (opcode == STO); end
    endcase
end 
endmodule


