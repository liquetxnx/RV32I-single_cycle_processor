`timescale 1ns/1ps

module tb_cpu;

reg clk;
reg reset;
Top_module DUT(
    .clk(clk),
    .reset(reset)
);

initial begin
    $dumpfile("waves_cpu.vcd");
    $dumpvars(0,tb_cpu);
end
initial clk=0 ;
initial reset=0;


initial #20 reset=1;

always #10 clk = ~clk;

//$display("x3 = %0d (0x%08h)", DUT.Data_path.RegisterFile.rg[3], DUT.Data_path.RegisterFile.rg[3]);
initial begin
  $dumpvars(0, DUT.datapath_inst.reg_inst.rg[3]); // reg array 자체를 dump
end
initial begin
    #1000
    $finish;
end

endmodule
