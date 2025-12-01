`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_adder.hwdef" *) 
module design_adder
   (A_0,
    B_0,
    S_0,
    clk,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0, LAYERED_METADATA undef" *) input [7:0]A_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0, LAYERED_METADATA undef" *) input [7:0]B_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 9} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 9}" *) output [8:0]S_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_adder_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;

  wire [7:0]A_0_1;
  wire [7:0]B_0_1;
  wire [8:0]c_addsub_0_S;
  wire clk_100MHz_1;
  wire clk_wiz_0_clk_out1;
  wire reset_rtl_0_1;

  assign A_0_1 = A_0[7:0];
  assign B_0_1 = B_0[7:0];
  assign S_0[8:0] = c_addsub_0_S;
  assign clk_100MHz_1 = clk;
  assign reset_rtl_0_1 = rst;
  design_adder_c_addsub_0_0 c_addsub_0
       (.A(A_0_1),
        .B(B_0_1),
        .CLK(clk_wiz_0_clk_out1),
        .S(c_addsub_0_S));
  design_adder_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_0_1));
endmodule
