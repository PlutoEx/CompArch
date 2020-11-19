module ex1
(
	input     [31:0] rs, rt, 
	input	    [4:0] shamt, 
	input	    [5:0] funct,
   output    [31:0] rd
);

	wire [31:0] ans1, ans2, ans3;
	
	add add (rs, rt, ans1);
	sub sub (rs, rt, ans2);
	srl srl (rt, shamt, ans3);
		
	mux mux (ans1, ans2, ans3, funct, rd);
	
endmodule
