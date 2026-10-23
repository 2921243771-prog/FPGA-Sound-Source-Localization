`timescale 1ns / 1ps
module tb_units;
    reg clk=0;
    always #5 clk=~clk;
    reg rst=1, norm_start=0, angle_start=0;
    wire norm_ready, norm_done, angle_ready, angle_done, nonzero;
    reg [143:0] norm_cases [0:511];
    reg [127:0] angle_cases [0:255];
    reg signed [23:0] ar=0, ai=0, br=0, bi=0;
    wire signed [23:0] nr, ni;
    reg signed [15:0] l12=0,l13=0,l14=0,l23=0,l24=0,l34=0;
    wire signed [31:0] angle;
    integer i, delta;
    gcc_phat_norm norm(.clk(clk),.rst(rst),.start(norm_start),.ready(norm_ready),
        .a_re(ar),.a_im(ai),.b_re(br),.b_im(bi),.done(norm_done),.out_re(nr),.out_im(ni));
    gcc_angle dir(.clk(clk),.rst(rst),.start(angle_start),.ready(angle_ready),
        .lag12(l12),.lag13(l13),.lag14(l14),.lag23(l23),.lag24(l24),.lag34(l34),
        .done(angle_done),.nonzero(nonzero),.angle_deg_q16(angle));
    initial begin
        $readmemh("norm_cases.mem",norm_cases);
        $readmemh("angle_cases.mem",angle_cases);
        repeat(8) @(negedge clk);
        rst=0;
        for(i=0;i<512;i=i+1) begin
            @(negedge clk);
            {ar,ai,br,bi}=norm_cases[i][143:48]; norm_start=1;
            @(negedge clk); norm_start=0;
            wait(norm_done); @(negedge clk);
            if ({nr,ni} !== norm_cases[i][47:0])
                $fatal(1,"PHAT mismatch %0d got %h expected %h",i,{nr,ni},norm_cases[i][47:0]);
        end
        $display("PASS: 512 PHAT complex-normalization cases (bit exact)");
        for(i=0;i<256;i=i+1) begin
            @(negedge clk);
            {l12,l13,l14,l23,l24,l34}=angle_cases[i][127:32]; angle_start=1;
            @(negedge clk); angle_start=0;
            wait(angle_done); @(negedge clk);
            delta=$signed(angle)-$signed(angle_cases[i][31:0]);
            if(delta>11796480) delta=delta-23592960;
            if(delta< -11796480) delta=delta+23592960;
            if(delta>330 || delta< -330)
                $fatal(1,"Angle mismatch %0d got %0d expected %0d",i,angle,$signed(angle_cases[i][31:0]));
            if(i==0 && nonzero!==0) $fatal(1,"Zero direction must be invalid");
        end
        $display("PASS: 256 CORDIC direction cases, error < 0.0051 degree");
        // A reset must abort in-flight arithmetic and allow restart.
        norm_start=1; angle_start=1;
        @(negedge clk); norm_start=0; angle_start=0;
        repeat(3) @(negedge clk); rst=1;
        repeat(4) @(negedge clk);
        if(!norm_ready || !angle_ready || norm_done || angle_done) $fatal(1,"Reset recovery failed");
        $display("PASS: in-flight arithmetic reset");
        $finish;
    end
    initial begin #10000000; $fatal(1,"Unit test timeout"); end
endmodule
