`timescale 1ns / 1ps
module mux_16_8(
    input [15:0] I,
    input S0,
    input S1,
    input S2,
    input S3,
    output reg G
    );
reg Y1,Y2;
integer i,j;
always @(*) begin
   Y1 = 1'b0;
   for(i=0;i<8;i=i+1) begin 
       if({S2,S1,S0} ==i) begin
           Y1 = I[i];
        end
   end
   Y2= 1'b0;
   for(j=0;j<8;j=j+1) begin
        if({S2,S1,S0}== j) begin
             Y2 = I[j+8];
          end
   end
   if(S3==1'b0) begin
      G = Y1;
   end
   else begin
     G = Y2;
  end
end
endmodule
