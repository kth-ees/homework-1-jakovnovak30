module bin2gray_tb();

logic [3:0] in, out;
bin2gray UUT(.binary(in), .gray(out));
initial begin
  in = 0;
  #10;
  in = 5;
  #10;
  in = 12;
  #10;
end

endmodule
