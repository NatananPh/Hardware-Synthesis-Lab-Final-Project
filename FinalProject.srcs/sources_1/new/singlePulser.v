`timescale 1ns / 1ps
module singlePulser(
    output reg d,
    input pushed,
    input clk
);
    
    reg state;    
    initial state=0;
    
    always @(posedge clk) begin
    d=0;
    case({pushed,state})
        2'b00: ;
        2'b01: state=0;
        2'b10: begin state=1; d=1; end
        2'b11: ;
    endcase
    end
endmodule
