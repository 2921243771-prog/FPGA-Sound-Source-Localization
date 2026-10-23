`timescale 1ns / 1ps
module tb_Legacy_Reset;
    reg clk=0, rst=0, full=0;
    always #10 clk=~clk;
    wire ena,wna,toggle;
    Write_Ctrl_Legacy dut(.clk(clk),.rst(rst),.fifo_full(full),
        .data1(24'd0),.data2(24'd0),.data3(24'd0),.data4(24'd0),
        .ena(ena),.wna(wna),.read_toggle(toggle));
    initial begin
        repeat(5) @(negedge clk); rst=1;
        repeat(5) @(negedge clk); // idle FIFO sets old full history to zero
        rst=0; full=1; // selected FIFO full reset value is one
        repeat(5) @(negedge clk); rst=1;
        repeat(10) @(negedge clk);
        if(ena&&wna)
            $display("REPRODUCED: legacy Write_Ctrl starts RAM writes while FIFO is still reporting reset-full, before any sample capture");
        else $fatal(1,"Legacy failure did not reproduce");
        $finish;
    end
endmodule
