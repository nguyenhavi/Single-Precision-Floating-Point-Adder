`timescale 1ns / 1ps
module Mux_8(input [7:0] A, input [7:0] B, input C, output [7:0] Out);
	 
genvar j;
 
generate 
begin
	for(j = 0; j <= 7; j = j + 1) begin
		Mux M(A[j],B[j],C,Out[j]);
	end
end
endgenerate

endmodule
