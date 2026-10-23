`timescale 1ns / 1ps
module tb_Write_Ctrl;
    reg clk=0;
    always #10 clk=~clk;
    reg rst=0, full=1;
    wire ena,wna,toggle,ram_en,ready;
    wire [11:0] addr;
    wire [95:0] data;
    reg [95:0] fifo_head;
    reg toggle_d=0, loaded=0;
    integer head=0, writes=0, base=0, passes=0;
    wire pop=(toggle^toggle_d)&&loaded&&(head<2048);
    function automatic [95:0] word(input integer n);
        reg [23:0] a,b,c,d;
        begin
            a=24'h100000+n; b=24'h200000+n;
            c=24'h300000+n; d=24'h400000+n;
            word={d,c,b,a};
        end
    endfunction
    always @* fifo_head=loaded&&head<2048 ? word(base+head) : 96'd0;
    Write_Ctrl dut(.clk(clk),.rst(rst),.fifo_full(full),
        .data1(fifo_head[23:0]),.data2(fifo_head[47:24]),
        .data3(fifo_head[71:48]),.data4(fifo_head[95:72]),
        .ena(ena),.wna(wna),.read_toggle(toggle),.Write_addra(addr),
        .data(data),.Ram_en(ram_en),.Ram_ready(ready));
    always @(posedge clk) begin
        if(!rst) toggle_d<=0;
        else begin
            toggle_d<=toggle;
            if(ena&&wna) begin
                if(!loaded) $fatal(1,"Write before real FIFO full");
                if(addr!==writes || data!==word(base+writes))
                    $fatal(1,"RAM mismatch word=%0d addr=%0d data=%h",writes,addr,data);
                writes=writes+1;
            end
            if(pop) head=head+1;
        end
    end
    task automatic frame(input integer new_base);
        integer budget;
        begin
            @(negedge clk); full=0;
            repeat(12) @(negedge clk);
            base=new_base; head=0; writes=0; loaded=1; full=1;
            budget=0;
            while(ready!==0 && budget<20) begin @(negedge clk); budget=budget+1; end
            budget=0;
            // Full falls after the first read, as read pointers reach write domain.
            while(ready!==1 && budget<2100) begin
                @(negedge clk);
                if(head>3) full=0;
                budget=budget+1;
            end
            if(ready!==1 || writes!=2048 || head!=2048)
                $fatal(1,"Frame incomplete ready=%b writes=%0d head=%0d",ready,writes,head);
            loaded=0;
            repeat(12) @(negedge clk);
            if(writes!=2048) $fatal(1,"Extra write after end");
            passes=passes+1;
        end
    endtask
    initial begin
        repeat(5) @(negedge clk); rst=1;
        repeat(20) @(negedge clk);
        if(ena||wna||ready||toggle) $fatal(1,"Reset full interpreted as real full");
        full=0;
        repeat(30) @(negedge clk);
        if(ena||wna||ready) $fatal(1,"Spurious transfer while filling");
        frame(0);
        frame(10000);
        // Reset again with FIFO full forced high: must wait for LOW again.
        rst=0; full=1;
        repeat(5) @(negedge clk); rst=1;
        repeat(20) @(negedge clk);
        if(ena||wna||ready||toggle) $fatal(1,"Repeated reset full caused write");
        frame(20000);
        $display("PASS Write_Ctrl: reset-full guard, repeated reset, 3 frames, 6144 exact RAM writes and pops, no extra last pop");
        $finish;
    end
    initial begin #1000000; $fatal(1,"Timeout"); end
endmodule
