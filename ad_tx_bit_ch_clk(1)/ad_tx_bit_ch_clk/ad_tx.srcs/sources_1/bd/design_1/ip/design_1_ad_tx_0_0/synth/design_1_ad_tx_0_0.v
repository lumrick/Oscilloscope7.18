// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ad_tx:1.0
// IP Revision: 1

(* X_CORE_INFO = "ad_tx,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_ad_tx_0_0,ad_tx,{}" *)
(* CORE_GENERATION_INFO = "design_1_ad_tx_0_0,ad_tx,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ad_tx,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,S_IDLE=0000,S_START=0001,S_BIT0=0010,S_BIT1=0011,S_BIT2=0100,S_BIT3=0101,S_BIT4=0110,S_BIT5=0111,S_BIT6=1000,S_BIT7=1001,S_STOP=1010}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ad_tx_0_0 (
  clk,
  tx_clk,
  tx_data,
  oe,
  txd
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN clk_100M" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_clk, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_clk CLK" *)
input wire tx_clk;
input wire [7 : 0] tx_data;
output wire oe;
output wire txd;

  ad_tx #(
    .S_IDLE(4'B0000),
    .S_START(4'B0001),
    .S_BIT0(4'B0010),
    .S_BIT1(4'B0011),
    .S_BIT2(4'B0100),
    .S_BIT3(4'B0101),
    .S_BIT4(4'B0110),
    .S_BIT5(4'B0111),
    .S_BIT6(4'B1000),
    .S_BIT7(4'B1001),
    .S_STOP(4'B1010)
  ) inst (
    .clk(clk),
    .tx_clk(tx_clk),
    .tx_data(tx_data),
    .oe(oe),
    .txd(txd)
  );
endmodule