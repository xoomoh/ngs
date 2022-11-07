// part of NeoGS project (c) 2007-2008 NedoPC
//
// mem512b is 512 bytes synchronous memory, which maps directly to the EAB memory block of ACEX1K.
// rdaddr is read address, dataout is the data read. Data is read with 1-clock latency, i.e. it
//  appears after the positive clock edge, which locked rdaddr.
// wraddr is write address, datain is data to be written. we enables write to memory: when it
//  locks as being 1 at positive clock edge, data contained at datain is written to wraddr location.
//
// clk     __/``\__/``\__/``\__/``\__/``
// rdaddr     |addr1|addr2|
// dataout          |data1|data2|
// wraddr           |addr3|addr4|
// datain           |data3|data4|
// we      _________/```````````\_______
//
// data1 is the data read from addr1, data2 is read from addr2
// data3 is written to addr3, data4 is written to addr4
//
// simultaneous write and read to the same memory address lead to undefined read data.

module mem512b
(
	input  wire clk,

	input  wire re,
	input  wire [8:0] rdaddr,
	output reg  [7:0] dataout,

	input  wire we,
	input  wire [8:0] wraddr,
	input  wire [7:0] datain
);

	reg [7:0] mem[0:511]; // memory block



	always @(posedge clk)
	if( re )
		dataout <= mem[rdaddr];

	always @(posedge clk)
	if( we )
		mem[wraddr] <= datain;

endmodule

