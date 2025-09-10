module multiplier (
  input  logic [15:0]a,b,
  output logic [31:0] product
);

  // slice b into 4 bit chunks
  logic [3:0] b_sliced [4];
  genvar i;
  generate
  for(i = 0;i < 4;i++) begin
    assign b_sliced[i] = b[(i+1)*4-1 : i*4];
  end
  endgenerate

  // complete the module
  // P = A3A2A1A0 * B3B2B1B0
  //   = A3A2A1A0 * B0 +
  //    (A3A2A1A0 * B1 << 4) +
  //           (... B2 << 8) +
  //           (... B3 << 16)

  always_comb begin
    product = 0;
    for(int i=0;i < 4;i++) begin
      product += (a * b_sliced[i] << i*4);
    end
  end

endmodule
