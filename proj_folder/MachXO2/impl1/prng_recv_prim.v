// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Aug  5 01:09:15 2019
//
// Verilog Description of module prng_recv
//

module prng_recv (clk, ce, reset, rng);   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(21[8:17])
    input clk;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(27[6:9])
    input ce;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(28[6:8])
    input reset;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(29[9:14])
    output [7:0]rng;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(27[6:9])
    
    wire GND_net, VCC_net, ce_c, reset_c, rng_c_7, rng_c_6, rng_c_5, 
        rng_c_4, rng_c_3, rng_c_2, rng_c_1, rng_c_0;
    wire [7:0]rng_7__N_34;
    
    wire n167, n166, n165;
    
    VHI i2 (.Z(VCC_net));
    FD1S3IX sr_i24 (.D(rng_7__N_34[0]), .CK(clk_c), .CD(reset_c), .Q(rng_c_0)) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i24.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    IB reset_pad (.I(reset), .O(reset_c));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(29[9:14])
    IB ce_pad (.I(ce), .O(ce_c));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(28[6:8])
    IB clk_pad (.I(clk), .O(clk_c));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(27[6:9])
    FD1S3IX sr_i25 (.D(rng_7__N_34[1]), .CK(clk_c), .CD(reset_c), .Q(rng_c_1)) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i25.GSR = "ENABLED";
    FD1S3JX sr_i26 (.D(rng_7__N_34[2]), .CK(clk_c), .PD(reset_c), .Q(rng_c_2)) /* synthesis lse_init_val=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i26.GSR = "ENABLED";
    FD1S3JX sr_i27 (.D(rng_7__N_34[3]), .CK(clk_c), .PD(reset_c), .Q(rng_c_3)) /* synthesis lse_init_val=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i27.GSR = "ENABLED";
    FD1S3JX sr_i28 (.D(rng_7__N_34[4]), .CK(clk_c), .PD(reset_c), .Q(rng_c_4)) /* synthesis lse_init_val=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i28.GSR = "ENABLED";
    FD1S3JX sr_i29 (.D(rng_7__N_34[5]), .CK(clk_c), .PD(reset_c), .Q(rng_c_5)) /* synthesis lse_init_val=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i29.GSR = "ENABLED";
    FD1S3IX sr_i30 (.D(rng_7__N_34[6]), .CK(clk_c), .CD(reset_c), .Q(rng_c_6)) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i30.GSR = "ENABLED";
    FD1S3JX sr_i31 (.D(rng_7__N_34[7]), .CK(clk_c), .PD(reset_c), .Q(rng_c_7)) /* synthesis lse_init_val=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(51[9] 66[16])
    defparam sr_i31.GSR = "ENABLED";
    OB rng_pad_0 (.I(rng_c_0), .O(rng[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    OB rng_pad_1 (.I(rng_c_1), .O(rng[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    OB rng_pad_2 (.I(rng_c_2), .O(rng[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    OB rng_pad_3 (.I(rng_c_3), .O(rng[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    OB rng_pad_4 (.I(rng_c_4), .O(rng[4]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    OB rng_pad_5 (.I(rng_c_5), .O(rng[5]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    OB rng_pad_6 (.I(rng_c_6), .O(rng[6]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    OB rng_pad_7 (.I(rng_c_7), .O(rng[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/prng_recv.vhd(30[6:9])
    LUT4 i62_2_lut (.A(rng_c_0), .B(ce_c), .Z(rng_7__N_34[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i62_2_lut.init = 16'h6666;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D add_6_8 (.A0(rng_c_6), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rng_c_7), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n167), 
          .S0(rng_7__N_34[6]), .S1(rng_7__N_34[7]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_8.INIT0 = 16'h5aaa;
    defparam add_6_8.INIT1 = 16'h5aaa;
    defparam add_6_8.INJECT1_0 = "NO";
    defparam add_6_8.INJECT1_1 = "NO";
    CCU2D add_6_6 (.A0(rng_c_4), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rng_c_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n166), 
          .COUT(n167), .S0(rng_7__N_34[4]), .S1(rng_7__N_34[5]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_6.INIT0 = 16'h5aaa;
    defparam add_6_6.INIT1 = 16'h5aaa;
    defparam add_6_6.INJECT1_0 = "NO";
    defparam add_6_6.INJECT1_1 = "NO";
    CCU2D add_6_4 (.A0(rng_c_2), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rng_c_3), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n165), 
          .COUT(n166), .S0(rng_7__N_34[2]), .S1(rng_7__N_34[3]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_4.INIT0 = 16'h5aaa;
    defparam add_6_4.INIT1 = 16'h5aaa;
    defparam add_6_4.INJECT1_0 = "NO";
    defparam add_6_4.INJECT1_1 = "NO";
    CCU2D add_6_2 (.A0(rng_c_0), .B0(ce_c), .C0(GND_net), .D0(GND_net), 
          .A1(rng_c_1), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n165), 
          .S1(rng_7__N_34[1]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_2.INIT0 = 16'h7000;
    defparam add_6_2.INIT1 = 16'h5aaa;
    defparam add_6_2.INJECT1_0 = "NO";
    defparam add_6_2.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

