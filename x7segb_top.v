module x7segb_top(
  input wire clk,
  input wire btn,
  input wire [15:0] sw,
  output wire [6:0] a_to_g,
  output wire [3:0] an,
  output wire dp
);
  x7segb X2(.x(sw),
            .clk(clk),
			.clr(btn),
			.a_to_g(a_to_g),
			.an(an),
			.dp(dp)
  );
endmodule