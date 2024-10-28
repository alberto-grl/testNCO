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
	output TX_NCO,
	input XIn
	);
wire [63:0] phase_accum;

reg signed [63:0] phase_inc_carrGen;
reg signed [63:0] phase_inc_carrGen1;


	
	
//	GSR GSR_INST (.GSR (1'b1));


PUR PUR_INST    (.PUR(1'b1));

// inc = 2^64 * Fout / Fclock
// Python: print(hex(pow(2,64) * 1359000 // 80000000))



nco_sig	 ncoGen (
.clk (osc_clk),
.phase_inc_carr ( phase_inc_carrGen1),
.phase_accum (phase_accum)
//.sin_out (sinGen),
//.cos_out (cosGen)
);

	

PLL PLL1 (
.CLKI (XIn),.CLKOP (osc_clk)
);

	  
PLL_TX PLL2 (
//.CLKI (phase_accum[63]),.CLKOP (TX)
.CLKI (phase_accum[63]),.CLKOP (TX)
);	  
	  
	  
assign MYLED[7:0] = phase_inc_carrGen[63:56];
//assign TX = phase_accum[63];
assign TX_NCO = phase_accum[63];

always @ (posedge (osc_clk))
	begin
	phase_inc_carrGen1 <= phase_inc_carrGen;	


  
 //phase_inc_carrGen <= 64'h 5AFE53579; // 1 Hz
  //\phase_inc_carrGen <= 64'h 4000000000000000; // 30 MHz
  phase_inc_carrGen <= 64'h 3D00000000000000; // 22 MHz
  end


endmodule
