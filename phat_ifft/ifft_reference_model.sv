`timescale 1ns / 1ps

// TESTBENCH ONLY. Numerical inverse FFT, NOT a vendor IP replacement.
// Uses double-precision butterfly arithmetic and 1/N output normalization.
module ifft_reference_model (
    input wire clk, rst,
    input wire [7:0] config_data,
    input wire config_valid,
    output wire config_ready,
    input wire [47:0] input_data,
    input wire input_valid, input_last,
    output wire input_ready,
    output wire [47:0] output_data,
    output wire output_valid, output_last,
    input wire output_ready,
    input wire inject_bad_last,
    output reg [2:0] pair_number=0
);
    real xr[0:4095], xi[0:4095];
    reg [47:0] result[0:4095];
    integer phase=0, cycles=0, in_index=0, out_index=0, delay_count=0;
    reg pending=0;
    assign config_ready = rst && phase==0 && cycles%5!=1;
    assign input_ready = rst && phase==1 && cycles%7!=2 && cycles%7!=3;
    assign output_valid = rst && phase==3 && (pending || cycles%11!=4);
    assign output_last = out_index==4095 && !inject_bad_last;
    assign output_data = result[out_index];

    task automatic calculate_inverse;
        integer n, j, bit_no, reversed, span, half, base, pos, ri, ii;
        real angle, co, si, tr, ti, ur, ui, temp;
        begin
            for(n=0;n<4096;n=n+1) begin
                reversed=0;
                for(bit_no=0;bit_no<12;bit_no=bit_no+1)
                    reversed=(reversed<<1)|((n>>bit_no)&1);
                if(n<reversed) begin
                    temp=xr[n]; xr[n]=xr[reversed]; xr[reversed]=temp;
                    temp=xi[n]; xi[n]=xi[reversed]; xi[reversed]=temp;
                end
            end
            for(span=2;span<=4096;span=span*2) begin
                half=span/2;
                for(base=0;base<4096;base=base+span)
                    for(j=0;j<half;j=j+1) begin
                        angle=6.283185307179586*j/span;
                        co=$cos(angle); si=$sin(angle);
                        pos=base+j;
                        tr=co*xr[pos+half]-si*xi[pos+half];
                        ti=si*xr[pos+half]+co*xi[pos+half];
                        ur=xr[pos]; ui=xi[pos];
                        xr[pos]=ur+tr; xi[pos]=ui+ti;
                        xr[pos+half]=ur-tr; xi[pos+half]=ui-ti;
                    end
            end
            for(n=0;n<4096;n=n+1) begin
                ri=$rtoi(xr[n]/4096.0);
                ii=$rtoi(xi[n]/4096.0);
                if(ri>8388607 || ri < -8388608 || ii>8388607 || ii < -8388608)
                    $fatal(1,"Reference IFFT overflow");
                result[n]={ii[23:0],ri[23:0]};
            end
        end
    endtask

    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            phase<=0; cycles<=0; in_index<=0; out_index<=0;
            delay_count<=0; pair_number<=0; pending<=0;
        end else begin
            cycles<=cycles+1;
            if(config_valid && config_ready) begin
                if(config_data!==8'h00) $fatal(1,"Expected inverse FFT configuration");
                phase<=1; in_index<=0;
            end
            if(input_valid && input_ready) begin
                if(input_last !== (in_index==4095)) $fatal(1,"Wrong IFFT input TLAST");
                xr[in_index]=$itor($signed(input_data[23:0]));
                xi[in_index]=$itor($signed(input_data[47:24]));
                if(in_index==4095) begin
                    calculate_inverse();
                    phase<=2; delay_count<=7;
                end else in_index<=in_index+1;
            end
            if(phase==2) begin
                if(delay_count==0) begin phase<=3; out_index<=0; end
                else delay_count<=delay_count-1;
            end
            if(output_valid && !output_ready) pending<=1;
            if(output_valid && output_ready) begin
                pending<=0;
                if(out_index==4095) begin
                    phase<=0;
                    pair_number <= pair_number==5 ? 0 : pair_number+1;
                end else out_index<=out_index+1;
            end
        end
    end
endmodule
