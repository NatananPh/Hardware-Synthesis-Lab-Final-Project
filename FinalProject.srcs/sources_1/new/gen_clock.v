`timescale 1ns / 1ps


module gen_clock(
    input clk,
    output targetClk
    );
    wire [18:0] tclk;
    
    assign tclk[0]=clk;
    genvar c;
    generate for(c=0;c<18;c=c+1) begin
        clockDiv fDiv(tclk[c+1],tclk[c]);
    end endgenerate
    
    clockDiv fdivTarget(targetClk,tclk[18]);
endmodule
