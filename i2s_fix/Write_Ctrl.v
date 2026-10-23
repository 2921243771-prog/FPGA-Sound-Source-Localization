`timescale 1ns / 1ps

// Drain exactly 2048 FWFT FIFO words into the sampling RAM.
// Ram_en=1 permits sampling into FIFO; Ram_en=0 pauses FIFO writes.
// full can be HIGH during FIFO reset. Observe a LOW after reset before
// accepting a HIGH as a completed capture. All ports match the old module.
module Write_Ctrl (
    output reg ena,
    output reg wna,
    output reg read_toggle,
    output reg [11:0] Write_addra,
    output wire [95:0] data,
    output reg Ram_en,
    output reg Ram_ready,
    input wire fifo_full,
    input wire [23:0] data1,
    input wire [23:0] data2,
    input wire [23:0] data3,
    input wire [23:0] data4,
    input wire clk,
    input wire rst
);
    localparam [1:0] WAIT_FULL=0, WRITE_WORD=1, FINISH=2;
    reg [1:0] state;
    reg [10:0] count;
    (* ASYNC_REG = "TRUE" *) reg full_meta, full_sync;
    reg full_seen_low;

    assign data = {data4,data3,data2,data1};

    // FIFO full belongs to its write clock; synchronize it to the RAM clock.
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            full_meta <= 1'b1;
            full_sync <= 1'b1;
        end else begin
            full_meta <= fifo_full;
            full_sync <= full_meta;
        end
    end

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= WAIT_FULL;
            count <= 0;
            full_seen_low <= 0;
            ena <= 0;
            wna <= 0;
            read_toggle <= 0;
            Write_addra <= 0;
            Ram_en <= 0;
            Ram_ready <= 0;
        end else begin
            case (state)
                WAIT_FULL: begin
                    ena <= 0;
                    wna <= 0;
                    Ram_en <= 1;
                    if (!full_sync) full_seen_low <= 1;
                    if (full_seen_low && full_sync) begin
                        full_seen_low <= 0;
                        Ram_en <= 0;
                        Ram_ready <= 0;
                        count <= 0;
                        state <= WRITE_WORD;
                    end
                end
                WRITE_WORD: begin
                    ena <= 1;
                    wna <= 1;
                    Write_addra <= {1'b0,count};
                    read_toggle <= ~read_toggle;
                    // FWFT head is written and popped at the FOLLOWING edge.
                    if (count == 11'd2047) state <= FINISH;
                    else count <= count + 1'b1;
                end
                FINISH: begin
                    // At this edge RAM accepts address2047 and FIFO pops it.
                    // Drop write enables only after that edge; do not toggle again.
                    ena <= 0;
                    wna <= 0;
                    Ram_ready <= 1;
                    count <= 0;
                    state <= WAIT_FULL;
                end
                default: begin
                    state <= WAIT_FULL;
                    ena <= 0;
                    wna <= 0;
                    Ram_en <= 0;
                    Ram_ready <= 0;
                    full_seen_low <= 0;
                end
            endcase
        end
    end
endmodule
