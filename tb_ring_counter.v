`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 09.08.2023 06:41:53
// Design Name: 
// Module Name: tb_ring_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_ring_counter;
    reg clk;
    reg reset;
    wire [3:0] Q;
    
    ring_counter DUT(.clk(clk),
                     .reset(reset),
                     .Q(Q)
                     );
    
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
    end
    
    always #5 clk = ~clk;
           
endmodule
