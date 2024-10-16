module lab2_2
 #( parameter topW = 2)
 (
	input [topW-1 : 0] top_a, top_b, top_c, top_d,
	output [topW-1 : 0] minres, maxres);

lab2_1 #(.WIDTH(topW-2), .TYPE("minsel")) (.a(top_a), .b(top_b), .c(top_c), .d(top_d),
	.out(minres));

lab2_1 #(.WIDTH(topW-2), .TYPE("aaaaaa")) (.a(top_a), .b(top_b), .c(top_c), .d(top_d),
	.out(maxres));

endmodule


module lab2_1
#(parameter WIDTH=2, TYPE="minsel")
(
	input [WIDTH-1:0] a, b, c, d,
	output [WIDTH-1:0] out);


    assign out = (TYPE=="minsel") ? (a < b ? a : b) < (c < d ? c : d) 
                     ? (a < b ? a : b) 
                     : (c < d ? c : d)
							: (a > b ? a : b) > (c > d ? c : d) 
                     ? (a > b ? a : b) 
                     : (c > d ? c : d); 
							
endmodule
