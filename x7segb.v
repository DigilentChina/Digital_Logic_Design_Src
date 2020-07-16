module x7segb(
  input wire [15:0] x,
  input wire clk,
  input wire clr,
  output reg [6:0] a_to_g,
  output reg [3:0] an,
  output wire dp
);
  wire [1:0] s;
  reg [3:0] digit;
  wire [3:0] aen;
  reg [19:0] clkdiv;
  assign dp = 1;
  assign s = clkdiv[19:18];  //count every 5.2ms
  assign aen[3] = x[15]|x[14]|x[13]|x[12];
  assign aen[2] = x[15]|x[14]|x[13]|x[12]|x[11]|x[10]|x[9]|x[8];
  assign aen[1] = x[15]|x[14]|x[13]|x[12]|x[11]|x[10]|x[9]|x[8]|x[7]|x[6]|x[5]|x[4];
  assign aen[0] = 1;
  //4-bits 4mux1
  always @ (*)
    case(s)
      0 : digit = x[3:0];
	  1 : digit = x[7:4];
	  2 : digit = x[11:8];
	  3 : digit = x[15:12];
	  default : digit = x[3:0];
	endcase
  //hex7seg
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
	  default : a_to_g = 7'b0000001;  //0
	endcase
  //digit select
  always @ (*)
    begin
	  an = 4'b1111;
	  if(aen[s]==1)
	    an[s] = 0;
	end
  //clock divider
  always @ (posedge clk or posedge clr)
    begin
	  if(clr==1)
	    clkdiv <= 0;
	  else
	    clkdiv <= clkdiv + 1;
	end
endmodule
	
    