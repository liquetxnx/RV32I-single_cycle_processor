module IM(
    input wire [31:0] next_address,
    output wire [31:0] Instr
);
reg [31:0] mem [0:31];

wire [4:0] idx = next_address[6:2];

initial begin
    mem[0]=32'h00200093;
    mem[1]=32'h00300113;
    mem[2]=32'h001101B3;
end
assign Instr=mem[idx];

endmodule