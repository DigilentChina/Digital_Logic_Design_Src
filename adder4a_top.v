module adder4a_top(
  input wire clk,
  input wire btn,
  input wire [7:0] sw,
  output wire [6:0] a_to_g,
  output wire [3:0] an,
  output wire dp
);
  wire [15:0] x;
  wire cf;
  wire [3:0] s;
  assign x[15:12] = sw[7:4];
  assign x[11:8] = sw[3:0];
  assign x[7:4] = {3'b000,cf};
  assign x[3:0] = s;
  adder4a A1 (.a(sw[7:4]),
              .b(sw[3:0]),
			  .s(s),
			  .cf(cf)  
  );
  x7seg X1 (.x(x),
            .clk(clk),
			.clr(btn),
			.a_to_g(a_to_g),
			.an(an),
			.dp(dp)
  );
endmodule