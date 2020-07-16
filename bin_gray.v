module bin_gray(
  input wire [3:0] b,
  output wire [3:0] g
);
  assign g[3] = b[3];
  assign g[2:0] = b[3:1]^b[2:0];
endmodule