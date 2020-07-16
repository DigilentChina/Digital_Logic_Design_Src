module mux21_4bitb(
	input wire [3:0] a,
	input wire [3:0] b,
	input wire s,
	output reg [3:0] y
);
  always @ (*)
  if(s == 0)
    y = a;
  else
    y = b;
endmodule