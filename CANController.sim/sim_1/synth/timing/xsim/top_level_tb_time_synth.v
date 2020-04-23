// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Apr 20 20:40:24 2020
// Host        : DESKTOP-DQL28P8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/John/source/ECE4710-CAN-Controller/CANController.sim/sim_1/synth/timing/xsim/top_level_tb_time_synth.v
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Destuffer_FSM
   (AR,
    Q,
    resetn_IBUF,
    debug_out_OBUF,
    CLK);
  output [0:0]AR;
  output [3:0]Q;
  input resetn_IBUF;
  input [0:0]debug_out_OBUF;
  input CLK;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_onehot_y[1]_i_2_n_0 ;
  wire \FSM_onehot_y[2]_i_1_n_0 ;
  wire \FSM_onehot_y[3]_i_1_n_0 ;
  wire \FSM_onehot_y[4]_i_1_n_0 ;
  wire \FSM_onehot_y[6]_i_1_n_0 ;
  wire \FSM_onehot_y[7]_i_1_n_0 ;
  wire \FSM_onehot_y[8]_i_1_n_0 ;
  wire \FSM_onehot_y_reg_n_0_[0] ;
  wire \FSM_onehot_y_reg_n_0_[1] ;
  wire \FSM_onehot_y_reg_n_0_[2] ;
  wire \FSM_onehot_y_reg_n_0_[3] ;
  wire \FSM_onehot_y_reg_n_0_[4] ;
  wire \FSM_onehot_y_reg_n_0_[5] ;
  wire \FSM_onehot_y_reg_n_0_[6] ;
  wire \FSM_onehot_y_reg_n_0_[7] ;
  wire \FSM_onehot_y_reg_n_0_[8] ;
  wire \FSM_onehot_y_reg_n_0_[9] ;
  wire [3:0]Q;
  wire con_n_5;
  wire con_n_6;
  wire con_n_7;
  wire con_n_8;
  wire [0:0]debug_out_OBUF;
  wire resetn_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_y[1]_i_2 
       (.I0(\FSM_onehot_y_reg_n_0_[6] ),
        .I1(\FSM_onehot_y_reg_n_0_[5] ),
        .I2(\FSM_onehot_y_reg_n_0_[7] ),
        .O(\FSM_onehot_y[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_y[2]_i_1 
       (.I0(\FSM_onehot_y_reg_n_0_[1] ),
        .I1(debug_out_OBUF),
        .O(\FSM_onehot_y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_y[3]_i_1 
       (.I0(\FSM_onehot_y_reg_n_0_[2] ),
        .I1(debug_out_OBUF),
        .O(\FSM_onehot_y[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_y[4]_i_1 
       (.I0(\FSM_onehot_y_reg_n_0_[3] ),
        .I1(debug_out_OBUF),
        .O(\FSM_onehot_y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_y[6]_i_1 
       (.I0(\FSM_onehot_y_reg_n_0_[5] ),
        .I1(debug_out_OBUF),
        .O(\FSM_onehot_y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_y[7]_i_1 
       (.I0(\FSM_onehot_y_reg_n_0_[6] ),
        .I1(debug_out_OBUF),
        .O(\FSM_onehot_y[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_y[8]_i_1 
       (.I0(\FSM_onehot_y_reg_n_0_[7] ),
        .I1(debug_out_OBUF),
        .O(\FSM_onehot_y[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_y_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(con_n_8),
        .PRE(AR),
        .Q(\FSM_onehot_y_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(con_n_7),
        .Q(\FSM_onehot_y_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_y[2]_i_1_n_0 ),
        .Q(\FSM_onehot_y_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_y[3]_i_1_n_0 ),
        .Q(\FSM_onehot_y_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_y[4]_i_1_n_0 ),
        .Q(\FSM_onehot_y_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(con_n_6),
        .Q(\FSM_onehot_y_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_y[6]_i_1_n_0 ),
        .Q(\FSM_onehot_y_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_y[7]_i_1_n_0 ),
        .Q(\FSM_onehot_y_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_y[8]_i_1_n_0 ),
        .Q(\FSM_onehot_y_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_y_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(con_n_5),
        .Q(\FSM_onehot_y_reg_n_0_[9] ));
  counter con
       (.CLK(CLK),
        .D({con_n_5,con_n_6,con_n_7,con_n_8}),
        .\FSM_onehot_y_reg[0] ({\FSM_onehot_y_reg_n_0_[9] ,\FSM_onehot_y_reg_n_0_[8] ,\FSM_onehot_y_reg_n_0_[7] ,\FSM_onehot_y_reg_n_0_[6] ,\FSM_onehot_y_reg_n_0_[5] ,\FSM_onehot_y_reg_n_0_[4] ,\FSM_onehot_y_reg_n_0_[3] ,\FSM_onehot_y_reg_n_0_[2] ,\FSM_onehot_y_reg_n_0_[1] ,\FSM_onehot_y_reg_n_0_[0] }),
        .\FSM_onehot_y_reg[1] (\FSM_onehot_y[1]_i_2_n_0 ),
        .Q(Q),
        .debug_out_OBUF(debug_out_OBUF),
        .resetn(AR),
        .resetn_IBUF(resetn_IBUF));
endmodule

module SerialDataProcessor
   (z_reg__0,
    CLK,
    debug_out_OBUF,
    frame_in_progress_reg_0,
    resetn_IBUF);
  output z_reg__0;
  input CLK;
  input [0:0]debug_out_OBUF;
  input frame_in_progress_reg_0;
  input resetn_IBUF;

  wire CLK;
  wire current_bus_level_reg_C_n_0;
  wire current_bus_level_reg_LDC_i_1_n_0;
  wire current_bus_level_reg_LDC_i_2_n_0;
  wire current_bus_level_reg_LDC_n_0;
  wire current_bus_level_reg_P_n_0;
  wire [0:0]debug_out_OBUF;
  wire frame_in_progress_i_1_n_0;
  wire frame_in_progress_reg_0;
  wire frame_in_progress_reg_n_0;
  wire resetn_IBUF;
  wire sync;
  wire z_reg__0;

  bit_sample_clock bsc
       (.CLK(CLK),
        .\counter_reg[7]_0 (current_bus_level_reg_C_n_0),
        .\counter_reg[7]_1 (current_bus_level_reg_LDC_n_0),
        .\counter_reg[7]_2 (current_bus_level_reg_P_n_0),
        .\counter_reg[7]_3 (frame_in_progress_reg_n_0),
        .debug_out_OBUF(debug_out_OBUF),
        .sync(sync),
        .z_reg__0_0(z_reg__0));
  FDCE #(
    .INIT(1'b0)) 
    current_bus_level_reg_C
       (.C(CLK),
        .CE(sync),
        .CLR(current_bus_level_reg_LDC_i_2_n_0),
        .D(debug_out_OBUF),
        .Q(current_bus_level_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    current_bus_level_reg_LDC
       (.CLR(current_bus_level_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(current_bus_level_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(current_bus_level_reg_LDC_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    current_bus_level_reg_LDC_i_1
       (.I0(debug_out_OBUF),
        .I1(resetn_IBUF),
        .O(current_bus_level_reg_LDC_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    current_bus_level_reg_LDC_i_2
       (.I0(resetn_IBUF),
        .I1(debug_out_OBUF),
        .O(current_bus_level_reg_LDC_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    current_bus_level_reg_P
       (.C(CLK),
        .CE(sync),
        .D(debug_out_OBUF),
        .PRE(current_bus_level_reg_LDC_i_1_n_0),
        .Q(current_bus_level_reg_P_n_0));
  LUT5 #(
    .INIT(32'hFFFF47B8)) 
    frame_in_progress_i_1
       (.I0(current_bus_level_reg_P_n_0),
        .I1(current_bus_level_reg_LDC_n_0),
        .I2(current_bus_level_reg_C_n_0),
        .I3(debug_out_OBUF),
        .I4(frame_in_progress_reg_n_0),
        .O(frame_in_progress_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    frame_in_progress_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(frame_in_progress_reg_0),
        .D(frame_in_progress_i_1_n_0),
        .Q(frame_in_progress_reg_n_0));
endmodule

module Top_destuffer
   (resetn,
    Q,
    resetn_IBUF,
    debug_out_OBUF,
    CLK);
  output resetn;
  output [3:0]Q;
  input resetn_IBUF;
  input [0:0]debug_out_OBUF;
  input CLK;

  wire CLK;
  wire [3:0]Q;
  wire [0:0]debug_out_OBUF;
  wire resetn;
  wire resetn_IBUF;

  Destuffer_FSM FSM_C
       (.AR(resetn),
        .CLK(CLK),
        .Q(Q),
        .debug_out_OBUF(debug_out_OBUF),
        .resetn_IBUF(resetn_IBUF));
endmodule

module bit_sample_clock
   (sync,
    z_reg__0_0,
    CLK,
    debug_out_OBUF,
    \counter_reg[7]_0 ,
    \counter_reg[7]_1 ,
    \counter_reg[7]_2 ,
    \counter_reg[7]_3 );
  output sync;
  output z_reg__0_0;
  input CLK;
  input [0:0]debug_out_OBUF;
  input \counter_reg[7]_0 ;
  input \counter_reg[7]_1 ;
  input \counter_reg[7]_2 ;
  input \counter_reg[7]_3 ;

  wire CLK;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire \counter[7]_i_5_n_0 ;
  wire \counter_reg[7]_0 ;
  wire \counter_reg[7]_1 ;
  wire \counter_reg[7]_2 ;
  wire \counter_reg[7]_3 ;
  wire [0:0]debug_out_OBUF;
  wire [7:0]p_0_in;
  wire [7:0]sel0;
  wire sync;
  wire z;
  wire z0;
  wire z_reg__0_0;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_y[9]_i_2 
       (.I0(z),
        .I1(\counter_reg[7]_3 ),
        .O(z_reg__0_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1 
       (.I0(sel0[0]),
        .I1(sync),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \counter[1]_i_1 
       (.I0(sync),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEEEB)) 
    \counter[2]_i_1 
       (.I0(sync),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFAAAAAAAAB)) 
    \counter[3]_i_1 
       (.I0(sync),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hEEAAFEAB)) 
    \counter[4]_i_1 
       (.I0(sync),
        .I1(\counter[7]_i_5_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(\counter[7]_i_4_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h00000000CC00FE01)) 
    \counter[5]_i_1 
       (.I0(sel0[4]),
        .I1(\counter[7]_i_5_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(\counter[7]_i_4_n_0 ),
        .I5(sync),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h0F04040F)) 
    \counter[6]_i_1 
       (.I0(\counter[7]_i_5_n_0 ),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(sync),
        .I3(\counter[7]_i_3_n_0 ),
        .I4(sel0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFA9FFA9FFFFFFA9)) 
    \counter[7]_i_1 
       (.I0(sel0[7]),
        .I1(\counter[7]_i_3_n_0 ),
        .I2(sel0[6]),
        .I3(sync),
        .I4(\counter[7]_i_4_n_0 ),
        .I5(\counter[7]_i_5_n_0 ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h44411141)) 
    \counter[7]_i_2 
       (.I0(\counter_reg[7]_3 ),
        .I1(debug_out_OBUF),
        .I2(\counter_reg[7]_0 ),
        .I3(\counter_reg[7]_1 ),
        .I4(\counter_reg[7]_2 ),
        .O(\counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[7]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\counter[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[7]_i_4 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .O(\counter[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[7]_i_5 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\counter[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(sel0[2]));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .PRE(\counter[7]_i_2_n_0 ),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(sel0[5]));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .PRE(\counter[7]_i_2_n_0 ),
        .Q(sel0[6]));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .PRE(\counter[7]_i_2_n_0 ),
        .Q(sel0[7]));
  LUT4 #(
    .INIT(16'h56A6)) 
    current_bus_level_C_i_1
       (.I0(debug_out_OBUF),
        .I1(\counter_reg[7]_0 ),
        .I2(\counter_reg[7]_1 ),
        .I3(\counter_reg[7]_2 ),
        .O(sync));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    z__0_i_1
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\counter[7]_i_4_n_0 ),
        .I4(sync),
        .O(z0));
  FDCE #(
    .INIT(1'b0)) 
    z_reg__0
       (.C(CLK),
        .CE(1'b1),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(z0),
        .Q(z));
endmodule

module counter
   (resetn,
    Q,
    D,
    resetn_IBUF,
    \FSM_onehot_y_reg[1] ,
    \FSM_onehot_y_reg[0] ,
    debug_out_OBUF,
    CLK);
  output resetn;
  output [3:0]Q;
  output [3:0]D;
  input resetn_IBUF;
  input \FSM_onehot_y_reg[1] ;
  input [9:0]\FSM_onehot_y_reg[0] ;
  input [0:0]debug_out_OBUF;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire E_ShiftR;
  wire \FSM_onehot_y[5]_i_2_n_0 ;
  wire \FSM_onehot_y[9]_i_4_n_0 ;
  wire [9:0]\FSM_onehot_y_reg[0] ;
  wire \FSM_onehot_y_reg[1] ;
  wire [3:0]Q;
  wire [6:0]Qt0;
  wire \Qt[6]_i_3_n_0 ;
  wire [6:4]Qt_reg;
  wire [0:0]debug_out_OBUF;
  wire resetn;
  wire resetn_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF54)) 
    \FSM_onehot_y[0]_i_1 
       (.I0(\FSM_onehot_y[9]_i_4_n_0 ),
        .I1(\FSM_onehot_y_reg[0] [4]),
        .I2(\FSM_onehot_y_reg[0] [8]),
        .I3(\FSM_onehot_y_reg[0] [9]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h0000FEEE)) 
    \FSM_onehot_y[1]_i_1 
       (.I0(\FSM_onehot_y_reg[1] ),
        .I1(\FSM_onehot_y_reg[0] [0]),
        .I2(\FSM_onehot_y[9]_i_4_n_0 ),
        .I3(\FSM_onehot_y_reg[0] [8]),
        .I4(debug_out_OBUF),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hF080)) 
    \FSM_onehot_y[5]_i_1 
       (.I0(\FSM_onehot_y[9]_i_4_n_0 ),
        .I1(\FSM_onehot_y_reg[0] [4]),
        .I2(debug_out_OBUF),
        .I3(\FSM_onehot_y[5]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_y[5]_i_2 
       (.I0(\FSM_onehot_y_reg[0] [0]),
        .I1(\FSM_onehot_y_reg[0] [1]),
        .I2(\FSM_onehot_y_reg[0] [2]),
        .I3(\FSM_onehot_y_reg[0] [3]),
        .O(\FSM_onehot_y[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \FSM_onehot_y[9]_i_1 
       (.I0(\FSM_onehot_y_reg[0] [8]),
        .I1(\FSM_onehot_y[9]_i_4_n_0 ),
        .I2(\FSM_onehot_y_reg[0] [4]),
        .I3(debug_out_OBUF),
        .O(D[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_y[9]_i_3 
       (.I0(resetn_IBUF),
        .O(resetn));
  LUT5 #(
    .INIT(32'h5757575F)) 
    \FSM_onehot_y[9]_i_4 
       (.I0(Qt_reg[6]),
        .I1(Qt_reg[4]),
        .I2(Qt_reg[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\FSM_onehot_y[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Qt[0]_i_1 
       (.I0(Q[0]),
        .O(Qt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Qt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(Qt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Qt[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(Qt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Qt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(Qt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Qt[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Qt_reg[4]),
        .O(Qt0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Qt[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Qt_reg[4]),
        .I5(Qt_reg[5]),
        .O(Qt0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Qt[6]_i_1 
       (.I0(\FSM_onehot_y_reg[0] [4]),
        .I1(\FSM_onehot_y_reg[0] [8]),
        .I2(\FSM_onehot_y[5]_i_2_n_0 ),
        .I3(\FSM_onehot_y_reg[0] [7]),
        .I4(\FSM_onehot_y_reg[0] [5]),
        .I5(\FSM_onehot_y_reg[0] [6]),
        .O(E_ShiftR));
  LUT3 #(
    .INIT(8'h78)) 
    \Qt[6]_i_2 
       (.I0(\Qt[6]_i_3_n_0 ),
        .I1(Qt_reg[5]),
        .I2(Qt_reg[6]),
        .O(Qt0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \Qt[6]_i_3 
       (.I0(Qt_reg[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\Qt[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Qt_reg[0] 
       (.C(CLK),
        .CE(E_ShiftR),
        .CLR(resetn),
        .D(Qt0[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Qt_reg[1] 
       (.C(CLK),
        .CE(E_ShiftR),
        .CLR(resetn),
        .D(Qt0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Qt_reg[2] 
       (.C(CLK),
        .CE(E_ShiftR),
        .CLR(resetn),
        .D(Qt0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Qt_reg[3] 
       (.C(CLK),
        .CE(E_ShiftR),
        .CLR(resetn),
        .D(Qt0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Qt_reg[4] 
       (.C(CLK),
        .CE(E_ShiftR),
        .CLR(resetn),
        .D(Qt0[4]),
        .Q(Qt_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Qt_reg[5] 
       (.C(CLK),
        .CE(E_ShiftR),
        .CLR(resetn),
        .D(Qt0[5]),
        .Q(Qt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Qt_reg[6] 
       (.C(CLK),
        .CE(E_ShiftR),
        .CLR(resetn),
        .D(Qt0[6]),
        .Q(Qt_reg[6]));
endmodule

(* NotValidForBitStream *)
module top_level
   (clock,
    resetn,
    CAN_rx,
    CAN_tx,
    byte_out,
    debug_out);
  input clock;
  input resetn;
  input CAN_rx;
  output CAN_tx;
  output [7:0]byte_out;
  output [7:0]debug_out;

  wire CAN_rx;
  wire CAN_tx;
  wire bit_clock;
  wire [7:0]byte_out;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]debug_out;
  wire [5:0]debug_out_OBUF;
  wire ds_impl_n_0;
  wire resetn;
  wire resetn_IBUF;

initial begin
 $sdf_annotate("top_level_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF CAN_rx_IBUF_inst
       (.I(CAN_rx),
        .O(debug_out_OBUF[5]));
  OBUFT CAN_tx_OBUF_inst
       (.I(1'b0),
        .O(CAN_tx),
        .T(1'b1));
  OBUF \byte_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(byte_out[0]));
  OBUF \byte_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(byte_out[1]));
  OBUF \byte_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(byte_out[2]));
  OBUF \byte_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(byte_out[3]));
  OBUF \byte_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(byte_out[4]));
  OBUF \byte_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(byte_out[5]));
  OBUF \byte_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(byte_out[6]));
  OBUF \byte_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(byte_out[7]));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  OBUF \debug_out_OBUF[0]_inst 
       (.I(debug_out_OBUF[0]),
        .O(debug_out[0]));
  OBUF \debug_out_OBUF[1]_inst 
       (.I(debug_out_OBUF[1]),
        .O(debug_out[1]));
  OBUF \debug_out_OBUF[2]_inst 
       (.I(debug_out_OBUF[2]),
        .O(debug_out[2]));
  OBUF \debug_out_OBUF[3]_inst 
       (.I(debug_out_OBUF[3]),
        .O(debug_out[3]));
  OBUF \debug_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(debug_out[4]));
  OBUF \debug_out_OBUF[5]_inst 
       (.I(debug_out_OBUF[5]),
        .O(debug_out[5]));
  OBUF \debug_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(debug_out[6]));
  OBUF \debug_out_OBUF[7]_inst 
       (.I(1'b1),
        .O(debug_out[7]));
  Top_destuffer ds_impl
       (.CLK(bit_clock),
        .Q(debug_out_OBUF[3:0]),
        .debug_out_OBUF(debug_out_OBUF[5]),
        .resetn(ds_impl_n_0),
        .resetn_IBUF(resetn_IBUF));
  IBUF resetn_IBUF_inst
       (.I(resetn),
        .O(resetn_IBUF));
  SerialDataProcessor sdp_impl
       (.CLK(clock_IBUF_BUFG),
        .debug_out_OBUF(debug_out_OBUF[5]),
        .frame_in_progress_reg_0(ds_impl_n_0),
        .resetn_IBUF(resetn_IBUF),
        .z_reg__0(bit_clock));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
