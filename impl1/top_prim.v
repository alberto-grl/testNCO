// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Oct 28 09:04:55 2024
//
// Verilog Description of module top
//

module top (MYLED, TX, TX_NCO, XIn) /* synthesis syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(14[8:11])
    output [7:0]MYLED;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    output TX;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    output TX_NCO;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(18[9:15])
    input XIn;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[8:11])
    
    wire TX_c /* synthesis is_clock=1, SET_AS_NETWORK=TX_c */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[8:11])
    
    wire GND_net, VCC_net, TX_NCO_c_63;
    
    VHI i2 (.Z(VCC_net));
    nco_sig ncoGen (.TX_NCO_c_63(TX_NCO_c_63), .TX_c(TX_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(39[10] 45[2])
    OB MYLED_pad_0 (.I(GND_net), .O(MYLED[0]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_5 (.I(GND_net), .O(MYLED[5]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    PLL PLL_TX (.CLKI(XIn_c), .CLKOP(TX_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(54[5] 57[2])
    OB MYLED_pad_1 (.I(GND_net), .O(MYLED[1]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    PUR PUR_INST (.PUR(VCC_net)) /* synthesis syn_instantiated=1 */ ;
    defparam PUR_INST.RST_PULSE = 1;
    OB MYLED_pad_6 (.I(VCC_net), .O(MYLED[6]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_4 (.I(GND_net), .O(MYLED[4]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_3 (.I(GND_net), .O(MYLED[3]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_7 (.I(GND_net), .O(MYLED[7]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    OB MYLED_pad_2 (.I(GND_net), .O(MYLED[2]));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(16[18:23])
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    OB TX_pad (.I(TX_c), .O(TX));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    OB TX_NCO_pad (.I(TX_NCO_c_63), .O(TX_NCO));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(18[9:15])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/alberto/lattice/testnco/impl1/source/top.v(19[8:11])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (TX_NCO_c_63, TX_c) /* synthesis syn_module_defined=1 */ ;
    output TX_NCO_c_63;
    input TX_c;
    
    wire TX_c /* synthesis is_clock=1, SET_AS_NETWORK=TX_c */ ;   // c:/users/alberto/lattice/testnco/impl1/source/top.v(17[9:11])
    wire [63:0]phase_accum;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(27[19:30])
    wire [63:0]phase_accum_63__N_1;
    
    LUT4 i20_1_lut (.A(phase_accum[62]), .Z(phase_accum_63__N_1[62])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(34[17:45])
    defparam i20_1_lut.init = 16'h5555;
    LUT4 i22_2_lut (.A(TX_NCO_c_63), .B(phase_accum[62]), .Z(phase_accum_63__N_1[63])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(34[17:45])
    defparam i22_2_lut.init = 16'h6666;
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(TX_c), .Q(phase_accum[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=45 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(TX_c), .Q(TX_NCO_c_63)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=45 */ ;   // c:/users/alberto/lattice/testnco/impl1/source/nco.v(33[7] 35[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PLL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

