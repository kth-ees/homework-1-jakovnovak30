module multiplier_tb;

  logic [15:0] a, b;
  logic [31:0] res;

  multiplier UUT(
    .a(a), .b(b), .product(res)
    );

  initial begin
    for(int i=0;i < 10;i++) begin
      #20; a = $urandom(); b = $urandom();
      #20 assert(a * b == res);
    end
  end

endmodule
