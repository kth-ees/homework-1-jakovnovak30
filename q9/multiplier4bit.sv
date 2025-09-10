module multiplier4bit(
    input  logic [3:0] in_a, in_b,
    output logic [7:0] out
  );

  assign out = in_a * in_b;

endmodule
