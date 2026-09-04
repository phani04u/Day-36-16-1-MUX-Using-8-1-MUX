`timescale 1ns / 1ps
module mux_16_8_tb;
reg  [15:0] I;
reg S0,S1,S2,S3;
wire G;
mux_16_8 uut(
.I(I),
.S0(S0),
.S1(S1),
.S2(S2),
.S3(S3),
.G(G)
);
integer i,j;
initial begin
    I = 16'b0000000000010111;
$monitor (" S2 = %b | S1 = %b | S0 = %b | S3 = %b | I = %b | G = %G",S2,S1,S0,S3,I,G);
for(j=0;j<2;j=j+1) begin 
 S3 = j;
     for(i=0;i<8;i=i+1) begin
       {S2,S1,S0} = i;
       #10;
     end
 end
 $finish;
 end
endmodule
