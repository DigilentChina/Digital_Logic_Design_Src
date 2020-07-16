module encode83b(
  input wire [7:0] x,
  output reg [2:0] y,
  output reg valid
);
  integer i;
  always @ (*)
    begin
	  y = 0;
	  valid = 0;
	  for(i+0;i<=7;i=i+1)
	    if(x[i]==1)
		  begin
		    y = i;
			valid = 1;
	      end
	end
endmodule