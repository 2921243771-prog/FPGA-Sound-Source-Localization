`timescale 1ns / 1ps

// Integration test for the REAL two controllers, with native RAM models and
// an FFT INTERFACE model. The latter does not calculate a numerical FFT.
module tb_fft_path;
    reg clk = 0;
    always #10 clk = ~clk;
    reg rst = 0, ram_ready = 0;
    integer batch_id = 0;
    wire [12:0] sample_addr;
    wire sample_en;
    reg [23:0] sample_pipe = 0, sample_data = 0;
    wire [7:0] cfg_data;
    wire cfg_valid, cfg_ready;
    wire [47:0] in_data;
    wire in_valid, in_ready, in_last;
    wire rx_start;
    wire [1:0] channel;
    wire tx_busy, batch_done;
    wire [47:0] out_data;
    wire out_valid, out_ready, out_last;
    wire mem_en, mem_we;
    wire [13:0] mem_addr;
    wire [47:0] mem_data;
    wire rx_busy, frame_done, all_ready, frame_error;
    wire [1:0] frame_channel;
    wire [3:0] valid_mask;
    reg [47:0] spectrum [0:16383];
    reg [47:0] frame_buffer [0:4095];
    reg [1:0] model_phase = 0;
    reg [1:0] model_channel = 0;
    integer load_index = 0, unload_index = 0, delay_count = 0;
    integer cycles = 0, config_count = 0, stored_count = 0, done_count = 0;
    integer n, c, b;

    function automatic [23:0] mic_value(input integer batch, input integer ch, input integer idx);
        mic_value = 24'h800000 + batch * 65536 + ch * 4096 + idx;
    endfunction
    function automatic [47:0] encoded_result(input [47:0] source, input integer ch, input integer idx);
        reg [23:0] imaginary_part;
        begin
            imaginary_part = 24'hf00000 + ch * 4096 + idx;
            encoded_result = {imaginary_part, source[23:0] ^ 24'h555555};
        end
    endfunction

    fft_ctrl tx (
        .clk(clk), .rst(rst), .Ram_ready(ram_ready),
        .addrb(sample_addr), .enb(sample_en), .data(sample_data), .ifft_data(48'd0),
        .s_axis_config_tdata(cfg_data), .s_axis_config_tvalid(cfg_valid), .s_axis_config_tready(cfg_ready),
        .tdata(in_data), .s_axis_data_tvalid(in_valid), .s_axis_data_tlast(in_last), .s_axis_data_tready(in_ready),
        .fft_rx_start(rx_start), .channel_sel(channel), .fft_frame_done(frame_done),
        .busy(tx_busy), .batch_done(batch_done)
    );
    FFT_Receive_Store rx (
        .clk(clk), .rst(rst), .start(rx_start), .channel_sel(channel),
        .m_axis_data_tdata(out_data), .m_axis_data_tvalid(out_valid),
        .m_axis_data_tlast(out_last), .m_axis_data_tready(out_ready),
        .ram_ena(mem_en), .ram_wea(mem_we), .ram_addra(mem_addr), .ram_dina(mem_data),
        .busy(rx_busy), .frame_done(frame_done), .frame_channel(frame_channel),
        .channel_valid(valid_mask), .all_channels_ready(all_ready), .tlast_error(frame_error)
    );

    always @(posedge clk) begin
        if (sample_en) begin
            sample_pipe <= mic_value(batch_id, sample_addr[1:0], sample_addr[12:2]);
            sample_data <= sample_pipe;
        end
        if (mem_en && mem_we) begin
            if (mem_addr !== model_channel * 4096 + unload_index)
                $fatal(1, "Receiver stored an output in the wrong bank/address");
            spectrum[mem_addr] <= mem_data;
            stored_count = stored_count + 1;
        end
        #1;
        if (rst && frame_done) begin
            done_count = done_count + 1;
            if (frame_error || rx_busy)
                $fatal(1, "Receiver TLAST error or did not finish");
        end
    end

    assign cfg_ready = rst && model_phase == 0 && (cycles % 5 != 1);
    assign in_ready = rst && model_phase == 1 && (cycles % 7 != 2) && (cycles % 7 != 3);
    assign out_valid = rst && model_phase == 3 && (cycles % 11 != 4);
    assign out_data = encoded_result(frame_buffer[unload_index], model_channel, unload_index);
    assign out_last = (unload_index == 4095);

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            cycles <= 0;
            model_phase <= 0;
            model_channel <= 0;
            load_index <= 0;
            unload_index <= 0;
            delay_count <= 0;
            config_count <= 0;
        end else begin
            cycles <= cycles + 1;
            if (cfg_valid && cfg_ready) begin
                if (cfg_data !== 8'h01 || !rx_start)
                    $fatal(1, "Configuration/start mismatch");
                model_channel <= channel;
                config_count <= config_count + 1;
                load_index <= 0;
                model_phase <= 1;
            end
            if (in_valid && in_ready) begin
                if (load_index < 2048) begin
                    if (in_data !== {24'd0, mic_value(batch_id, model_channel, load_index)})
                        $fatal(1, "Wrong sampling RAM data or channel order");
                end else if (in_data !== 48'd0)
                    $fatal(1, "Padding was not zero");
                if (in_last !== (load_index == 4095))
                    $fatal(1, "Wrong input TLAST");
                frame_buffer[load_index] <= in_data;
                if (load_index == 4095) begin
                    model_phase <= 2;
                    delay_count <= 9;
                end else load_index <= load_index + 1;
            end
            if (model_phase == 2) begin
                if (delay_count == 0) begin
                    unload_index <= 0;
                    model_phase <= 3;
                end else delay_count <= delay_count - 1;
            end
            if (out_valid && out_ready) begin
                if (unload_index == 4095)
                    model_phase <= 0;
                else unload_index <= unload_index + 1;
            end
        end
    end

    initial begin
        for (n = 0; n < 16384; n = n + 1) spectrum[n] = 48'hbadbadbadbad;
        repeat (3) @(negedge clk);
        rst = 1;
        for (b = 0; b < 2; b = b + 1) begin
            batch_id = b;
            ram_ready = 0;
            repeat (2) @(negedge clk);
            ram_ready = 1;
            wait (batch_done);
            @(negedge clk);
            if (!all_ready || valid_mask !== 4'b1111 || tx_busy || rx_busy || frame_error)
                $fatal(1, "Batch completion flags do not match");
            if (stored_count != (b + 1) * 16384 || done_count != (b + 1) * 4)
                $fatal(1, "Missing or duplicate receiver writes/done pulses");
            for (c = 0; c < 4; c = c + 1)
                for (n = 0; n < 4096; n = n + 1) begin
                    if (n < 2048) begin
                        if (spectrum[c * 4096 + n] !== encoded_result({24'd0, mic_value(b, c, n)}, c, n))
                            $fatal(1, "Stored spectrum content mismatch");
                    end else if (spectrum[c * 4096 + n] !== encoded_result(48'd0, c, n))
                        $fatal(1, "Stored second-half spectrum content mismatch");
                end
            repeat (10) @(negedge clk);
            if (config_count != (b + 1) * 4 || batch_done)
                $fatal(1, "Held Ram_ready restarted the batch");
            $display("PASS integrated batch %0d: 4 frames, 16384 exact RAM writes, input/output gaps, frame/channel handoff", b);
        end
        $display("ALL FFT PATH TESTS PASSED: actual TX/RX controllers connected; 32768 stored complex words checked. FFT arithmetic and vendor IP are NOT tested by this model.");
        $finish;
    end
    initial begin
        #10000000;
        $fatal(1, "Integrated simulation timed out");
    end
endmodule
