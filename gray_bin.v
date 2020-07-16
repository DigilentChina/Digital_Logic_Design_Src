module gray_bin(
  input wire [3:0] g,
  output reg [3:0] b
);
  integer i;
  always @ （*）
  begin
    b[3] = g[3];
	for(i=2;i>=0;i=i-1)
	  b[i] = b[i+1]^g[i];
  end
endmodule