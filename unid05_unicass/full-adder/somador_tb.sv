module somador_tb;
	logic clk;
	logic A;
	logic B;
	logic Cin;

	logic Sum;
	logic Cout;

// Instancia do Modulo

	somador FA(
		.clk(clk),
		.A(A),
		.B(B),
		.Cin(Cin),
		.Sum(Sum),
		.Cout(Cout)

	);

	//Gerar o clock
	
	always #5 clk = ~clk;

	initial begin
		$dumpfile("test.vcd");
		$dumpvars(0, somador_tb);

	clk = 0;
	A = 0; B = 0; Cin = 0; #10;
	A = 0; B = 0; Cin = 1; #10;
	A = 0; B = 1; Cin = 0; #10;
	A = 0; B = 1; Cin = 1; #10;
	A = 1; B = 0; Cin = 0; #10;
	A = 1; B = 0; Cin = 1; #10;
	A = 1; B = 1; Cin = 0; #10;
	A = 1; B = 1; Cin = 1; #10;

	#20;
	$finish;

end
endmodule
