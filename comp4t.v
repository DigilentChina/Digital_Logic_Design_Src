module comp4t(
  input wire [3:0] x,
  input wire [3:0] y,
  output reg gt,
  output reg eq,
  output reg lt
);
// internal signals
  reg [4:0] G;
  reg [4:0] L;
  reg [4:1] E;
  integer i;
  
  always @ (*) begin
    G[0] = 0;
	L[0] = 0;
	for(i=0;i<4;i=i+1)
	  comp1bit(x[i],y[i],G[i],L[i],G[i+1],L[i+1],E[i+1]);
	  gt = G[4];
	  eq = E[4];
	  lt = L[4];
  end
  task comp1bit(
	input x,
	input y,
	input Gin,
	input Lin,
	output Gout,
	output Lout,
	output Eout
  );
    begin
	  Gout = x & ~y | x & Gin | ~y & Gin;
	  Eout = ~x & ~y & ~Gin & ~Lin | x & y & ~Gin & ~Lin;
	  Lout = ~x & y | ~x & Lin | y & Lin;
	end
  endtask
endmodule