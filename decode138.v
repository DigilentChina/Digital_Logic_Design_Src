module decode138(
  input wire A0,A1,A2,G1,G2,G3,
  output wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7
);
  reg [7:0] y;
  integer i;
  always @ (*)
    if({G1,G2,G3}==3'b100)
	  for(i=0;i<=7;i=i+1)
	    if({A2,A1,A0}==i)
		  y[i] = 0;
		else
		  y[i] = 1;
		else
		  y = 8'hff;
  assign Y0 = y[0];
  assign Y1 = y[1];
  assign Y2 = y[2];
  assign Y3 = y[3];
  assign Y4 = y[4];
  assign Y5 = y[5];
  assign Y6 = y[6];
  assign Y7 = y[7];
endmodule