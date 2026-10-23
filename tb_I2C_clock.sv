`timescale 1ns / 1ps

module tb_I2C_clock;

    // 约 11.290323 MHz；1 ps 时间精度会将半周期取整到 44.286 ns。
    reg MMCM_CLOCK = 1'b0;
    reg rst = 1'b1;
    wire SCK;
    wire WS;

    integer i;
    integer sck_rises;
    integer sck_falls;
    integer ws_rises;
    integer ws_falls;
    reg previous_sck;
    reg previous_ws;

    I2C_clock dut (
        .SCK(SCK),
        .WS(WS),
        .MMCM_CLOCK(MMCM_CLOCK),
        .rst(rst)
    );

    always #44.286 MMCM_CLOCK = ~MMCM_CLOCK;

    initial begin
        // 先保持复位 5 个输入时钟周期。
        repeat (5) @(negedge MMCM_CLOCK);
        if (SCK !== 1'b0 || WS !== 1'b0)
            $fatal(1, "Reset failed: SCK=%b WS=%b", SCK, WS);

        rst = 1'b0;
        repeat (512) @(negedge MMCM_CLOCK);

        sck_rises = 0;
        sck_falls = 0;
        ws_rises = 0;
        ws_falls = 0;
        previous_sck = SCK;
        previous_ws = WS;

        // 1024 个输入周期应包含 256 个 SCK 周期、4 个 WS 周期。
        for (i = 0; i < 1024; i = i + 1) begin
            @(negedge MMCM_CLOCK);

            if ((SCK !== 1'b0 && SCK !== 1'b1) ||
                (WS  !== 1'b0 && WS  !== 1'b1))
                $fatal(1, "Unknown output at input cycle %0d: SCK=%b WS=%b", i, SCK, WS);

            if (SCK !== previous_sck) begin
                if (SCK === 1'b1)
                    sck_rises = sck_rises + 1;
                else
                    sck_falls = sck_falls + 1;
            end

            if (WS !== previous_ws) begin
                // I2S 的 WS 应在 SCK 下降沿切换。
                if (previous_sck !== 1'b1 || SCK !== 1'b0)
                    $fatal(1, "WS changed without an SCK falling edge at cycle %0d", i);

                if (WS === 1'b1)
                    ws_rises = ws_rises + 1;
                else
                    ws_falls = ws_falls + 1;
            end

            previous_sck = SCK;
            previous_ws = WS;
        end

        if (sck_rises != 256 || sck_falls != 256 ||
            ws_rises != 4 || ws_falls != 4)
            $fatal(1, "Wrong dividers: SCK rises/falls=%0d/%0d, WS rises/falls=%0d/%0d",
                   sck_rises, sck_falls, ws_rises, ws_falls);

        $display("PASS: SCK = MMCM_CLOCK/4, WS = MMCM_CLOCK/256, 64 SCK cycles per WS cycle");

        // 运行中再次复位，检查两个输出立即回到低电平。
        #1 rst = 1'b1;
        #1;
        if (SCK !== 1'b0 || WS !== 1'b0)
            $fatal(1, "Runtime reset failed: SCK=%b WS=%b", SCK, WS);

        $display("PASS: runtime reset");
        $finish;
    end

endmodule
