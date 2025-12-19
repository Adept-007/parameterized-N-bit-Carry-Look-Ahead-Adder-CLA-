`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2025 12:42:44
// Design Name: 
// Module Name: n_bit_cla
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


module n_bit_cla #(parameter N=16)(a,b,cin,s,cout);
input [N-1:0] a,b;
output [N-1:0] s;
output cout;
input cin;
wire [N:0] carry;
assign cout=carry[N];
assign carry[0]=cin;
wire [N-1:0] G,P;
genvar i;
generate 
for(i=0;i<N;i=i+1) begin
    assign G[i]=a[i]&b[i];
    assign P[i]=a[i]^b[i];
    assign carry[i+1]= G[i] | (P[i] & carry[i]);
    assign s[i]=P[i]^carry[i];
    end
    endgenerate
 
 


endmodule
