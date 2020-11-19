module add
(
	input [4:0] rt, rs,
	output [31:0] ans1
);

assign ans1 = glob.r[rt] + glob.r[rs];

endmodule