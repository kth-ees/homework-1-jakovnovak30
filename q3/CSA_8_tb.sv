module CSA_8_tb();

logic [7:0] A = 0, B = 0;
logic [7:0] sum;
logic carry;

CSA_8 UUT(
    .A(A), .B(B),
    .sum(sum), .carry(carry)
  );

initial begin
  #10;
  A = 5; B = 6;
  #10;
  A = 10; B = 6;
  #10;
  A = 160; B = 150; // overflow
  #10;
  A = 100; B = 120;
  #10;
end

endmodule
