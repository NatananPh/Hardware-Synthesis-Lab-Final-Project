`timescale 1ns / 1ps

module uart(
    input clk,
    input RsRx,
    output [7:0]data_out,
    output received
    );
    
//    reg [7:0] data_out_buffer;
//    wire [7:0] data_out_w;
//    wire received_w;
    wire baud;
    
    
    baudrate_gen baudrate_gen(clk, baud);
    uart_rx receiver(baud, RsRx, received, data_out);
    
//    always@(posedge received_w)
//    begin
//    data_out_buffer<=data_out_w;
//    end
    
//    assign data_out = data_out_buffer;
//    assign received = received_w;
    
endmodule
