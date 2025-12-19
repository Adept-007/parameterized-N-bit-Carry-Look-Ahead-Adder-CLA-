`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2025 12:52:28
// Design Name: 
// Module Name: tb
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


module tb();
parameter N=16;
reg [N-1:0] a,b;
wire [N-1:0] s;
wire cout;
reg cin;
n_bit_cla #(.N(N)) dut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
initial begin
$monitor ($time," a=%d b=%d cin=%d sum=%d carryout=%b",a,b,cin,s,cout);
#10 a=10; b=20; cin=0;
#10 a=50; b=70; cin=0;
#10 a=143; b=143; cin=1;
repeat(5) begin
#10 a=$random; b=$random; cin=$random%2;
end
$finish;
end
endmodule
