module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  // …
  // Add your description here
  // …
  logic [3:0] output_table [16][2] = {
    {4'b0000, 0}, {4'b0001, 0}, {4'b0010, 0}, {4'b0011, 0},
    {4'b0100, 0}, {4'b0101, 0}, {4'b0110, 0}, {4'b0111, 0},
    {4'b1000, 0}, {4'b1001, 0}, {4'b0000, 1}, {4'b0001, 1},
    {4'b0010, 1}, {4'b0011, 1}, {4'b0100, 1}, {4'b0101, 1} };

  assign bcd = output_table[binary][0];
  assign carry = output_table[binary][1];
endmodule
