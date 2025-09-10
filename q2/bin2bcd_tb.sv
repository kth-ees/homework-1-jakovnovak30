module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary = 0;
  logic [3:0] bcd;
  logic carry;

  bin2bcd UUT(binary, bcd, carry);
  initial begin
    #10 binary = 7;
    #10 assert(bcd == 'b0111 && carry == 0);
    #10 binary = 13;
    #10 assert(bcd == 'b0011 && carry == 1);
    #10 binary = 5;
    #10 assert(bcd == 'b0101 && carry == 0);
    #10 binary = 2;
    #10 assert(bcd == 'b0010 && carry == 0);
  end
endmodule
