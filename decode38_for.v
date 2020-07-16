module decode38_for(
  input wire [2:0] a,
  output reg [7:0] y
);
  integer i;
  always @ (*)
    for(i=0;i<=7;i=i+1)
	  if(a==i)
	    y[i] = 1;
	  else
	    y[i] = 0;
endmodule