module decoder(
	input [5:0] opcode, funct,
	output MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite,
 	output [2:0] ALUControl
);

	wire [1:0] ALUOp;

	main_decoder hahahha(opcode, MemtoReg, MemWrite, Branch, ALUSrc, RedDst, RegWrite, ALUOp);
	alu_decoder ahahah(ALUOp, funct, ALUControl);

endmodule
