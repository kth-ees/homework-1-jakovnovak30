module sum_prod #(parameter unsigned N) (
    input  logic [N-1:0] X [5:0],
    output logic [2*N+2:0] result
  );

  logic [2*N-1:0] products [2:0];
  genvar k;
  generate
    for (k=0;k < 3;k++) begin
      assign products[k] = X[2*k] * X[2*k + 1];
    end
  endgenerate

  assign result = products[0] + products[1] + products[2];

endmodule
