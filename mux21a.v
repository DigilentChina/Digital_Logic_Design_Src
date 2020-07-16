module mux21a(
  input wire a,
  input wire b,
  input wire s,
  output wire y
);

  assign y = ~ s & a | s & b;

endmodule