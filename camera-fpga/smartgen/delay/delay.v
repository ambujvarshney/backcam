`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26


module delay(
       GL,
       CLK
    );
output GL;
input  CLK;

    wire CLKP, VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    PLLINT pllint1 (.A(CLK), .Y(CLKP));
    CLKDLY Inst1 (.CLK(CLKP), .GL(GL), .DLYGL0(VCC), .DLYGL1(VCC), 
        .DLYGL2(VCC), .DLYGL3(VCC), .DLYGL4(VCC));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.8.0.26
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LCLP
// OUTFORMAT:Verilog
// LPMTYPE:LPM_PLL_CLKDLY
// LPM_HINT:NONE
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/pyzhang/Desktop/working/backscatter-fpga/smartgen\delay
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:UM4X4M1NLPLV
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// DLYGL:32
// CLKASRC:2

// _End_Comments_

