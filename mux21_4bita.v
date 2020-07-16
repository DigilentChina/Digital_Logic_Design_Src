module mux21_4bita(
	input wire [3:0] a,
	input wire [3:0] b,
	input wire s,
	output wire [3:0] y
);

  assign y = {4{~s}}&a|{4{s}}&b;
  
endmodule