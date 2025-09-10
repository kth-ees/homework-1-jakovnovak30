module ArithmeticRightShifter #(parameter unsigned N) (
  input  logic [N-1:0] input_data,
  input  logic [1:0]   control,
  output logic [N-1:0] shifted_result
  );

  initial assert (N >= 4);

  always_comb begin
    shifted_result = input_data >> control;

    for(int i=0; i < control;i++) begin
      shifted_result[N-1-i] = input_data[N-1];
    end
  end
endmodule
