`timescale 1ns / 1ps
module tb_Lag_To_PS;
    reg clk=0, rst=0, done=0, frame_error=0;
    always #10 clk=~clk;
    reg signed [15:0] lag12=0,lag13=0,lag14=0,lag23=0,lag24=0,lag34=0;
    reg [5:0] lag_valid=0;
    wire [31:0] w0,w1,w2,status;
    Lag_To_PS dut(.clk(clk),.rst(rst),.done(done),
        .lag12(lag12),.lag13(lag13),.lag14(lag14),.lag23(lag23),
        .lag24(lag24),.lag34(lag34),.lag_valid(lag_valid),.frame_error(frame_error),
        .gpio_word0(w0),.gpio_word1(w1),.gpio_word2(w2),.gpio_status(status));
    initial begin
        repeat(3) @(negedge clk); rst=1;
        if({w0,w1,w2,status}!==128'd0) $fatal(1,"Reset packet not zero");
        lag12=-13;lag13=9;lag14=-1;lag23=0;lag24=32767;lag34=-32768;lag_valid=63;
        repeat(5) @(negedge clk);
        if(status!==0 || w0!==0) $fatal(1,"Inputs leaked without done");
        done=1; @(negedge clk); done=0;
        if(w0!==32'h0009fff3 || w1!==32'h0000ffff || w2!==32'h80007fff || status!==32'h0000017f)
            $fatal(1,"First packet wrong %h %h %h %h",w0,w1,w2,status);
        lag12=5;lag13=6;lag14=7;lag23=8;lag24=9;lag34=10;lag_valid=0;frame_error=1;
        repeat(5) @(negedge clk);
        if(w0!==32'h0009fff3 || status!==32'h0000017f) $fatal(1,"Packet not held");
        done=1; @(negedge clk); done=0;
        if(w0!==32'h00060005 || w1!==32'h00080007 || w2!==32'h000a0009 || status!==32'h000002c0)
            $fatal(1,"Second packet wrong");
        // Match producer nonblocking timing: final lag34 and done update together.
        @(posedge clk); lag34<=-3; done<=1; lag_valid<=63; frame_error<=0;
        @(posedge clk); done<=0;
        @(negedge clk);
        if(w2!==32'hfffd0009 || status!==32'h0000037f) $fatal(1,"Final result/done timing wrong");
        // 24-bit sequence rollover remains distinguishable because have_result stays1.
        dut.sequence_number=24'hffffff;
        done=1; @(negedge clk); done=0;
        if(status!==32'h0000007f) $fatal(1,"Sequence rollover wrong");
        rst=0; @(negedge clk);
        if({w0,w1,w2,status}!==128'd0) $fatal(1,"Repeated reset packet not clear");
        $display("PASS Lag_To_PS: all six signed lanes, atomic hold, producer done timing, valid/error bits, sequence rollover and reset");
        $finish;
    end
    initial begin #10000; $fatal(1,"Timeout"); end
endmodule
