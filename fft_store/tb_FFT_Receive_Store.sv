`timescale 1ns / 1ps

module tb_FFT_Receive_Store;
    reg clk = 0;
    always #10 clk = ~clk;
    reg rst = 0;
    reg start = 0;
    reg [1:0] channel_sel = 0;
    reg [47:0] fft_data = 0;
    reg fft_valid = 0;
    reg fft_last = 0;
    wire fft_ready;
    wire ram_ena, ram_wea;
    wire [13:0] ram_addr;
    wire [47:0] ram_data;
    wire busy, done, all_ready, tlast_error;
    wire [1:0] frame_channel;
    wire [3:0] channel_valid;
    reg [47:0] memory [0:16383];
    integer writes = 0;
    integer frame_writes = 0;
    integer done_count = 0;
    integer i, ch;
    integer expected_channel;
    reg [3:0] expected_mask = 0;

    FFT_Receive_Store dut (
        .clk(clk), .rst(rst), .start(start), .channel_sel(channel_sel),
        .m_axis_data_tdata(fft_data), .m_axis_data_tvalid(fft_valid),
        .m_axis_data_tlast(fft_last), .m_axis_data_tready(fft_ready),
        .ram_ena(ram_ena), .ram_wea(ram_wea),
        .ram_addra(ram_addr), .ram_dina(ram_data),
        .busy(busy), .frame_done(done), .frame_channel(frame_channel),
        .channel_valid(channel_valid), .all_channels_ready(all_ready),
        .tlast_error(tlast_error)
    );

    function automatic [47:0] sample_word(input integer c, input integer n);
        reg [23:0] re_part, im_part;
        begin
            re_part = 24'h810000 + c * 4096 + n;
            im_part = 24'h123456 ^ (n * 17 + c * 257);
            sample_word = {im_part, re_part};
        end
    endfunction

    // Model the native BRAM write edge. Check real writes, including the last.
    always @(posedge clk) begin
        if (ram_ena && ram_wea) begin
            if (!rst || !fft_valid || !fft_ready)
                $fatal(1, "RAM write without output handshake");
            if (ram_addr !== expected_channel * 4096 + frame_writes)
                $fatal(1, "Wrong channel/address: got %d, point %d", ram_addr, frame_writes);
            if (ram_data !== sample_word(expected_channel, frame_writes))
                $fatal(1, "Wrong real/imag data at %d", ram_addr);
            memory[ram_addr] <= ram_data;
            writes = writes + 1;
            frame_writes = frame_writes + 1;
        end
        #1;
        if (done) done_count = done_count + 1;
    end

    task automatic arm_channel(input integer c);
        reg new_batch;
        begin
            @(negedge clk);
            if (busy) $fatal(1, "Attempt to arm while busy");
            new_batch = (expected_mask == 4'b1111);
            if (new_batch) expected_mask = 0;
            expected_channel = c;
            frame_writes = 0;
            fft_valid = 0;
            fft_last = 0;
            channel_sel = c;
            start = 1;
            @(negedge clk);
            start = 0;
            if (!busy || frame_channel != c)
                $fatal(1, "Start not accepted");
            if (channel_valid[c])
                $fatal(1, "Old channel marked valid during overwrite");
            if (new_batch && (channel_valid != 0 || all_ready))
                $fatal(1, "New batch retained old completion flags");
        end
    endtask

    task automatic send_point(input integer c, input integer n, input integer mark_last);
        begin
            @(negedge clk);
            fft_data = sample_word(c, n);
            fft_valid = 1;
            fft_last = mark_last;
            @(posedge clk);
            if (!fft_ready) $fatal(1, "Unexpected backpressure during armed frame");
        end
    endtask

    task automatic send_frame(input integer c, input integer early_last, input integer omit_last);
        integer n, old_writes;
        reg [13:0] held_addr;
        begin
            arm_channel(c);
            for (n = 0; n < 4096; n = n + 1) begin
                // Vary valid gaps; address must not advance during a gap.
                if ((n % 37) == 11) begin
                    @(negedge clk);
                    fft_valid = 0;
                    fft_last = 0;
                    fft_data = 48'hdeadbeef0123;
                    held_addr = ram_addr;
                    old_writes = writes;
                    repeat (2) @(negedge clk);
                    if (ram_addr != held_addr || writes != old_writes)
                        $fatal(1, "Address advanced during invalid input");
                end
                send_point(c, n, ((n == 4095) && !omit_last) || (early_last && n == 7));
            end
            @(negedge clk);
            if (!done || busy || frame_writes != 4096)
                $fatal(1, "Final point/completion failed: writes=%d", frame_writes);
            expected_mask[c] = 1;
            if (channel_valid !== expected_mask)
                $fatal(1, "Channel valid mask mismatch");
            if (tlast_error !== (early_last || omit_last))
                $fatal(1, "TLAST error detection mismatch");
            for (n = 0; n < 4096; n = n + 1)
                if (memory[c * 4096 + n] !== sample_word(c, n))
                    $fatal(1, "Stored spectrum mismatch at channel %d point %d", c, n);

            // Leave valid asserted after the frame: a 4097th write is forbidden.
            old_writes = writes;
            fft_data = 48'hffffffffffff;
            repeat (4) @(negedge clk);
            if (fft_ready || writes != old_writes || done)
                $fatal(1, "Extra write or non-pulsed done after frame end");
            fft_valid = 0;
            fft_last = 0;
            $display("PASS channel=%0d, 4096 stored points, gaps, final write, TLAST errors=%0d", c, tlast_error);
        end
    endtask

    initial begin
        for (i = 0; i < 16384; i = i + 1) memory[i] = 48'hbadbadbadbad;
        repeat (3) @(negedge clk);
        rst = 1;

        // No start: valid input must not write memory.
        fft_valid = 1;
        repeat (3) @(negedge clk);
        if (writes != 0 || fft_ready) $fatal(1, "Unarmed receiver accepted input");
        fft_valid = 0;

        // Reset in the middle of a partial frame.
        arm_channel(3);
        for (i = 0; i < 9; i = i + 1) send_point(3, i, 0);
        @(negedge clk);
        rst = 0;
        repeat (2) @(negedge clk);
        if (busy || fft_ready || ram_wea || channel_valid != 0 || done)
            $fatal(1, "Reset did not abort partial frame");
        fft_valid = 0;
        rst = 1;
        $display("PASS reset during partial frame");

        // Non-sequential channels verify the latched channel and separate banks.
        send_frame(2, 0, 0);
        send_frame(0, 0, 0);
        send_frame(3, 0, 0);
        send_frame(1, 0, 0);
        if (!all_ready) $fatal(1, "Four-channel completion not asserted");
        for (ch = 0; ch < 4; ch = ch + 1)
            for (i = 0; i < 4096; i = i + 1)
                if (memory[ch * 4096 + i] !== sample_word(ch, i))
                    $fatal(1, "Channel bank overwritten unexpectedly");

        send_frame(0, 1, 0);
        send_frame(1, 0, 1);
        send_frame(0, 0, 0);
        if (done_count != 7) $fatal(1, "Wrong completion pulse count: %d", done_count);
        $display("ALL TESTS PASSED: 7 complete spectra, 4 banks, input gaps, idle protection, reset and TLAST checks");
        $finish;
    end

    initial begin
        #2000000;
        $fatal(1, "Simulation timeout");
    end
endmodule
