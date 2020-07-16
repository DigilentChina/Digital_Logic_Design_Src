module mux21c(
  input wire a,
  input wire b,
  input wire s,
  output reg y
);

  assign y = s ? b:a;
  
endmodule