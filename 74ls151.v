module mux_8_to_1(
  input G_n,S2,S1,S0,D7,D6,D5,D4,D3,D2,D1,D0,
  output Y,Y_n
);
  reg Y_r;
  wire [2:0] S;
  assign S = {S2,S1,S0};
  always @ (*) begin
    if(G_n)
	  Y_r <= 1'bz;
	else
	  case(S)
	    3'b000 : Y_r <= D0;
		3'b001 : Y_r <= D1;
		3'b010 : Y_r <= D2;
		3'b011 : Y_r <= D3;
		3'b100 : Y_r <= D4;
		3'b101 : Y_r <= D5;
		3'b110 : Y_r <= D6;
		3'b111 : Y_r <= D7;
	  endcase
  end
  assign Y = Y_r;
  assign Y_n = ~Y;
endmodule		