`timescale 1ns / 1ps
module Sub_Result(input [7:0] A, input [7:0] B, output [7:0] Out, output b);
	 
wire [7:0] d;
wire [7:0] d1;

Subtractor_8Bit S(A,B,d,b);
Complement2s C(d, d1);

assign Out = (b == 1'b1) ? d1:d;
endmodule
