`timescale 1ns / 1ps

module tb_PHAT_IFFT;
    reg clk=0;
    always #10 clk=~clk;
    reg rst=0, start=0, inject_bad_last=0;
    wire busy, done, pair_done, frame_error;
    wire [13:0] ram_addr;
    wire ram_en;
    reg [47:0] ram_pipe=0, ram_data=0;
    reg [47:0] spectra[0:16383];
    reg [47:0] expected_phat[0:24575];
    wire [7:0] inv_cfg_data, core_cfg_data;
    wire inv_cfg_valid, inv_cfg_ready, core_cfg_valid, core_cfg_ready;
    wire [47:0] inv_in_data, core_in_data, core_out_data, inv_out_data;
    wire inv_in_valid, inv_in_last, inv_in_ready;
    wire core_in_valid, core_in_last, core_in_ready;
    wire core_out_valid, core_out_last, core_out_ready;
    wire inv_out_valid, inv_out_last, inv_out_ready;
    wire f_cfg_ready, f_data_ready, f_out_valid;
    wire [47:0] f_out_data;
    wire f_out_last;
    wire [2:0] result_pair, model_pair;
    wire signed [15:0] pair_lag, l12,l13,l14,l23,l24,l34;
    wire signed [23:0] pair_peak;
    wire [5:0] valid_mask;
    integer case_id=0, received_pairs=0, input_point=0, input_pair=0;
    integer processing_cycles=0, csv_file, n, batch;
    reg stalled=0, held_last=0;
    reg [47:0] held_data;
    reg [15:0] wanted[0:5];

    PHAT_IFFT_Ctrl dut (
        .clk(clk),.rst(rst),.start(start),.busy(busy),.done(done),
        .spectrum_addrb(ram_addr),.spectrum_enb(ram_en),.spectrum_doutb(ram_data),
        .s_axis_config_tdata(inv_cfg_data),.s_axis_config_tvalid(inv_cfg_valid),.s_axis_config_tready(inv_cfg_ready),
        .s_axis_data_tdata(inv_in_data),.s_axis_data_tvalid(inv_in_valid),.s_axis_data_tlast(inv_in_last),.s_axis_data_tready(inv_in_ready),
        .m_axis_data_tdata(inv_out_data),.m_axis_data_tvalid(inv_out_valid),.m_axis_data_tlast(inv_out_last),.m_axis_data_tready(inv_out_ready),
        .pair_index(result_pair),.pair_done(pair_done),.pair_lag(pair_lag),.pair_peak(pair_peak),
        .lag12(l12),.lag13(l13),.lag14(l14),.lag23(l23),.lag24(l24),.lag34(l34),
        .lag_valid(valid_mask),.frame_error(frame_error)
    );
    FFT_IFFT_Mux mux (
        .select_ifft(busy),
        .forward_config_tdata(8'h01),.forward_config_tvalid(busy),.forward_config_tready(f_cfg_ready),
        .forward_data_tdata(48'h123456abcdef),.forward_data_tvalid(busy),.forward_data_tlast(1'b0),.forward_data_tready(f_data_ready),
        .forward_result_tdata(f_out_data),.forward_result_tvalid(f_out_valid),.forward_result_tlast(f_out_last),.forward_result_tready(1'b1),
        .inverse_config_tdata(inv_cfg_data),.inverse_config_tvalid(inv_cfg_valid),.inverse_config_tready(inv_cfg_ready),
        .inverse_data_tdata(inv_in_data),.inverse_data_tvalid(inv_in_valid),.inverse_data_tlast(inv_in_last),.inverse_data_tready(inv_in_ready),
        .inverse_result_tdata(inv_out_data),.inverse_result_tvalid(inv_out_valid),.inverse_result_tlast(inv_out_last),.inverse_result_tready(inv_out_ready),
        .core_config_tdata(core_cfg_data),.core_config_tvalid(core_cfg_valid),.core_config_tready(core_cfg_ready),
        .core_data_tdata(core_in_data),.core_data_tvalid(core_in_valid),.core_data_tlast(core_in_last),.core_data_tready(core_in_ready),
        .core_result_tdata(core_out_data),.core_result_tvalid(core_out_valid),.core_result_tlast(core_out_last),.core_result_tready(core_out_ready)
    );
    ifft_reference_model inverse (
        .clk(clk),.rst(rst),.config_data(core_cfg_data),.config_valid(core_cfg_valid),.config_ready(core_cfg_ready),
        .input_data(core_in_data),.input_valid(core_in_valid),.input_last(core_in_last),.input_ready(core_in_ready),
        .output_data(core_out_data),.output_valid(core_out_valid),.output_last(core_out_last),.output_ready(core_out_ready),
        .inject_bad_last(inject_bad_last),.pair_number(model_pair)
    );

    always @(posedge clk) if(ram_en) begin
        ram_pipe <= spectra[ram_addr];
        ram_data <= ram_pipe;
    end

    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            input_point=0; input_pair=0; received_pairs=0;
            stalled=0; processing_cycles=0;
        end else begin
            if(busy) processing_cycles=processing_cycles+1;
            if(busy && (f_cfg_ready || f_data_ready || f_out_valid))
                $fatal(1,"Forward client was not isolated during IFFT");
            if(stalled && (!inv_in_valid || inv_in_data!==held_data || inv_in_last!==held_last))
                $fatal(1,"IFFT input changed during backpressure");
            stalled=inv_in_valid && !inv_in_ready;
            held_data=inv_in_data; held_last=inv_in_last;
            if(core_in_valid && core_in_ready) begin
                if(core_in_data !== expected_phat[input_pair*4096+input_point])
                    $fatal(1,"PHAT stream differs from integer reference: case=%0d pair=%0d bin=%0d got=%h expected=%h",case_id,input_pair,input_point,core_in_data,expected_phat[input_pair*4096+input_point]);
                if(core_in_last !== (input_point==4095)) $fatal(1,"Bad PHAT frame length");
                if(input_point==4095) begin input_point=0; input_pair=input_pair+1; end
                else input_point=input_point+1;
            end
        end
        #1;
        if(rst && pair_done) begin
            if(result_pair != received_pairs) $fatal(1,"Pair index/result pulse mismatch");
            if(case_id==3) begin
                if(pair_lag!==0 || valid_mask[0] || !frame_error)
                    $fatal(1,"Bad output TLAST was not rejected");
            end else begin
                if(pair_lag !== wanted[received_pairs])
                    $fatal(1,"Known delay mismatch: case=%0d pair=%0d got=%0d wanted=%0d",case_id,received_pairs,pair_lag,$signed(wanted[received_pairs]));
                if(valid_mask[received_pairs] !== (case_id != 2))
                    $fatal(1,"Validity mismatch");
            end
            $display("PAIR case=%0d pair=%0d lag=%0d peak=%0d valid=%0d",case_id,result_pair,pair_lag,pair_peak,valid_mask[result_pair]);
            $fdisplay(csv_file,"%0d,%0d,%0d,%0d,%0d",case_id,result_pair,pair_lag,pair_peak,valid_mask[result_pair]);
            received_pairs=received_pairs+1;
        end
    end

    task automatic load_case(input integer which_case);
        begin
            $readmemh($sformatf("spectra_%0d.mem",which_case),spectra);
            $readmemh($sformatf("phat_%0d.mem",which_case),expected_phat);
            if(which_case==0) begin
                wanted[0]=-1; wanted[1]=0; wanted[2]=-1;
                wanted[3]=1; wanted[4]=0; wanted[5]=-1;
            end else if(which_case==1) begin
                wanted[0]=4; wanted[1]=-5; wanted[2]=-1;
                wanted[3]=-9; wanted[4]=-5; wanted[5]=4;
            end else if(which_case==4) begin
                wanted[0]=-6; wanted[1]=-13; wanted[2]=-6;
                wanted[3]=-7; wanted[4]=0; wanted[5]=7;
            end else begin
                for(n=0;n<6;n=n+1) wanted[n]=0;
            end
        end
    endtask
    task automatic new_request;
        begin
            @(negedge clk); start=0;
            repeat(2) @(negedge clk);
            input_point=0; input_pair=0; received_pairs=0; processing_cycles=0;
            start=1;
        end
    endtask

    initial begin
        csv_file=$fopen("pair_results.csv","w");
        $fdisplay(csv_file,"case,pair,lag,peak,valid");
        load_case(0);
        repeat(4) @(negedge clk); rst=1;
        new_request();
        repeat(200) @(negedge clk);
        rst=0; start=0;
        repeat(4) @(negedge clk); rst=1;
        if(busy || inv_cfg_valid || inv_in_valid || ram_en)
            $fatal(1,"Reset did not abort in-flight processing");

        for(batch=0;batch<4;batch=batch+1) begin
            case_id=(batch==3) ? 4 : batch;
            load_case(case_id);
            new_request();
            wait(done);
            @(negedge clk);
            if(busy || frame_error || received_pairs!=6 || input_pair!=6)
                $fatal(1,"Batch completion/point count mismatch");
            if(valid_mask !== (case_id==2 ? 6'b000000 : 6'b111111))
                $fatal(1,"Batch valid mask mismatch");
            if({l12,l13,l14,l23,l24,l34} !== {wanted[0],wanted[1],wanted[2],wanted[3],wanted[4],wanted[5]})
                $fatal(1,"Stored six-lag outputs mismatch");
            $display("PASS GCC batch case=%0d cycles=%0d ms_at_50MHz=%f",case_id,processing_cycles,processing_cycles/50000.0);
            repeat(20) @(negedge clk);
            if(busy || done || received_pairs!=6) $fatal(1,"Held start re-triggered a batch");
        end
        // Reject a missing IFFT output TLAST, then abort and recover by reset.
        case_id=3; load_case(1); inject_bad_last=1;
        new_request();
        wait(pair_done);
        @(negedge clk);
        if(received_pairs!=1 || !frame_error || valid_mask[0])
            $fatal(1,"Output TLAST fault check failed");
        rst=0; start=0;
        repeat(3) @(negedge clk); rst=1;
        @(negedge clk);
        if(busy || done || inv_cfg_valid || inv_in_valid || ram_en)
            $fatal(1,"Final reset recovery failed");
        $fclose(csv_file);
        $display("ALL PHAT IFFT TESTS PASSED: 24 complete bit-exact PHAT streams, numerical 4096-point IFFTs, actual diagonal13 lag-13, signed/zero/silent lags, final-point peak, mux isolation, stalls, reset and TLAST fault");
        $finish;
    end
    initial begin #200000000; $fatal(1,"PHAT/IFFT simulation timeout"); end
endmodule
