// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Nov 22 10:44:15 2020
// Host        : DESKTOP-76SO0TG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/hlocal/TOC_PR3/TOC_PR3.sim/sim_1/impl/timing/xsim/tb_mult8_time_impl.v
// Design      : mult8b
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "9293e798" *) 
(* NotValidForBitStream *)
module mult8b
   (X,
    Y,
    Z);
  input [3:0]X;
  input [3:0]Y;
  output [7:0]Z;

  wire [3:0]X;
  wire [3:0]X_IBUF;
  wire [3:0]Y;
  wire [3:0]Y_IBUF;
  wire [7:0]Z;
  wire [7:0]Z_OBUF;
  wire \Z_OBUF[3]_inst_i_3_n_0 ;
  wire \Z_OBUF[4]_inst_i_2_n_0 ;
  wire \Z_OBUF[7]_inst_i_3_n_0 ;
  wire \Z_OBUF[7]_inst_i_6_n_0 ;
  wire [5:3]a;
  wire [6:4]a__0;

initial begin
 $sdf_annotate("tb_mult8_time_impl.sdf",,,,"tool_control");
end
  IBUF \X_IBUF[0]_inst 
       (.I(X[0]),
        .O(X_IBUF[0]));
  IBUF \X_IBUF[1]_inst 
       (.I(X[1]),
        .O(X_IBUF[1]));
  IBUF \X_IBUF[2]_inst 
       (.I(X[2]),
        .O(X_IBUF[2]));
  IBUF \X_IBUF[3]_inst 
       (.I(X[3]),
        .O(X_IBUF[3]));
  IBUF \Y_IBUF[0]_inst 
       (.I(Y[0]),
        .O(Y_IBUF[0]));
  IBUF \Y_IBUF[1]_inst 
       (.I(Y[1]),
        .O(Y_IBUF[1]));
  IBUF \Y_IBUF[2]_inst 
       (.I(Y[2]),
        .O(Y_IBUF[2]));
  IBUF \Y_IBUF[3]_inst 
       (.I(Y[3]),
        .O(Y_IBUF[3]));
  OBUF \Z_OBUF[0]_inst 
       (.I(Z_OBUF[0]),
        .O(Z[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \Z_OBUF[0]_inst_i_1 
       (.I0(Y_IBUF[0]),
        .I1(X_IBUF[0]),
        .O(Z_OBUF[0]));
  OBUF \Z_OBUF[1]_inst 
       (.I(Z_OBUF[1]),
        .O(Z[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \Z_OBUF[1]_inst_i_1 
       (.I0(X_IBUF[1]),
        .I1(Y_IBUF[0]),
        .I2(X_IBUF[0]),
        .I3(Y_IBUF[1]),
        .O(Z_OBUF[1]));
  OBUF \Z_OBUF[2]_inst 
       (.I(Z_OBUF[2]),
        .O(Z[2]));
  LUT6 #(
    .INIT(64'h47777888B8887888)) 
    \Z_OBUF[2]_inst_i_1 
       (.I0(X_IBUF[2]),
        .I1(Y_IBUF[0]),
        .I2(X_IBUF[1]),
        .I3(Y_IBUF[1]),
        .I4(X_IBUF[0]),
        .I5(Y_IBUF[2]),
        .O(Z_OBUF[2]));
  OBUF \Z_OBUF[3]_inst 
       (.I(Z_OBUF[3]),
        .O(Z[3]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \Z_OBUF[3]_inst_i_1 
       (.I0(a[3]),
        .I1(X_IBUF[1]),
        .I2(Y_IBUF[2]),
        .I3(\Z_OBUF[3]_inst_i_3_n_0 ),
        .I4(X_IBUF[0]),
        .I5(Y_IBUF[3]),
        .O(Z_OBUF[3]));
  LUT6 #(
    .INIT(64'hCF7FF0003080F000)) 
    \Z_OBUF[3]_inst_i_2 
       (.I0(X_IBUF[0]),
        .I1(X_IBUF[1]),
        .I2(Y_IBUF[1]),
        .I3(X_IBUF[2]),
        .I4(Y_IBUF[0]),
        .I5(X_IBUF[3]),
        .O(a[3]));
  (* PHYS_OPT_MODIFIED = "CRITICAL_CELL_OPT" *) 
  (* PHYS_OPT_SKIPPED = "CRITICAL_CELL_OPT" *) 
  LUT6 #(
    .INIT(64'h8A80808000000000)) 
    \Z_OBUF[3]_inst_i_3 
       (.I0(Y_IBUF[2]),
        .I1(X_IBUF[2]),
        .I2(Y_IBUF[0]),
        .I3(X_IBUF[1]),
        .I4(Y_IBUF[1]),
        .I5(X_IBUF[0]),
        .O(\Z_OBUF[3]_inst_i_3_n_0 ));
  OBUF \Z_OBUF[4]_inst 
       (.I(Z_OBUF[4]),
        .O(Z[4]));
  LUT4 #(
    .INIT(16'h956A)) 
    \Z_OBUF[4]_inst_i_1 
       (.I0(\Z_OBUF[4]_inst_i_2_n_0 ),
        .I1(Y_IBUF[3]),
        .I2(X_IBUF[1]),
        .I3(a__0[4]),
        .O(Z_OBUF[4]));
  LUT6 #(
    .INIT(64'h8008080808808080)) 
    \Z_OBUF[4]_inst_i_2 
       (.I0(X_IBUF[0]),
        .I1(Y_IBUF[3]),
        .I2(a[3]),
        .I3(X_IBUF[1]),
        .I4(Y_IBUF[2]),
        .I5(\Z_OBUF[3]_inst_i_3_n_0 ),
        .O(\Z_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE87717771788E888)) 
    \Z_OBUF[4]_inst_i_3 
       (.I0(\Z_OBUF[3]_inst_i_3_n_0 ),
        .I1(a[3]),
        .I2(X_IBUF[1]),
        .I3(Y_IBUF[2]),
        .I4(X_IBUF[2]),
        .I5(a[4]),
        .O(a__0[4]));
  LUT6 #(
    .INIT(64'h0F7FA00000000000)) 
    \Z_OBUF[4]_inst_i_4 
       (.I0(X_IBUF[1]),
        .I1(X_IBUF[0]),
        .I2(Y_IBUF[0]),
        .I3(X_IBUF[2]),
        .I4(X_IBUF[3]),
        .I5(Y_IBUF[1]),
        .O(a[4]));
  OBUF \Z_OBUF[5]_inst 
       (.I(Z_OBUF[5]),
        .O(Z[5]));
  LUT4 #(
    .INIT(16'h956A)) 
    \Z_OBUF[5]_inst_i_1 
       (.I0(\Z_OBUF[7]_inst_i_3_n_0 ),
        .I1(Y_IBUF[3]),
        .I2(X_IBUF[2]),
        .I3(a__0[5]),
        .O(Z_OBUF[5]));
  OBUF \Z_OBUF[6]_inst 
       (.I(Z_OBUF[6]),
        .O(Z[6]));
  LUT6 #(
    .INIT(64'hE87717771788E888)) 
    \Z_OBUF[6]_inst_i_1 
       (.I0(\Z_OBUF[7]_inst_i_3_n_0 ),
        .I1(a__0[5]),
        .I2(X_IBUF[2]),
        .I3(Y_IBUF[3]),
        .I4(X_IBUF[3]),
        .I5(a__0[6]),
        .O(Z_OBUF[6]));
  OBUF \Z_OBUF[7]_inst 
       (.I(Z_OBUF[7]),
        .O(Z[7]));
  LUT6 #(
    .INIT(64'hF8C8C880F8808080)) 
    \Z_OBUF[7]_inst_i_1 
       (.I0(X_IBUF[3]),
        .I1(Y_IBUF[3]),
        .I2(a__0[6]),
        .I3(\Z_OBUF[7]_inst_i_3_n_0 ),
        .I4(a__0[5]),
        .I5(X_IBUF[2]),
        .O(Z_OBUF[7]));
  LUT4 #(
    .INIT(16'hF880)) 
    \Z_OBUF[7]_inst_i_2 
       (.I0(X_IBUF[3]),
        .I1(Y_IBUF[2]),
        .I2(a[5]),
        .I3(\Z_OBUF[7]_inst_i_6_n_0 ),
        .O(a__0[6]));
  (* PHYS_OPT_MODIFIED = "PLACEMENT_OPT CRITICAL_CELL_OPT" *) 
  (* PHYS_OPT_SKIPPED = "CRITICAL_CELL_OPT" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \Z_OBUF[7]_inst_i_3 
       (.I0(X_IBUF[1]),
        .I1(Y_IBUF[3]),
        .I2(a__0[4]),
        .I3(\Z_OBUF[4]_inst_i_2_n_0 ),
        .O(\Z_OBUF[7]_inst_i_3_n_0 ));
  (* PHYS_OPT_MODIFIED = "CRITICAL_CELL_OPT PLACEMENT_OPT" *) 
  (* PHYS_OPT_SKIPPED = "CRITICAL_CELL_OPT" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \Z_OBUF[7]_inst_i_4 
       (.I0(\Z_OBUF[7]_inst_i_6_n_0 ),
        .I1(Y_IBUF[2]),
        .I2(X_IBUF[3]),
        .I3(a[5]),
        .O(a__0[5]));
  LUT6 #(
    .INIT(64'hF000000080000000)) 
    \Z_OBUF[7]_inst_i_5 
       (.I0(X_IBUF[1]),
        .I1(X_IBUF[0]),
        .I2(Y_IBUF[0]),
        .I3(X_IBUF[3]),
        .I4(Y_IBUF[1]),
        .I5(X_IBUF[2]),
        .O(a[5]));
  (* PHYS_OPT_MODIFIED = "PLACEMENT_OPT" *) 
  LUT6 #(
    .INIT(64'hF8C8C880F8808080)) 
    \Z_OBUF[7]_inst_i_6 
       (.I0(X_IBUF[2]),
        .I1(Y_IBUF[2]),
        .I2(a[4]),
        .I3(\Z_OBUF[3]_inst_i_3_n_0 ),
        .I4(a[3]),
        .I5(X_IBUF[1]),
        .O(\Z_OBUF[7]_inst_i_6_n_0 ));
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
