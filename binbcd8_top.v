module binbcd8_top(
  input wire clk,
  input wire btn,
  input wire [7:0] sw,
  input wire [7:0] ld,
  output wire [6:0] a_to_g,
  output wire [3:0] an,
  output wire dp
);
  wire [15:0] x;
  wire [9:0] p;
  //串联0和binbcd8的输出
  assign x = {6'b000000,p};
  //在LED上显示开关的二进制值
  assign ld = sw;
  //在7段数码管上显示开关对应的十进制值
  binbcd8 B1(.b(sw),
             .p(p)
  );
  x7segb X2(.x(x),
            .clk(clk),
			.clr(btn),
			.a_to_g(a_to_g),
			.an(an),
			.dp(dp)
  );
endmodule