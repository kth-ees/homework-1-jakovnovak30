module decoder(
    input  logic [3:0]  binary,
    output logic [15:0] one_hot
  );

  always_comb begin
    one_hot = '0;
    one_hot[binary] = 1;
  end

endmodule
