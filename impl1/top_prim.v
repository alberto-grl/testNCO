// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Tue Oct 29 21:13:55 2024
//
// Verilog Description of module top
//

module top (MYLED, LOSine, TX, clk_adc, TX_NCO, XIn) /* synthesis syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(14[8:11])
    output [7:0]MYLED;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    output [9:0]LOSine;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    output TX;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(18[9:11])
    output clk_adc;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:16])
    output TX_NCO;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[9:15])
    input XIn;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[8:11])
    
    wire TX_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(18[9:11])
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[9:15])
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[8:11])
    wire clk_adc_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_adc_c */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:16])
    wire osc_clk /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(52[7:14])
    
    wire GND_net, VCC_net, LOSine_c_9, LOSine_c_8, LOSine_c_7, LOSine_c_6, 
        LOSine_c_5, LOSine_c_4, LOSine_c_3, LOSine_c_2, LOSine_c_1, 
        LOSine_c_0;
    wire [63:0]phase_accum;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(23[13:24])
    
    wire clk_adc_N_2, n574;
    
    VHI i2 (.Z(VCC_net));
    nco_sig ncoGen (.\phase_accum[60] (phase_accum[60]), .osc_clk(osc_clk), 
            .\phase_accum[61] (phase_accum[61]), .\phase_accum[62] (phase_accum[62]), 
            .TX_NCO_c_9(TX_NCO_c_9)) /* synthesis syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(51[10] 57[2])
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(61[5] 63[2])
    PUR PUR_INST (.PUR(VCC_net)) /* synthesis syn_instantiated=1 */ ;
    defparam PUR_INST.RST_PULSE = 1;
    OB MYLED_pad_0 (.I(GND_net), .O(MYLED[0]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_1 (.I(GND_net), .O(MYLED[1]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB LOSine_pad_4 (.I(LOSine_c_4), .O(LOSine[4]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB MYLED_pad_2 (.I(GND_net), .O(MYLED[2]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB LOSine_pad_5 (.I(LOSine_c_5), .O(LOSine[5]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB MYLED_pad_3 (.I(GND_net), .O(MYLED[3]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB LOSine_pad_6 (.I(LOSine_c_6), .O(LOSine[6]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB LOSine_pad_2 (.I(LOSine_c_2), .O(LOSine[2]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB MYLED_pad_4 (.I(VCC_net), .O(MYLED[4]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB LOSine_pad_7 (.I(LOSine_c_7), .O(LOSine[7]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB LOSine_pad_8 (.I(LOSine_c_8), .O(LOSine[8]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB MYLED_pad_5 (.I(VCC_net), .O(MYLED[5]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_6 (.I(GND_net), .O(MYLED[6]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    FD1S3AX clk_adc_9 (.D(clk_adc_N_2), .CK(osc_clk), .Q(clk_adc_c));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(76[8] 90[6])
    defparam clk_adc_9.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    OB LOSine_pad_3 (.I(LOSine_c_3), .O(LOSine[3]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB MYLED_pad_7 (.I(GND_net), .O(MYLED[7]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[8:11])
    OB TX_NCO_pad (.I(TX_NCO_c_9), .O(TX_NCO));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[9:15])
    OB clk_adc_pad (.I(clk_adc_c), .O(clk_adc));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:16])
    OB TX_pad (.I(TX_c), .O(TX));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(18[9:11])
    OB LOSine_pad_0 (.I(LOSine_c_0), .O(LOSine[0]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    OB LOSine_pad_1 (.I(LOSine_c_1), .O(LOSine[1]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    PLL_TX PLL2 (.TX_NCO_c_9(TX_NCO_c_9), .TX_c(TX_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(66[8] 69[2])
    OB LOSine_pad_9 (.I(LOSine_c_9), .O(LOSine[9]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[15:21])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    SinCos SinCos1 (.clk_adc_c(clk_adc_c), .VCC_net(VCC_net), .GND_net(GND_net), 
           .n574(n574), .\phase_accum[60] (phase_accum[60]), .\phase_accum[61] (phase_accum[61]), 
           .\phase_accum[62] (phase_accum[62]), .TX_NCO_c_9(TX_NCO_c_9), 
           .LOSine_c_1(LOSine_c_1), .LOSine_c_2(LOSine_c_2), .LOSine_c_3(LOSine_c_3), 
           .LOSine_c_4(LOSine_c_4), .LOSine_c_5(LOSine_c_5), .LOSine_c_6(LOSine_c_6), 
           .LOSine_c_7(LOSine_c_7), .LOSine_c_8(LOSine_c_8), .LOSine_c_9(LOSine_c_9), 
           .LOSine_c_0(LOSine_c_0)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    LUT4 clk_adc_I_0_1_lut (.A(clk_adc_c), .Z(clk_adc_N_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(79[13:21])
    defparam clk_adc_I_0_1_lut.init = 16'h5555;
    LUT4 m0_lut (.Z(n574)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
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
    
    wire osc_clk /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(52[7:14])
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[9:15])
    wire [63:0]phase_accum_63__N_3;
    
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_3[60]), .CK(osc_clk), 
            .Q(\phase_accum[60] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=51, LSE_RLINE=57 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
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
            .Q(\phase_accum[61] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=51, LSE_RLINE=57 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_3[62]), .CK(osc_clk), 
            .Q(\phase_accum[62] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=51, LSE_RLINE=57 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_3[63]), .CK(osc_clk), 
            .Q(TX_NCO_c_9)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=51, LSE_RLINE=57 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    LUT4 i35_1_lut (.A(\phase_accum[60] ), .Z(phase_accum_63__N_3[60])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(34[17:45])
    defparam i35_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (XIn_c, osc_clk, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input XIn_c;
    output osc_clk;
    input GND_net;
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(21[8:11])
    wire osc_clk /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(52[7:14])
    
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
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="120.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=63 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(61[5] 63[2])
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
    
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[9:15])
    wire TX_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(18[9:11])
    
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
            .PLLADDR4(GND_net), .CLKOP(TX_c)) /* synthesis FREQUENCY_PIN_CLKOP="22.000000", FREQUENCY_PIN_CLKI="22.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=69 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(66[8] 69[2])
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

module SinCos (clk_adc_c, VCC_net, GND_net, n574, \phase_accum[60] , 
            \phase_accum[61] , \phase_accum[62] , TX_NCO_c_9, LOSine_c_1, 
            LOSine_c_2, LOSine_c_3, LOSine_c_4, LOSine_c_5, LOSine_c_6, 
            LOSine_c_7, LOSine_c_8, LOSine_c_9, LOSine_c_0) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_adc_c;
    input VCC_net;
    input GND_net;
    input n574;
    input \phase_accum[60] ;
    input \phase_accum[61] ;
    input \phase_accum[62] ;
    input TX_NCO_c_9;
    output LOSine_c_1;
    output LOSine_c_2;
    output LOSine_c_3;
    output LOSine_c_4;
    output LOSine_c_5;
    output LOSine_c_6;
    output LOSine_c_7;
    output LOSine_c_8;
    output LOSine_c_9;
    output LOSine_c_0;
    
    wire clk_adc_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_adc_c */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[9:16])
    wire TX_NCO_c_9 /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(20[9:15])
    
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
    
    FD1P3DX FF_32 (.D(n574), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(rom_addr0_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(402[13:88])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(n574), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(rom_addr0_r_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(405[13:88])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(n574), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(rom_addr0_r_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(411[13:88])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(n574), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(rom_addr0_r_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(408[13:88])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(n574), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(rom_addr0_r_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(414[13:88])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(\phase_accum[60] ), .SP(VCC_net), .CK(clk_adc_c), 
            .CD(GND_net), .Q(rom_addr0_r_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(417[13:88])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(\phase_accum[61] ), .SP(VCC_net), .CK(clk_adc_c), 
            .CD(GND_net), .Q(rom_addr0_r_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(420[13:88])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(\phase_accum[62] ), .SP(VCC_net), .CK(clk_adc_c), 
            .CD(GND_net), .Q(mx_ctrl_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(423[13:84])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(TX_NCO_c_9), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(mx_ctrl_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(426[13:86])
    defparam FF_24.GSR = "ENABLED";
    MUX21 muxb_55 (.D0(rom_addr0_r), .D1(rom_addr0_r_n), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FD1P3DX FF_22 (.D(mx_ctrl_r_1), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(sinromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(481[13] 482[26])
    defparam FF_22.GSR = "ENABLED";
    MUX21 muxb_39 (.D0(rom_dob), .D1(rom_dob_n), .SD(sinromoutsel), .Z(rom_dob_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FD1P3DX FF_20 (.D(sinout_sel_i), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(sinout_sel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(547[13] 548[24])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(sinout_pre_1), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(594[13] 595[21])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(sinout_pre_2), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(598[13] 599[21])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(sinout_pre_3), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(602[13] 603[21])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(sinout_pre_4), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(606[13] 607[21])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(sinout_pre_5), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(610[13] 611[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(sinout_pre_6), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(614[13] 615[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(sinout_pre_7), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(618[13] 619[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(sinout_pre_8), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(622[13] 623[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(sinout_pre_9), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(626[13] 627[21])
    defparam FF_10.GSR = "ENABLED";
    FADD2B neg_rom_addr0_r_n_0 (.A0(GND_net), .A1(rom_addr0_r_inv), .B0(GND_net), 
           .B1(VCC_net), .CI(GND_net), .COUT(co0), .S1(rom_addr0_r_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_addr0_r_n_1 (.A0(rom_addr0_r_1_inv), .A1(rom_addr0_r_2_inv), 
           .B0(GND_net), .B1(GND_net), .CI(co0), .COUT(co1), .S0(rom_addr0_r_n_1), 
           .S1(rom_addr0_r_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_addr0_r_n_2 (.A0(rom_addr0_r_3_inv), .A1(rom_addr0_r_4_inv), 
           .B0(GND_net), .B1(GND_net), .CI(co1), .COUT(co2), .S0(rom_addr0_r_n_3), 
           .S1(rom_addr0_r_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_addr0_r_n_3 (.A0(rom_addr0_r_5_inv), .A1(rom_addr0_r_6_inv), 
           .B0(GND_net), .B1(GND_net), .CI(co2), .COUT(co3), .S0(rom_addr0_r_n_5), 
           .S1(rom_addr0_r_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_addr0_r_n_4 (.A0(rom_addr0_r_7_inv), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co3), .S0(rom_addr0_r_n_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_dob_n_0 (.A0(GND_net), .A1(rom_dob_inv), .B0(GND_net), 
           .B1(VCC_net), .CI(GND_net), .COUT(co0_2), .S1(rom_dob_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_dob_n_1 (.A0(rom_dob_1_inv), .A1(rom_dob_2_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co0_2), .COUT(co1_2), .S0(rom_dob_n_1), 
           .S1(rom_dob_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_dob_n_2 (.A0(rom_dob_3_inv), .A1(rom_dob_4_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co1_2), .COUT(co2_2), .S0(rom_dob_n_3), 
           .S1(rom_dob_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_dob_n_3 (.A0(rom_dob_5_inv), .A1(rom_dob_6_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co2_2), .COUT(co3_2), .S0(rom_dob_n_5), 
           .S1(rom_dob_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_dob_n_4 (.A0(rom_dob_7_inv), .A1(rom_dob_8_inv), .B0(GND_net), 
           .B1(GND_net), .CI(co3_2), .COUT(co4_1), .S0(rom_dob_n_7), 
           .S1(rom_dob_n_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FADD2B neg_rom_dob_n_5 (.A0(rom_dob_9_inv), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co4_1), .S0(rom_dob_n_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_28 (.A(rom_addr0_r_6), .Z(rom_addr0_r_6_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_29 (.A(rom_addr0_r_7), .Z(rom_addr0_r_7_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_27 (.A(rom_addr0_r_5), .Z(rom_addr0_r_5_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_26 (.A(rom_addr0_r_4), .Z(rom_addr0_r_4_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_25 (.A(rom_addr0_r_3), .Z(rom_addr0_r_3_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_24 (.A(rom_addr0_r_2), .Z(rom_addr0_r_2_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_23 (.A(rom_addr0_r_1), .Z(rom_addr0_r_1_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_22 (.A(rom_addr0_r), .Z(rom_addr0_r_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_11 (.A(rom_dob_9), .Z(rom_dob_9_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_10 (.A(rom_dob_8), .Z(rom_dob_8_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_9 (.A(rom_dob_7), .Z(rom_dob_7_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_8 (.A(rom_dob_6), .Z(rom_dob_6_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_7 (.A(rom_dob_5), .Z(rom_dob_5_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_6 (.A(rom_dob_4), .Z(rom_dob_4_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_5 (.A(rom_dob_3), .Z(rom_dob_3_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_4 (.A(rom_dob_2), .Z(rom_dob_2_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_3 (.A(rom_dob_1), .Z(rom_dob_1_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_2 (.A(rom_dob), .Z(rom_dob_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    ROM16X1A LUT4_2 (.AD0(rom_addr0_r_11), .AD1(rom_addr0_r_10), .AD2(rom_addr0_r_9), 
            .AD3(rom_addr0_r_8), .DO0(func_or_inet)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    defparam LUT4_2.initval = 16'b1111111111111110;
    ROM16X1A LUT4_1 (.AD0(rom_addr0_r_15), .AD1(rom_addr0_r_14), .AD2(rom_addr0_r_13), 
            .AD3(rom_addr0_r_12), .DO0(func_or_inet_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    defparam LUT4_1.initval = 16'b1111111111111110;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(GND_net), .AD2(func_or_inet_1), 
            .AD3(func_or_inet), .DO0(lx_ne0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    defparam LUT4_0.initval = 16'b1111111111111110;
    INV INV_1 (.A(lx_ne0), .Z(lx_ne0_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    INV INV_0 (.A(mx_ctrl_r), .Z(mx_ctrl_r_inv)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    AND2 AND2_t1 (.A(mx_ctrl_r_inv), .B(lx_ne0_inv), .Z(sinout_sel_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(261[10:71])
    DP8KC triglut_1_0_0_1 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(rom_addr0_r_8), .ADA4(rom_addr0_r_9), 
          .ADA5(rom_addr0_r_10), .ADA6(rom_addr0_r_11), .ADA7(rom_addr0_r_12), 
          .ADA8(rom_addr0_r_13), .ADA9(rom_addr0_r_14), .ADA10(rom_addr0_r_15), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(clk_adc_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(VCC_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(rom_addr0_r_n_8), .ADB4(rom_addr0_r_n_9), 
          .ADB5(rom_addr0_r_n_10), .ADB6(rom_addr0_r_n_11), .ADB7(rom_addr0_r_n_12), 
          .ADB8(rom_addr0_r_n_13), .ADB9(rom_addr0_r_n_14), .ADB10(rom_addr0_r_n_15), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(clk_adc_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOB0(rom_dob), .DOB1(rom_dob_1), 
          .DOB2(rom_dob_2), .DOB3(rom_dob_3), .DOB4(rom_dob_4), .DOB5(rom_dob_5), 
          .DOB6(rom_dob_6), .DOB7(rom_dob_7), .DOB8(rom_dob_8)) /* synthesis MEM_LPC_FILE="SinCos.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
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
          .CLKA(clk_adc_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(VCC_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(rom_addr0_r_n_8), .ADB4(rom_addr0_r_n_9), 
          .ADB5(rom_addr0_r_n_10), .ADB6(rom_addr0_r_n_11), .ADB7(rom_addr0_r_n_12), 
          .ADB8(rom_addr0_r_n_13), .ADB9(rom_addr0_r_n_14), .ADB10(rom_addr0_r_n_15), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(clk_adc_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOB0(rom_dob_9)) /* synthesis MEM_LPC_FILE="SinCos.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
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
    FD1P3DX FF_33 (.D(n574), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(rom_addr0_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(399[13:86])
    defparam FF_33.GSR = "ENABLED";
    MUX21 muxb_54 (.D0(rom_addr0_r_1), .D1(rom_addr0_r_n_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_53 (.D0(rom_addr0_r_2), .D1(rom_addr0_r_n_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_52 (.D0(rom_addr0_r_3), .D1(rom_addr0_r_n_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_51 (.D0(rom_addr0_r_4), .D1(rom_addr0_r_n_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_50 (.D0(rom_addr0_r_5), .D1(rom_addr0_r_n_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_49 (.D0(rom_addr0_r_6), .D1(rom_addr0_r_n_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_48 (.D0(rom_addr0_r_7), .D1(rom_addr0_r_n_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_47 (.D0(rom_addr0_r_n), .D1(rom_addr0_r), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_46 (.D0(rom_addr0_r_n_1), .D1(rom_addr0_r_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_45 (.D0(rom_addr0_r_n_2), .D1(rom_addr0_r_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_44 (.D0(rom_addr0_r_n_3), .D1(rom_addr0_r_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_43 (.D0(rom_addr0_r_n_4), .D1(rom_addr0_r_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_42 (.D0(rom_addr0_r_n_5), .D1(rom_addr0_r_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_41 (.D0(rom_addr0_r_n_6), .D1(rom_addr0_r_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_40 (.D0(rom_addr0_r_n_7), .D1(rom_addr0_r_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_n_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_38 (.D0(rom_dob_1), .D1(rom_dob_n_1), .SD(sinromoutsel), 
          .Z(rom_dob_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_37 (.D0(rom_dob_2), .D1(rom_dob_n_2), .SD(sinromoutsel), 
          .Z(rom_dob_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_36 (.D0(rom_dob_3), .D1(rom_dob_n_3), .SD(sinromoutsel), 
          .Z(rom_dob_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_35 (.D0(rom_dob_4), .D1(rom_dob_n_4), .SD(sinromoutsel), 
          .Z(rom_dob_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_34 (.D0(rom_dob_5), .D1(rom_dob_n_5), .SD(sinromoutsel), 
          .Z(rom_dob_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_33 (.D0(rom_dob_6), .D1(rom_dob_n_6), .SD(sinromoutsel), 
          .Z(rom_dob_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_32 (.D0(rom_dob_7), .D1(rom_dob_n_7), .SD(sinromoutsel), 
          .Z(rom_dob_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_31 (.D0(rom_dob_8), .D1(rom_dob_n_8), .SD(sinromoutsel), 
          .Z(rom_dob_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_30 (.D0(rom_dob_9), .D1(rom_dob_n_9), .SD(sinromoutsel), 
          .Z(rom_dob_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_18 (.D0(rom_dob_10), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_16 (.D0(rom_dob_11), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_14 (.D0(rom_dob_12), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_12 (.D0(rom_dob_13), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_10 (.D0(rom_dob_14), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_8 (.D0(rom_dob_15), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_6 (.D0(rom_dob_16), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_4 (.D0(rom_dob_17), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_2 (.D0(rom_dob_18), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    MUX21 muxb_0 (.D0(rom_dob_19), .D1(GND_net), .SD(sinout_sel), .Z(sinout_pre_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(42[8] 49[2])
    FD1P3DX FF_19 (.D(sinout_pre), .SP(VCC_net), .CK(clk_adc_c), .CD(GND_net), 
            .Q(LOSine_c_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // c:/users/alberto/lattice/testnco/sincos.v(591[13:84])
    defparam FF_19.GSR = "ENABLED";
    
endmodule
