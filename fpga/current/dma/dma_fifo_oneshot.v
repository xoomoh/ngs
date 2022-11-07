// part of NeoGS project
//
// (c) NedoPC 2007-2013
//
// this is dma "one-shot" fifo: after each 512 bytes both written and read back, it must be initialized by means of 'init'
//

module dma_fifo_oneshot(

	input  wire clk,
	input  wire rst_n,

	input  wire wr_stb, // write strobe: writes data from wd to the current wptr, increments wptr
	input  wire rd_stb, // read strobe: increments rptr

	output wire wdone, // write done - all 512 bytes are written (end of write operation)
	output wire w511,  // write almost done -- at address 511
	output wire rdone, // read done - all 512 bytes are read (end of read operation)
	output wire empty, // fifo empty: when wptr==rptr (rd_stb must not be issued when empty is active, otherwise everytrhing desyncs)

	input  wire [7:0] wd, // data to be written
	output wire [7:0] rd  // data just read from rptr address
);

	reg [9:0] wptr;
	reg [9:0] rptr;

	always @(posedge clk, negedge rst_n)
	if( !rst_n )
		wptr = 10'd0;
	else if( wr_stb )
		wptr <= wptr + 10'd1;

	assign w511 = &wptr[8:0];

	always @(posedge clk, negedge rst_n)
	if( !rst_n )
		rptr = 10'd0;
	else if( rd_stb )
		rptr <= rptr + 10'd1;

	assign wdone = wptr[9];
	assign rdone = rptr[9];
	assign empty = ( wptr==rptr );



	mem512b fifo512_oneshot_mem512b
	(
		.clk(clk),

		.rdaddr(rptr[8:0]),
		.dataout(rd),
		.re(rd_stb),

		.wraddr(wptr[8:0]),
		.datain(wd),
		.we(wr_stb)
	);


endmodule

