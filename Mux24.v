`timescale 1ns / 1ps
module Mux24(input [22:0] A, input [22:0] B, input S, output [23:0] Out);
	 
genvar i;

generate
begin
  	for(i=0;i<23;i = i + 1) begin
    	    Mux M(A[i],B[i],S,Out[i]);
  	end
end
endgenerate

assign Out[23] = 1'b1;

endmodule
