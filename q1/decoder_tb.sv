module decoder_tb();

logic [3:0] in = 0;
logic [15:0] out;
decoder UUT(.binary(in), .one_hot(out));

initial begin
  #10;
  in = 5;
  #10;

  in = 7;
  #10;

  in = 11;
  #10;
end

endmodule
