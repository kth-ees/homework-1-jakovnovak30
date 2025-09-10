module full_adder(
    input  logic a, b, c_in,
    output logic c_out, s
  );
  logic s1, c1, c2;
  half_adder ha1(a, b, c1, s1);
  half_adder ha2(s1, c_in, c2, s);
  assign c_out = c1 | c2;
endmodule
