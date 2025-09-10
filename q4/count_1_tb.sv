module count_1_tb();

  logic [3:0] in;
  logic [2:0] out;
  count_1 UUT(.a(in), .out(out));
  initial begin
    in = 0;
    #10;
    in = 4'b0010;
    #10;
    in = 4'b1010;
    #10;
    in = 4'b1111;
    #10;
    in = 4'b0111;
    #10;
  end

endmodule
