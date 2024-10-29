//Verilog testbench template generated by SCUBA Diamond (64-bit) 3.14.0.75.2
`timescale 1 ns / 1 ps
module tb;
    reg Clock = 0;
    reg ClkEn = 0;
    reg Aclr = 0;
    reg [9:0] DataA = 10'b0;
    reg [9:0] DataB = 10'b0;
    wire [19:0] Result;

    integer i0 = 0, i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0;

    GSR GSR_INST (.GSR(1'b1));
    PUR PUR_INST (.PUR(1'b1));

    MixerI u1 (.Clock(Clock), .ClkEn(ClkEn), .Aclr(Aclr), .DataA(DataA), 
        .DataB(DataB), .Result(Result)
    );

    always
    #5.00 Clock <= ~ Clock;

    initial
    begin
       ClkEn <= 1'b1;
    end
    initial
    begin
       Aclr <= 1'b1;
      #100;
       Aclr <= 1'b0;
    end
    initial
    begin
       DataA <= 0;
      for (i4 = 0; i4 < 200; i4 = i4 + 1) begin
        @(posedge Clock);
        #1  DataA <= DataA + 1'b1;
      end
    end
    initial
    begin
       DataB <= 0;
      for (i5 = 0; i5 < 200; i5 = i5 + 1) begin
        @(posedge Clock);
        #1  DataB <= DataB + 1'b1;
      end
    end
endmodule