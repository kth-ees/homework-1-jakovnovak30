module multiplier #(parameter unsigned N) (
    input  logic [1*N-1:0] a, b,
    output logic [2*N-1:0] product
  );

  logic [N-1:0][2*N-1:0] temp_sum;
  always_comb begin
    product = '0;
    for(int i=0;i < N;i++)
      temp_sum[i] = '0;

    for(int i=0;i < N;i++) begin
      for(int j=0;j < N;j++) begin
        if(a[i] == 1) product[i+j] += b[j];
      end
    end
  end
endmodule
