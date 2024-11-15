//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Fri Nov 15 15:44:21 2024
//Host        : agnikulhp1-HP-348-G7 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A_0,
    B_0,
    CLK_0,
    C_0,
    P_0);
  input [17:0]A_0;
  input [17:0]B_0;
  input CLK_0;
  input [47:0]C_0;
  output [47:0]P_0;

  wire [17:0]A_0;
  wire [17:0]B_0;
  wire CLK_0;
  wire [47:0]C_0;
  wire [47:0]P_0;

  design_1 design_1_i
       (.A_0(A_0),
        .B_0(B_0),
        .CLK_0(CLK_0),
        .C_0(C_0),
        .P_0(P_0));
endmodule
