module mux21_4bitc(
	input wire [3:0] a,
	input wire [3:0] b,
	input wire s,
	output wire [3:0] y
);

  assign y = s ? b:a;
  
endmodule