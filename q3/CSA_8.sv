module CSA_8(
    input  logic [7:0] A, B,
    output logic [7:0] sum,
    output logic carry
  );

  logic [3:0] sum1, sum2;
  logic carry1;
  adder_4 adder1(
      .A(A[3:0]), .B(B[3:0]),
      .carry_in(0),
      .sum(sum1),
      .carry(carry1)
    );

  adder_4 adder2(
      .A(A[7:4]), .B(B[7:4]),
      .carry_in(carry1),
      .sum(sum2),
      .carry(carry)
    );

  assign sum = {sum2, sum1};

endmodule
