/*
Standalone test of NCO for FPGARX
*/

// IP Express reference : https://www.latticesemi.com/-/media/LatticeSemi/Documents/UserManuals/EI2/FPGA-IPUG-02032-1-0-Arithmetic-Modules.ashx?document_id=52235



//`define CLOCK_IS_83_MHZ
 `define CLOCK_IS_80_MHZ



module top 
  (
   	output [7:0] MYLED,
	output TX,
	//output clk_adc,
	output TX_NCO,
	input [9:0] RFIn,
	output [19:0] MixerOutSin,
	input XIn
	);

wire [63:0] phase_accum;
wire signed [9:0] LOSine;
wire signed [9:0] LOCosine;
reg signed [63:0] phase_inc_carrGen;
reg signed [63:0] phase_inc_carrGen1;
reg clk_adc;
reg clk_adc_div;

	
	
//	GSR GSR_INST (.GSR (1'b1));


PUR PUR_INST    (.PUR(1'b1));

// inc = 2^64 * Fout / Fclock
// Python: print(hex(pow(2,64) * 1359000 // 80000000))


SinCos SinCos1 (
.Clock (clk_adc),
.ClkEn (1'b 1),
.Reset (1'b 0),
.Theta (phase_accum[63:54]),
.Sine (LOSine),
.Cosine (LOCosine)
);

nco_sig	 ncoGen (
.clk (osc_clk),
.phase_inc_carr ( phase_inc_carrGen1),
.phase_accum (phase_accum)
//.sin_out (sinGen),
//.cos_out (cosGen)
);


Multiplier MixerI  (
	.Clock (clk_adc),
    .ClkEn (1'b1),
    .Aclr (1'b1),
    .DataA (LOSine[9:0]),
    .DataB (RFIn[9:0]),
    .Result (MixerOutSin[19:0])
);

PLL PLL1 (
.CLKI (XIn),.CLKOP (osc_clk)
);

	  
PLL_TX PLL2 (
//.CLKI (phase_accum[63]),.CLKOP (TX)
.CLKI (phase_accum[63]),.CLKOP (TX)
);	  
	  
	  
assign MYLED[7:2] = 1; //phase_inc_carrGen[63:61];
assign MYLED[0] = MixerOutSin[7];
assign MYLED[1] = RFIn[7];
//assign TX = phase_accum[63];
assign TX_NCO = phase_accum[63];

always @ (posedge (osc_clk))
	begin
	phase_inc_carrGen1 <= phase_inc_carrGen;	
	clk_adc <= ~clk_adc;
/*	if(clk_adc_div)
		begin
				clk_adc <= ~clk_adc;
		end;
*/
  
 //phase_inc_carrGen <= 64'h 5AFE53579; // 1 Hz
  //phase_inc_carrGen <= 64'h 1AFE53579; // 1 Hz
  //phase_inc_carrGen <= 64'h 4000000000000000; // 30 MHz
     phase_inc_carrGen <= 64'h 3000000000000000; // 22 MHz
  end


endmodule
