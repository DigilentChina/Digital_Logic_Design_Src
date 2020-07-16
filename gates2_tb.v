module gates2_tb;
  reg a,b;
  wire[5:0] y;
  gates2 uut(a,b,y);
  initial
    begin
      a = 0;b = 0;#100;
      a = 0;b = 1;#100;
      a = 1;b = 0;#100;
      a = 1;b = 1;#100;
    end
endmodule