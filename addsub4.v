module addsub4(
  input wire [3:0] a,
  input wire [3:0] b,
  input wire e,
  output wire [3:0] s,
  output wire cf
);
  wire [4:0] c;
  wire [3:0] bx;
  assign bx = b^{4{e}};
  assign c[0] = e;
  assign s = a^bx^c[3:0];
  assign c[4:1] = a&bx|c[3:0]&(a^bx);
  assign cf = c[4];
endmodule