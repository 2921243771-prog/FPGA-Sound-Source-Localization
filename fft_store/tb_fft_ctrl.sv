`timescale 1ns / 1ps

module tb_fft_ctrl #(
    parameter integer IFFT_MODE = 0
);
    localparam integer FRAMES_PER_BATCH = (IFFT_MODE != 0) ? 1 : 4;
    reg clk = 0;
    always #10 clk = ~clk;
    reg rst = 0;
    reg ram_ready = 0;
    wire [12:0] ram_addr;
    wire ram_en;
    reg [23:0] ram_pipe = 0;
    reg [23:0] ram_data = 0;
    reg [47:0] complex_ram_pipe = 0;
    reg [47:0] complex_ram_data = 0;
    wire [7:0] config_data;
    wire config_valid, config_ready;
    wire [47:0] fft_data;
    wire fft_valid, fft_last, fft_ready;
    wire rx_start;
    wire [1:0] channel;
    reg result_done = 0;
    wire busy, batch_done;

    integer cycles = 0;
    integer accepted = 0;
    integer configurations = 0;
    integer results = 0;
    integer batches = 0;
    integer points_in_frame = 0;
    integer current_channel = 0;
    integer result_delay = 0;
    reg active = 0;
    reg processing = 0;
    reg data_stalled = 0;
    reg config_stalled = 0;
    reg [47:0] held_data;
    reg held_last;
    reg [7:0] held_config;

    fft_ctrl #(.IFFT_MODE(IFFT_MODE)) dut (
        .clk(clk), .rst(rst), .Ram_ready(ram_ready),
        .addrb(ram_addr), .enb(ram_en), .data(ram_data),
        .ifft_data(complex_ram_data),
        .s_axis_config_tdata(config_data),
        .s_axis_config_tvalid(config_valid),
        .s_axis_config_tready(config_ready),
        .tdata(fft_data), .s_axis_data_tvalid(fft_valid),
        .s_axis_data_tlast(fft_last), .s_axis_data_tready(fft_ready),
        .fft_rx_start(rx_start), .channel_sel(channel),
        .fft_frame_done(result_done), .busy(busy), .batch_done(batch_done)
    );

    function automatic [23:0] sample_value(input integer c, input integer n);
        sample_value = 24'h800000 + c * 4096 + n;
    endfunction

    function automatic [47:0] complex_value(input integer n);
        reg [23:0] re_part, im_part;
        begin
            re_part = 24'h800000 + n * 7;
            im_part = 24'hf12345 ^ (n * 19);
            complex_value = {im_part, re_part};
        end
    endfunction

    // Port B model: TWO registered read stages, both enabled by ENB.
    // Address bits [12:2] select time; [1:0] select the microphone.
    always @(posedge clk) begin
        if (ram_en) begin
            ram_pipe <= sample_value(ram_addr[1:0], ram_addr[12:2]);
            ram_data <= ram_pipe;
            complex_ram_pipe <= complex_value(ram_addr[11:0]);
            complex_ram_data <= complex_ram_pipe;
            if (IFFT_MODE && ram_addr[12])
                $fatal(1, "IFFT RAM address exceeded 4095");
        end
    end

    // FFT interface model only; no numerical FFT is performed here.
    // Inject input/config stalls and delay each result completion.
    assign config_ready = rst && !active && !processing && ((cycles % 5) != 1);
    assign fft_ready = rst && active && ((cycles % 7) != 2) && ((cycles % 7) != 3);

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            cycles = 0;
            accepted = 0;
            configurations = 0;
            results = 0;
            points_in_frame = 0;
            current_channel = 0;
            result_delay = 0;
            active = 0;
            processing = 0;
            result_done <= 0;
            data_stalled = 0;
            config_stalled = 0;
        end else begin
            result_done <= 0;

            if (data_stalled && (!fft_valid || fft_data !== held_data || fft_last !== held_last))
                $fatal(1, "Data/valid/TLAST changed while TREADY was low");
            if (config_stalled && (!config_valid || config_data !== held_config))
                $fatal(1, "Configuration changed before acceptance");
            data_stalled = fft_valid && !fft_ready;
            held_data = fft_data;
            held_last = fft_last;
            config_stalled = config_valid && !config_ready;
            held_config = config_data;

            if (config_valid && config_ready) begin
                if (active || processing || config_data !== (IFFT_MODE ? 8'h00 : 8'h01) || !rx_start)
                    $fatal(1, "Bad configuration or receiver start");
                if (channel != (configurations % FRAMES_PER_BATCH))
                    $fatal(1, "Wrong channel order");
                current_channel = channel;
                points_in_frame = 0;
                configurations = configurations + 1;
                active = 1;
            end else if (rx_start) begin
                $fatal(1, "Receiver start without configuration transfer");
            end

            if (fft_valid && fft_ready) begin
                if (!active || channel != current_channel)
                    $fatal(1, "Wrong channel during FFT frame");
                if (IFFT_MODE) begin
                    if (fft_data !== complex_value(points_in_frame))
                        $fatal(1, "IFFT complex RAM data wrong at point %0d: %h", points_in_frame, fft_data);
                end else if (points_in_frame < 2048) begin
                    if (fft_data !== {24'd0, sample_value(current_channel, points_in_frame)})
                        $fatal(1, "RAM sample wrong: channel=%0d point=%0d data=%h", current_channel, points_in_frame, fft_data);
                end else if (fft_data !== 48'd0) begin
                    $fatal(1, "Nonzero FFT padding");
                end
                if (fft_last !== (points_in_frame == 4095))
                    $fatal(1, "TLAST on wrong point %0d", points_in_frame);
                points_in_frame = points_in_frame + 1;
                accepted = accepted + 1;
                if (points_in_frame == 4096) begin
                    active = 0;
                    processing = 1;
                    result_delay = 8;
                    if (IFFT_MODE)
                        $display("PASS IFFT input: 4096 complex PHAT points, including nonzero imaginary parts and second half");
                    else
                        $display("PASS channel %0d input: 2048 ordered samples + 2048 zeros", current_channel);
                end
            end

            if (processing) begin
                if (result_delay == 0) begin
                    result_done <= 1;
                    results = results + 1;
                    processing = 0;
                end else begin
                    result_delay = result_delay - 1;
                end
            end
            cycles = cycles + 1;
        end
    end

    always @(posedge clk) begin
        #1;
        if (rst && batch_done) begin
            batches = batches + 1;
            if (busy || (results % FRAMES_PER_BATCH) != 0 || active || processing)
                $fatal(1, "Batch ended before four results completed");
        end
    end

    initial begin
        repeat (3) @(negedge clk);
        rst = 1;
        ram_ready = 1;
        wait (accepted >= 13);
        @(negedge clk);
        rst = 0;
        ram_ready = 0;
        repeat (3) @(negedge clk);
        if (fft_valid || config_valid || rx_start || busy || ram_en)
            $fatal(1, "Reset failed during partial input");
        rst = 1;
        repeat (2) @(negedge clk);
        ram_ready = 1;

        wait (batches == 1);
        repeat (10) @(negedge clk);
        if (configurations != FRAMES_PER_BATCH || accepted != FRAMES_PER_BATCH * 4096 || busy || batch_done)
            $fatal(1, "Held-high Ram_ready re-triggered a batch or completion was not a pulse");

        ram_ready = 0;
        repeat (2) @(negedge clk);
        ram_ready = 1;
        wait (batches == 2);
        repeat (10) @(negedge clk);
        if (configurations != 2 * FRAMES_PER_BATCH || results != 2 * FRAMES_PER_BATCH || accepted != 2 * FRAMES_PER_BATCH * 4096 || busy)
            $fatal(1, "Second batch failed");

        if (IFFT_MODE)
            $display("ALL IFFT CTRL TESTS PASSED: 2 complex frames, inverse configuration, no padding, two-cycle BRAM, TLAST, backpressure, delayed results and reset");
        else
            $display("ALL FFT CTRL TESTS PASSED: 8 full frames, two-cycle BRAM, sample order, zero padding, TLAST, backpressure, delayed results, reset and two batches");
        $finish;
    end

    initial begin
        #10000000;
        $fatal(1, "Simulation timeout");
    end
endmodule

module tb_fft_ctrl_ifft;
    tb_fft_ctrl #(.IFFT_MODE(1)) test();
endmodule
