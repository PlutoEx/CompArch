module srl
(
	input [4:0] rt, shamt,
	output [31:0] ans3
);

assign ans3 = glob.r[rt] >> shamt;

endmodule