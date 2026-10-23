`timescale 1ns / 1ps
module tb_PHAT_Weight;
    reg clk=0;
    always #10 clk=~clk;
    reg rst=0, iv=0, il=0, ready_out=0;
    reg [47:0] a=0, b=0;
    wire ready_in, ov, ol;
    wire [47:0] out_data;
    reg [143:0] cases [0:511];
    reg [47:0] held;
    integer n;
    PHAT_Weight dut(.clk(clk),.rst(rst),.s_axis_a_tdata(a),.s_axis_b_tdata(b),
        .s_axis_tvalid(iv),.s_axis_tlast(il),.s_axis_tready(ready_in),
        .m_axis_tdata(out_data),.m_axis_tvalid(ov),.m_axis_tlast(ol),.m_axis_tready(ready_out));
    initial begin
        $readmemh("norm_cases.mem",cases);
        repeat(4) @(negedge clk);
        rst=1;
        for(n=0;n<512;n=n+1) begin
            wait(ready_in);
            @(negedge clk);
            a={cases[n][119:96],cases[n][143:120]};
            b={cases[n][71:48],cases[n][95:72]};
            iv=1; il=(n==511);
            @(negedge clk); iv=0;
            wait(ov);
            @(negedge clk);
            if({out_data[23:0],out_data[47:24]} !== cases[n][47:0] || ol !== (n==511))
                $fatal(1,"PHAT case %0d bit-exact mismatch",n);
            held=out_data;
            repeat(3) begin
                @(negedge clk);
                if(!ov || out_data !== held) $fatal(1,"PHAT output changed during backpressure");
            end
            ready_out=1;
            @(negedge clk); ready_out=0;
        end
        wait(ready_in);
        @(negedge clk); iv=1;
        @(negedge clk); iv=0;
        repeat(5) @(negedge clk);
        rst=0;
        repeat(3) @(negedge clk);
        rst=1;
        @(negedge clk);
        if(!ready_in || ov) $fatal(1,"Arithmetic reset recovery failed");
        $display("ALL PHAT WEIGHT TESTS PASSED: 512 bit-exact vectors, output backpressure, TLAST, zero/extreme inputs and reset");
        $finish;
    end
    initial begin #10000000; $fatal(1,"PHAT test timed out"); end
endmodule
