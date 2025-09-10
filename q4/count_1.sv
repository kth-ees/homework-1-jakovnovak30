module count_1(
    input  logic [3:0] a,
    output logic [2:0] out
  );

  always_comb begin
    out = 0;
    for (logic [2:0] i = 0; i < 4;i++) begin
      out += a[i];
    end
  end

endmodule
