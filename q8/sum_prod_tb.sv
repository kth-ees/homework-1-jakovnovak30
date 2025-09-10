module sum_prod_tb();

logic [3:0] inputs [5:0] = { 1, 2, 3, 4, 5, 6 };
logic [10:0] res;
sum_prod #(4) UUT(inputs, res);
initial begin
  #10;
end

endmodule
