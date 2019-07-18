-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Jul 17 17:01:14 2019
-- Host        : DESKTOP-P7F927J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/lenovo/Desktop/7.17/AD_TX/ad_tx/ad_tx.srcs/sources_1/bd/design_1/ip/design_1_ad_tx_0_0/design_1_ad_tx_0_0_stub.vhdl
-- Design      : design_1_ad_tx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ad_tx_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    tx_clk : in STD_LOGIC;
    tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oe : out STD_LOGIC;
    txd : out STD_LOGIC
  );

end design_1_ad_tx_0_0;

architecture stub of design_1_ad_tx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,tx_clk,tx_data[7:0],oe,txd";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ad_tx,Vivado 2018.2";
begin
end;
