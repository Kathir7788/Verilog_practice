module piso(
    input clk,
    input rst,
    input load,
    input [3:0] data,
    output serial_out
);

reg [3:0] q;

always @(posedge clk) begin

    if(rst)
        q <= 0;

    else if(load)
        q <= data;

    else
        q <= {q[2:0], 1'b0};

end

assign serial_out = q[3];

endmodule
