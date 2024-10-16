module lab5_3 (
	input wire clk,
	input wire [3:0] swa,
	input wire [3:0] swb,
    
	output reg [7:0] q);

	reg [7:0] tmp_q;
	
	lab5_2 #(
		.DATA_WIDTH(4)
		) lab5_2 (
		.clk(clk),
		.da(swa),
		.db(swb),
		.q(tmp_q)
		);
		
	assign q = ~tmp_q;

endmodule
