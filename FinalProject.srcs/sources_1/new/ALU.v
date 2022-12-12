`timescale 1ns / 1ps

module ALU(
           input [15:0] A,B,  // ALU 16-bit Inputs                 
           input [1:0] oper,// math operation on ALU
           input clk,
           output [15:0] S, // ALU 16-bit Output
           output div0
    );
    
    assign div0 = (B==0 && oper==2'b11);
    reg [15:0] res = 0;
    assign S = res; // ALU out
    
    always @(posedge clk) begin
        case(oper)
         2'b00: // Addition
            res <= A + B ; 
         2'b01: // Subtraction
            res <= A - B ;
         2'b10: // Multiplication
            res <= A * B;
         2'b11: // Division
            res <= A / B;
            default: res = 16'sd0000 ; 
        endcase
    end

endmodule
