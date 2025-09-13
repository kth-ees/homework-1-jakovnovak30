module CSA_8_tb();

logic unsigned [7:0] A = 0, B = 0;
logic unsigned [7:0] sum;
logic carry;

CSA_8 UUT(
    .A(A), .B(B),
    .sum(sum), .carry(carry)
  );

initial begin
  #10;
  A = 5; B = 6;
  #10 assert (A + B == sum && carry == 0);
  A = 10; B = 6;
  #10 assert (A + B == sum && carry == 0);
  A = 160; B = 150; // overflow
  #10 assert (A + B == sum && carry == 1);
  A = 100; B = 120;
  #10 assert (A + B == sum && carry == 0);
  #10;
  A = 8'b10001111; B = 8'b01110001;
  #10 assert (A + B == sum && carry == 1);
end

endmodule
