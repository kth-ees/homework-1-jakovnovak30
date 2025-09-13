module CSA_8(
    input  logic [7:0] A, B,
    output logic [7:0] sum,
    output logic carry
  );

  logic [3:0] sum1, sum2_1, sum2_0;
  logic c_3, c_7_1, c_7_0;
  adder_4 adder1(
      .A(A[3:0]), .B(B[3:0]),
      .carry_in(0),
      .sum(sum1),
      .carry(c_3)
    );

  adder_4 adder2_0(
      .A(A[7:4]), .B(B[7:4]),
      .carry_in(0),
      .sum(sum2_0),
      .carry(c_7_0)
    );
  adder_4 adder2_1(
      .A(A[7:4]), .B(B[7:4]),
      .carry_in(1),
      .sum(sum2_1),
      .carry(c_7_1)
    );

  assign sum = {c_3 ? sum2_1 : sum2_0, sum1};
  assign carry = c_3 ? c_7_1 : c_7_0;

endmodule
