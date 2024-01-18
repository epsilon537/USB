
// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module fifo16x8_show_ahead (
	input wire aclr,
	input wire [7:0] data,
	input wire rdclk,
	input wire rdreq,
	input wire wrclk,
	input wire wrreq,
	output wire [7:0] q,
	output wire rdempty,
	output wire wrfull);

	async_fifo
    #(
        .DSIZE(8),
        .ASIZE(4),
        .FALLTHROUGH("TRUE") // First word fall-through without latency
	) async_fifo_inst (
        .wclk(wrclk),
        .wrst_n(1'b1),
        .winc(wrreq),
        .wdata(data),
        .wfull(wrfull),
        .awfull(),
        .rclk(rdclk),
        .rrst_n(1'b1),
        .rinc(rdreq),
        .rdata(q),
        .rempty(rdempty),
        .arempty()
    );
endmodule
