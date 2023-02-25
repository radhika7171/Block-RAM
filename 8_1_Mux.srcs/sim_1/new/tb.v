`timescale 1ns / 1ps

//module tb();
//reg D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2;
//wire out;
//m81 dut(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .S0(S0), .S1(S1), .S2(S2), .out(out)); 


//initial 
//begin
//D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b0; S1=1'b0; S2=1'b0; 
//#500 $finish; 
//end 
//always #1 D0=~D0;
//always #2 D1=~D1;
//always #3 D2=~D2;
//always #4 D3=~D3;
//always #5 D4=~D4;
//always #6 D5=~D5;
//always #7 D6=~D6;
//always #8 D7=~D7;
//always #9 S0=~S0;
//always #10 S1=~S1;
//always #11 S2=~S2;
//endmodule;  




module tb();
reg [2:0]sel;
reg[7:0] in;
wire out;
top dut(.out(out), .in(in), .sel(sel));
//always@(sel)begin
//case(sel)
//3'd0 : out = in[0];
//3'd1 : out = in[1];
//3'd2 : out = in[2];
//3'd3 : out = in[3];
//3'd4 : out = in[4];
//3'd5 : out = in[5];
//3'd6 : out = in[6];
//3'd7 : out = in[7];
//default : out = 3'dx;
initial begin
//initialize inputs

in = 8'b10110110; 
//if sel input is 0 , out = 1
//input is 1, out = 0
#2 sel = 3'b000;
#2 sel = 3'b001;
#2 sel = 3'b010;
#2 sel = 3'b011;
#2 sel = 3'b100;
#2 sel = 3'b101;
#2 sel = 3'b110;
#2 sel = 3'b111;
end
initial $monitor("time=%g, out= %b, in =%b, sel = %b", $time, out, in, sel);
initial #30 $finish;
endmodule
