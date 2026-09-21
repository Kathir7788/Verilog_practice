module left_shift(
  input clk,
  input rst,
  input serial_in,
  output reg [3:0]q
);

  always @(posedge clk) begin
    if (rst)
      q <=0;
    else
      q <= {q[2:0], serial_in};
  end
endmodule
