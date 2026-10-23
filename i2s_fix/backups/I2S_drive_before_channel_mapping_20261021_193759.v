`timescale 1ns / 1ps


module I2S_drive(
    input rst,
    output wire SCK,
    output wire WS,
    input locked,
    input SD,
    input SD1,
    output reg[23:0]data1,
    output reg[23:0]data2,
    output reg[23:0]data3,
    output reg[23:0]data4,
    output reg sample_valid,
    input MMCM_CLOCK
    );
    wire logic_rst;
    assign logic_rst = ~rst | ~locked;
    reg  [2:0]state;
    reg [5:0]cnt;
    reg SCK1,WS1;
    reg[47:0]r_data;
    reg[47:0]r_data1;
    localparam IDLE = 1;
    localparam read = 2;
    localparam wait_end=3;
    localparam read1 = 4;
    localparam wait_end1 =5;

 always@(posedge MMCM_CLOCK or posedge logic_rst)begin   
    if(logic_rst)begin
        data1 <= 0;
        data2 <= 0;
        state <= IDLE;
        r_data <= 0;
        cnt <=0;
        SCK1 <= 0;
        WS1<=0;
        sample_valid <=0;
    end
    else begin
        WS1 <= WS;
        sample_valid <= 0;
       case(state) 
      
        IDLE:begin
            if(~WS && WS1)begin
                 SCK1 <= SCK;
                 state <= read;
                 sample_valid <=0;
                 cnt <=0;
            end
        end
        read:begin
             SCK1 <= SCK;
            if((~SCK1 && SCK )&& cnt == 0)begin
                cnt <= cnt + 1;
            end
            else if(~SCK1 && SCK )begin
                r_data[24 - cnt]<= SD;
                r_data1[24 - cnt]<= SD1;
                cnt <= cnt +1;
                if(cnt == 24)begin
                    state <= wait_end;
                end
            end
            end
         wait_end:begin
             
                 if(WS && ~WS1)begin
                     SCK1 <= SCK;
                     state <= read1;
                     cnt <=0;         
                 end
              end
           read1:begin
                 SCK1 <= SCK;
            if((~SCK1 && SCK )&& cnt == 0)begin
                cnt <= cnt + 1;
            end
            else if(~SCK1 && SCK )begin
                r_data[48 - cnt]<= SD;
                r_data1[48 - cnt]<= SD1;
                cnt <= cnt +1;
                if(cnt == 24)begin
                    state <= wait_end1;
                end
             end 
           end
             wait_end1:begin
                      SCK1 <= SCK;           
                if(~SCK1 && SCK )begin
                    cnt <= cnt +1;
                    if(cnt == 31)begin
                        state <= IDLE;
                        cnt <=0;
                        data1 <= r_data[23:0];
                        data2 <= r_data[47:24];
                        data3 <= r_data1[23:0];
                        data4 <= r_data1[47:24];
                        sample_valid <=1;
                    end
               end
              end
        endcase
     end
   end

    I2C_clock uut(
   .SCK(SCK),
    .WS(WS),
    .MMCM_CLOCK(MMCM_CLOCK), //11.290323MHz
     .rst(logic_rst)
    );
endmodule
