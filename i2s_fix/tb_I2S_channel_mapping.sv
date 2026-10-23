`timescale 1ns / 1ps
module tb_I2S_channel_mapping;
    reg clk=0,rst=0,locked=0,sd=0,sd_second=0;
    always #10 clk=~clk;
    wire sck,ws,valid;
    wire [23:0] d1,d2,d3,d4;
    reg prev_ws=0;
    integer bit_number=0,frames=0;
    reg [23:0] first_word,second_word;
    I2S_drive dut(.rst(rst),.locked(locked),.MMCM_CLOCK(clk),
        .SD(sd),.SD1(sd_second),.SCK(sck),.WS(ws),
        .data1(d1),.data2(d2),.data3(d3),.data4(d4),.sample_valid(valid));
    // I2S transmitter model: WS changes on falling SCK; skip its delay bit.
    // First wire LEFT=mic1 RIGHT=mic2. Second LEFT=mic4 RIGHT=mic3.
    always @(negedge sck) begin
        if(!rst || !locked) begin
            prev_ws=ws;bit_number=0;sd=0;sd_second=0;
        end else if(ws!=prev_ws) begin
            prev_ws=ws;bit_number=0;sd=0;sd_second=0;
        end else begin
            first_word=ws ? 24'habcdef : 24'h123456;
            second_word=ws ? 24'h80aa55 : 24'h0f1357;
            if(bit_number<24) begin
                sd=first_word[23-bit_number];
                sd_second=second_word[23-bit_number];
            end else begin sd=0;sd_second=0;end
            bit_number=bit_number+1;
        end
    end
    always @(posedge clk) begin
        #1;
        if(rst && locked && valid) begin
            if(d1!==24'h123456 || d2!==24'habcdef || d3!==24'h80aa55 || d4!==24'h0f1357)
                $fatal(1,"Wrong microphone mapping: %h %h %h %h",d1,d2,d3,d4);
            frames=frames+1;
            if(frames==4) begin
                $display("PASS I2S mapping: 4 frames, first wire left/right -> mic1/2, second wire right/left -> mic3/4, all 24 bits checked");
                $finish;
            end
        end
    end
    initial begin repeat(5) @(negedge clk);locked=1;rst=1;end
    initial begin #100000; $fatal(1,"I2S mapping timeout");end
endmodule
