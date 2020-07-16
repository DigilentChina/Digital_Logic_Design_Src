module two_mux4_1(
  input A,B,
  input G1_n,G2_n,
  input D1_3,D1_2,D1_1,D1_0,
  input D2_3,D2_2,D2_1,D2_0,
  output Y1,Y2
);
// module instantiation
  mux4_1 A1(A,B,G1_n,D1_3,D1_2,D1_1,D1_0,Y1);
  mux4_1 A2(A,B,G2_n,D2_3,D2_2,D2_1,D2_0,Y2);
endmodule
//mux4_1 module
module mux4_1(A,B,G_n,D3,D2,D1,D0,Y);
  input A,B;
  input G_n;
  input D3,D2,D1,D0;
  output Y;
  wire [1:0] S;
  reg Y_r;
  assign S ={B,A};
  always @ (*) begin
    if(G_n)
	  Y_r = 1'bz;
	else
	  case(S)
	    2'b00 : Y_r <= D0;
		2'b01 : Y_r <= D1;
		2'b10 : Y_r <= D2;
		2'b11 : Y_r <= D3;
	  endcase
	end
  assign Y = Y_r;
endmodule