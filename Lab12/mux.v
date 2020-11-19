module mux
(
	input     [31:0] ans1, ans2, ans3,  
	input	    [5:0] funct,
   output    [4:0] rd
);

reg [31:0] tmp;
	
always@ (*) begin
	case (funct)
		6'b100000 : begin
			glob.r[rd] <= ans1;
			end
		6'b100010 : begin
			glob.r[rd] <= ans2;
			end
		6'b000010 : begin
			glob.r[rd] <= ans3;
			end
		endcase
end

endmodule