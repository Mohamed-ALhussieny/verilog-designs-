module reg_syncronus(in,out,clk,rst,clk_en);

 parameter width=18;

 input  [width-1:0] in;
 input  clk,rst,clk_en;
 output reg  [width-1:0] out;



 always @(posedge clk ) begin
 	if (rst) 
 		out<=0;
 		
 	else if(clk_en)
 	    out<=in;
 end
 endmodule 