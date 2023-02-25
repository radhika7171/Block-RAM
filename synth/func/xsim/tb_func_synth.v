// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb 25 02:25:41 2023
// Host        : DESKTOP-0BM3N1I running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               {C:/Users/Hp/Desktop/Desktop/Education/Certification/Electronics Design/Verilog for an FPGA Engineer with
//               Xilinx Vivado Design Suite/8_1_Mux/8_1_Mux.sim/sim_1/synth/func/xsim/tb_func_synth.v}
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module top
   (in,
    sel,
    out);
  input [7:0]in;
  input [2:0]sel;
  output out;

  wire [7:0]in;
  wire [7:0]in_IBUF;
  wire out;
  wire out_OBUF;
  wire out_OBUF_inst_i_2_n_0;
  wire out_OBUF_inst_i_3_n_0;
  wire [2:0]sel;
  wire [2:0]sel_IBUF;

  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[0]_inst 
       (.I(in[0]),
        .O(in_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[1]_inst 
       (.I(in[1]),
        .O(in_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[2]_inst 
       (.I(in[2]),
        .O(in_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[3]_inst 
       (.I(in[3]),
        .O(in_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[4]_inst 
       (.I(in[4]),
        .O(in_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[5]_inst 
       (.I(in[5]),
        .O(in_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[6]_inst 
       (.I(in[6]),
        .O(in_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \in_IBUF[7]_inst 
       (.I(in[7]),
        .O(in_IBUF[7]));
  OBUF out_OBUF_inst
       (.I(out_OBUF),
        .O(out));
  MUXF7 out_OBUF_inst_i_1
       (.I0(out_OBUF_inst_i_2_n_0),
        .I1(out_OBUF_inst_i_3_n_0),
        .O(out_OBUF),
        .S(sel_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    out_OBUF_inst_i_2
       (.I0(in_IBUF[3]),
        .I1(in_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(in_IBUF[1]),
        .I4(sel_IBUF[0]),
        .I5(in_IBUF[0]),
        .O(out_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    out_OBUF_inst_i_3
       (.I0(in_IBUF[7]),
        .I1(in_IBUF[6]),
        .I2(sel_IBUF[1]),
        .I3(in_IBUF[5]),
        .I4(sel_IBUF[0]),
        .I5(in_IBUF[4]),
        .O(out_OBUF_inst_i_3_n_0));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sel_IBUF[2]_inst 
       (.I(sel[2]),
        .O(sel_IBUF[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
