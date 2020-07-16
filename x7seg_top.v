module x7seg_top(
  input wire clk,
  output wire [6:0] a_to_g,
  output wire [3:0] an,
  output wire dp
);
  wire [15:0] x;
  assign x = 'h1234;
  x7seg X1(.x(x),
           .clk(clk),
		   .a_to_g(a_to_g),
		   .an(an),
		   .dp(dp)
  );
endmodule