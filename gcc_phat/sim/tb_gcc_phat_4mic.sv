`timescale 1ns / 1ps
module tb_gcc_phat_4mic;
    localparam FRAME_N=2048, CASES=10;
    reg clk=0;
    always #5 clk=~clk;
    reg rst=1, sample_valid=0;
    wire sample_ready, result_valid, direction_valid, protocol_error, busy;
    reg signed [23:0] mic1=0,mic2=0,mic3=0,mic4=0;
    wire signed [15:0] l12,l13,l14,l23,l24,l34;
    wire signed [31:0] angle;
    wire [5:0] pair_valid;
    wire [31:0] seq, cycles;
    reg [95:0] samples [0:CASES*FRAME_N-1];
    reg [127:0] expected [0:CASES-1];
    reg [23:0] expected_valid;
    integer i, received=0, output_file, phase=0, jitter=1;
    integer angle_error;
    gcc_phat_4mic dut(.clk(clk),.rst(rst),.sample_valid(sample_valid),.sample_ready(sample_ready),
        .mic1(mic1),.mic2(mic2),.mic3(mic3),.mic4(mic4),
        .result_valid(result_valid),.direction_valid(direction_valid),.result_seq(seq),
        .lag12(l12),.lag13(l13),.lag14(l14),.lag23(l23),.lag24(l24),.lag34(l34),
        .pair_valid(pair_valid),.angle_deg_q16(angle),.processing_cycles(cycles),
        .protocol_error(protocol_error),.busy(busy));
    initial begin
        $readmemh("samples.mem",samples);
        $readmemh("expected.mem",expected);
        output_file=$fopen("rtl_results.csv","w");
        $fwrite(output_file,"frame,lag12,lag13,lag14,lag23,lag24,lag34,angle_q16,cycles,valid\n");
        repeat(10) @(negedge clk);
        rst=0;
        // Fill a partial frame and reset: stale RAM must not leak into results.
        for(i=0;i<21;i=i+1) begin
            sample_valid=1;
            {mic4,mic3,mic2,mic1}=samples[i];
            @(negedge clk);
        end
        sample_valid=0; rst=1;
        repeat(10) @(negedge clk);
        rst=0;
        for(i=0;i<CASES*FRAME_N;i=i+1) begin
            // Deterministic gaps, then hold data until ready: stress both banks.
            if(i%11==0) begin sample_valid=0; repeat(2) @(negedge clk); end
            {mic4,mic3,mic2,mic1}=samples[i]; sample_valid=1;
            @(posedge clk);
            while(!sample_ready) @(posedge clk);
            @(negedge clk);
        end
        sample_valid=0;
        wait(received==CASES);
        repeat(20) @(negedge clk);
        $fclose(output_file);
        $display("PASS: %0d complete 4-mic frames, six pairs, angle, backpressure, silence and reset",CASES);
        $finish;
    end
    always @(negedge clk) begin
        if(!rst && result_valid) begin
            if(received>=CASES) $fatal(1,"Extra frame");
            if(protocol_error) $fatal(1,"FFT AXI frame protocol error");
            if(seq !== received+1) $fatal(1,"Frame order error");
            if({l12,l13,l14,l23,l24,l34} !== expected[received][127:32])
                $fatal(1,"Delay mismatch frame=%0d got=%0d,%0d,%0d,%0d,%0d,%0d expected=%h",
                    received,l12,l13,l14,l23,l24,l34,expected[received][127:32]);
            if(received==8) begin
                if(direction_valid || pair_valid!=0) $fatal(1,"Silence must be invalid");
            end else begin
                if(!direction_valid || pair_valid!=6'b111111) $fatal(1,"Expected a valid direction");
                angle_error=$signed(angle)-$signed(expected[received][31:0]);
                if(angle_error>11796480) angle_error=angle_error-23592960;
                if(angle_error< -11796480) angle_error=angle_error+23592960;
                if(angle_error>330 || angle_error< -330) $fatal(1,"Angle mismatch frame %0d",received);
            end
            $display("FRAME %0d: delays=%0d,%0d,%0d,%0d,%0d,%0d angle=%0.4f cycles=%0d valid=%0b",
                received,l12,l13,l14,l23,l24,l34,$itor($signed(angle))/65536.0,cycles,direction_valid);
            $fwrite(output_file,"%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d\n",
                received,l12,l13,l14,l23,l24,l34,angle,cycles,direction_valid);
            received=received+1;
        end
    end
    initial begin #250000000; $fatal(1,"Integration test timeout, state=%0d",dut.state); end
endmodule
