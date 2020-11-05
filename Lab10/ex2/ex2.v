module ex2
(
	i_bit1,
	i_bit2,
	cin,
	cout,
	sum
);

input i_bit1;
input i_bit2;
input cin;
output sum;
output cout;
assign sum = i_bit1 ^ i_bit2 ^ cin;
assign cout = (i_bit1 & i_bit2) | ((i_bit1 ^ i_bit2) & cin);
endmodule