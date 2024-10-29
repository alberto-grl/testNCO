// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Tue Oct 29 23:31:52 2024
//
// Verilog Description of module top
//

module top (MYLED, TX, TX_NCO, RFIn, MixerOutSin, XIn) /* synthesis syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(14[8:11])
    output [7:0]MYLED;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    output TX;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    output TX_NCO;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:15])
    input [9:0]RFIn;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    output [19:0]MixerOutSin;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    input XIn;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(22[8:11])
    
    wire TX_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:15])
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(22[8:11])
    wire clk_adc /* synthesis is_clock=1, SET_AS_NETWORK=clk_adc */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(30[5:12])
    wire osc_clk /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(54[7:14])
    
    wire GND_net, VCC_net, MYLED_c_1_c, MixerOutSin_c, RFIn_c_9, RFIn_c_8, 
        RFIn_c_6, RFIn_c_5, RFIn_c_4, RFIn_c_3, RFIn_c_2, RFIn_c_1, 
        RFIn_c_0, MixerOutSin_c_19, MixerOutSin_c_18, MixerOutSin_c_17, 
        MixerOutSin_c_16, MixerOutSin_c_15, MixerOutSin_c_14, MixerOutSin_c_13, 
        MixerOutSin_c_12, MixerOutSin_c_11, MixerOutSin_c_10, MixerOutSin_c_9, 
        MixerOutSin_c_8, MixerOutSin_0_6, MixerOutSin_0_5, MixerOutSin_0_4, 
        MixerOutSin_0_3, MixerOutSin_0_2, MixerOutSin_0_1, MixerOutSin_0_0;
    wire [63:0]phase_accum;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(25[13:24])
    wire [9:0]LOSine;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(26[19:25])
    
    wire clk_adc_N_2, n594;
    
    VHI i2 (.Z(VCC_net));
    nco_sig ncoGen (.\phase_accum[60] (phase_accum[60]), .osc_clk(osc_clk), 
            .\phase_accum[61] (phase_accum[61]), .\phase_accum[62] (phase_accum[62]), 
            .TX_NCO_c_9(TX_NCO_c_9)) /* synthesis syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(53[10] 59[2])
    Multiplier MixerI (.clk_adc(clk_adc), .VCC_net(VCC_net), .LOSine({LOSine}), 
            .RFIn_c_0(RFIn_c_0), .RFIn_c_1(RFIn_c_1), .RFIn_c_2(RFIn_c_2), 
            .RFIn_c_3(RFIn_c_3), .RFIn_c_4(RFIn_c_4), .RFIn_c_5(RFIn_c_5), 
            .RFIn_c_6(RFIn_c_6), .MYLED_c_1_c(MYLED_c_1_c), .RFIn_c_8(RFIn_c_8), 
            .RFIn_c_9(RFIn_c_9), .MixerOutSin_0_0(MixerOutSin_0_0), .MixerOutSin_0_1(MixerOutSin_0_1), 
            .MixerOutSin_0_2(MixerOutSin_0_2), .MixerOutSin_0_3(MixerOutSin_0_3), 
            .MixerOutSin_0_4(MixerOutSin_0_4), .MixerOutSin_0_5(MixerOutSin_0_5), 
            .MixerOutSin_0_6(MixerOutSin_0_6), .MixerOutSin_c(MixerOutSin_c), 
            .MixerOutSin_c_8(MixerOutSin_c_8), .MixerOutSin_c_9(MixerOutSin_c_9), 
            .MixerOutSin_c_10(MixerOutSin_c_10), .MixerOutSin_c_11(MixerOutSin_c_11), 
            .MixerOutSin_c_12(MixerOutSin_c_12), .MixerOutSin_c_13(MixerOutSin_c_13), 
            .MixerOutSin_c_14(MixerOutSin_c_14), .MixerOutSin_c_15(MixerOutSin_c_15), 
            .MixerOutSin_c_16(MixerOutSin_c_16), .MixerOutSin_c_17(MixerOutSin_c_17), 
            .MixerOutSin_c_18(MixerOutSin_c_18), .MixerOutSin_c_19(MixerOutSin_c_19), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(71[5] 73[2])
    PUR PUR_INST (.PUR(VCC_net)) /* synthesis syn_instantiated=1 */ ;
    defparam PUR_INST.RST_PULSE = 1;
    IB RFIn_pad_1 (.I(RFIn[1]), .O(RFIn_c_1));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    OB MixerOutSin_pad_16 (.I(MixerOutSin_c_16), .O(MixerOutSin[16]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MYLED_pad_0 (.I(MixerOutSin_c), .O(MYLED[0]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MixerOutSin_pad_15 (.I(MixerOutSin_c_15), .O(MixerOutSin[15]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_12 (.I(MixerOutSin_c_12), .O(MixerOutSin[12]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MYLED_pad_1 (.I(MYLED_c_1_c), .O(MYLED[1]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MixerOutSin_pad_17 (.I(MixerOutSin_c_17), .O(MixerOutSin[17]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_18 (.I(MixerOutSin_c_18), .O(MixerOutSin[18]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MYLED_pad_2 (.I(VCC_net), .O(MYLED[2]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_3 (.I(GND_net), .O(MYLED[3]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_4 (.I(GND_net), .O(MYLED[4]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_5 (.I(GND_net), .O(MYLED[5]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_6 (.I(GND_net), .O(MYLED[6]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    FD1S3AX clk_adc_9 (.D(clk_adc_N_2), .CK(osc_clk), .Q(clk_adc));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(88[8] 102[6])
    defparam clk_adc_9.GSR = "ENABLED";
    OB MixerOutSin_pad_19 (.I(MixerOutSin_c_19), .O(MixerOutSin[19]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    VLO i1 (.Z(GND_net));
    OB MixerOutSin_pad_13 (.I(MixerOutSin_c_13), .O(MixerOutSin[13]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_14 (.I(MixerOutSin_c_14), .O(MixerOutSin[14]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_1 (.I(MixerOutSin_0_1), .O(MixerOutSin[1]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_2 (.I(MixerOutSin_0_2), .O(MixerOutSin[2]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_3 (.I(MixerOutSin_0_3), .O(MixerOutSin[3]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_4 (.I(MixerOutSin_0_4), .O(MixerOutSin[4]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_5 (.I(MixerOutSin_0_5), .O(MixerOutSin[5]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_6 (.I(MixerOutSin_0_6), .O(MixerOutSin[6]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_7 (.I(MixerOutSin_c), .O(MixerOutSin[7]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_8 (.I(MixerOutSin_c_8), .O(MixerOutSin[8]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_9 (.I(MixerOutSin_c_9), .O(MixerOutSin[9]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_10 (.I(MixerOutSin_c_10), .O(MixerOutSin[10]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    OB MixerOutSin_pad_11 (.I(MixerOutSin_c_11), .O(MixerOutSin[11]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    IB RFIn_pad_2 (.I(RFIn[2]), .O(RFIn_c_2));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    IB RFIn_pad_3 (.I(RFIn[3]), .O(RFIn_c_3));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    IB RFIn_pad_4 (.I(RFIn[4]), .O(RFIn_c_4));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    IB RFIn_pad_5 (.I(RFIn[5]), .O(RFIn_c_5));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    IB RFIn_pad_6 (.I(RFIn[6]), .O(RFIn_c_6));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    IB MYLED_c_1_pad (.I(RFIn[7]), .O(MYLED_c_1_c));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    IB RFIn_pad_8 (.I(RFIn[8]), .O(RFIn_c_8));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    IB RFIn_pad_9 (.I(RFIn[9]), .O(RFIn_c_9));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    OB MixerOutSin_pad_0 (.I(MixerOutSin_0_0), .O(MixerOutSin[0]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[16:27])
    PLL_TX PLL2 (.TX_NCO_c_9(TX_NCO_c_9), .TX_c(TX_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(76[8] 79[2])
    OB MYLED_pad_7 (.I(GND_net), .O(MYLED[7]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    GSR GSR_INST (.GSR(VCC_net));
    OB TX_NCO_pad (.I(TX_NCO_c_9), .O(TX_NCO));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:15])
    OB TX_pad (.I(TX_c), .O(TX));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(22[8:11])
    IB RFIn_pad_0 (.I(RFIn[0]), .O(RFIn_c_0));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[14:18])
    TSALL TSALL_INST (.TSALL(GND_net));
    SinCos SinCos1 (.clk_adc(clk_adc), .VCC_net(VCC_net), .GND_net(GND_net), 
           .n594(n594), .\phase_accum[60] (phase_accum[60]), .\phase_accum[61] (phase_accum[61]), 
           .\phase_accum[62] (phase_accum[62]), .TX_NCO_c_9(TX_NCO_c_9), 
           .LOSine({LOSine})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    LUT4 clk_adc_I_0_1_lut (.A(clk_adc), .Z(clk_adc_N_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(91[13:21])
    defparam clk_adc_I_0_1_lut.init = 16'h5555;
    LUT4 m0_lut (.Z(n594)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (\phase_accum[60] , osc_clk, \phase_accum[61] , \phase_accum[62] , 
            TX_NCO_c_9) /* synthesis syn_module_defined=1 */ ;
    output \phase_accum[60] ;
    input osc_clk;
    output \phase_accum[61] ;
    output \phase_accum[62] ;
    output TX_NCO_c_9;
    
    wire osc_clk /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(54[7:14])
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:15])
    wire [63:0]phase_accum_63__N_3;
    
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_3[60]), .CK(osc_clk), 
            .Q(\phase_accum[60] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=59 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(\phase_accum[61] ), .B(\phase_accum[60] ), .Z(phase_accum_63__N_3[61])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i52_3_lut_4_lut (.A(\phase_accum[61] ), .B(\phase_accum[60] ), 
         .C(\phase_accum[62] ), .D(TX_NCO_c_9), .Z(phase_accum_63__N_3[63])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(34[17:45])
    defparam i52_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i45_2_lut_3_lut (.A(\phase_accum[61] ), .B(\phase_accum[60] ), 
         .C(\phase_accum[62] ), .Z(phase_accum_63__N_3[62])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(34[17:45])
    defparam i45_2_lut_3_lut.init = 16'h1e1e;
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_3[61]), .CK(osc_clk), 
            .Q(\phase_accum[61] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=59 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_3[62]), .CK(osc_clk), 
            .Q(\phase_accum[62] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=59 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_3[63]), .CK(osc_clk), 
            .Q(TX_NCO_c_9)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=59 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    LUT4 i35_1_lut (.A(\phase_accum[60] ), .Z(phase_accum_63__N_3[60])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(34[17:45])
    defparam i35_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module Multiplier
//

module Multiplier (clk_adc, VCC_net, LOSine, RFIn_c_0, RFIn_c_1, RFIn_c_2, 
            RFIn_c_3, RFIn_c_4, RFIn_c_5, RFIn_c_6, MYLED_c_1_c, RFIn_c_8, 
            RFIn_c_9, MixerOutSin_0_0, MixerOutSin_0_1, MixerOutSin_0_2, 
            MixerOutSin_0_3, MixerOutSin_0_4, MixerOutSin_0_5, MixerOutSin_0_6, 
            MixerOutSin_c, MixerOutSin_c_8, MixerOutSin_c_9, MixerOutSin_c_10, 
            MixerOutSin_c_11, MixerOutSin_c_12, MixerOutSin_c_13, MixerOutSin_c_14, 
            MixerOutSin_c_15, MixerOutSin_c_16, MixerOutSin_c_17, MixerOutSin_c_18, 
            MixerOutSin_c_19, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_adc;
    input VCC_net;
    input [9:0]LOSine;
    input RFIn_c_0;
    input RFIn_c_1;
    input RFIn_c_2;
    input RFIn_c_3;
    input RFIn_c_4;
    input RFIn_c_5;
    input RFIn_c_6;
    input MYLED_c_1_c;
    input RFIn_c_8;
    input RFIn_c_9;
    output MixerOutSin_0_0;
    output MixerOutSin_0_1;
    output MixerOutSin_0_2;
    output MixerOutSin_0_3;
    output MixerOutSin_0_4;
    output MixerOutSin_0_5;
    output MixerOutSin_0_6;
    output MixerOutSin_c;
    output MixerOutSin_c_8;
    output MixerOutSin_c_9;
    output MixerOutSin_c_10;
    output MixerOutSin_c_11;
    output MixerOutSin_c_12;
    output MixerOutSin_c_13;
    output MixerOutSin_c_14;
    output MixerOutSin_c_15;
    output MixerOutSin_c_16;
    output MixerOutSin_c_17;
    output MixerOutSin_c_18;
    output MixerOutSin_c_19;
    input GND_net;
    
    wire clk_adc /* synthesis is_clock=1, SET_AS_NETWORK=clk_adc */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(30[5:12])
    
    wire Multiplier_0_mult_0_4_n1, regb_b_1, rega_a_9, Multiplier_0_pp_1_2, 
        regb_b_2, rega_a_0, Multiplier_0_mult_2_4_n1, regb_b_3, Multiplier_0_pp_2_4, 
        regb_b_4, Multiplier_0_mult_4_4_n1, regb_b_5, Multiplier_0_pp_3_6, 
        regb_b_6, Multiplier_0_mult_6_4_n1, regb_b_7, Multiplier_0_pp_4_8, 
        regb_b_8, Multiplier_0_mult_8_0_n0, regb_b_9, Multiplier_0_mult_8_1_n1, 
        rega_a_3, rega_a_2, Multiplier_0_mult_8_1_n0, Multiplier_0_mult_8_2_n1, 
        rega_a_5, rega_a_4, Multiplier_0_mult_8_2_n0, Multiplier_0_mult_8_3_n1, 
        rega_a_7, rega_a_6, Multiplier_0_mult_8_3_n0, Multiplier_0_mult_8_4_n2, 
        rega_a_8, Multiplier_0_mult_8_4_n0, rega_a_1, regb_b_0, rego_o_0, 
        rego_o_1, rego_o_2, rego_o_3, rego_o_4, rego_o_5, rego_o_6, 
        rego_o_7, rego_o_8, rego_o_9, rego_o_10, rego_o_11, rego_o_12, 
        rego_o_13, rego_o_14, rego_o_15, rego_o_16, rego_o_17, rego_o_18, 
        rego_o_19, Multiplier_0_pp_0_0, Multiplier_0_pp_0_1, s_Multiplier_0_0_2, 
        s_Multiplier_0_0_3, s_Multiplier_0_0_4, f_s_Multiplier_0_0_4, 
        s_Multiplier_0_0_5, f_s_Multiplier_0_0_5, s_Multiplier_0_0_6, 
        f_s_Multiplier_0_0_6, s_Multiplier_0_0_7, f_s_Multiplier_0_0_7, 
        s_Multiplier_0_0_8, f_s_Multiplier_0_0_8, s_Multiplier_0_0_9, 
        f_s_Multiplier_0_0_9, s_Multiplier_0_0_10, f_s_Multiplier_0_0_10, 
        s_Multiplier_0_0_11, f_s_Multiplier_0_0_11, s_Multiplier_0_0_12, 
        f_s_Multiplier_0_0_12, s_Multiplier_0_0_13, f_s_Multiplier_0_0_13, 
        s_Multiplier_0_0_14, f_s_Multiplier_0_0_14, s_Multiplier_0_0_15, 
        f_s_Multiplier_0_0_15, f_Multiplier_0_pp_2_4, f_Multiplier_0_pp_2_5, 
        Multiplier_0_pp_2_5, s_Multiplier_0_1_6, f_s_Multiplier_0_1_6, 
        s_Multiplier_0_1_7, f_s_Multiplier_0_1_7, s_Multiplier_0_1_8, 
        f_s_Multiplier_0_1_8, s_Multiplier_0_1_9, f_s_Multiplier_0_1_9, 
        s_Multiplier_0_1_10, f_s_Multiplier_0_1_10, s_Multiplier_0_1_11, 
        f_s_Multiplier_0_1_11, s_Multiplier_0_1_12, f_s_Multiplier_0_1_12, 
        s_Multiplier_0_1_13, f_s_Multiplier_0_1_13, s_Multiplier_0_1_14, 
        f_s_Multiplier_0_1_14, s_Multiplier_0_1_15, f_s_Multiplier_0_1_15, 
        s_Multiplier_0_1_16, f_s_Multiplier_0_1_16, s_Multiplier_0_1_17, 
        f_s_Multiplier_0_1_17, s_Multiplier_0_1_18, f_s_Multiplier_0_1_18, 
        s_Multiplier_0_1_19, f_s_Multiplier_0_1_19, f_Multiplier_0_pp_4_8, 
        f_Multiplier_0_pp_4_9, Multiplier_0_pp_4_9, f_Multiplier_0_pp_4_10, 
        Multiplier_0_pp_4_10, f_Multiplier_0_pp_4_11, Multiplier_0_pp_4_11, 
        f_Multiplier_0_pp_4_12, Multiplier_0_pp_4_12, f_Multiplier_0_pp_4_13, 
        Multiplier_0_pp_4_13, f_Multiplier_0_pp_4_14, Multiplier_0_pp_4_14, 
        f_Multiplier_0_pp_4_15, Multiplier_0_pp_4_15, f_Multiplier_0_pp_4_16, 
        Multiplier_0_pp_4_16, f_Multiplier_0_pp_4_17, Multiplier_0_pp_4_17, 
        f_Multiplier_0_pp_4_18, Multiplier_0_pp_4_18, Multiplier_0_pp_4_19, 
        f_Multiplier_0_pp_4_19, Multiplier_0_cin_lr_0, Multiplier_0_pp_0_11, 
        mfco, Multiplier_0_cin_lr_2, Multiplier_0_pp_1_13, mfco_1, Multiplier_0_cin_lr_4, 
        Multiplier_0_pp_2_15, mfco_2, Multiplier_0_cin_lr_6, Multiplier_0_pp_3_17, 
        mfco_3, Multiplier_0_cin_lr_8, mfco_4, co_Multiplier_0_0_1, 
        Multiplier_0_pp_0_2, co_Multiplier_0_0_2, Multiplier_0_pp_0_4, 
        Multiplier_0_pp_0_3, Multiplier_0_pp_1_4, Multiplier_0_pp_1_3, 
        co_Multiplier_0_0_3, Multiplier_0_pp_0_6, Multiplier_0_pp_0_5, 
        Multiplier_0_pp_1_6, Multiplier_0_pp_1_5, co_Multiplier_0_0_4, 
        Multiplier_0_pp_0_8, Multiplier_0_pp_0_7, Multiplier_0_pp_1_8, 
        Multiplier_0_pp_1_7, co_Multiplier_0_0_5, Multiplier_0_pp_0_10, 
        Multiplier_0_pp_0_9, Multiplier_0_pp_1_10, Multiplier_0_pp_1_9, 
        co_Multiplier_0_0_6, Multiplier_0_pp_1_12, Multiplier_0_pp_1_11, 
        co_Multiplier_0_0_7, co_Multiplier_0_1_1, Multiplier_0_pp_2_6, 
        co_Multiplier_0_1_2, Multiplier_0_pp_2_8, Multiplier_0_pp_2_7, 
        Multiplier_0_pp_3_8, Multiplier_0_pp_3_7, co_Multiplier_0_1_3, 
        Multiplier_0_pp_2_10, Multiplier_0_pp_2_9, Multiplier_0_pp_3_10, 
        Multiplier_0_pp_3_9, co_Multiplier_0_1_4, Multiplier_0_pp_2_12, 
        Multiplier_0_pp_2_11, Multiplier_0_pp_3_12, Multiplier_0_pp_3_11, 
        co_Multiplier_0_1_5, Multiplier_0_pp_2_14, Multiplier_0_pp_2_13, 
        Multiplier_0_pp_3_14, Multiplier_0_pp_3_13, co_Multiplier_0_1_6, 
        Multiplier_0_pp_3_16, Multiplier_0_pp_3_15, co_Multiplier_0_1_7, 
        co_Multiplier_0_2_1, co_Multiplier_0_2_2, co_Multiplier_0_2_3, 
        s_Multiplier_0_2_8, co_Multiplier_0_2_4, s_Multiplier_0_2_9, s_Multiplier_0_2_10, 
        co_Multiplier_0_2_5, s_Multiplier_0_2_11, s_Multiplier_0_2_12, 
        co_Multiplier_0_2_6, s_Multiplier_0_2_13, s_Multiplier_0_2_14, 
        co_Multiplier_0_2_7, s_Multiplier_0_2_15, s_Multiplier_0_2_16, 
        co_Multiplier_0_2_8, s_Multiplier_0_2_17, s_Multiplier_0_2_18, 
        s_Multiplier_0_2_19, co_t_Multiplier_0_3_1, co_t_Multiplier_0_3_2, 
        co_t_Multiplier_0_3_3, co_t_Multiplier_0_3_4, co_t_Multiplier_0_3_5, 
        co_t_Multiplier_0_3_6, mco, mco_1, mco_2, mco_3, Multiplier_0_mult_0_4_n2, 
        mco_4, mco_5, mco_6, mco_7, Multiplier_0_mult_2_4_n2, mco_8, 
        mco_9, mco_10, mco_11, Multiplier_0_mult_4_4_n2, mco_12, mco_13, 
        mco_14, mco_15, Multiplier_0_mult_6_4_n2, Multiplier_0_mult_8_0_n1, 
        mco_16, mco_17, mco_18, mco_19;
    
    ND2 ND2_t20 (.A(rega_a_9), .B(regb_b_1), .Z(Multiplier_0_mult_0_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    AND2 AND2_t19 (.A(rega_a_0), .B(regb_b_2), .Z(Multiplier_0_pp_1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(291[10:72])
    ND2 ND2_t17 (.A(rega_a_9), .B(regb_b_3), .Z(Multiplier_0_mult_2_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    AND2 AND2_t16 (.A(rega_a_0), .B(regb_b_4), .Z(Multiplier_0_pp_2_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(297[10:72])
    ND2 ND2_t14 (.A(rega_a_9), .B(regb_b_5), .Z(Multiplier_0_mult_4_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    AND2 AND2_t13 (.A(rega_a_0), .B(regb_b_6), .Z(Multiplier_0_pp_3_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(303[10:72])
    ND2 ND2_t11 (.A(rega_a_9), .B(regb_b_7), .Z(Multiplier_0_mult_6_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    AND2 AND2_t10 (.A(rega_a_0), .B(regb_b_8), .Z(Multiplier_0_pp_4_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(309[10:72])
    ND2 ND2_t8 (.A(rega_a_0), .B(regb_b_9), .Z(Multiplier_0_mult_8_0_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t7 (.A(rega_a_3), .B(regb_b_9), .Z(Multiplier_0_mult_8_1_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t6 (.A(rega_a_2), .B(regb_b_9), .Z(Multiplier_0_mult_8_1_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t5 (.A(rega_a_5), .B(regb_b_9), .Z(Multiplier_0_mult_8_2_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t4 (.A(rega_a_4), .B(regb_b_9), .Z(Multiplier_0_mult_8_2_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t3 (.A(rega_a_7), .B(regb_b_9), .Z(Multiplier_0_mult_8_3_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t2 (.A(rega_a_6), .B(regb_b_9), .Z(Multiplier_0_mult_8_3_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t1 (.A(rega_a_9), .B(regb_b_8), .Z(Multiplier_0_mult_8_4_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t0 (.A(rega_a_8), .B(regb_b_9), .Z(Multiplier_0_mult_8_4_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FD1P3DX FF_83 (.D(LOSine[0]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(331[13:82])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(LOSine[1]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(334[13:82])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(LOSine[2]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(337[13:82])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(LOSine[3]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(340[13:82])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(LOSine[4]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(343[13:82])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(LOSine[5]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(346[13:82])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(LOSine[6]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(349[13:82])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(LOSine[7]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(352[13:82])
    defparam FF_76.GSR = "ENABLED";
    FD1P3DX FF_75 (.D(LOSine[8]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(355[13:82])
    defparam FF_75.GSR = "ENABLED";
    FD1P3DX FF_74 (.D(LOSine[9]), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(rega_a_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(358[13:82])
    defparam FF_74.GSR = "ENABLED";
    FD1P3DX FF_73 (.D(RFIn_c_0), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(361[13:82])
    defparam FF_73.GSR = "ENABLED";
    FD1P3DX FF_72 (.D(RFIn_c_1), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(364[13:82])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(RFIn_c_2), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(367[13:82])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(RFIn_c_3), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(370[13:82])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(RFIn_c_4), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(373[13:82])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(RFIn_c_5), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(376[13:82])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(RFIn_c_6), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(379[13:82])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(MYLED_c_1_c), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(382[13:82])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(RFIn_c_8), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(385[13:82])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(RFIn_c_9), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(regb_b_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(388[13:82])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(rego_o_0), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_0_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(391[13:83])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(rego_o_1), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_0_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(394[13:83])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(rego_o_2), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_0_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(397[13:83])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(rego_o_3), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_0_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(400[13:83])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(rego_o_4), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(403[13:83])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(rego_o_5), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(406[13:83])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(rego_o_6), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(409[13:83])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(rego_o_7), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(412[13:83])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(rego_o_8), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(415[13:83])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(rego_o_9), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(418[13:83])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(rego_o_10), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(421[13:85])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(rego_o_11), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(424[13:85])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(rego_o_12), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(427[13:85])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(rego_o_13), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(430[13:85])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(rego_o_14), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(433[13:85])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(rego_o_15), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(436[13:85])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(rego_o_16), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(439[13:85])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(rego_o_17), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(442[13:85])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(rego_o_18), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(445[13:85])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(rego_o_19), .SP(VCC_net), .CK(clk_adc), .CD(VCC_net), 
            .Q(MixerOutSin_c_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(448[13:85])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(Multiplier_0_pp_0_0), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(451[13] 452[35])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(Multiplier_0_pp_0_1), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(455[13] 456[35])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(s_Multiplier_0_0_2), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(rego_o_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(459[13] 460[34])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(s_Multiplier_0_0_3), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(rego_o_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(463[13] 464[34])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(s_Multiplier_0_0_4), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(467[13] 468[34])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(s_Multiplier_0_0_5), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(471[13] 472[34])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(s_Multiplier_0_0_6), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(475[13] 476[34])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(s_Multiplier_0_0_7), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(479[13] 480[34])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(s_Multiplier_0_0_8), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(483[13] 484[34])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(s_Multiplier_0_0_9), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(487[13] 488[34])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(s_Multiplier_0_0_10), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(491[13] 492[35])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(s_Multiplier_0_0_11), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(495[13] 496[35])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(s_Multiplier_0_0_12), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(499[13] 500[35])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(s_Multiplier_0_0_13), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(503[13] 504[35])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(s_Multiplier_0_0_14), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(507[13] 508[35])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(s_Multiplier_0_0_15), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_0_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(511[13] 512[35])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(Multiplier_0_pp_2_4), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_2_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(515[13] 516[35])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(Multiplier_0_pp_2_5), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_2_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(519[13] 520[35])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(s_Multiplier_0_1_6), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(523[13] 524[34])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(s_Multiplier_0_1_7), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(527[13] 528[34])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(s_Multiplier_0_1_8), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(531[13] 532[34])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(s_Multiplier_0_1_9), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(535[13] 536[34])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(s_Multiplier_0_1_10), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(539[13] 540[35])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(s_Multiplier_0_1_11), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(543[13] 544[35])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(s_Multiplier_0_1_12), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(547[13] 548[35])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(s_Multiplier_0_1_13), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(551[13] 552[35])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(s_Multiplier_0_1_14), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(555[13] 556[35])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(s_Multiplier_0_1_15), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(559[13] 560[35])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(s_Multiplier_0_1_16), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(563[13] 564[35])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(s_Multiplier_0_1_17), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(567[13] 568[35])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(s_Multiplier_0_1_18), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(571[13] 572[35])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(s_Multiplier_0_1_19), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_s_Multiplier_0_1_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(575[13] 576[35])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(Multiplier_0_pp_4_8), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(579[13] 580[35])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(Multiplier_0_pp_4_9), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(583[13] 584[35])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(Multiplier_0_pp_4_10), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(587[13] 588[36])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(Multiplier_0_pp_4_11), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(591[13] 592[36])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(Multiplier_0_pp_4_12), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(595[13] 596[36])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(Multiplier_0_pp_4_13), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(599[13] 600[36])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(Multiplier_0_pp_4_14), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(603[13] 604[36])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(Multiplier_0_pp_4_15), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(607[13] 608[36])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(Multiplier_0_pp_4_16), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(611[13] 612[36])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(Multiplier_0_pp_4_17), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(615[13] 616[36])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(Multiplier_0_pp_4_18), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(619[13] 620[36])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(Multiplier_0_pp_4_19), .SP(VCC_net), .CK(clk_adc), 
            .CD(VCC_net), .Q(f_Multiplier_0_pp_4_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(623[13] 624[36])
    defparam FF_0.GSR = "ENABLED";
    FADD2B Multiplier_0_cin_lr_add_0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(Multiplier_0_cin_lr_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_Cadd_0_5 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco), .S0(Multiplier_0_pp_0_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_cin_lr_add_2 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(Multiplier_0_cin_lr_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_Cadd_2_5 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_1), .S0(Multiplier_0_pp_1_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_cin_lr_add_4 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(Multiplier_0_cin_lr_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_Cadd_4_5 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_2), .S0(Multiplier_0_pp_2_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_cin_lr_add_6 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(Multiplier_0_cin_lr_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_Cadd_6_5 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_3), .S0(Multiplier_0_pp_3_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_cin_lr_add_8 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(Multiplier_0_cin_lr_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_Cadd_8_5 (.A0(VCC_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_4), .S0(Multiplier_0_pp_4_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Cadd_Multiplier_0_0_1 (.A0(GND_net), .A1(Multiplier_0_pp_0_2), 
           .B0(GND_net), .B1(Multiplier_0_pp_1_2), .CI(GND_net), .COUT(co_Multiplier_0_0_1), 
           .S1(s_Multiplier_0_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_0_2 (.A0(Multiplier_0_pp_0_3), .A1(Multiplier_0_pp_0_4), 
           .B0(Multiplier_0_pp_1_3), .B1(Multiplier_0_pp_1_4), .CI(co_Multiplier_0_0_1), 
           .COUT(co_Multiplier_0_0_2), .S0(s_Multiplier_0_0_3), .S1(s_Multiplier_0_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_0_3 (.A0(Multiplier_0_pp_0_5), .A1(Multiplier_0_pp_0_6), 
           .B0(Multiplier_0_pp_1_5), .B1(Multiplier_0_pp_1_6), .CI(co_Multiplier_0_0_2), 
           .COUT(co_Multiplier_0_0_3), .S0(s_Multiplier_0_0_5), .S1(s_Multiplier_0_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_0_4 (.A0(Multiplier_0_pp_0_7), .A1(Multiplier_0_pp_0_8), 
           .B0(Multiplier_0_pp_1_7), .B1(Multiplier_0_pp_1_8), .CI(co_Multiplier_0_0_3), 
           .COUT(co_Multiplier_0_0_4), .S0(s_Multiplier_0_0_7), .S1(s_Multiplier_0_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_0_5 (.A0(Multiplier_0_pp_0_9), .A1(Multiplier_0_pp_0_10), 
           .B0(Multiplier_0_pp_1_9), .B1(Multiplier_0_pp_1_10), .CI(co_Multiplier_0_0_4), 
           .COUT(co_Multiplier_0_0_5), .S0(s_Multiplier_0_0_9), .S1(s_Multiplier_0_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_0_6 (.A0(Multiplier_0_pp_0_11), .A1(GND_net), 
           .B0(Multiplier_0_pp_1_11), .B1(Multiplier_0_pp_1_12), .CI(co_Multiplier_0_0_5), 
           .COUT(co_Multiplier_0_0_6), .S0(s_Multiplier_0_0_11), .S1(s_Multiplier_0_0_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_0_7 (.A0(GND_net), .A1(GND_net), .B0(Multiplier_0_pp_1_13), 
           .B1(GND_net), .CI(co_Multiplier_0_0_6), .COUT(co_Multiplier_0_0_7), 
           .S0(s_Multiplier_0_0_13), .S1(s_Multiplier_0_0_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Cadd_Multiplier_0_0_8 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co_Multiplier_0_0_7), .S0(s_Multiplier_0_0_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Cadd_Multiplier_0_1_1 (.A0(GND_net), .A1(Multiplier_0_pp_2_6), 
           .B0(GND_net), .B1(Multiplier_0_pp_3_6), .CI(GND_net), .COUT(co_Multiplier_0_1_1), 
           .S1(s_Multiplier_0_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_1_2 (.A0(Multiplier_0_pp_2_7), .A1(Multiplier_0_pp_2_8), 
           .B0(Multiplier_0_pp_3_7), .B1(Multiplier_0_pp_3_8), .CI(co_Multiplier_0_1_1), 
           .COUT(co_Multiplier_0_1_2), .S0(s_Multiplier_0_1_7), .S1(s_Multiplier_0_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_1_3 (.A0(Multiplier_0_pp_2_9), .A1(Multiplier_0_pp_2_10), 
           .B0(Multiplier_0_pp_3_9), .B1(Multiplier_0_pp_3_10), .CI(co_Multiplier_0_1_2), 
           .COUT(co_Multiplier_0_1_3), .S0(s_Multiplier_0_1_9), .S1(s_Multiplier_0_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_1_4 (.A0(Multiplier_0_pp_2_11), .A1(Multiplier_0_pp_2_12), 
           .B0(Multiplier_0_pp_3_11), .B1(Multiplier_0_pp_3_12), .CI(co_Multiplier_0_1_3), 
           .COUT(co_Multiplier_0_1_4), .S0(s_Multiplier_0_1_11), .S1(s_Multiplier_0_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_1_5 (.A0(Multiplier_0_pp_2_13), .A1(Multiplier_0_pp_2_14), 
           .B0(Multiplier_0_pp_3_13), .B1(Multiplier_0_pp_3_14), .CI(co_Multiplier_0_1_4), 
           .COUT(co_Multiplier_0_1_5), .S0(s_Multiplier_0_1_13), .S1(s_Multiplier_0_1_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_1_6 (.A0(Multiplier_0_pp_2_15), .A1(GND_net), 
           .B0(Multiplier_0_pp_3_15), .B1(Multiplier_0_pp_3_16), .CI(co_Multiplier_0_1_5), 
           .COUT(co_Multiplier_0_1_6), .S0(s_Multiplier_0_1_15), .S1(s_Multiplier_0_1_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_1_7 (.A0(GND_net), .A1(GND_net), .B0(Multiplier_0_pp_3_17), 
           .B1(GND_net), .CI(co_Multiplier_0_1_6), .COUT(co_Multiplier_0_1_7), 
           .S0(s_Multiplier_0_1_17), .S1(s_Multiplier_0_1_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Cadd_Multiplier_0_1_8 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co_Multiplier_0_1_7), .S0(s_Multiplier_0_1_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Cadd_Multiplier_0_2_1 (.A0(GND_net), .A1(f_s_Multiplier_0_0_4), 
           .B0(GND_net), .B1(f_Multiplier_0_pp_2_4), .CI(GND_net), .COUT(co_Multiplier_0_2_1), 
           .S1(rego_o_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_2 (.A0(f_s_Multiplier_0_0_5), .A1(f_s_Multiplier_0_0_6), 
           .B0(f_Multiplier_0_pp_2_5), .B1(f_s_Multiplier_0_1_6), .CI(co_Multiplier_0_2_1), 
           .COUT(co_Multiplier_0_2_2), .S0(rego_o_5), .S1(rego_o_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_3 (.A0(f_s_Multiplier_0_0_7), .A1(f_s_Multiplier_0_0_8), 
           .B0(f_s_Multiplier_0_1_7), .B1(f_s_Multiplier_0_1_8), .CI(co_Multiplier_0_2_2), 
           .COUT(co_Multiplier_0_2_3), .S0(rego_o_7), .S1(s_Multiplier_0_2_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_4 (.A0(f_s_Multiplier_0_0_9), .A1(f_s_Multiplier_0_0_10), 
           .B0(f_s_Multiplier_0_1_9), .B1(f_s_Multiplier_0_1_10), .CI(co_Multiplier_0_2_3), 
           .COUT(co_Multiplier_0_2_4), .S0(s_Multiplier_0_2_9), .S1(s_Multiplier_0_2_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_5 (.A0(f_s_Multiplier_0_0_11), .A1(f_s_Multiplier_0_0_12), 
           .B0(f_s_Multiplier_0_1_11), .B1(f_s_Multiplier_0_1_12), .CI(co_Multiplier_0_2_4), 
           .COUT(co_Multiplier_0_2_5), .S0(s_Multiplier_0_2_11), .S1(s_Multiplier_0_2_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_6 (.A0(f_s_Multiplier_0_0_13), .A1(f_s_Multiplier_0_0_14), 
           .B0(f_s_Multiplier_0_1_13), .B1(f_s_Multiplier_0_1_14), .CI(co_Multiplier_0_2_5), 
           .COUT(co_Multiplier_0_2_6), .S0(s_Multiplier_0_2_13), .S1(s_Multiplier_0_2_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_7 (.A0(f_s_Multiplier_0_0_15), .A1(GND_net), 
           .B0(f_s_Multiplier_0_1_15), .B1(f_s_Multiplier_0_1_16), .CI(co_Multiplier_0_2_6), 
           .COUT(co_Multiplier_0_2_7), .S0(s_Multiplier_0_2_15), .S1(s_Multiplier_0_2_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_8 (.A0(GND_net), .A1(GND_net), .B0(f_s_Multiplier_0_1_17), 
           .B1(f_s_Multiplier_0_1_18), .CI(co_Multiplier_0_2_7), .COUT(co_Multiplier_0_2_8), 
           .S0(s_Multiplier_0_2_17), .S1(s_Multiplier_0_2_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Multiplier_0_add_2_9 (.A0(GND_net), .A1(GND_net), .B0(f_s_Multiplier_0_1_19), 
           .B1(GND_net), .CI(co_Multiplier_0_2_8), .S0(s_Multiplier_0_2_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B Cadd_t_Multiplier_0_3_1 (.A0(GND_net), .A1(s_Multiplier_0_2_8), 
           .B0(GND_net), .B1(f_Multiplier_0_pp_4_8), .CI(GND_net), .COUT(co_t_Multiplier_0_3_1), 
           .S1(rego_o_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B t_Multiplier_0_add_3_2 (.A0(s_Multiplier_0_2_9), .A1(s_Multiplier_0_2_10), 
           .B0(f_Multiplier_0_pp_4_9), .B1(f_Multiplier_0_pp_4_10), .CI(co_t_Multiplier_0_3_1), 
           .COUT(co_t_Multiplier_0_3_2), .S0(rego_o_9), .S1(rego_o_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B t_Multiplier_0_add_3_3 (.A0(s_Multiplier_0_2_11), .A1(s_Multiplier_0_2_12), 
           .B0(f_Multiplier_0_pp_4_11), .B1(f_Multiplier_0_pp_4_12), .CI(co_t_Multiplier_0_3_2), 
           .COUT(co_t_Multiplier_0_3_3), .S0(rego_o_11), .S1(rego_o_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B t_Multiplier_0_add_3_4 (.A0(s_Multiplier_0_2_13), .A1(s_Multiplier_0_2_14), 
           .B0(f_Multiplier_0_pp_4_13), .B1(f_Multiplier_0_pp_4_14), .CI(co_t_Multiplier_0_3_3), 
           .COUT(co_t_Multiplier_0_3_4), .S0(rego_o_13), .S1(rego_o_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B t_Multiplier_0_add_3_5 (.A0(s_Multiplier_0_2_15), .A1(s_Multiplier_0_2_16), 
           .B0(f_Multiplier_0_pp_4_15), .B1(f_Multiplier_0_pp_4_16), .CI(co_t_Multiplier_0_3_4), 
           .COUT(co_t_Multiplier_0_3_5), .S0(rego_o_15), .S1(rego_o_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B t_Multiplier_0_add_3_6 (.A0(s_Multiplier_0_2_17), .A1(s_Multiplier_0_2_18), 
           .B0(f_Multiplier_0_pp_4_17), .B1(f_Multiplier_0_pp_4_18), .CI(co_t_Multiplier_0_3_5), 
           .COUT(co_t_Multiplier_0_3_6), .S0(rego_o_17), .S1(rego_o_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    FADD2B t_Multiplier_0_add_3_7 (.A0(s_Multiplier_0_2_19), .A1(GND_net), 
           .B0(f_Multiplier_0_pp_4_19), .B1(GND_net), .CI(co_t_Multiplier_0_3_6), 
           .S0(rego_o_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_0_0 (.A0(rega_a_0), .A1(rega_a_1), .A2(rega_a_1), 
          .A3(rega_a_2), .B0(regb_b_1), .B1(regb_b_0), .B2(regb_b_1), 
          .B3(regb_b_0), .CI(Multiplier_0_cin_lr_0), .CO(mco), .P0(Multiplier_0_pp_0_1), 
          .P1(Multiplier_0_pp_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_0_1 (.A0(rega_a_2), .A1(rega_a_3), .A2(rega_a_3), 
          .A3(rega_a_4), .B0(regb_b_1), .B1(regb_b_0), .B2(regb_b_1), 
          .B3(regb_b_0), .CI(mco), .CO(mco_1), .P0(Multiplier_0_pp_0_3), 
          .P1(Multiplier_0_pp_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_0_2 (.A0(rega_a_4), .A1(rega_a_5), .A2(rega_a_5), 
          .A3(rega_a_6), .B0(regb_b_1), .B1(regb_b_0), .B2(regb_b_1), 
          .B3(regb_b_0), .CI(mco_1), .CO(mco_2), .P0(Multiplier_0_pp_0_5), 
          .P1(Multiplier_0_pp_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_0_3 (.A0(rega_a_6), .A1(rega_a_7), .A2(rega_a_7), 
          .A3(rega_a_8), .B0(regb_b_1), .B1(regb_b_0), .B2(regb_b_1), 
          .B3(regb_b_0), .CI(mco_2), .CO(mco_3), .P0(Multiplier_0_pp_0_7), 
          .P1(Multiplier_0_pp_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_0_4 (.A0(rega_a_8), .A1(Multiplier_0_mult_0_4_n2), 
          .A2(Multiplier_0_mult_0_4_n1), .A3(VCC_net), .B0(regb_b_1), 
          .B1(VCC_net), .B2(VCC_net), .B3(VCC_net), .CI(mco_3), .CO(mfco), 
          .P0(Multiplier_0_pp_0_9), .P1(Multiplier_0_pp_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_2_0 (.A0(rega_a_0), .A1(rega_a_1), .A2(rega_a_1), 
          .A3(rega_a_2), .B0(regb_b_3), .B1(regb_b_2), .B2(regb_b_3), 
          .B3(regb_b_2), .CI(Multiplier_0_cin_lr_2), .CO(mco_4), .P0(Multiplier_0_pp_1_3), 
          .P1(Multiplier_0_pp_1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_2_1 (.A0(rega_a_2), .A1(rega_a_3), .A2(rega_a_3), 
          .A3(rega_a_4), .B0(regb_b_3), .B1(regb_b_2), .B2(regb_b_3), 
          .B3(regb_b_2), .CI(mco_4), .CO(mco_5), .P0(Multiplier_0_pp_1_5), 
          .P1(Multiplier_0_pp_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_2_2 (.A0(rega_a_4), .A1(rega_a_5), .A2(rega_a_5), 
          .A3(rega_a_6), .B0(regb_b_3), .B1(regb_b_2), .B2(regb_b_3), 
          .B3(regb_b_2), .CI(mco_5), .CO(mco_6), .P0(Multiplier_0_pp_1_7), 
          .P1(Multiplier_0_pp_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_2_3 (.A0(rega_a_6), .A1(rega_a_7), .A2(rega_a_7), 
          .A3(rega_a_8), .B0(regb_b_3), .B1(regb_b_2), .B2(regb_b_3), 
          .B3(regb_b_2), .CI(mco_6), .CO(mco_7), .P0(Multiplier_0_pp_1_9), 
          .P1(Multiplier_0_pp_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_2_4 (.A0(rega_a_8), .A1(Multiplier_0_mult_2_4_n2), 
          .A2(Multiplier_0_mult_2_4_n1), .A3(GND_net), .B0(regb_b_3), 
          .B1(VCC_net), .B2(VCC_net), .B3(regb_b_2), .CI(mco_7), .CO(mfco_1), 
          .P0(Multiplier_0_pp_1_11), .P1(Multiplier_0_pp_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_4_0 (.A0(rega_a_0), .A1(rega_a_1), .A2(rega_a_1), 
          .A3(rega_a_2), .B0(regb_b_5), .B1(regb_b_4), .B2(regb_b_5), 
          .B3(regb_b_4), .CI(Multiplier_0_cin_lr_4), .CO(mco_8), .P0(Multiplier_0_pp_2_5), 
          .P1(Multiplier_0_pp_2_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_4_1 (.A0(rega_a_2), .A1(rega_a_3), .A2(rega_a_3), 
          .A3(rega_a_4), .B0(regb_b_5), .B1(regb_b_4), .B2(regb_b_5), 
          .B3(regb_b_4), .CI(mco_8), .CO(mco_9), .P0(Multiplier_0_pp_2_7), 
          .P1(Multiplier_0_pp_2_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_4_2 (.A0(rega_a_4), .A1(rega_a_5), .A2(rega_a_5), 
          .A3(rega_a_6), .B0(regb_b_5), .B1(regb_b_4), .B2(regb_b_5), 
          .B3(regb_b_4), .CI(mco_9), .CO(mco_10), .P0(Multiplier_0_pp_2_9), 
          .P1(Multiplier_0_pp_2_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_4_3 (.A0(rega_a_6), .A1(rega_a_7), .A2(rega_a_7), 
          .A3(rega_a_8), .B0(regb_b_5), .B1(regb_b_4), .B2(regb_b_5), 
          .B3(regb_b_4), .CI(mco_10), .CO(mco_11), .P0(Multiplier_0_pp_2_11), 
          .P1(Multiplier_0_pp_2_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_4_4 (.A0(rega_a_8), .A1(Multiplier_0_mult_4_4_n2), 
          .A2(Multiplier_0_mult_4_4_n1), .A3(GND_net), .B0(regb_b_5), 
          .B1(VCC_net), .B2(VCC_net), .B3(regb_b_4), .CI(mco_11), .CO(mfco_2), 
          .P0(Multiplier_0_pp_2_13), .P1(Multiplier_0_pp_2_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_6_0 (.A0(rega_a_0), .A1(rega_a_1), .A2(rega_a_1), 
          .A3(rega_a_2), .B0(regb_b_7), .B1(regb_b_6), .B2(regb_b_7), 
          .B3(regb_b_6), .CI(Multiplier_0_cin_lr_6), .CO(mco_12), .P0(Multiplier_0_pp_3_7), 
          .P1(Multiplier_0_pp_3_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_6_1 (.A0(rega_a_2), .A1(rega_a_3), .A2(rega_a_3), 
          .A3(rega_a_4), .B0(regb_b_7), .B1(regb_b_6), .B2(regb_b_7), 
          .B3(regb_b_6), .CI(mco_12), .CO(mco_13), .P0(Multiplier_0_pp_3_9), 
          .P1(Multiplier_0_pp_3_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_6_2 (.A0(rega_a_4), .A1(rega_a_5), .A2(rega_a_5), 
          .A3(rega_a_6), .B0(regb_b_7), .B1(regb_b_6), .B2(regb_b_7), 
          .B3(regb_b_6), .CI(mco_13), .CO(mco_14), .P0(Multiplier_0_pp_3_11), 
          .P1(Multiplier_0_pp_3_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_6_3 (.A0(rega_a_6), .A1(rega_a_7), .A2(rega_a_7), 
          .A3(rega_a_8), .B0(regb_b_7), .B1(regb_b_6), .B2(regb_b_7), 
          .B3(regb_b_6), .CI(mco_14), .CO(mco_15), .P0(Multiplier_0_pp_3_13), 
          .P1(Multiplier_0_pp_3_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_6_4 (.A0(rega_a_8), .A1(Multiplier_0_mult_6_4_n2), 
          .A2(Multiplier_0_mult_6_4_n1), .A3(GND_net), .B0(regb_b_7), 
          .B1(VCC_net), .B2(VCC_net), .B3(regb_b_6), .CI(mco_15), .CO(mfco_3), 
          .P0(Multiplier_0_pp_3_15), .P1(Multiplier_0_pp_3_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_8_0 (.A0(Multiplier_0_mult_8_0_n0), .A1(rega_a_1), 
          .A2(Multiplier_0_mult_8_0_n1), .A3(rega_a_2), .B0(VCC_net), 
          .B1(regb_b_8), .B2(VCC_net), .B3(regb_b_8), .CI(Multiplier_0_cin_lr_8), 
          .CO(mco_16), .P0(Multiplier_0_pp_4_9), .P1(Multiplier_0_pp_4_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_8_1 (.A0(Multiplier_0_mult_8_1_n0), .A1(rega_a_3), 
          .A2(Multiplier_0_mult_8_1_n1), .A3(rega_a_4), .B0(VCC_net), 
          .B1(regb_b_8), .B2(VCC_net), .B3(regb_b_8), .CI(mco_16), .CO(mco_17), 
          .P0(Multiplier_0_pp_4_11), .P1(Multiplier_0_pp_4_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_8_2 (.A0(Multiplier_0_mult_8_2_n0), .A1(rega_a_5), 
          .A2(Multiplier_0_mult_8_2_n1), .A3(rega_a_6), .B0(VCC_net), 
          .B1(regb_b_8), .B2(VCC_net), .B3(regb_b_8), .CI(mco_17), .CO(mco_18), 
          .P0(Multiplier_0_pp_4_13), .P1(Multiplier_0_pp_4_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_8_3 (.A0(Multiplier_0_mult_8_3_n0), .A1(rega_a_7), 
          .A2(Multiplier_0_mult_8_3_n1), .A3(rega_a_8), .B0(VCC_net), 
          .B1(regb_b_8), .B2(VCC_net), .B3(regb_b_8), .CI(mco_18), .CO(mco_19), 
          .P0(Multiplier_0_pp_4_15), .P1(Multiplier_0_pp_4_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    MULT2 Multiplier_0_mult_8_4 (.A0(Multiplier_0_mult_8_4_n0), .A1(Multiplier_0_mult_8_4_n2), 
          .A2(rega_a_9), .A3(GND_net), .B0(VCC_net), .B1(VCC_net), .B2(regb_b_9), 
          .B3(regb_b_8), .CI(mco_19), .CO(mfco_4), .P0(Multiplier_0_pp_4_17), 
          .P1(Multiplier_0_pp_4_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t21 (.A(rega_a_9), .B(regb_b_0), .Z(Multiplier_0_mult_0_4_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    AND2 AND2_t22 (.A(rega_a_0), .B(regb_b_0), .Z(Multiplier_0_pp_0_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/multiplier.v(285[10:72])
    ND2 ND2_t18 (.A(rega_a_9), .B(regb_b_2), .Z(Multiplier_0_mult_2_4_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t15 (.A(rega_a_9), .B(regb_b_4), .Z(Multiplier_0_mult_4_4_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t12 (.A(rega_a_9), .B(regb_b_6), .Z(Multiplier_0_mult_6_4_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    ND2 ND2_t9 (.A(rega_a_1), .B(regb_b_9), .Z(Multiplier_0_mult_8_0_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=62, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(62[12] 69[2])
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (XIn_c, osc_clk, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input XIn_c;
    output osc_clk;
    input GND_net;
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(22[8:11])
    wire osc_clk /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(54[7:14])
    
    EHXPLLJ PLLInst_0 (.CLKI(XIn_c), .CLKFB(osc_clk), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="120.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=73 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(71[5] 73[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 15;
    defparam PLLInst_0.CLKOP_DIV = 4;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 3;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module PLL_TX
//

module PLL_TX (TX_NCO_c_9, TX_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input TX_NCO_c_9;
    output TX_c;
    input GND_net;
    
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:15])
    wire TX_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    
    EHXPLLJ PLLInst_0 (.CLKI(TX_NCO_c_9), .CLKFB(TX_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(TX_c)) /* synthesis FREQUENCY_PIN_CLKOP="22.000000", FREQUENCY_PIN_CLKI="22.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=76, LSE_RLINE=79 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(76[8] 79[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 24;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 23;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module SinCos
//

module SinCos (clk_adc, VCC_net, GND_net, n594, \phase_accum[60] , 
            \phase_accum[61] , \phase_accum[62] , TX_NCO_c_9, LOSine) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_adc;
    input VCC_net;
    input GND_net;
    input n594;
    input \phase_accum[60] ;
    input \phase_accum[61] ;
    input \phase_accum[62] ;
    input TX_NCO_c_9;
    output [9:0]LOSine;
    
    wire clk_adc /* synthesis is_clock=1, SET_AS_NETWORK=clk_adc */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(30[5:12])
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:15])
    
    wire rom_addr0_r_1, rom_addr0_r_2, rom_addr0_r_4, rom_addr0_r_3, 
        rom_addr0_r_5, rom_addr0_r_6, rom_addr0_r_7, mx_ctrl_r, mx_ctrl_r_1, 
        rom_addr0_r_8, rom_addr0_r, rom_addr0_r_n, sinromoutsel, rom_dob, 
        rom_dob_10, rom_dob_n, sinout_sel_i, sinout_sel, sinout_pre_1, 
        sinout_pre_2, sinout_pre_3, sinout_pre_4, sinout_pre_5, sinout_pre_6, 
        sinout_pre_7, sinout_pre_8, sinout_pre_9, rom_addr0_r_inv, co0, 
        rom_addr0_r_n_1, rom_addr0_r_n_2, rom_addr0_r_1_inv, rom_addr0_r_2_inv, 
        co1, rom_addr0_r_n_3, rom_addr0_r_n_4, rom_addr0_r_3_inv, rom_addr0_r_4_inv, 
        co2, rom_addr0_r_n_5, rom_addr0_r_n_6, rom_addr0_r_5_inv, rom_addr0_r_6_inv, 
        co3, rom_addr0_r_n_7, rom_addr0_r_7_inv, rom_dob_inv, co0_2, 
        rom_dob_n_1, rom_dob_n_2, rom_dob_1_inv, rom_dob_2_inv, co1_2, 
        rom_dob_n_3, rom_dob_n_4, rom_dob_3_inv, rom_dob_4_inv, co2_2, 
        rom_dob_n_5, rom_dob_n_6, rom_dob_5_inv, rom_dob_6_inv, co3_2, 
        rom_dob_n_7, rom_dob_n_8, rom_dob_7_inv, rom_dob_8_inv, co4_1, 
        rom_dob_n_9, rom_dob_9_inv, rom_dob_9, rom_dob_8, rom_dob_7, 
        rom_dob_6, rom_dob_5, rom_dob_4, rom_dob_3, rom_dob_2, rom_dob_1, 
        func_or_inet, rom_addr0_r_9, rom_addr0_r_10, rom_addr0_r_11, 
        func_or_inet_1, rom_addr0_r_12, rom_addr0_r_13, rom_addr0_r_14, 
        rom_addr0_r_15, lx_ne0, lx_ne0_inv, mx_ctrl_r_inv, rom_addr0_r_n_8, 
        rom_addr0_r_n_9, rom_addr0_r_n_10, rom_addr0_r_n_11, rom_addr0_r_n_12, 
        rom_addr0_r_n_13, rom_addr0_r_n_14, rom_addr0_r_n_15, rom_dob_11, 
        rom_dob_12, rom_dob_13, rom_dob_14, rom_dob_15, rom_dob_16, 
        rom_dob_17, rom_dob_18, rom_dob_19, sinout_pre;
    
    FD1P3DX FF_32 (.D(n594), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(rom_addr0_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(402[13:88])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(n594), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(rom_addr0_r_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(405[13:88])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(n594), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(rom_addr0_r_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(411[13:88])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(n594), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(rom_addr0_r_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(408[13:88])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(n594), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(rom_addr0_r_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(414[13:88])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(\phase_accum[60] ), .SP(VCC_net), .CK(clk_adc), 
            .CD(GND_net), .Q(rom_addr0_r_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(417[13:88])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(\phase_accum[61] ), .SP(VCC_net), .CK(clk_adc), 
            .CD(GND_net), .Q(rom_addr0_r_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(420[13:88])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(\phase_accum[62] ), .SP(VCC_net), .CK(clk_adc), 
            .CD(GND_net), .Q(mx_ctrl_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(423[13:84])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(TX_NCO_c_9), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(mx_ctrl_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(426[13:86])
    defparam FF_24.GSR = "ENABLED";
    MUX21 muxb_55 (.D0(rom_addr0_r), .D1(rom_addr0_r_n), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FD1P3DX FF_22 (.D(mx_ctrl_r_1), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(sinromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(481[13] 482[26])
    defparam FF_22.GSR = "ENABLED";
    MUX21 muxb_39 (.D0(rom_dob), .D1(rom_dob_n), .SD(sinromoutsel), .Z(rom_dob_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FD1P3DX FF_20 (.D(sinout_sel_i), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(sinout_sel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(547[13] 548[24])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(sinout_pre_1), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(594[13] 595[21])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(sinout_pre_2), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(598[13] 599[21])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(sinout_pre_3), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(602[13] 603[21])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(sinout_pre_4), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(606[13] 607[21])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(sinout_pre_5), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(610[13] 611[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(sinout_pre_6), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(614[13] 615[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(sinout_pre_7), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(618[13] 619[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(sinout_pre_8), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(622[13] 623[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(sinout_pre_9), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(626[13] 627[21])
    defparam FF_10.GSR = "ENABLED";
    FADD2B neg_rom_addr0_r_n_0 (.A0(GND_net), .A1(rom_addr0_r_inv), .B0(GND_net), 
           .B1(VCC_net), .CI(GND_net), .COUT(co0), .S1(rom_addr0_r_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_addr0_r_n_1 (.A0(rom_addr0_r_1_inv), .A1(rom_addr0_r_2_inv), 
           .B0(GND_net), .B1(GND_net), .CI(co0), .COUT(co1), .S0(rom_addr0_r_n_1), 
           .S1(rom_addr0_r_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_addr0_r_n_2 (.A0(rom_addr0_r_3_inv), .A1(rom_addr0_r_4_inv), 
           .B0(GND_net), .B1(GND_net), .CI(co1), .COUT(co2), .S0(rom_addr0_r_n_3), 
           .S1(rom_addr0_r_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_addr0_r_n_3 (.A0(rom_addr0_r_5_inv), .A1(rom_addr0_r_6_inv), 
           .B0(GND_net), .B1(GND_net), .CI(co2), .COUT(co3), .S0(rom_addr0_r_n_5), 
           .S1(rom_addr0_r_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_addr0_r_n_4 (.A0(rom_addr0_r_7_inv), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co3), .S0(rom_addr0_r_n_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_dob_n_0 (.A0(GND_net), .A1(rom_dob_inv), .B0(GND_net), 
           .B1(VCC_net), .CI(GND_net), .COUT(co0_2), .S1(rom_dob_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_dob_n_1 (.A0(rom_dob_1_inv), .A1(rom_dob_2_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co0_2), .COUT(co1_2), .S0(rom_dob_n_1), 
           .S1(rom_dob_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_dob_n_2 (.A0(rom_dob_3_inv), .A1(rom_dob_4_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co1_2), .COUT(co2_2), .S0(rom_dob_n_3), 
           .S1(rom_dob_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_dob_n_3 (.A0(rom_dob_5_inv), .A1(rom_dob_6_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co2_2), .COUT(co3_2), .S0(rom_dob_n_5), 
           .S1(rom_dob_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_dob_n_4 (.A0(rom_dob_7_inv), .A1(rom_dob_8_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co3_2), .COUT(co4_1), .S0(rom_dob_n_7), 
           .S1(rom_dob_n_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FADD2B neg_rom_dob_n_5 (.A0(rom_dob_9_inv), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co4_1), .S0(rom_dob_n_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_28 (.A(rom_addr0_r_6), .Z(rom_addr0_r_6_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_29 (.A(rom_addr0_r_7), .Z(rom_addr0_r_7_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_27 (.A(rom_addr0_r_5), .Z(rom_addr0_r_5_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_26 (.A(rom_addr0_r_4), .Z(rom_addr0_r_4_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_25 (.A(rom_addr0_r_3), .Z(rom_addr0_r_3_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_24 (.A(rom_addr0_r_2), .Z(rom_addr0_r_2_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_23 (.A(rom_addr0_r_1), .Z(rom_addr0_r_1_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_22 (.A(rom_addr0_r), .Z(rom_addr0_r_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_11 (.A(rom_dob_9), .Z(rom_dob_9_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_10 (.A(rom_dob_8), .Z(rom_dob_8_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_9 (.A(rom_dob_7), .Z(rom_dob_7_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_8 (.A(rom_dob_6), .Z(rom_dob_6_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_7 (.A(rom_dob_5), .Z(rom_dob_5_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_6 (.A(rom_dob_4), .Z(rom_dob_4_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_5 (.A(rom_dob_3), .Z(rom_dob_3_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_4 (.A(rom_dob_2), .Z(rom_dob_2_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_3 (.A(rom_dob_1), .Z(rom_dob_1_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_2 (.A(rom_dob), .Z(rom_dob_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    ROM16X1A LUT4_2 (.AD0(rom_addr0_r_11), .AD1(rom_addr0_r_10), .AD2(rom_addr0_r_9), 
            .AD3(rom_addr0_r_8), .DO0(func_or_inet)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    defparam LUT4_2.initval = 16'b1111111111111110;
    ROM16X1A LUT4_1 (.AD0(rom_addr0_r_15), .AD1(rom_addr0_r_14), .AD2(rom_addr0_r_13), 
            .AD3(rom_addr0_r_12), .DO0(func_or_inet_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    defparam LUT4_1.initval = 16'b1111111111111110;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(GND_net), .AD2(func_or_inet_1), 
            .AD3(func_or_inet), .DO0(lx_ne0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    defparam LUT4_0.initval = 16'b1111111111111110;
    INV INV_1 (.A(lx_ne0), .Z(lx_ne0_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    INV INV_0 (.A(mx_ctrl_r), .Z(mx_ctrl_r_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    AND2 AND2_t1 (.A(mx_ctrl_r_inv), .B(lx_ne0_inv), .Z(sinout_sel_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(261[10:71])
    DP8KC triglut_1_0_0_1 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(rom_addr0_r_8), .ADA4(rom_addr0_r_9), 
          .ADA5(rom_addr0_r_10), .ADA6(rom_addr0_r_11), .ADA7(rom_addr0_r_12), 
          .ADA8(rom_addr0_r_13), .ADA9(rom_addr0_r_14), .ADA10(rom_addr0_r_15), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(clk_adc), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(VCC_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(rom_addr0_r_n_8), .ADB4(rom_addr0_r_n_9), 
          .ADB5(rom_addr0_r_n_10), .ADB6(rom_addr0_r_n_11), .ADB7(rom_addr0_r_n_12), 
          .ADB8(rom_addr0_r_n_13), .ADB9(rom_addr0_r_n_14), .ADB10(rom_addr0_r_n_15), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(clk_adc), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOB0(rom_dob), .DOB1(rom_dob_1), 
          .DOB2(rom_dob_2), .DOB3(rom_dob_3), .DOB4(rom_dob_4), .DOB5(rom_dob_5), 
          .DOB6(rom_dob_6), .DOB7(rom_dob_7), .DOB8(rom_dob_8)) /* synthesis MEM_LPC_FILE="SinCos.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    defparam triglut_1_0_0_1.DATA_WIDTH_A = 9;
    defparam triglut_1_0_0_1.DATA_WIDTH_B = 9;
    defparam triglut_1_0_0_1.REGMODE_A = "NOREG";
    defparam triglut_1_0_0_1.REGMODE_B = "NOREG";
    defparam triglut_1_0_0_1.CSDECODE_A = "0b000";
    defparam triglut_1_0_0_1.CSDECODE_B = "0b000";
    defparam triglut_1_0_0_1.WRITEMODE_A = "NORMAL";
    defparam triglut_1_0_0_1.WRITEMODE_B = "NORMAL";
    defparam triglut_1_0_0_1.GSR = "ENABLED";
    defparam triglut_1_0_0_1.RESETMODE = "ASYNC";
    defparam triglut_1_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam triglut_1_0_0_1.INIT_DATA = "STATIC";
    defparam triglut_1_0_0_1.INITVAL_00 = "0x1F6FC1F8FC1F8FD1FAFD1FAFE1FCFE1FCFE1FEFF1FEFF1FEFF1FF002010020100201002010020100";
    defparam triglut_1_0_0_1.INITVAL_01 = "0x1DAEE1DCEF1DEF01E2F11E4F21E6F31E8F41EAF51EAF61ECF71EEF81F0F81F2F91F2FA1F4FA1F6FB";
    defparam triglut_1_0_0_1.INITVAL_02 = "0x1ACD71AED81B2DA1B6DC1B8DD1BCDF1C0E01C2E21C6E31C8E51CAE61CEE71D0E91D2EA1D6EB1D8ED";
    defparam triglut_1_0_0_1.INITVAL_03 = "0x16CB7170B9174BC17ABE17EC0182C2186C418AC618EC8192CA196CC19ACE19ECF1A0D11A4D31A8D5";
    defparam triglut_1_0_0_1.INITVAL_04 = "0x120911249312A9612E981349B1389D13EA0142A2148A514CA7150AA156AC15AAE15EB1164B3168B5";
    defparam triglut_1_0_0_1.INITVAL_05 = "0x0C6650CC680D26B0D86D0DE700E4730EA760EE790F47B0FA7E100811048410A86110891148C11A8E";
    defparam triglut_1_0_0_1.INITVAL_06 = "0x0663506E380743B07A3E080410864408C470924A0984D09E500A4530AA560B0590B65C0BC5F0C262";
    defparam triglut_1_0_0_1.INITVAL_07 = "0x0040300A06010090160D01C100221302816030190361C03C1F042220482604E290542C05A2F06032";
    defparam triglut_1_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC triglut_1_0_1_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(rom_addr0_r_8), .ADA4(rom_addr0_r_9), 
          .ADA5(rom_addr0_r_10), .ADA6(rom_addr0_r_11), .ADA7(rom_addr0_r_12), 
          .ADA8(rom_addr0_r_13), .ADA9(rom_addr0_r_14), .ADA10(rom_addr0_r_15), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(clk_adc), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(VCC_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(rom_addr0_r_n_8), .ADB4(rom_addr0_r_n_9), 
          .ADB5(rom_addr0_r_n_10), .ADB6(rom_addr0_r_n_11), .ADB7(rom_addr0_r_n_12), 
          .ADB8(rom_addr0_r_n_13), .ADB9(rom_addr0_r_n_14), .ADB10(rom_addr0_r_n_15), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(clk_adc), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOB0(rom_dob_9)) /* synthesis MEM_LPC_FILE="SinCos.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    defparam triglut_1_0_1_0.DATA_WIDTH_A = 9;
    defparam triglut_1_0_1_0.DATA_WIDTH_B = 9;
    defparam triglut_1_0_1_0.REGMODE_A = "NOREG";
    defparam triglut_1_0_1_0.REGMODE_B = "NOREG";
    defparam triglut_1_0_1_0.CSDECODE_A = "0b000";
    defparam triglut_1_0_1_0.CSDECODE_B = "0b000";
    defparam triglut_1_0_1_0.WRITEMODE_A = "NORMAL";
    defparam triglut_1_0_1_0.WRITEMODE_B = "NORMAL";
    defparam triglut_1_0_1_0.GSR = "ENABLED";
    defparam triglut_1_0_1_0.RESETMODE = "ASYNC";
    defparam triglut_1_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam triglut_1_0_1_0.INIT_DATA = "STATIC";
    defparam triglut_1_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam triglut_1_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3DX FF_33 (.D(n594), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(rom_addr0_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(399[13:86])
    defparam FF_33.GSR = "ENABLED";
    MUX21 muxb_54 (.D0(rom_addr0_r_1), .D1(rom_addr0_r_n_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_53 (.D0(rom_addr0_r_2), .D1(rom_addr0_r_n_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_52 (.D0(rom_addr0_r_3), .D1(rom_addr0_r_n_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_51 (.D0(rom_addr0_r_4), .D1(rom_addr0_r_n_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_50 (.D0(rom_addr0_r_5), .D1(rom_addr0_r_n_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_49 (.D0(rom_addr0_r_6), .D1(rom_addr0_r_n_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_48 (.D0(rom_addr0_r_7), .D1(rom_addr0_r_n_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_47 (.D0(rom_addr0_r_n), .D1(rom_addr0_r), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_46 (.D0(rom_addr0_r_n_1), .D1(rom_addr0_r_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_45 (.D0(rom_addr0_r_n_2), .D1(rom_addr0_r_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_44 (.D0(rom_addr0_r_n_3), .D1(rom_addr0_r_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_43 (.D0(rom_addr0_r_n_4), .D1(rom_addr0_r_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_42 (.D0(rom_addr0_r_n_5), .D1(rom_addr0_r_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_41 (.D0(rom_addr0_r_n_6), .D1(rom_addr0_r_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_40 (.D0(rom_addr0_r_n_7), .D1(rom_addr0_r_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_38 (.D0(rom_dob_1), .D1(rom_dob_n_1), .SD(sinromoutsel), 
          .Z(rom_dob_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_37 (.D0(rom_dob_2), .D1(rom_dob_n_2), .SD(sinromoutsel), 
          .Z(rom_dob_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_36 (.D0(rom_dob_3), .D1(rom_dob_n_3), .SD(sinromoutsel), 
          .Z(rom_dob_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_35 (.D0(rom_dob_4), .D1(rom_dob_n_4), .SD(sinromoutsel), 
          .Z(rom_dob_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_34 (.D0(rom_dob_5), .D1(rom_dob_n_5), .SD(sinromoutsel), 
          .Z(rom_dob_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_33 (.D0(rom_dob_6), .D1(rom_dob_n_6), .SD(sinromoutsel), 
          .Z(rom_dob_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_32 (.D0(rom_dob_7), .D1(rom_dob_n_7), .SD(sinromoutsel), 
          .Z(rom_dob_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_31 (.D0(rom_dob_8), .D1(rom_dob_n_8), .SD(sinromoutsel), 
          .Z(rom_dob_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_30 (.D0(rom_dob_9), .D1(rom_dob_n_9), .SD(sinromoutsel), 
          .Z(rom_dob_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_18 (.D0(rom_dob_10), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_16 (.D0(rom_dob_11), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_14 (.D0(rom_dob_12), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_12 (.D0(rom_dob_13), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_10 (.D0(rom_dob_14), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_8 (.D0(rom_dob_15), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_6 (.D0(rom_dob_16), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_4 (.D0(rom_dob_17), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_2 (.D0(rom_dob_18), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    MUX21 muxb_0 (.D0(rom_dob_19), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(44[8] 51[2])
    FD1P3DX FF_19 (.D(sinout_pre), .SP(VCC_net), .CK(clk_adc), .CD(GND_net), 
            .Q(LOSine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=51 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(591[13:84])
    defparam FF_19.GSR = "ENABLED";
    
endmodule
