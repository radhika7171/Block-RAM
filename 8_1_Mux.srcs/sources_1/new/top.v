`timescale 1ns / 1ps
//module m81(out, D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2);
//input wire D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2;
//output reg out;
//always@(*)
//begin
//case({S0,S1,S2})
//3'b000: out=D0;
//3'b001: out=D1;
//3'b010: out=D2;
//3'b011: out=D3;
//3'b100: out=D4;
//3'b101: out=D5;
//3'b110: out=D6;
//3'b111: out=D7;
//default: out=1'b0;
//endcase
//end
//endmodule

module top(in,sel,out);
input [7:0]in;
input [2:0] sel;
output reg out;

always@(sel)begin
case(sel)
3'd0 : out = in[0];
3'd1 : out = in[1];
3'd2 : out = in[2];
3'd3 : out = in[3];
3'd4 : out = in[4];
3'd5 : out = in[5];
3'd6 : out = in[6];
3'd7 : out = in[7];
default : out = 3'dx;
endcase;
end;
endmodule
