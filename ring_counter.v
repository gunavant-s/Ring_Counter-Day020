`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 09.08.2023 05:58:10
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(input clk,
                    input reset,
                    output reg [3:0]Q);
      
    always @(posedge clk or posedge reset)
    begin
        if(reset)
           Q <= 4'b0;
        else if(clk) 
            Q = {Q[2:0],Q[3]};
    end
            

endmodule
