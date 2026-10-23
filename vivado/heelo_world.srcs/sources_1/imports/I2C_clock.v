`timescale 1ns / 1ps

module I2C_clock(
    output reg SCK,
    output reg WS,
    input wire MMCM_CLOCK, //11.290323MHz
    input rst
    );
    reg [7:0]counter;
    reg counter1,counter7;
    always@(posedge MMCM_CLOCK or posedge rst)begin
        if(rst)begin
            SCK <=0;
            WS  <=0;
            counter<=0;
            counter1<=0;
            counter7<=0;
        end
        else begin 
            counter1<= counter[1];
            counter7<= counter[7];
            counter <= counter + 1;
        if (counter7!=  counter[7])begin
            WS <= ~WS;
        end
        if ( counter1 != counter[1])begin
            SCK <= ~SCK;
        end
           
    end 
 end
endmodule
