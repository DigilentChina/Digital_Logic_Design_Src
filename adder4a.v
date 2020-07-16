module adder4a(
  input wire [3:0] a,
  input wire [3:0] b,
  output wire [3:0] s,
  output wire cf
);
  wire [4:0] c;
  assign c[0] = 0;
  assign s = a^b^c[3:0];
  assign c[4:1] = a&b|c[3:0]&(a^b);
  assign cf = c[4];
endmodule