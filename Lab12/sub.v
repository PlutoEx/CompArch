module sub
(
	input [4:0] rt, rs,
	output [31:0] ans2
);

assign ans2 = glob.r[rt] - glob.r[rs];

endmodule