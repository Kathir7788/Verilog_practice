module bidirectional_shift(
    input clk,
    input rst,
    input dir,
    input serial_in,
    output reg [3:0] q
);

always @(posedge clk) begin

    if(rst)
        q <= 0;

    else if(dir)
        q <= {q[2:0], serial_in};

    else
        q <= {serial_in, q[3:1]};

end

endmodule
