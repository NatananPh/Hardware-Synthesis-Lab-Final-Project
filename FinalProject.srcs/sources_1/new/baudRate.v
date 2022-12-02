`timescale 1ns / 1ps
module baudRate(
    input clk,
    output reg baud
);

    reg [9:0] counter;
    always @(posedge clk) begin
        counter = counter + 1;
        if (counter == 306) begin counter = 0; baud = ~baud; end
    end
endmodule
