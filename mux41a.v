module mux41a(
  input wire [3:0] a,
  input wire [1:0] s,
  output wire y
);

//internal signals
wire v;  //output of mux M1
wire w;  //output of mux M2

//moudle instantiation
mux21b M1 (.a(a[0]),
	       .b(a[1]),
		   .s(s[0]),
		   .y(v)
);
mux21b M2 (.a(a[2]),
	       .b(a[3]),
		   .s(s[0]),
		   .y(w)
);
mux21b M3 (.a(v),
	       .b(w),
		   .s(s[1]),
		   .y(y)  
);

endmodule