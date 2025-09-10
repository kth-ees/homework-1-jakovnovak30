module ArithmeticRightShifter_tb();

  logic [4:0] in, out;
  logic [1:0] shift;
  ArithmeticRightShifter #(.N(5)) UUT(
    .input_data(in),
    .control(shift),
    .shifted_result(out)
    );
  initial begin
    in = 5'b10110;
    shift = 2;
    #10;
    shift = 1;
    #10;
    in = 5'b00110;
    shift = 2;
    #10;
  end
endmodule
