module mux21b(
  input wire a,
  input wire b,
  input wire s,
  output reg y
);

  always @ (a,b,s)
  if (s == 0)
    y = a;
  else
	y = b;

endmodule