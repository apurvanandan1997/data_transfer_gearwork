// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Fri Aug  9 09:41:00 2019
//
// Verilog Description of module top
//

module top (LED, DATA_LANE, CLK_LANE, FT601_CLK, FT601_RST_N, FT601_DATA, 
            FT601_BE, FT601_RXF_N, FT601_TXE_N, FT601_WR_N, FT601_SIWU_N, 
            FT601_RD_N, FT601_OE_N);   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(26[8:11])
    output LED;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(28[9:12])
    input [4:0]DATA_LANE;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(30[9:18])
    input CLK_LANE;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(31[9:17])
    input FT601_CLK;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(33[9:18])
    output FT601_RST_N;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(34[9:20])
    output [31:0]FT601_DATA;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    output [3:0]FT601_BE;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(36[9:17])
    input FT601_RXF_N;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(37[9:20])
    input FT601_TXE_N;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(38[9:20])
    output FT601_WR_N;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(39[9:19])
    output FT601_SIWU_N;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(40[9:21])
    output FT601_RD_N;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(41[9:19])
    output FT601_OE_N;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(42[9:19])
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(33[9:18])
    wire clk_int /* synthesis SET_AS_NETWORK=clk_int, is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(156[12:19])
    
    wire GND_net, VCC_net, LED_c, FT601_DATA_c_31, FT601_DATA_c_30, 
        FT601_DATA_c_29, FT601_DATA_c_28, FT601_DATA_c_27, FT601_DATA_c_26, 
        FT601_DATA_c_25, FT601_DATA_c_24, FT601_DATA_c_23, FT601_DATA_c_22, 
        FT601_DATA_c_21, FT601_DATA_c_20, FT601_DATA_c_19, FT601_DATA_c_18, 
        FT601_DATA_c_17, FT601_DATA_c_16, FT601_DATA_c_15, FT601_DATA_c_14, 
        FT601_DATA_c_13, FT601_DATA_c_12, FT601_DATA_c_11, FT601_DATA_c_10, 
        FT601_DATA_c_9, FT601_DATA_c_8, FT601_DATA_c_7, FT601_DATA_c_6, 
        FT601_DATA_c_5, FT601_DATA_c_4, FT601_DATA_c_3, FT601_DATA_c_2, 
        FT601_DATA_c_1, FT601_DATA_c_0, tx_active_N_388, FT601_TXE_N_c, 
        FT601_WR_N_c, fifo_emp;
    wire [31:0]send_data;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(148[12:21])
    
    VHI i2 (.Z(VCC_net));
    \prng_recv("10111010110011001111000001010011")  prng_inst (.send_data({send_data}), 
            .GND_net(GND_net), .clk_int(clk_int));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(209[17:26])
    OSCH oscinst0 (.STDBY(GND_net), .OSC(clk_int)) /* synthesis NOM_FREQ="66.5", syn_instantiated=1 */ ;
    defparam oscinst0.NOM_FREQ = "66.5";
    OB FT601_DATA_pad_21 (.I(FT601_DATA_c_21), .O(FT601_DATA[21]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_22 (.I(FT601_DATA_c_22), .O(FT601_DATA[22]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_23 (.I(FT601_DATA_c_23), .O(FT601_DATA[23]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_24 (.I(FT601_DATA_c_24), .O(FT601_DATA[24]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_25 (.I(FT601_DATA_c_25), .O(FT601_DATA[25]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_26 (.I(FT601_DATA_c_26), .O(FT601_DATA[26]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    VLO i1 (.Z(GND_net));
    OB FT601_DATA_pad_27 (.I(FT601_DATA_c_27), .O(FT601_DATA[27]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_28 (.I(FT601_DATA_c_28), .O(FT601_DATA[28]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_20 (.I(FT601_DATA_c_20), .O(FT601_DATA[20]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_29 (.I(FT601_DATA_c_29), .O(FT601_DATA[29]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_30 (.I(FT601_DATA_c_30), .O(FT601_DATA[30]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_31 (.I(FT601_DATA_c_31), .O(FT601_DATA[31]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_RST_N_pad (.I(VCC_net), .O(FT601_RST_N));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(34[9:20])
    OB LED_pad (.I(LED_c), .O(LED));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(28[9:12])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    async_fifo cdc_fifo_inst (.send_data({send_data}), .clk_int(clk_int), 
            .FT601_CLK_c(FT601_CLK_c), .VCC_net(VCC_net), .tx_active_N_388(tx_active_N_388), 
            .GND_net(GND_net), .FT601_DATA_c_31(FT601_DATA_c_31), .FT601_DATA_c_30(FT601_DATA_c_30), 
            .FT601_DATA_c_29(FT601_DATA_c_29), .FT601_DATA_c_28(FT601_DATA_c_28), 
            .fifo_emp(fifo_emp), .FT601_DATA_c_19(FT601_DATA_c_19), .FT601_DATA_c_18(FT601_DATA_c_18), 
            .FT601_DATA_c_17(FT601_DATA_c_17), .FT601_DATA_c_16(FT601_DATA_c_16), 
            .FT601_DATA_c_23(FT601_DATA_c_23), .FT601_DATA_c_22(FT601_DATA_c_22), 
            .FT601_DATA_c_21(FT601_DATA_c_21), .FT601_DATA_c_20(FT601_DATA_c_20), 
            .FT601_DATA_c_11(FT601_DATA_c_11), .FT601_DATA_c_10(FT601_DATA_c_10), 
            .FT601_DATA_c_9(FT601_DATA_c_9), .FT601_DATA_c_8(FT601_DATA_c_8), 
            .FT601_DATA_c_15(FT601_DATA_c_15), .FT601_DATA_c_14(FT601_DATA_c_14), 
            .FT601_DATA_c_13(FT601_DATA_c_13), .FT601_DATA_c_12(FT601_DATA_c_12), 
            .FT601_DATA_c_3(FT601_DATA_c_3), .FT601_DATA_c_2(FT601_DATA_c_2), 
            .FT601_DATA_c_1(FT601_DATA_c_1), .FT601_DATA_c_0(FT601_DATA_c_0), 
            .FT601_DATA_c_7(FT601_DATA_c_7), .FT601_DATA_c_6(FT601_DATA_c_6), 
            .FT601_DATA_c_5(FT601_DATA_c_5), .FT601_DATA_c_4(FT601_DATA_c_4), 
            .FT601_DATA_c_27(FT601_DATA_c_27), .FT601_DATA_c_26(FT601_DATA_c_26), 
            .FT601_DATA_c_25(FT601_DATA_c_25), .FT601_DATA_c_24(FT601_DATA_c_24)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    GSR GSR_INST (.GSR(VCC_net));
    OB FT601_DATA_pad_19 (.I(FT601_DATA_c_19), .O(FT601_DATA[19]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_18 (.I(FT601_DATA_c_18), .O(FT601_DATA[18]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_17 (.I(FT601_DATA_c_17), .O(FT601_DATA[17]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_16 (.I(FT601_DATA_c_16), .O(FT601_DATA[16]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_15 (.I(FT601_DATA_c_15), .O(FT601_DATA[15]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_14 (.I(FT601_DATA_c_14), .O(FT601_DATA[14]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_13 (.I(FT601_DATA_c_13), .O(FT601_DATA[13]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_12 (.I(FT601_DATA_c_12), .O(FT601_DATA[12]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_11 (.I(FT601_DATA_c_11), .O(FT601_DATA[11]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_10 (.I(FT601_DATA_c_10), .O(FT601_DATA[10]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_9 (.I(FT601_DATA_c_9), .O(FT601_DATA[9]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_8 (.I(FT601_DATA_c_8), .O(FT601_DATA[8]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_7 (.I(FT601_DATA_c_7), .O(FT601_DATA[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_6 (.I(FT601_DATA_c_6), .O(FT601_DATA[6]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_5 (.I(FT601_DATA_c_5), .O(FT601_DATA[5]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_4 (.I(FT601_DATA_c_4), .O(FT601_DATA[4]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_3 (.I(FT601_DATA_c_3), .O(FT601_DATA[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_2 (.I(FT601_DATA_c_2), .O(FT601_DATA[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_1 (.I(FT601_DATA_c_1), .O(FT601_DATA[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_0 (.I(FT601_DATA_c_0), .O(FT601_DATA[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_BE_pad_3 (.I(VCC_net), .O(FT601_BE[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(36[9:17])
    OB FT601_BE_pad_2 (.I(VCC_net), .O(FT601_BE[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(36[9:17])
    OB FT601_BE_pad_1 (.I(VCC_net), .O(FT601_BE[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(36[9:17])
    OB FT601_BE_pad_0 (.I(VCC_net), .O(FT601_BE[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(36[9:17])
    OB FT601_WR_N_pad (.I(FT601_WR_N_c), .O(FT601_WR_N));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(39[9:19])
    OB FT601_SIWU_N_pad (.I(VCC_net), .O(FT601_SIWU_N));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(40[9:21])
    OB FT601_RD_N_pad (.I(VCC_net), .O(FT601_RD_N));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(41[9:19])
    OB FT601_OE_N_pad (.I(VCC_net), .O(FT601_OE_N));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(42[9:19])
    IB FT601_CLK_pad (.I(FT601_CLK), .O(FT601_CLK_c));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(33[9:18])
    IB FT601_TXE_N_pad (.I(FT601_TXE_N), .O(FT601_TXE_N_c));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(38[9:20])
    ft601 ft601_comp (.FT601_TXE_N_c(FT601_TXE_N_c), .fifo_emp(fifo_emp), 
          .LED_c(LED_c), .tx_active_N_388(tx_active_N_388), .FT601_WR_N_c(FT601_WR_N_c), 
          .FT601_CLK_c(FT601_CLK_c));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(236[18:35])
    
endmodule
//
// Verilog Description of module \prng_recv("10111010110011001111000001010011") 
//

module \prng_recv("10111010110011001111000001010011")  (send_data, GND_net, 
            clk_int);
    output [31:0]send_data;
    input GND_net;
    input clk_int;
    
    wire clk_int /* synthesis SET_AS_NETWORK=clk_int, is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(156[12:19])
    
    wire n462;
    wire [31:0]n133;
    
    wire n463, n461, n460, n457, n458, n471, n470, n469, n468, 
        n467, n466, n465, n464, n456, n459;
    
    CCU2D sr_i31_33_add_4_15 (.A0(send_data[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n462), .COUT(n463), .S0(n133[13]), .S1(n133[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_15.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_15.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_15.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_15.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_13 (.A0(send_data[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n461), .COUT(n462), .S0(n133[11]), .S1(n133[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_13.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_13.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_13.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_13.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_11 (.A0(send_data[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n460), .COUT(n461), .S0(n133[9]), .S1(n133[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_11.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_11.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_11.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_11.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_5 (.A0(send_data[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n457), .COUT(n458), .S0(n133[3]), .S1(n133[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_5.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_5.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_5.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_5.INJECT1_1 = "NO";
    FD1S3AX sr_i31_33__i31 (.D(n133[31]), .CK(clk_int), .Q(send_data[31])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i31.GSR = "ENABLED";
    CCU2D sr_i31_33_add_4_33 (.A0(send_data[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n471), .S0(n133[31]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_33.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_33.INIT1 = 16'h0000;
    defparam sr_i31_33_add_4_33.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_33.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_31 (.A0(send_data[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n470), .COUT(n471), .S0(n133[29]), .S1(n133[30]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_31.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_31.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_31.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_31.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_29 (.A0(send_data[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n469), .COUT(n470), .S0(n133[27]), .S1(n133[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_29.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_29.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_29.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_29.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_27 (.A0(send_data[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n468), .COUT(n469), .S0(n133[25]), .S1(n133[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_27.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_27.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_27.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_27.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_25 (.A0(send_data[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n467), .COUT(n468), .S0(n133[23]), .S1(n133[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_25.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_25.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_25.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_25.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_23 (.A0(send_data[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n466), .COUT(n467), .S0(n133[21]), .S1(n133[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_23.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_23.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_23.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_23.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_21 (.A0(send_data[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n465), .COUT(n466), .S0(n133[19]), .S1(n133[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_21.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_21.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_21.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_21.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_19 (.A0(send_data[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n464), .COUT(n465), .S0(n133[17]), .S1(n133[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_19.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_19.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_19.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_19.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_17 (.A0(send_data[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n463), .COUT(n464), .S0(n133[15]), .S1(n133[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_17.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_17.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_17.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_17.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_3 (.A0(send_data[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n456), .COUT(n457), .S0(n133[1]), .S1(n133[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_3.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_3.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_3.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_3.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_9 (.A0(send_data[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n459), .COUT(n460), .S0(n133[7]), .S1(n133[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_9.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_9.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_9.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_9.INJECT1_1 = "NO";
    CCU2D sr_i31_33_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n456), .S1(n133[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_1.INIT0 = 16'hF000;
    defparam sr_i31_33_add_4_1.INIT1 = 16'h0555;
    defparam sr_i31_33_add_4_1.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_1.INJECT1_1 = "NO";
    FD1S3AX sr_i31_33__i30 (.D(n133[30]), .CK(clk_int), .Q(send_data[30])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i30.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i29 (.D(n133[29]), .CK(clk_int), .Q(send_data[29])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i29.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i28 (.D(n133[28]), .CK(clk_int), .Q(send_data[28])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i28.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i27 (.D(n133[27]), .CK(clk_int), .Q(send_data[27])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i27.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i26 (.D(n133[26]), .CK(clk_int), .Q(send_data[26])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i26.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i25 (.D(n133[25]), .CK(clk_int), .Q(send_data[25])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i25.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i24 (.D(n133[24]), .CK(clk_int), .Q(send_data[24])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i24.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i23 (.D(n133[23]), .CK(clk_int), .Q(send_data[23])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i23.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i22 (.D(n133[22]), .CK(clk_int), .Q(send_data[22])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i22.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i21 (.D(n133[21]), .CK(clk_int), .Q(send_data[21])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i21.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i20 (.D(n133[20]), .CK(clk_int), .Q(send_data[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i20.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i19 (.D(n133[19]), .CK(clk_int), .Q(send_data[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i19.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i18 (.D(n133[18]), .CK(clk_int), .Q(send_data[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i18.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i17 (.D(n133[17]), .CK(clk_int), .Q(send_data[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i17.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i16 (.D(n133[16]), .CK(clk_int), .Q(send_data[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i16.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i15 (.D(n133[15]), .CK(clk_int), .Q(send_data[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i15.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i14 (.D(n133[14]), .CK(clk_int), .Q(send_data[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i14.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i13 (.D(n133[13]), .CK(clk_int), .Q(send_data[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i13.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i12 (.D(n133[12]), .CK(clk_int), .Q(send_data[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i12.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i11 (.D(n133[11]), .CK(clk_int), .Q(send_data[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i11.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i10 (.D(n133[10]), .CK(clk_int), .Q(send_data[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i10.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i9 (.D(n133[9]), .CK(clk_int), .Q(send_data[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i9.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i8 (.D(n133[8]), .CK(clk_int), .Q(send_data[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i8.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i7 (.D(n133[7]), .CK(clk_int), .Q(send_data[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i7.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i6 (.D(n133[6]), .CK(clk_int), .Q(send_data[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i6.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i5 (.D(n133[5]), .CK(clk_int), .Q(send_data[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i5.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i2 (.D(n133[2]), .CK(clk_int), .Q(send_data[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i2.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i4 (.D(n133[4]), .CK(clk_int), .Q(send_data[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i4.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i1 (.D(n133[1]), .CK(clk_int), .Q(send_data[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i1.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i3 (.D(n133[3]), .CK(clk_int), .Q(send_data[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i3.GSR = "ENABLED";
    FD1S3AX sr_i31_33__i0 (.D(n133[0]), .CK(clk_int), .Q(send_data[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33__i0.GSR = "ENABLED";
    CCU2D sr_i31_33_add_4_7 (.A0(send_data[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(send_data[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n458), .COUT(n459), .S0(n133[5]), .S1(n133[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam sr_i31_33_add_4_7.INIT0 = 16'hfaaa;
    defparam sr_i31_33_add_4_7.INIT1 = 16'hfaaa;
    defparam sr_i31_33_add_4_7.INJECT1_0 = "NO";
    defparam sr_i31_33_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module async_fifo
//

module async_fifo (send_data, clk_int, FT601_CLK_c, VCC_net, tx_active_N_388, 
            GND_net, FT601_DATA_c_31, FT601_DATA_c_30, FT601_DATA_c_29, 
            FT601_DATA_c_28, fifo_emp, FT601_DATA_c_19, FT601_DATA_c_18, 
            FT601_DATA_c_17, FT601_DATA_c_16, FT601_DATA_c_23, FT601_DATA_c_22, 
            FT601_DATA_c_21, FT601_DATA_c_20, FT601_DATA_c_11, FT601_DATA_c_10, 
            FT601_DATA_c_9, FT601_DATA_c_8, FT601_DATA_c_15, FT601_DATA_c_14, 
            FT601_DATA_c_13, FT601_DATA_c_12, FT601_DATA_c_3, FT601_DATA_c_2, 
            FT601_DATA_c_1, FT601_DATA_c_0, FT601_DATA_c_7, FT601_DATA_c_6, 
            FT601_DATA_c_5, FT601_DATA_c_4, FT601_DATA_c_27, FT601_DATA_c_26, 
            FT601_DATA_c_25, FT601_DATA_c_24) /* synthesis NGD_DRC_MASK=1 */ ;
    input [31:0]send_data;
    input clk_int;
    input FT601_CLK_c;
    input VCC_net;
    input tx_active_N_388;
    input GND_net;
    output FT601_DATA_c_31;
    output FT601_DATA_c_30;
    output FT601_DATA_c_29;
    output FT601_DATA_c_28;
    output fifo_emp;
    output FT601_DATA_c_19;
    output FT601_DATA_c_18;
    output FT601_DATA_c_17;
    output FT601_DATA_c_16;
    output FT601_DATA_c_23;
    output FT601_DATA_c_22;
    output FT601_DATA_c_21;
    output FT601_DATA_c_20;
    output FT601_DATA_c_11;
    output FT601_DATA_c_10;
    output FT601_DATA_c_9;
    output FT601_DATA_c_8;
    output FT601_DATA_c_15;
    output FT601_DATA_c_14;
    output FT601_DATA_c_13;
    output FT601_DATA_c_12;
    output FT601_DATA_c_3;
    output FT601_DATA_c_2;
    output FT601_DATA_c_1;
    output FT601_DATA_c_0;
    output FT601_DATA_c_7;
    output FT601_DATA_c_6;
    output FT601_DATA_c_5;
    output FT601_DATA_c_4;
    output FT601_DATA_c_27;
    output FT601_DATA_c_26;
    output FT601_DATA_c_25;
    output FT601_DATA_c_24;
    
    wire clk_int /* synthesis SET_AS_NETWORK=clk_int, is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(156[12:19])
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(33[9:18])
    
    wire full;
    
    FIFO8KB async_fifo_1_6 (.DI0(send_data[4]), .DI1(send_data[5]), .DI2(send_data[6]), 
            .DI3(send_data[7]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_28), .DO1(FT601_DATA_c_29), .DO2(FT601_DATA_c_30), 
            .DO3(FT601_DATA_c_31)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_1_6.DATA_WIDTH_W = 4;
    defparam async_fifo_1_6.DATA_WIDTH_R = 4;
    defparam async_fifo_1_6.REGMODE = "NOREG";
    defparam async_fifo_1_6.RESETMODE = "ASYNC";
    defparam async_fifo_1_6.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_1_6.CSDECODE_W = "0b11";
    defparam async_fifo_1_6.CSDECODE_R = "0b11";
    defparam async_fifo_1_6.AEPOINTER = "0b11111111111100";
    defparam async_fifo_1_6.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_1_6.AFPOINTER = "0b11111111111100";
    defparam async_fifo_1_6.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_1_6.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_1_6.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_1_6.GSR = "DISABLED";
    FIFO8KB async_fifo_2_5 (.DI0(send_data[8]), .DI1(send_data[9]), .DI2(send_data[10]), 
            .DI3(send_data[11]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_16), .DO1(FT601_DATA_c_17), .DO2(FT601_DATA_c_18), 
            .DO3(FT601_DATA_c_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_2_5.DATA_WIDTH_W = 4;
    defparam async_fifo_2_5.DATA_WIDTH_R = 4;
    defparam async_fifo_2_5.REGMODE = "NOREG";
    defparam async_fifo_2_5.RESETMODE = "ASYNC";
    defparam async_fifo_2_5.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_2_5.CSDECODE_W = "0b11";
    defparam async_fifo_2_5.CSDECODE_R = "0b11";
    defparam async_fifo_2_5.AEPOINTER = "0b11111111111100";
    defparam async_fifo_2_5.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_2_5.AFPOINTER = "0b11111111111100";
    defparam async_fifo_2_5.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_2_5.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_2_5.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_2_5.GSR = "DISABLED";
    FIFO8KB async_fifo_3_4 (.DI0(send_data[12]), .DI1(send_data[13]), .DI2(send_data[14]), 
            .DI3(send_data[15]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_20), .DO1(FT601_DATA_c_21), .DO2(FT601_DATA_c_22), 
            .DO3(FT601_DATA_c_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_3_4.DATA_WIDTH_W = 4;
    defparam async_fifo_3_4.DATA_WIDTH_R = 4;
    defparam async_fifo_3_4.REGMODE = "NOREG";
    defparam async_fifo_3_4.RESETMODE = "ASYNC";
    defparam async_fifo_3_4.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_3_4.CSDECODE_W = "0b11";
    defparam async_fifo_3_4.CSDECODE_R = "0b11";
    defparam async_fifo_3_4.AEPOINTER = "0b11111111111100";
    defparam async_fifo_3_4.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_3_4.AFPOINTER = "0b11111111111100";
    defparam async_fifo_3_4.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_3_4.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_3_4.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_3_4.GSR = "DISABLED";
    FIFO8KB async_fifo_4_3 (.DI0(send_data[16]), .DI1(send_data[17]), .DI2(send_data[18]), 
            .DI3(send_data[19]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_8), .DO1(FT601_DATA_c_9), .DO2(FT601_DATA_c_10), 
            .DO3(FT601_DATA_c_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_4_3.DATA_WIDTH_W = 4;
    defparam async_fifo_4_3.DATA_WIDTH_R = 4;
    defparam async_fifo_4_3.REGMODE = "NOREG";
    defparam async_fifo_4_3.RESETMODE = "ASYNC";
    defparam async_fifo_4_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_4_3.CSDECODE_W = "0b11";
    defparam async_fifo_4_3.CSDECODE_R = "0b11";
    defparam async_fifo_4_3.AEPOINTER = "0b11111111111100";
    defparam async_fifo_4_3.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_4_3.AFPOINTER = "0b11111111111100";
    defparam async_fifo_4_3.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_4_3.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_4_3.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_4_3.GSR = "DISABLED";
    FIFO8KB async_fifo_5_2 (.DI0(send_data[20]), .DI1(send_data[21]), .DI2(send_data[22]), 
            .DI3(send_data[23]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_12), .DO1(FT601_DATA_c_13), .DO2(FT601_DATA_c_14), 
            .DO3(FT601_DATA_c_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_5_2.DATA_WIDTH_W = 4;
    defparam async_fifo_5_2.DATA_WIDTH_R = 4;
    defparam async_fifo_5_2.REGMODE = "NOREG";
    defparam async_fifo_5_2.RESETMODE = "ASYNC";
    defparam async_fifo_5_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_5_2.CSDECODE_W = "0b11";
    defparam async_fifo_5_2.CSDECODE_R = "0b11";
    defparam async_fifo_5_2.AEPOINTER = "0b11111111111100";
    defparam async_fifo_5_2.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_5_2.AFPOINTER = "0b11111111111100";
    defparam async_fifo_5_2.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_5_2.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_5_2.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_5_2.GSR = "DISABLED";
    FIFO8KB async_fifo_6_1 (.DI0(send_data[24]), .DI1(send_data[25]), .DI2(send_data[26]), 
            .DI3(send_data[27]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_0), .DO1(FT601_DATA_c_1), .DO2(FT601_DATA_c_2), 
            .DO3(FT601_DATA_c_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_6_1.DATA_WIDTH_W = 4;
    defparam async_fifo_6_1.DATA_WIDTH_R = 4;
    defparam async_fifo_6_1.REGMODE = "NOREG";
    defparam async_fifo_6_1.RESETMODE = "ASYNC";
    defparam async_fifo_6_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_6_1.CSDECODE_W = "0b11";
    defparam async_fifo_6_1.CSDECODE_R = "0b11";
    defparam async_fifo_6_1.AEPOINTER = "0b11111111111100";
    defparam async_fifo_6_1.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_6_1.AFPOINTER = "0b11111111111100";
    defparam async_fifo_6_1.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_6_1.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_6_1.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_6_1.GSR = "DISABLED";
    FIFO8KB async_fifo_7_0 (.DI0(send_data[28]), .DI1(send_data[29]), .DI2(send_data[30]), 
            .DI3(send_data[31]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_4), .DO1(FT601_DATA_c_5), .DO2(FT601_DATA_c_6), 
            .DO3(FT601_DATA_c_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_7_0.DATA_WIDTH_W = 4;
    defparam async_fifo_7_0.DATA_WIDTH_R = 4;
    defparam async_fifo_7_0.REGMODE = "NOREG";
    defparam async_fifo_7_0.RESETMODE = "ASYNC";
    defparam async_fifo_7_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_7_0.CSDECODE_W = "0b11";
    defparam async_fifo_7_0.CSDECODE_R = "0b11";
    defparam async_fifo_7_0.AEPOINTER = "0b11111111111100";
    defparam async_fifo_7_0.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_7_0.AFPOINTER = "0b11111111111100";
    defparam async_fifo_7_0.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_7_0.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_7_0.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_7_0.GSR = "DISABLED";
    FIFO8KB async_fifo_0_7 (.DI0(send_data[0]), .DI1(send_data[1]), .DI2(send_data[2]), 
            .DI3(send_data[3]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(VCC_net), .RE(tx_active_N_388), .ORE(tx_active_N_388), 
            .CLKW(clk_int), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_24), .DO1(FT601_DATA_c_25), .DO2(FT601_DATA_c_26), 
            .DO3(FT601_DATA_c_27), .EF(fifo_emp), .FF(full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=220, LSE_RLINE=220 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(220[21:31])
    defparam async_fifo_0_7.DATA_WIDTH_W = 4;
    defparam async_fifo_0_7.DATA_WIDTH_R = 4;
    defparam async_fifo_0_7.REGMODE = "NOREG";
    defparam async_fifo_0_7.RESETMODE = "ASYNC";
    defparam async_fifo_0_7.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_0_7.CSDECODE_W = "0b11";
    defparam async_fifo_0_7.CSDECODE_R = "0b11";
    defparam async_fifo_0_7.AEPOINTER = "0b00100000000000";
    defparam async_fifo_0_7.AEPOINTER1 = "0b00100000000100";
    defparam async_fifo_0_7.AFPOINTER = "0b01100000000000";
    defparam async_fifo_0_7.AFPOINTER1 = "0b01011111111100";
    defparam async_fifo_0_7.FULLPOINTER = "0b10000000000000";
    defparam async_fifo_0_7.FULLPOINTER1 = "0b01111111111100";
    defparam async_fifo_0_7.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module ft601
//

module ft601 (FT601_TXE_N_c, fifo_emp, LED_c, tx_active_N_388, FT601_WR_N_c, 
            FT601_CLK_c);
    input FT601_TXE_N_c;
    input fifo_emp;
    output LED_c;
    output tx_active_N_388;
    output FT601_WR_N_c;
    input FT601_CLK_c;
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(33[9:18])
    
    wire tx_active_N_387;
    
    LUT4 i1_2_lut_3_lut (.A(FT601_TXE_N_c), .B(fifo_emp), .C(LED_c), .Z(tx_active_N_388)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 tx_active_I_77_3_lut_4_lut (.A(FT601_TXE_N_c), .B(fifo_emp), .C(LED_c), 
         .D(tx_active_N_388), .Z(tx_active_N_387)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tx_active_I_77_3_lut_4_lut.init = 16'hf101;
    LUT4 fifo_rd_en_I_0_1_lut (.A(tx_active_N_388), .Z(FT601_WR_N_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ft601.vhd(87[21:33])
    defparam fifo_rd_en_I_0_1_lut.init = 16'h5555;
    FD1S3AX tx_active_24 (.D(tx_active_N_387), .CK(FT601_CLK_c), .Q(LED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=35, LSE_LLINE=236, LSE_RLINE=236 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ft601.vhd(60[9] 83[16])
    defparam tx_active_24.GSR = "ENABLED";
    
endmodule
