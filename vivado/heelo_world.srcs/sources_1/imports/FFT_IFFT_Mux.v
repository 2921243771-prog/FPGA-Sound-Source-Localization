`timescale 1ns / 1ps

// Two clients share ONE existing FFT IP. select_ifft connects to GCC busy.
// Switch ownership only between complete transforms. No internal storage.
module FFT_IFFT_Mux (
    input wire select_ifft,
    input wire [7:0] forward_config_tdata,
    input wire forward_config_tvalid,
    output wire forward_config_tready,
    input wire [47:0] forward_data_tdata,
    input wire forward_data_tvalid,
    input wire forward_data_tlast,
    output wire forward_data_tready,
    output wire [47:0] forward_result_tdata,
    output wire forward_result_tvalid,
    output wire forward_result_tlast,
    input wire forward_result_tready,

    input wire [7:0] inverse_config_tdata,
    input wire inverse_config_tvalid,
    output wire inverse_config_tready,
    input wire [47:0] inverse_data_tdata,
    input wire inverse_data_tvalid,
    input wire inverse_data_tlast,
    output wire inverse_data_tready,
    output wire [47:0] inverse_result_tdata,
    output wire inverse_result_tvalid,
    output wire inverse_result_tlast,
    input wire inverse_result_tready,

    output wire [7:0] core_config_tdata,
    output wire core_config_tvalid,
    input wire core_config_tready,
    output wire [47:0] core_data_tdata,
    output wire core_data_tvalid,
    output wire core_data_tlast,
    input wire core_data_tready,
    input wire [47:0] core_result_tdata,
    input wire core_result_tvalid,
    input wire core_result_tlast,
    output wire core_result_tready
);
    assign core_config_tdata = select_ifft ? inverse_config_tdata : forward_config_tdata;
    assign core_config_tvalid = select_ifft ? inverse_config_tvalid : forward_config_tvalid;
    assign inverse_config_tready = select_ifft && core_config_tready;
    assign forward_config_tready = !select_ifft && core_config_tready;
    assign core_data_tdata = select_ifft ? inverse_data_tdata : forward_data_tdata;
    assign core_data_tvalid = select_ifft ? inverse_data_tvalid : forward_data_tvalid;
    assign core_data_tlast = select_ifft ? inverse_data_tlast : forward_data_tlast;
    assign inverse_data_tready = select_ifft && core_data_tready;
    assign forward_data_tready = !select_ifft && core_data_tready;
    assign forward_result_tdata = core_result_tdata;
    assign forward_result_tlast = core_result_tlast;
    assign forward_result_tvalid = !select_ifft && core_result_tvalid;
    assign inverse_result_tdata = core_result_tdata;
    assign inverse_result_tlast = core_result_tlast;
    assign inverse_result_tvalid = select_ifft && core_result_tvalid;
    assign core_result_tready = select_ifft ? inverse_result_tready : forward_result_tready;
endmodule
