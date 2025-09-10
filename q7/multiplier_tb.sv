module multiplier_tb();

logic [4:0] in1, in2;
logic [9:0] out;
multiplier #(.N(5)) UUT(in1, in2, out);
initial begin
  in1 = 2; in2 = 0;
  #10;
  in1 = 4; in2 = 5;
  #10;
  in1= 4; in2 = 8;
  #10;
end

endmodule
