`timescale 1ns / 1ps
// Equal-weight far-field least-squares solution for an equal-sided square.
// 1=top-left, 2=top-right, 3=bottom-left, 4=bottom-right.
// lag_ij = (arrival_i - arrival_j) * Fs. Positive angle is clockwise
// from the board's +Y/front: front=0, right=+90, left=-90 degrees.
module gcc_angle(
    input wire clk, input wire rst, input wire start,
    input wire signed [15:0] lag12, lag13, lag14, lag23, lag24, lag34,
    output wire ready, output reg done, output reg nonzero,
    output reg signed [31:0] angle_deg_q16
);
    wire signed [18:0] h = $signed({{3{lag12[15]}},lag12})
        + $signed({{3{lag14[15]}},lag14}) - $signed({{3{lag23[15]}},lag23})
        + $signed({{3{lag34[15]}},lag34});
    wire signed [18:0] v = -$signed({{3{lag13[15]}},lag13})
        - $signed({{3{lag14[15]}},lag14}) - $signed({{3{lag23[15]}},lag23})
        - $signed({{3{lag24[15]}},lag24});
    wire signed [39:0] h_scaled = $signed({{21{h[18]}},h}) <<< 16;
    wire signed [39:0] v_scaled = $signed({{21{v[18]}},v}) <<< 16;
    reg busy;
    reg signed [39:0] x, y;
    reg signed [31:0] z;
    reg [4:0] iteration;
    function signed [31:0] atan_step;
        input [4:0] i;
        begin
            case(i)
                0: atan_step=2949120; 1: atan_step=1740967;
                2: atan_step=919879; 3: atan_step=466945;
                4: atan_step=234379; 5: atan_step=117304;
                6: atan_step=58666; 7: atan_step=29335;
                8: atan_step=14668; 9: atan_step=7334;
                10: atan_step=3667; 11: atan_step=1833;
                12: atan_step=917; 13: atan_step=458;
                14: atan_step=229; 15: atan_step=115;
                16: atan_step=57; 17: atan_step=29;
                18: atan_step=14; 19: atan_step=7;
                20: atan_step=4; 21: atan_step=2;
                22: atan_step=1; default: atan_step=0;
            endcase
        end
    endfunction
    assign ready = !busy;
    always @(posedge clk) begin
        if (rst) begin
            busy <= 0; done <= 0; nonzero <= 0;
            angle_deg_q16 <= 0; x <= 0; y <= 0; z <= 0; iteration <= 0;
        end else begin
            done <= 0;
            if (!busy && start) begin
                nonzero <= (h != 0 || v != 0);
                iteration <= 0; busy <= 1;
                if (v < 0) begin
                    x <= -v_scaled; y <= -h_scaled;
                    z <= h >= 0 ? 32'sd11796480 : -32'sd11796480;
                end else begin
                    x <= v_scaled; y <= h_scaled; z <= 0;
                end
            end else if (busy) begin
                if (iteration == 23 || y == 0) begin
                    angle_deg_q16 <= z; done <= 1; busy <= 0;
                end else begin
                    if (y > 0) begin
                        x <= x + (y >>> iteration);
                        y <= y - (x >>> iteration);
                        z <= z + atan_step(iteration);
                    end else begin
                        x <= x - (y >>> iteration);
                        y <= y + (x >>> iteration);
                        z <= z - atan_step(iteration);
                    end
                    iteration <= iteration + 1'b1;
                end
            end
        end
    end
endmodule
