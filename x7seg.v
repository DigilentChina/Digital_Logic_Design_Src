module x7seg(
  input wire [15:0] x,
  input wire clk,
  output reg [6:0] a_to_g,
  output reg [3:0] an,
  output wire dp
);
  wire [1:0] s;
  reg [3:0] digit;
  reg [19:0] clkdiv;
  assign dp = 1;
  assign s = clkdiv[19:18];
  assign aen = 4'b1111;
  always @ (*)
  case(s)
    0 : digit = x[3:0];
	1 : digit = x[7:4];
	2 : digit = x[11:8];
	3 : digit = x[15:12];
	default : digit = x[3:0];
  endcase
  always @ (*)
  case(digit)
    0 : a_to_g = 7'b0000001;
	1 : a_to_g = 7'b1001111;
	2 : a_to_g = 7'b0010010;
	3 : a_to_g = 7'b0000110;
	4 : a_to_g = 7'b1001100;
	5 : a_to_g = 7'b0100100;
	6 : a_to_g = 7'b0100000;
	7 : a_to_g = 7'b0001111;
	8 : a_to_g = 7'b0000000;
	9 : a_to_g = 7'b0000100;
	'hA : a_to_g = 7'b0001000;
	'hB : a_to_g = 7'b1100000;
	'hC : a_to_g = 7'b0110001;
	'hD : a_to_g = 7'b1000010;
	'hE : a_to_g = 7'b0110000;
	'hF : a_to_g = 7'b0111000;
	default : a_to_g = 7'b0000001;
  endcase
  always @ (*)
  begin
    an = 4'b1111;
	an[s] = 0;
  end
  always @ (posedge clk)
    begin
	  clkdiv <= clkdiv + 1;
	end
endmodule