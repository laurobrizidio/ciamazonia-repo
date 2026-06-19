module somador(
	input logic clk,
	input logic A,
	input logic B,
	input logic Cin,

	output logic Sum,
	output logic Cout

);

	always_ff @(posedge clk) begin
		Sum <= A ^ B ^ Cin;
		Cout <= (A&B) | (Cin & (A^B));

	end
endmodule
