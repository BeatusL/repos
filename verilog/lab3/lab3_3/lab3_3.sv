module lab3_3
#(parameter w = 4)
(
	input [w-1:0] a, b,
	input sel,
	output reg [w-1:0] res);


always @* begin
	if(sel)
		res = a;
	else
		res = b;
end

endmodule
