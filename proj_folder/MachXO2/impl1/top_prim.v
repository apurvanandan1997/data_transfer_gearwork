// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Fri Aug  9 11:27:11 2019
//
// Verilog Description of module top
//

module top (LED, DATA_LANE, CLK_LANE, FT601_CLK, FT601_RST_N, FT601_DATA, 
            FT601_BE, FT601_RXF_N, FT601_TXE_N, FT601_WR_N, FT601_SIWU_N, 
            FT601_RD_N, FT601_OE_N);   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(26[8:11])
    output LED;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(28[9:12])
    input [4:0]DATA_LANE;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(30[9:18])
    input CLK_LANE /* synthesis black_box_pad_pin=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(31[9:17])
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
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(39[12:19])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(127[12:16])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(131[12:19])
    wire mode_N_2 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(128[12:14])
    wire rbyteclk_N_205 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(63[3:11])
    
    wire GND_net, VCC_net, LED_c, FT601_DATA_c_31, FT601_DATA_c_30, 
        FT601_DATA_c_29, FT601_DATA_c_28, FT601_DATA_c_27, FT601_DATA_c_26, 
        FT601_DATA_c_25, FT601_DATA_c_24, FT601_DATA_c_23, FT601_DATA_c_22, 
        FT601_DATA_c_21, FT601_DATA_c_20, FT601_DATA_c_19, FT601_DATA_c_18, 
        FT601_DATA_c_17, FT601_DATA_c_16, FT601_DATA_c_15, FT601_DATA_c_14, 
        FT601_DATA_c_13, FT601_DATA_c_12, FT601_DATA_c_11, FT601_DATA_c_10, 
        FT601_DATA_c_9, FT601_DATA_c_8, FT601_DATA_c_7, FT601_DATA_c_6, 
        FT601_DATA_c_5, FT601_DATA_c_4, FT601_DATA_c_3, FT601_DATA_c_2, 
        FT601_DATA_c_1, FT601_DATA_c_0, FT601_TXE_N_c, FT601_WR_N_c, 
        fifo_wr_en, tx_active_N_326;
    wire [4:0]buf_dataini;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(47[12:23])
    
    wire fifo_emp;
    wire [31:0]send_data;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(125[12:21])
    
    wire ce, data_valid;
    wire [9:0]enc_data;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(134[12:20])
    
    VHI i2 (.Z(VCC_net));
    OB FT601_DATA_pad_6 (.I(FT601_DATA_c_6), .O(FT601_DATA[6]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OSCH oscinst0 (.STDBY(GND_net), .OSC(clk_int)) /* synthesis NOM_FREQ="133.0", syn_instantiated=1 */ ;
    defparam oscinst0.NOM_FREQ = "133.0";
    OB FT601_DATA_pad_7 (.I(FT601_DATA_c_7), .O(FT601_DATA[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_8 (.I(FT601_DATA_c_8), .O(FT601_DATA[8]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_9 (.I(FT601_DATA_c_9), .O(FT601_DATA[9]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_10 (.I(FT601_DATA_c_10), .O(FT601_DATA[10]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_11 (.I(FT601_DATA_c_11), .O(FT601_DATA[11]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_12 (.I(FT601_DATA_c_12), .O(FT601_DATA[12]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_13 (.I(FT601_DATA_c_13), .O(FT601_DATA[13]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_14 (.I(FT601_DATA_c_14), .O(FT601_DATA[14]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    TSALL TSALL_INST (.TSALL(GND_net));
    OB FT601_DATA_pad_15 (.I(FT601_DATA_c_15), .O(FT601_DATA[15]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_16 (.I(FT601_DATA_c_16), .O(FT601_DATA[16]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_17 (.I(FT601_DATA_c_17), .O(FT601_DATA[17]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_18 (.I(FT601_DATA_c_18), .O(FT601_DATA[18]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_19 (.I(FT601_DATA_c_19), .O(FT601_DATA[19]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_20 (.I(FT601_DATA_c_20), .O(FT601_DATA[20]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    IB Inst2_IB (.I(CLK_LANE), .O(buf_clk)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(390[16:18])
    IB Inst1_IB0 (.I(DATA_LANE[0]), .O(buf_dataini[0])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(420[17:19])
    OB FT601_DATA_pad_5 (.I(FT601_DATA_c_5), .O(FT601_DATA[5]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_21 (.I(FT601_DATA_c_21), .O(FT601_DATA[21]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_22 (.I(FT601_DATA_c_22), .O(FT601_DATA[22]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_23 (.I(FT601_DATA_c_23), .O(FT601_DATA[23]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_24 (.I(FT601_DATA_c_24), .O(FT601_DATA[24]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_25 (.I(FT601_DATA_c_25), .O(FT601_DATA[25]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_26 (.I(FT601_DATA_c_26), .O(FT601_DATA[26]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_27 (.I(FT601_DATA_c_27), .O(FT601_DATA[27]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_28 (.I(FT601_DATA_c_28), .O(FT601_DATA[28]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_29 (.I(FT601_DATA_c_29), .O(FT601_DATA[29]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_30 (.I(FT601_DATA_c_30), .O(FT601_DATA[30]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_DATA_pad_31 (.I(FT601_DATA_c_31), .O(FT601_DATA[31]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(35[9:19])
    OB FT601_RST_N_pad (.I(VCC_net), .O(FT601_RST_N));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(34[9:20])
    OB LED_pad (.I(LED_c), .O(LED));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(28[9:12])
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
    deserializer deser_inst (.sclk(sclk), .data_valid(data_valid), .LED_c(LED_c), 
            .enc_data({enc_data}), .buf_clk(buf_clk), .GND_net(GND_net), 
            .\buf_dataini[0] (buf_dataini[0]), .rbyteclk_N_205(rbyteclk_N_205), 
            .clk_int(clk_int));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(161[18:42])
    LUT4 ce_I_0_2_lut (.A(ce), .B(data_valid), .Z(fifo_wr_en)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(144[19:36])
    defparam ce_I_0_2_lut.init = 16'h8888;
    FD1S3AX ce_10 (.D(LED_c), .CK(mode_N_2), .Q(ce)) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(142[5:7])
    defparam ce_10.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    dec_8b10b decoder_inst (.mode_N_2(mode_N_2), .\send_data[0] (send_data[0]), 
            .sclk(sclk), .rbyteclk_N_205(rbyteclk_N_205), .enc_data({enc_data}), 
            .\send_data[1] (send_data[1]), .\send_data[2] (send_data[2]), 
            .\send_data[3] (send_data[3]), .\send_data[4] (send_data[4]), 
            .\send_data[5] (send_data[5]), .\send_data[6] (send_data[6]), 
            .\send_data[7] (send_data[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(173[20:29])
    ft601 ft601_comp (.FT601_CLK_c(FT601_CLK_c), .tx_active_N_326(tx_active_N_326), 
          .FT601_WR_N_c(FT601_WR_N_c), .FT601_TXE_N_c(FT601_TXE_N_c), .fifo_emp(fifo_emp));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(209[18:35])
    async_fifo cdc_fifo_inst (.\send_data[7] (send_data[7]), .\send_data[6] (send_data[6]), 
            .\send_data[5] (send_data[5]), .\send_data[4] (send_data[4]), 
            .sclk(sclk), .FT601_CLK_c(FT601_CLK_c), .fifo_wr_en(fifo_wr_en), 
            .tx_active_N_326(tx_active_N_326), .GND_net(GND_net), .FT601_DATA_c_31(FT601_DATA_c_31), 
            .FT601_DATA_c_30(FT601_DATA_c_30), .FT601_DATA_c_29(FT601_DATA_c_29), 
            .FT601_DATA_c_28(FT601_DATA_c_28), .fifo_emp(fifo_emp), .VCC_net(VCC_net), 
            .FT601_DATA_c_19(FT601_DATA_c_19), .FT601_DATA_c_18(FT601_DATA_c_18), 
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
            .\send_data[3] (send_data[3]), .\send_data[2] (send_data[2]), 
            .\send_data[1] (send_data[1]), .\send_data[0] (send_data[0]), 
            .FT601_DATA_c_27(FT601_DATA_c_27), .FT601_DATA_c_26(FT601_DATA_c_26), 
            .FT601_DATA_c_25(FT601_DATA_c_25), .FT601_DATA_c_24(FT601_DATA_c_24)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module deserializer
//

module deserializer (sclk, data_valid, LED_c, enc_data, buf_clk, GND_net, 
            \buf_dataini[0] , rbyteclk_N_205, clk_int);
    output sclk;
    output data_valid;
    output LED_c;
    output [9:0]enc_data;
    input buf_clk;
    input GND_net;
    input \buf_dataini[0] ;
    output rbyteclk_N_205;
    input clk_int;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(127[12:16])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(39[12:19])
    wire rbyteclk_N_205 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(63[3:11])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(131[12:19])
    wire [2:0]hold_slip;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(71[12:21])
    
    wire n2178;
    wire [2:0]n12;
    wire [9:0]q10_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(59[12:19])
    
    wire n7, n736;
    wire [7:0]q_tmp;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(61[12:17])
    
    wire sclk_enable_6, n745;
    wire [3:0]n611;
    
    wire n771, n2016, n772, n1982, n8_adj_330, n779, n780, n1972, 
        n1990, n1099, n773, n774, n6, sclk_enable_21, n2188, bit_slip_N_95, 
        n2184;
    wire [7:0]n254;
    
    wire rx_rdy, sclk_enable_5;
    wire [2:0]n193;
    wire [3:0]lnk_trnd_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(70[12:24])
    
    wire sclk_enable_24, n1669, n1218, sclk_enable_10, n2017;
    wire [7:0]q8_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(60[12:18])
    wire [7:0]n494;
    
    wire n787, bit_slip_N_89, n744, n789, n785, n1900, n1902;
    wire [7:0]n640;
    
    wire n777, n778, n775, n776, n786, n1667, n1898, sclk_enable_8, 
        sclk_enable_12, n6_adj_331, n782, n781, bit_slip, sclk_enable_25;
    
    FD1S3IX hold_slip__i0 (.D(n12[0]), .CK(sclk), .CD(n2178), .Q(hold_slip[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam hold_slip__i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(q10_buf[4]), .B(q10_buf[7]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX q_valid_66 (.D(LED_c), .CK(sclk), .CD(n736), .Q(data_valid));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_valid_66.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i0 (.D(n745), .SP(sclk_enable_6), .CK(sclk), .Q(q_tmp[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i0.GSR = "ENABLED";
    PFUMX i292 (.BLUT(n611[1]), .ALUT(n771), .C0(n2016), .Z(n772));
    LUT4 i1443_4_lut (.A(q10_buf[0]), .B(q10_buf[6]), .C(q10_buf[1]), 
         .D(q10_buf[9]), .Z(n1982)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1443_4_lut.init = 16'h8000;
    LUT4 i2_2_lut (.A(q10_buf[3]), .B(q10_buf[8]), .Z(n8_adj_330)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    PFUMX i300 (.BLUT(n611[2]), .ALUT(n779), .C0(n2016), .Z(n780));
    LUT4 i1451_4_lut (.A(q10_buf[4]), .B(q10_buf[7]), .C(q10_buf[3]), 
         .D(n1972), .Z(n1990)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1451_4_lut.init = 16'h8000;
    LUT4 i1433_2_lut (.A(q10_buf[2]), .B(q10_buf[8]), .Z(n1972)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1433_2_lut.init = 16'h8888;
    FD1S3IX q__i0 (.D(q10_buf[0]), .CK(sclk), .CD(n1099), .Q(enc_data[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i0.GSR = "ENABLED";
    PFUMX i294 (.BLUT(n611[0]), .ALUT(n773), .C0(n2016), .Z(n774));
    LUT4 i1_2_lut_adj_92 (.A(q10_buf[9]), .B(q10_buf[1]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_92.init = 16'heeee;
    FD1P3IX q10_buf__i0 (.D(q_tmp[0]), .SP(sclk_enable_21), .CD(n2188), 
            .CK(sclk), .Q(q10_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i0.GSR = "ENABLED";
    FD1S3AX counter_FSM_i1 (.D(n2184), .CK(sclk), .Q(bit_slip_N_95));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i1.GSR = "ENABLED";
    LUT4 i552_1_lut_2_lut (.A(n254[4]), .B(rx_rdy), .Z(sclk_enable_6)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i552_1_lut_2_lut.init = 16'h4444;
    FD1P3IX hold_slip__i2 (.D(n193[2]), .SP(sclk_enable_5), .CD(n2178), 
            .CK(sclk), .Q(hold_slip[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam hold_slip__i2.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i0 (.D(n1669), .SP(sclk_enable_24), .CK(sclk), 
            .Q(lnk_trnd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam lnk_trnd_buf_i0_i0.GSR = "ENABLED";
    FD1P3IX hold_slip__i1 (.D(n1218), .SP(sclk_enable_5), .CD(n2178), 
            .CK(sclk), .Q(hold_slip[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam hold_slip__i1.GSR = "ENABLED";
    LUT4 i1526_3_lut_rep_32_4_lut (.A(n254[4]), .B(rx_rdy), .C(n254[2]), 
         .D(n254[3]), .Z(sclk_enable_10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1526_3_lut_rep_32_4_lut.init = 16'h0004;
    LUT4 i1512_2_lut (.A(n254[3]), .B(n254[2]), .Z(n2017)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i1512_2_lut.init = 16'heeee;
    LUT4 i293_3_lut (.A(q8_buf[2]), .B(q8_buf[4]), .C(n254[4]), .Z(n773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i293_3_lut.init = 16'hcaca;
    LUT4 i307_3_lut (.A(n494[2]), .B(q8_buf[6]), .C(n254[2]), .Z(n787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i307_3_lut.init = 16'hcaca;
    LUT4 mux_117_i3_3_lut (.A(q8_buf[2]), .B(q8_buf[4]), .C(bit_slip_N_89), 
         .Z(n494[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_117_i3_3_lut.init = 16'hcaca;
    PFUMX i277 (.BLUT(n494[0]), .ALUT(n744), .C0(n2017), .Z(n745));
    LUT4 i309_3_lut (.A(n494[3]), .B(q8_buf[7]), .C(n254[2]), .Z(n789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i309_3_lut.init = 16'hcaca;
    LUT4 i305_3_lut (.A(q8_buf[5]), .B(q8_buf[7]), .C(n254[3]), .Z(n785)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i305_3_lut.init = 16'hcaca;
    LUT4 mux_117_i4_3_lut (.A(q8_buf[3]), .B(q8_buf[5]), .C(bit_slip_N_89), 
         .Z(n494[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_117_i4_3_lut.init = 16'hcaca;
    LUT4 mux_117_i2_3_lut (.A(q8_buf[1]), .B(q8_buf[3]), .C(bit_slip_N_89), 
         .Z(n494[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_117_i2_3_lut.init = 16'hcaca;
    LUT4 mux_117_i5_3_lut (.A(q8_buf[4]), .B(q8_buf[6]), .C(bit_slip_N_89), 
         .Z(n494[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_117_i5_3_lut.init = 16'hcaca;
    LUT4 mux_117_i6_3_lut (.A(q8_buf[5]), .B(q8_buf[7]), .C(bit_slip_N_89), 
         .Z(n494[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_117_i6_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(q10_buf[6]), .B(n1990), .C(q10_buf[0]), .D(n6), 
         .Z(n1900)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i5_4_lut (.A(q10_buf[2]), .B(n7), .C(n1982), .D(n8_adj_330), 
         .Z(n1902)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i5_4_lut.init = 16'hffef;
    LUT4 i272_3_lut (.A(q_tmp[2]), .B(q8_buf[0]), .C(n254[4]), .Z(n640[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i272_3_lut.init = 16'hcaca;
    LUT4 i274_3_lut (.A(q_tmp[3]), .B(q8_buf[1]), .C(n254[4]), .Z(n640[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i274_3_lut.init = 16'hcaca;
    LUT4 i298_3_lut (.A(n777), .B(q8_buf[2]), .C(n254[4]), .Z(n778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i298_3_lut.init = 16'hcaca;
    LUT4 i297_3_lut (.A(q_tmp[4]), .B(q8_buf[0]), .C(n254[3]), .Z(n777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i297_3_lut.init = 16'hcaca;
    LUT4 i296_3_lut (.A(n775), .B(q8_buf[3]), .C(n254[4]), .Z(n776)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i296_3_lut.init = 16'hcaca;
    FD1P3AX q_tmp_i0_i1 (.D(n786), .SP(sclk_enable_6), .CK(sclk), .Q(q_tmp[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i1.GSR = "ENABLED";
    LUT4 i295_3_lut (.A(q_tmp[5]), .B(q8_buf[1]), .C(n254[3]), .Z(n775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i295_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_93 (.A(n1667), .B(sclk_enable_24), .Z(n1898)) /* synthesis lut_function=(A (B)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1_2_lut_adj_93.init = 16'h8888;
    FD1P3AX q_tmp_i0_i2 (.D(n787), .SP(sclk_enable_8), .CK(sclk), .Q(q_tmp[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i3 (.D(n789), .SP(sclk_enable_8), .CK(sclk), .Q(q_tmp[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i4 (.D(n494[4]), .SP(sclk_enable_10), .CK(sclk), 
            .Q(q_tmp[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i5 (.D(n494[5]), .SP(sclk_enable_10), .CK(sclk), 
            .Q(q_tmp[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i6 (.D(q8_buf[6]), .SP(sclk_enable_12), .CK(sclk), 
            .Q(q_tmp[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i7 (.D(q8_buf[7]), .SP(sclk_enable_12), .CK(sclk), 
            .Q(q_tmp[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q_tmp_i0_i7.GSR = "ENABLED";
    FD1P3IX q10_buf__i1 (.D(q_tmp[1]), .SP(sclk_enable_21), .CD(n2188), 
            .CK(sclk), .Q(q10_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i1.GSR = "ENABLED";
    LUT4 i1516_2_lut_rep_41 (.A(rx_rdy), .B(bit_slip_N_95), .Z(sclk_enable_21)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1516_2_lut_rep_41.init = 16'h7777;
    LUT4 i1_2_lut_3_lut (.A(rx_rdy), .B(bit_slip_N_95), .C(hold_slip[2]), 
         .Z(n6_adj_331)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1P3IX q10_buf__i2 (.D(n640[0]), .SP(sclk_enable_21), .CD(n2188), 
            .CK(sclk), .Q(q10_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i2.GSR = "ENABLED";
    FD1P3IX q10_buf__i3 (.D(n640[1]), .SP(sclk_enable_21), .CD(n2188), 
            .CK(sclk), .Q(q10_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i3.GSR = "ENABLED";
    FD1P3IX q10_buf__i4 (.D(n778), .SP(sclk_enable_21), .CD(n2188), .CK(sclk), 
            .Q(q10_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i4.GSR = "ENABLED";
    FD1P3IX q10_buf__i5 (.D(n776), .SP(sclk_enable_21), .CD(n2188), .CK(sclk), 
            .Q(q10_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i5.GSR = "ENABLED";
    FD1P3IX q10_buf__i6 (.D(n774), .SP(sclk_enable_21), .CD(n2188), .CK(sclk), 
            .Q(q10_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i6.GSR = "ENABLED";
    FD1P3IX q10_buf__i7 (.D(n772), .SP(sclk_enable_21), .CD(n2188), .CK(sclk), 
            .Q(q10_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i7.GSR = "ENABLED";
    FD1P3IX q10_buf__i8 (.D(n780), .SP(sclk_enable_21), .CD(n2188), .CK(sclk), 
            .Q(q10_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i8.GSR = "ENABLED";
    FD1P3IX q10_buf__i9 (.D(n782), .SP(sclk_enable_21), .CD(n2188), .CK(sclk), 
            .Q(q10_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q10_buf__i9.GSR = "ENABLED";
    FD1S3IX counter_FSM_i2 (.D(bit_slip_N_95), .CK(sclk), .CD(n2184), 
            .Q(bit_slip_N_89));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i2.GSR = "ENABLED";
    FD1S3IX counter_FSM_i3 (.D(bit_slip_N_89), .CK(sclk), .CD(n2184), 
            .Q(n254[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i3.GSR = "ENABLED";
    FD1S3IX counter_FSM_i4 (.D(n254[2]), .CK(sclk), .CD(n2184), .Q(n254[3]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i4.GSR = "ENABLED";
    FD1S3IX counter_FSM_i5 (.D(n254[3]), .CK(sclk), .CD(n2184), .Q(n254[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i5.GSR = "ENABLED";
    FD1S3IX q__i1 (.D(q10_buf[1]), .CK(sclk), .CD(n1099), .Q(enc_data[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i1.GSR = "ENABLED";
    FD1S3IX q__i2 (.D(q10_buf[2]), .CK(sclk), .CD(n1099), .Q(enc_data[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i2.GSR = "ENABLED";
    FD1S3IX q__i3 (.D(q10_buf[3]), .CK(sclk), .CD(n1099), .Q(enc_data[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i3.GSR = "ENABLED";
    FD1S3IX q__i4 (.D(q10_buf[4]), .CK(sclk), .CD(n1099), .Q(enc_data[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i4.GSR = "ENABLED";
    FD1S3IX q__i5 (.D(q10_buf[5]), .CK(sclk), .CD(n1099), .Q(enc_data[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i5.GSR = "ENABLED";
    FD1S3IX q__i6 (.D(q10_buf[6]), .CK(sclk), .CD(n1099), .Q(enc_data[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i6.GSR = "ENABLED";
    FD1S3IX q__i7 (.D(q10_buf[7]), .CK(sclk), .CD(n1099), .Q(enc_data[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i7.GSR = "ENABLED";
    FD1S3IX q__i8 (.D(q10_buf[8]), .CK(sclk), .CD(n1099), .Q(enc_data[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i8.GSR = "ENABLED";
    FD1S3IX q__i9 (.D(q10_buf[9]), .CK(sclk), .CD(n1099), .Q(enc_data[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam q__i9.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i1 (.D(lnk_trnd_buf[0]), .SP(sclk_enable_24), 
            .CK(sclk), .Q(lnk_trnd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam lnk_trnd_buf_i0_i1.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i2 (.D(lnk_trnd_buf[1]), .SP(sclk_enable_24), 
            .CK(sclk), .Q(lnk_trnd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam lnk_trnd_buf_i0_i2.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i3 (.D(lnk_trnd_buf[2]), .SP(sclk_enable_24), 
            .CK(sclk), .Q(lnk_trnd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=161, LSE_RLINE=161 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam lnk_trnd_buf_i0_i3.GSR = "ENABLED";
    LUT4 i67_2_lut_rep_36 (.A(n254[4]), .B(rx_rdy), .Z(n2184)) /* synthesis lut_function=(A+!(B)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i67_2_lut_rep_36.init = 16'hbbbb;
    LUT4 i301_3_lut (.A(q8_buf[5]), .B(q8_buf[7]), .C(n254[4]), .Z(n781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i301_3_lut.init = 16'hcaca;
    FD1P3AX bit_slip_69 (.D(n1898), .SP(sclk_enable_25), .CK(sclk), .Q(bit_slip));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(180[9] 215[16])
    defparam bit_slip_69.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(hold_slip[0]), .B(LED_c), .C(rx_rdy), .D(bit_slip_N_95), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(64[12:20])
    defparam i11_4_lut.init = 16'h5565;
    LUT4 i691_3_lut (.A(hold_slip[2]), .B(hold_slip[1]), .C(hold_slip[0]), 
         .Z(n193[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(71[12:21])
    defparam i691_3_lut.init = 16'h6a6a;
    LUT4 i4_4_lut_adj_94 (.A(LED_c), .B(hold_slip[1]), .C(hold_slip[0]), 
         .D(n6_adj_331), .Z(sclk_enable_24)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i4_4_lut_adj_94.init = 16'h4000;
    LUT4 i3_4_lut (.A(lnk_trnd_buf[2]), .B(lnk_trnd_buf[1]), .C(lnk_trnd_buf[0]), 
         .D(lnk_trnd_buf[3]), .Z(LED_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1145_1_lut (.A(n1667), .Z(n1669)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(59[12:19])
    defparam i1145_1_lut.init = 16'h5555;
    LUT4 i269_2_lut (.A(n254[2]), .B(rx_rdy), .Z(n736)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam i269_2_lut.init = 16'hbbbb;
    LUT4 i276_3_lut (.A(q8_buf[4]), .B(q8_buf[6]), .C(n254[3]), .Z(n744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i276_3_lut.init = 16'hcaca;
    LUT4 i19_2_lut (.A(hold_slip[1]), .B(hold_slip[0]), .Z(n1218)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(71[12:21])
    defparam i19_2_lut.init = 16'h6666;
    LUT4 mux_117_i1_3_lut (.A(q8_buf[0]), .B(q8_buf[2]), .C(bit_slip_N_89), 
         .Z(n494[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_117_i1_3_lut.init = 16'hcaca;
    LUT4 i291_3_lut (.A(q8_buf[3]), .B(q8_buf[5]), .C(n254[4]), .Z(n771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i291_3_lut.init = 16'hcaca;
    LUT4 i1517_2_lut (.A(n254[4]), .B(n254[3]), .Z(n2016)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i1517_2_lut.init = 16'heeee;
    LUT4 i1522_2_lut_4_lut (.A(n254[3]), .B(n254[2]), .C(n2184), .D(bit_slip_N_89), 
         .Z(sclk_enable_12)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(98[9] 147[16])
    defparam i1522_2_lut_4_lut.init = 16'h0001;
    LUT4 mux_195_i2_3_lut (.A(q_tmp[7]), .B(q8_buf[1]), .C(n254[2]), .Z(n611[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_195_i2_3_lut.init = 16'hcaca;
    LUT4 i299_3_lut (.A(q8_buf[4]), .B(q8_buf[6]), .C(n254[4]), .Z(n779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam i299_3_lut.init = 16'hcaca;
    LUT4 mux_195_i4_3_lut (.A(q8_buf[1]), .B(q8_buf[3]), .C(n254[2]), 
         .Z(n611[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_195_i4_3_lut.init = 16'hcaca;
    LUT4 i1529_2_lut_3_lut (.A(n254[4]), .B(rx_rdy), .C(n254[3]), .Z(sclk_enable_8)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1529_2_lut_3_lut.init = 16'h0404;
    PFUMX i1143 (.BLUT(n1902), .ALUT(n1900), .C0(q10_buf[5]), .Z(n1667));
    PFUMX i306 (.BLUT(n494[1]), .ALUT(n785), .C0(n2017), .Z(n786));
    PFUMX i302 (.BLUT(n611[3]), .ALUT(n781), .C0(n2016), .Z(n782));
    LUT4 mux_195_i1_3_lut (.A(q_tmp[6]), .B(q8_buf[0]), .C(n254[2]), .Z(n611[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_195_i1_3_lut.init = 16'hcaca;
    LUT4 mux_195_i3_3_lut (.A(q8_buf[0]), .B(q8_buf[2]), .C(n254[2]), 
         .Z(n611[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(106[21] 122[30])
    defparam mux_195_i3_3_lut.init = 16'hcaca;
    ddrx4 ddrx4_inst (.bit_slip(bit_slip), .sclk(sclk), .buf_clk(buf_clk), 
          .GND_net(GND_net), .\buf_dataini[0] (\buf_dataini[0] ), .q8_buf({q8_buf}), 
          .LED_c(LED_c), .rbyteclk_N_205(rbyteclk_N_205), .rx_rdy(rx_rdy), 
          .n1099(n1099), .clk_int(clk_int), .n2188(n2188), .n2178(n2178), 
          .bit_slip_N_95(bit_slip_N_95), .sclk_enable_5(sclk_enable_5), 
          .bit_slip_N_89(bit_slip_N_89), .sclk_enable_25(sclk_enable_25)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    
endmodule
//
// Verilog Description of module ddrx4
//

module ddrx4 (bit_slip, sclk, buf_clk, GND_net, \buf_dataini[0] , 
            q8_buf, LED_c, rbyteclk_N_205, rx_rdy, n1099, clk_int, 
            n2188, n2178, bit_slip_N_95, sclk_enable_5, bit_slip_N_89, 
            sclk_enable_25) /* synthesis NGD_DRC_MASK=1 */ ;
    input bit_slip;
    output sclk;
    input buf_clk;
    input GND_net;
    input \buf_dataini[0] ;
    output [7:0]q8_buf;
    input LED_c;
    output rbyteclk_N_205;
    output rx_rdy;
    output n1099;
    input clk_int;
    output n2188;
    output n2178;
    input bit_slip_N_95;
    output sclk_enable_5;
    input bit_slip_N_89;
    output sclk_enable_25;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(127[12:16])
    wire eclko /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(38[12:17])
    wire eclki /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(33[12:17])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(39[12:19])
    wire rbyteclk_N_205 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(63[3:11])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(131[12:19])
    
    wire rx_reset, xstop, dqsdel, locked, freeze_t, uddcntln_t;
    wire [4:0]dataini_t;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(46[12:21])
    
    wire freeze_i, uddcntln_i, reset_inv;
    
    CLKDIVC Inst7_CLKDIVC (.RST(rx_reset), .CLKI(eclko), .ALIGNWD(bit_slip), 
            .CDIVX(sclk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    defparam Inst7_CLKDIVC.GSR = "DISABLED";
    defparam Inst7_CLKDIVC.DIV = "4.0";
    ECLKSYNCA Inst6_ECLKSYNCA (.ECLKI(eclki), .STOP(xstop), .ECLKO(eclko)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    DLLDELC Inst4_DLLDELC (.CLKI(buf_clk), .DQSDEL(dqsdel), .CLKO(eclki)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    defparam Inst4_DLLDELC.DEL_ADJ = "PLUS";
    defparam Inst4_DLLDELC.DEL_VAL = 0;
    DQSDLLC Inst3_DQSDLLC (.CLK(eclko), .RST(GND_net), .UDDCNTLN(uddcntln_t), 
            .FREEZE(freeze_t), .LOCK(locked), .DQSDEL(dqsdel)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    defparam Inst3_DQSDLLC.GSR = "ENABLED";
    defparam Inst3_DQSDLLC.DEL_ADJ = "PLUS";
    defparam Inst3_DQSDLLC.DEL_VAL = 0;
    defparam Inst3_DQSDLLC.LOCK_SENSITIVITY = "LOW";
    defparam Inst3_DQSDLLC.FIN = "300.0";
    defparam Inst3_DQSDLLC.FORCE_MAX_DELAY = "NO";
    DELAYE udel_dataini0 (.A(\buf_dataini[0] ), .Z(dataini_t[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    defparam udel_dataini0.DEL_MODE = "ECLK_ALIGNED";
    defparam udel_dataini0.DEL_VALUE = "DELAY0";
    IDDRX4B Inst8_IDDRX4B0 (.D(dataini_t[0]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q8_buf[0]), .Q1(q8_buf[1]), 
            .Q2(q8_buf[2]), .Q3(q8_buf[3]), .Q4(q8_buf[4]), .Q5(q8_buf[5]), 
            .Q6(q8_buf[6]), .Q7(q8_buf[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    defparam Inst8_IDDRX4B0.GSR = "ENABLED";
    OR2 OR2_t0 (.A(LED_c), .B(freeze_i), .Z(freeze_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(195[14:17])
    AND2 AND2_t1 (.A(LED_c), .B(uddcntln_i), .Z(uddcntln_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(188[15:19])
    INV INV_0 (.A(GND_net), .Z(reset_inv)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/deserializer.vhd(75[18:23])
    INV i1592 (.A(sclk), .Z(rbyteclk_N_205));
    rx_sync Inst5_rx_sync (.rx_rdy(rx_rdy), .LED_c(LED_c), .n1099(n1099), 
            .clk_int(clk_int), .xstop(xstop), .rx_reset(rx_reset), .locked(locked), 
            .freeze_i(freeze_i), .uddcntln_i(uddcntln_i), .reset_inv(reset_inv), 
            .n2188(n2188), .n2178(n2178), .bit_slip_N_95(bit_slip_N_95), 
            .sclk_enable_5(sclk_enable_5), .bit_slip_N_89(bit_slip_N_89), 
            .sclk_enable_25(sclk_enable_25));   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(305[21:28])
    
endmodule
//
// Verilog Description of module rx_sync
//

module rx_sync (rx_rdy, LED_c, n1099, clk_int, xstop, rx_reset, 
            locked, freeze_i, uddcntln_i, reset_inv, n2188, n2178, 
            bit_slip_N_95, sclk_enable_5, bit_slip_N_89, sclk_enable_25);
    output rx_rdy;
    input LED_c;
    output n1099;
    input clk_int;
    output xstop;
    output rx_reset;
    input locked;
    output freeze_i;
    output uddcntln_i;
    input reset_inv;
    output n2188;
    output n2178;
    input bit_slip_N_95;
    output sclk_enable_5;
    input bit_slip_N_89;
    output sclk_enable_25;
    
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(131[12:19])
    
    wire n2176, n1396;
    wire [5:0]STATE;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(68[12:17])
    
    wire N_170_I;
    wire [2:2]CTRL_CNT_FAST;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(77[12:25])
    wire [2:0]CTRL_CNT;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(73[12:20])
    
    wire N_161_I;
    wire [1:0]STATE_NS;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(69[12:20])
    
    wire RSTN_I, N_172_I, N_171_I, N_169_I, RX_STOPE_0, RX_STARTE_0_FAST, 
        RX_START_FAST, RX_STARTE_0, LOCK_P1, LOCK_P2, FREEZEE_0, CTRL_CNT_N0, 
        CTRL_CNT_N1;
    wire [2:2]CTRL_CNTE_0_FAST;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(78[12:28])
    wire [2:2]CTRL_CNTE_0;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(76[12:23])
    
    wire CTRL_CNT_N1_0_S_0_X0, CTRL_CNT_N1_0_S_0_X1, n1006, UDDCNTLNE_0, 
        n2181, n4, n1716, N_137, n2182, n2183, n2194, n1978, 
        n1712;
    
    LUT4 N_170_I_I_0_4_lut (.A(n2176), .B(n1396), .C(STATE[3]), .D(STATE[4]), 
         .Z(N_170_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(285[17:85])
    defparam N_170_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 i1532_2_lut (.A(rx_rdy), .B(LED_c), .Z(n1099)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1532_2_lut.init = 16'h7777;
    LUT4 i2_3_lut (.A(CTRL_CNT_FAST[2]), .B(CTRL_CNT[1]), .C(STATE[0]), 
         .Z(N_161_I)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(282[17:74])
    defparam i2_3_lut.init = 16'hf7f7;
    FD1S3BX STATE0_REG_Z106 (.D(STATE_NS[0]), .CK(clk_int), .PD(RSTN_I), 
            .Q(STATE[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(126[23:30])
    defparam STATE0_REG_Z106.GSR = "ENABLED";
    FD1S3DX STATE1_REG_Z108 (.D(STATE_NS[1]), .CK(clk_int), .CD(RSTN_I), 
            .Q(STATE[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(134[23:30])
    defparam STATE1_REG_Z108.GSR = "ENABLED";
    FD1S3DX STAT2_REG_Z110 (.D(N_172_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(142[22:29])
    defparam STAT2_REG_Z110.GSR = "ENABLED";
    FD1S3DX STAT3_REG_Z112 (.D(N_171_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(150[22:29])
    defparam STAT3_REG_Z112.GSR = "ENABLED";
    FD1S3DX STAT4_REG_Z114 (.D(N_170_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(158[22:29])
    defparam STAT4_REG_Z114.GSR = "ENABLED";
    FD1S3DX STAT5_REG_Z116 (.D(N_169_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(166[22:29])
    defparam STAT5_REG_Z116.GSR = "ENABLED";
    FD1S3DX RX_STOP_REG_Z118 (.D(RX_STOPE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(xstop)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(174[24:31])
    defparam RX_STOP_REG_Z118.GSR = "ENABLED";
    FD1S3DX RX_START_FAST_REG_Z120 (.D(RX_STARTE_0_FAST), .CK(clk_int), 
            .CD(RSTN_I), .Q(RX_START_FAST)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(182[30:37])
    defparam RX_START_FAST_REG_Z120.GSR = "ENABLED";
    FD1S3DX RX_START_REG_Z122 (.D(RX_STARTE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(rx_rdy)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(190[25:32])
    defparam RX_START_REG_Z122.GSR = "ENABLED";
    FD1S3DX RX_RESET_REG_Z124 (.D(STATE[2]), .CK(clk_int), .CD(RSTN_I), 
            .Q(rx_reset)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(198[25:32])
    defparam RX_RESET_REG_Z124.GSR = "ENABLED";
    FD1S3DX LOCK_P2_REG_Z128 (.D(LOCK_P1), .CK(clk_int), .CD(RSTN_I), 
            .Q(LOCK_P2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(214[24:31])
    defparam LOCK_P2_REG_Z128.GSR = "ENABLED";
    FD1S3DX LOCK_P1_REG_Z130 (.D(locked), .CK(clk_int), .CD(RSTN_I), .Q(LOCK_P1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(222[24:31])
    defparam LOCK_P1_REG_Z130.GSR = "ENABLED";
    FD1S3DX FREEZE_REG_Z132 (.D(FREEZEE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(freeze_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(230[23:30])
    defparam FREEZE_REG_Z132.GSR = "ENABLED";
    FD1P3DX CTRL_CNT0_REG_Z134 (.D(CTRL_CNT_N0), .SP(N_161_I), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam CTRL_CNT0_REG_Z134.GSR = "ENABLED";
    FD1P3DX CTRL_CNT1_REG_Z136 (.D(CTRL_CNT_N1), .SP(N_161_I), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(247[26:33])
    defparam CTRL_CNT1_REG_Z136.GSR = "ENABLED";
    FD1S3DX CTRL_CNT_FAST2_REG_Z138 (.D(CTRL_CNTE_0_FAST[2]), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT_FAST[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(256[31:38])
    defparam CTRL_CNT_FAST2_REG_Z138.GSR = "ENABLED";
    FD1S3DX CTRL_CNT2_REG_Z140 (.D(CTRL_CNTE_0[2]), .CK(clk_int), .CD(RSTN_I), 
            .Q(CTRL_CNT[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(264[26:33])
    defparam CTRL_CNT2_REG_Z140.GSR = "ENABLED";
    PFUMX CTRL_CNT_N1_0_S_0 (.BLUT(CTRL_CNT_N1_0_S_0_X0), .ALUT(CTRL_CNT_N1_0_S_0_X1), 
          .C0(CTRL_CNT[1]), .Z(CTRL_CNT_N1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(305[21:28])
    LUT4 i2_2_lut_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(STATE[5]), 
         .D(CTRL_CNT_FAST[2]), .Z(n1006)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(CTRL_CNT[0]), .B(STATE[0]), .Z(CTRL_CNT_N1_0_S_0_X0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 UDDCNTLNE_0_I_0_2_lut (.A(STATE[2]), .B(uddcntln_i), .Z(UDDCNTLNE_0)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(313[21:48])
    defparam UDDCNTLNE_0_I_0_2_lut.init = 16'h4444;
    LUT4 FREEZEE_0_I_0_4_lut (.A(freeze_i), .B(STATE[1]), .C(n2181), .D(n4), 
         .Z(FREEZEE_0)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(316[21] 317[54])
    defparam FREEZEE_0_I_0_4_lut.init = 16'heeec;
    FD1S3BX UDDCNTLN_REG_Z104 (.D(UDDCNTLNE_0), .CK(clk_int), .PD(RSTN_I), 
            .Q(uddcntln_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(118[25:32])
    defparam UDDCNTLN_REG_Z104.GSR = "ENABLED";
    INV RSTN_RNIB582 (.A(reset_inv), .Z(RSTN_I)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ddrx4.vhd(305[21:28])
    LUT4 rx_start_I_0_1_lut_rep_40 (.A(rx_rdy), .Z(n2188)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(337[53:67])
    defparam rx_start_I_0_1_lut_rep_40.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(rx_rdy), .B(LOCK_P2), .C(n2176), .D(STATE[1]), 
         .Z(n1716)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(337[53:67])
    defparam i2_4_lut_4_lut.init = 16'h0d00;
    LUT4 i278_4_lut_4_lut (.A(rx_rdy), .B(LOCK_P2), .C(locked), .D(STATE[5]), 
         .Z(N_137)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(337[53:67])
    defparam i278_4_lut_4_lut.init = 16'hd500;
    LUT4 i2_4_lut_4_lut_4_lut (.A(rx_rdy), .B(locked), .C(n1716), .D(STATE[0]), 
         .Z(STATE_NS[1])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(337[53:67])
    defparam i2_4_lut_4_lut_4_lut.init = 16'hccd0;
    LUT4 N_137_I_0_4_lut (.A(N_137), .B(STATE[4]), .C(CTRL_CNT[2]), .D(n2182), 
         .Z(N_169_I)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(284[17:36])
    defparam N_137_I_0_4_lut.init = 16'haeaa;
    LUT4 init_N_111_I_0_178_2_lut_rep_35 (.A(locked), .B(STATE[0]), .Z(n2183)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(297[39:60])
    defparam init_N_111_I_0_178_2_lut_rep_35.init = 16'h4444;
    LUT4 i287_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam i287_3_lut_4_lut.init = 16'h00f8;
    LUT4 RX_STOPE_0_I_0_3_lut (.A(xstop), .B(STATE[2]), .C(STATE[4]), 
         .Z(RX_STOPE_0)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(314[21:63])
    defparam RX_STOPE_0_I_0_3_lut.init = 16'hcece;
    LUT4 i286_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0_FAST[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam i286_3_lut_4_lut.init = 16'h00f8;
    LUT4 i1_2_lut_rep_46 (.A(CTRL_CNT[0]), .B(STATE[0]), .Z(n2194)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_46.init = 16'heeee;
    LUT4 i543_3_lut_4_lut (.A(CTRL_CNT[0]), .B(STATE[0]), .C(STATE[5]), 
         .D(CTRL_CNT[2]), .Z(CTRL_CNT_N1_0_S_0_X1)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i543_3_lut_4_lut.init = 16'h1110;
    LUT4 i1519_2_lut_rep_30 (.A(rx_rdy), .B(LED_c), .Z(n2178)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1519_2_lut_rep_30.init = 16'hdddd;
    LUT4 STATE_NS_1__I_0_i1_4_lut (.A(RX_START_FAST), .B(n2183), .C(n1978), 
         .D(n1006), .Z(STATE_NS[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(293[20] 294[60])
    defparam STATE_NS_1__I_0_i1_4_lut.init = 16'hcecc;
    LUT4 i1439_3_lut (.A(STATE[0]), .B(locked), .C(LOCK_P2), .Z(n1978)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1439_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_3_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_95), .Z(sclk_enable_5)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i2_3_lut_4_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_95), .D(bit_slip_N_89), 
         .Z(sclk_enable_25)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_33 (.A(CTRL_CNT[2]), .B(CTRL_CNT[1]), .Z(n2181)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut_rep_33.init = 16'hbbbb;
    LUT4 N_172_I_I_0_4_lut (.A(n2176), .B(n1396), .C(STATE[1]), .D(STATE[2]), 
         .Z(N_172_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(287[17:85])
    defparam N_172_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 i1_3_lut_4_lut (.A(CTRL_CNT[2]), .B(CTRL_CNT[1]), .C(n2194), 
         .D(STATE[5]), .Z(CTRL_CNT_N0)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(325[20] 327[46])
    defparam i1_3_lut_4_lut.init = 16'h0f0b;
    LUT4 i881_4_lut (.A(n2176), .B(rx_rdy), .C(LOCK_P2), .D(locked), 
         .Z(n1396)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;
    defparam i881_4_lut.init = 16'haeee;
    LUT4 i1_2_lut_rep_34 (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .Z(n2182)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam i1_2_lut_rep_34.init = 16'h4444;
    LUT4 N_171_I_I_0_4_lut (.A(n2176), .B(n1396), .C(STATE[2]), .D(STATE[3]), 
         .Z(N_171_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(286[17:85])
    defparam N_171_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 i1_3_lut (.A(STATE[5]), .B(RX_START_FAST), .C(n1712), .Z(RX_STARTE_0_FAST)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i2_3_lut_4_lut_adj_89 (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT[2]), 
         .D(LOCK_P2), .Z(n1712)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam i2_3_lut_4_lut_adj_89.init = 16'h4000;
    LUT4 i1_2_lut_rep_28_3_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .Z(n2176)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(238[26:33])
    defparam i1_2_lut_rep_28_3_lut.init = 16'h0404;
    LUT4 i1_3_lut_adj_90 (.A(STATE[5]), .B(rx_rdy), .C(n1712), .Z(RX_STARTE_0)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_90.init = 16'ha8a8;
    LUT4 i1_2_lut_adj_91 (.A(CTRL_CNT[0]), .B(STATE[4]), .Z(n4)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut_adj_91.init = 16'hbbbb;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module dec_8b10b
//

module dec_8b10b (mode_N_2, \send_data[0] , sclk, rbyteclk_N_205, enc_data, 
            \send_data[1] , \send_data[2] , \send_data[3] , \send_data[4] , 
            \send_data[5] , \send_data[6] , \send_data[7] );
    output mode_N_2;
    output \send_data[0] ;
    input sclk;
    input rbyteclk_N_205;
    input [9:0]enc_data;
    output \send_data[1] ;
    output \send_data[2] ;
    output \send_data[3] ;
    output \send_data[4] ;
    output \send_data[5] ;
    output \send_data[6] ;
    output \send_data[7] ;
    
    wire mode_N_2 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(128[12:14])
    wire mode /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(129[12:16])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(127[12:16])
    wire rbyteclk_N_205 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(63[3:11])
    
    wire ao, ctrl_ind_N_202, ao_N_315, n995, n2187, n4, n955, 
        n1922, bo, bo_N_314, n2172, co, co_N_313, do, do_N_312, 
        eo, eo_N_311, fo, fo_N_310, go, go_N_309, p22_N_223, n2158, 
        ho, ho_N_308, n2171, n2175, or123_N_267, n1939, n2177, 
        n49, n32, n35, p31, n2199, n2191, n2173, n2198, n2196, 
        n986, n1927, n2102, n1905, ior134, n1945, n1943, n965, 
        n2197, n17, n2192, n5, n2190, n14, n2170, n2195;
    
    INV i1593 (.A(mode), .Z(mode_N_2));
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\send_data[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ko_227 (.D(ctrl_ind_N_202), .CK(rbyteclk_N_205), .Q(mode)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(133[3] 137[10])
    defparam ko_227.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_315), .CK(rbyteclk_N_205), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(enc_data[4]), .B(enc_data[8]), .C(n995), 
         .D(n2187), .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(107[10:19])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_2_lut (.A(n955), .B(enc_data[2]), .Z(n1922)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut.init = 16'h2222;
    FD1S3AX bo_229 (.D(bo_N_314), .CK(rbyteclk_N_205), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_24 (.A(n955), .B(enc_data[2]), .Z(n2172)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_24.init = 16'h8888;
    FD1S3AX co_230 (.D(co_N_313), .CK(rbyteclk_N_205), .Q(co)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_312), .CK(rbyteclk_N_205), .Q(do)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_311), .CK(rbyteclk_N_205), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_310), .CK(rbyteclk_N_205), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_309), .CK(rbyteclk_N_205), .Q(go)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(p22_N_223), .B(enc_data[4]), .C(n2158), .D(enc_data[8]), 
         .Z(n955)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut.init = 16'hc832;
    FD1S3AX ho_235 (.D(ho_N_308), .CK(rbyteclk_N_205), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_23_3_lut (.A(n955), .B(enc_data[2]), .C(enc_data[0]), 
         .Z(n2171)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_23_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_4_lut (.A(enc_data[4]), .B(enc_data[8]), .C(n2175), 
         .D(enc_data[3]), .Z(or123_N_267)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(107[10:19])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_39 (.A(enc_data[1]), .B(enc_data[0]), .Z(n2187)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_39.init = 16'h8888;
    LUT4 xb_I_0_4_lut (.A(n1939), .B(enc_data[1]), .C(n2177), .D(n2171), 
         .Z(bo_N_314)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut (.A(enc_data[1]), .B(n995), .C(n2172), .D(or123_N_267), 
         .Z(n1939)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 xe_I_0_4_lut (.A(n49), .B(enc_data[4]), .C(n32), .D(n35), .Z(eo_N_311)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h3336;
    LUT4 i1_4_lut_adj_80 (.A(enc_data[4]), .B(n2175), .C(enc_data[3]), 
         .D(enc_data[8]), .Z(n49)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_4_lut_adj_80.init = 16'hc4cc;
    LUT4 p13_I_0_244_3_lut_rep_27_4_lut_4_lut (.A(enc_data[0]), .B(enc_data[1]), 
         .C(enc_data[2]), .D(enc_data[3]), .Z(n2175)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(101[10:38])
    defparam p13_I_0_244_3_lut_rep_27_4_lut_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_then_3_lut (.A(p31), .B(n2175), .C(enc_data[4]), .Z(n2199)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_4_lut_then_3_lut.init = 16'haeae;
    LUT4 i1_4_lut_adj_81 (.A(enc_data[1]), .B(n1922), .C(enc_data[0]), 
         .D(n2191), .Z(n32)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_4_lut_adj_81.init = 16'h4445;
    LUT4 i1_4_lut_adj_82 (.A(enc_data[2]), .B(enc_data[3]), .C(n2173), 
         .D(n2191), .Z(n35)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_4_lut_adj_82.init = 16'h5051;
    LUT4 i1_4_lut_else_3_lut (.A(enc_data[2]), .B(n2175), .C(enc_data[4]), 
         .D(enc_data[3]), .Z(n2198)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_4_lut_else_3_lut.init = 16'h0c0d;
    LUT4 i1_2_lut_4_lut_then_4_lut (.A(enc_data[6]), .B(enc_data[3]), .C(enc_data[1]), 
         .D(enc_data[0]), .Z(n2196)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(101[9] 102[37])
    defparam i1_2_lut_4_lut_then_4_lut.init = 16'h0002;
    LUT4 xf_I_0_4_lut (.A(enc_data[6]), .B(enc_data[5]), .C(n986), .D(n1927), 
         .Z(fo_N_310)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    LUT4 i2_4_lut_adj_83 (.A(enc_data[6]), .B(n2102), .C(n1905), .D(ior134), 
         .Z(n986)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_adj_83.init = 16'hffd8;
    LUT4 enc_data_3__bdd_4_lut_1556 (.A(enc_data[3]), .B(enc_data[2]), .C(enc_data[0]), 
         .D(enc_data[1]), .Z(p31)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam enc_data_3__bdd_4_lut_1556.init = 16'h6880;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(enc_data[0]), .B(enc_data[1]), 
         .C(enc_data[3]), .D(enc_data[2]), .Z(p22_N_223)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_rep_11_2_lut (.A(enc_data[9]), .B(enc_data[5]), .Z(n2102)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(203[7:23])
    defparam i1_rep_11_2_lut.init = 16'h8888;
    LUT4 xd_I_0_3_lut_4_lut (.A(enc_data[0]), .B(n2172), .C(n1945), .D(enc_data[3]), 
         .Z(do_N_312)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_rep_29_3_lut_4_lut (.A(enc_data[1]), .B(enc_data[0]), 
         .C(enc_data[8]), .D(enc_data[4]), .Z(n2177)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_29_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_25 (.A(n955), .B(enc_data[0]), .Z(n2173)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_2_lut_rep_25.init = 16'h2222;
    LUT4 xc_I_0_4_lut_4_lut (.A(enc_data[2]), .B(n2173), .C(n1943), .D(n1939), 
         .Z(co_N_313)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(145[12:47])
    defparam xc_I_0_4_lut_4_lut.init = 16'h55e5;
    LUT4 xa_I_0_3_lut_4_lut_4_lut (.A(n955), .B(enc_data[0]), .C(n1945), 
         .D(enc_data[2]), .Z(ao_N_315)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam xa_I_0_3_lut_4_lut_4_lut.init = 16'h3c3e;
    LUT4 i1_3_lut (.A(enc_data[5]), .B(enc_data[7]), .C(enc_data[9]), 
         .Z(n1905)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut.init = 16'h5151;
    LUT4 i1_2_lut_adj_84 (.A(enc_data[9]), .B(enc_data[7]), .Z(n1927)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(202[11] 203[24])
    defparam i1_2_lut_adj_84.init = 16'h8888;
    LUT4 i33_4_lut (.A(n1927), .B(n965), .C(enc_data[4]), .D(n2197), 
         .Z(n17)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(136[10:27])
    defparam i33_4_lut.init = 16'hcac0;
    LUT4 i34_4_lut (.A(n2192), .B(n5), .C(enc_data[4]), .D(n2190), .Z(n14)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(136[10:27])
    defparam i34_4_lut.init = 16'h0aca;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\send_data[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\send_data[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\send_data[3] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\send_data[4] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\send_data[5] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\send_data[6] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\send_data[7] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=173, LSE_RLINE=173 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_85 (.A(p31), .B(enc_data[6]), .Z(n5)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(136[10:27])
    defparam i1_2_lut_adj_85.init = 16'h2222;
    LUT4 xh_I_0_4_lut (.A(enc_data[9]), .B(enc_data[7]), .C(n2170), .D(enc_data[5]), 
         .Z(ho_N_308)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(235[10:19])
    defparam xh_I_0_4_lut.init = 16'h343c;
    LUT4 i1425_2_lut_rep_42 (.A(enc_data[7]), .B(enc_data[9]), .Z(n2190)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1425_2_lut_rep_42.init = 16'heeee;
    LUT4 i1_3_lut_rep_22_4_lut (.A(enc_data[7]), .B(enc_data[9]), .C(enc_data[6]), 
         .D(n986), .Z(n2170)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_22_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_43 (.A(enc_data[4]), .B(enc_data[8]), .Z(n2191)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_43.init = 16'heeee;
    LUT4 i1511_2_lut_rep_44 (.A(enc_data[2]), .B(enc_data[3]), .Z(n2192)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1511_2_lut_rep_44.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(enc_data[0]), .B(enc_data[1]), 
         .C(enc_data[8]), .D(enc_data[4]), .Z(n1943)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'hfffe;
    LUT4 enc_data_3__bdd_4_lut (.A(enc_data[3]), .B(enc_data[2]), .C(enc_data[0]), 
         .D(enc_data[1]), .Z(n2158)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;
    defparam enc_data_3__bdd_4_lut.init = 16'h1008;
    LUT4 i1_2_lut_adj_87 (.A(enc_data[3]), .B(enc_data[2]), .Z(n965)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(104[10:28])
    defparam i1_2_lut_adj_87.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n2192), .B(enc_data[9]), .C(enc_data[7]), 
         .D(n2191), .Z(ior134)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0028;
    LUT4 i1_2_lut_4_lut_else_4_lut (.A(enc_data[6]), .B(enc_data[3]), .C(enc_data[1]), 
         .D(enc_data[0]), .Z(n2195)) /* synthesis lut_function=(!((B (C+(D))+!B (C (D)+!C !(D)))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(101[9] 102[37])
    defparam i1_2_lut_4_lut_else_4_lut.init = 16'h0228;
    LUT4 xg_I_0_4_lut_4_lut (.A(n986), .B(enc_data[6]), .C(n2190), .D(enc_data[5]), 
         .Z(go_N_309)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 i2_4_lut_adj_88 (.A(or123_N_267), .B(n4), .C(enc_data[1]), .D(n1922), 
         .Z(n1945)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_88.init = 16'hefee;
    PFUMX i32 (.BLUT(n14), .ALUT(n17), .C0(enc_data[8]), .Z(ctrl_ind_N_202));
    PFUMX i1562 (.BLUT(n2198), .ALUT(n2199), .C0(enc_data[8]), .Z(n995));
    PFUMX i1560 (.BLUT(n2195), .ALUT(n2196), .C0(enc_data[2]), .Z(n2197));
    
endmodule
//
// Verilog Description of module ft601
//

module ft601 (FT601_CLK_c, tx_active_N_326, FT601_WR_N_c, FT601_TXE_N_c, 
            fifo_emp);
    input FT601_CLK_c;
    output tx_active_N_326;
    output FT601_WR_N_c;
    input FT601_TXE_N_c;
    input fifo_emp;
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(33[9:18])
    
    wire tx_active, tx_active_N_325;
    
    FD1S3AX tx_active_24 (.D(tx_active_N_325), .CK(FT601_CLK_c), .Q(tx_active)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=35, LSE_LLINE=209, LSE_RLINE=209 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ft601.vhd(59[9] 82[16])
    defparam tx_active_24.GSR = "ENABLED";
    LUT4 fifo_rd_en_I_0_1_lut (.A(tx_active_N_326), .Z(FT601_WR_N_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/ft601.vhd(86[21:33])
    defparam fifo_rd_en_I_0_1_lut.init = 16'h5555;
    LUT4 tx_active_I_77_3_lut_4_lut (.A(FT601_TXE_N_c), .B(fifo_emp), .C(tx_active), 
         .D(tx_active_N_326), .Z(tx_active_N_325)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tx_active_I_77_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_2_lut_3_lut (.A(FT601_TXE_N_c), .B(fifo_emp), .C(tx_active), 
         .Z(tx_active_N_326)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    
endmodule
//
// Verilog Description of module async_fifo
//

module async_fifo (\send_data[7] , \send_data[6] , \send_data[5] , \send_data[4] , 
            sclk, FT601_CLK_c, fifo_wr_en, tx_active_N_326, GND_net, 
            FT601_DATA_c_31, FT601_DATA_c_30, FT601_DATA_c_29, FT601_DATA_c_28, 
            fifo_emp, VCC_net, FT601_DATA_c_19, FT601_DATA_c_18, FT601_DATA_c_17, 
            FT601_DATA_c_16, FT601_DATA_c_23, FT601_DATA_c_22, FT601_DATA_c_21, 
            FT601_DATA_c_20, FT601_DATA_c_11, FT601_DATA_c_10, FT601_DATA_c_9, 
            FT601_DATA_c_8, FT601_DATA_c_15, FT601_DATA_c_14, FT601_DATA_c_13, 
            FT601_DATA_c_12, FT601_DATA_c_3, FT601_DATA_c_2, FT601_DATA_c_1, 
            FT601_DATA_c_0, FT601_DATA_c_7, FT601_DATA_c_6, FT601_DATA_c_5, 
            FT601_DATA_c_4, \send_data[3] , \send_data[2] , \send_data[1] , 
            \send_data[0] , FT601_DATA_c_27, FT601_DATA_c_26, FT601_DATA_c_25, 
            FT601_DATA_c_24) /* synthesis NGD_DRC_MASK=1 */ ;
    input \send_data[7] ;
    input \send_data[6] ;
    input \send_data[5] ;
    input \send_data[4] ;
    input sclk;
    input FT601_CLK_c;
    input fifo_wr_en;
    input tx_active_N_326;
    input GND_net;
    output FT601_DATA_c_31;
    output FT601_DATA_c_30;
    output FT601_DATA_c_29;
    output FT601_DATA_c_28;
    output fifo_emp;
    input VCC_net;
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
    input \send_data[3] ;
    input \send_data[2] ;
    input \send_data[1] ;
    input \send_data[0] ;
    output FT601_DATA_c_27;
    output FT601_DATA_c_26;
    output FT601_DATA_c_25;
    output FT601_DATA_c_24;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(127[12:16])
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(33[9:18])
    
    wire full;
    
    FIFO8KB async_fifo_1_6 (.DI0(\send_data[4] ), .DI1(\send_data[5] ), 
            .DI2(\send_data[6] ), .DI3(\send_data[7] ), .DI4(GND_net), 
            .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), .DI8(GND_net), 
            .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), .DI12(GND_net), 
            .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), .DI16(GND_net), 
            .DI17(GND_net), .FULLI(full), .EMPTYI(fifo_emp), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(fifo_wr_en), 
            .RE(tx_active_N_326), .ORE(tx_active_N_326), .CLKW(sclk), 
            .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), .DO0(FT601_DATA_c_28), 
            .DO1(FT601_DATA_c_29), .DO2(FT601_DATA_c_30), .DO3(FT601_DATA_c_31)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
    FIFO8KB async_fifo_2_5 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_326), .ORE(tx_active_N_326), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_16), .DO1(FT601_DATA_c_17), .DO2(FT601_DATA_c_18), 
            .DO3(FT601_DATA_c_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
    FIFO8KB async_fifo_3_4 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_326), .ORE(tx_active_N_326), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_20), .DO1(FT601_DATA_c_21), .DO2(FT601_DATA_c_22), 
            .DO3(FT601_DATA_c_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
    FIFO8KB async_fifo_4_3 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_326), .ORE(tx_active_N_326), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_8), .DO1(FT601_DATA_c_9), .DO2(FT601_DATA_c_10), 
            .DO3(FT601_DATA_c_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
    FIFO8KB async_fifo_5_2 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_326), .ORE(tx_active_N_326), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_12), .DO1(FT601_DATA_c_13), .DO2(FT601_DATA_c_14), 
            .DO3(FT601_DATA_c_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
    FIFO8KB async_fifo_6_1 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_326), .ORE(tx_active_N_326), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_0), .DO1(FT601_DATA_c_1), .DO2(FT601_DATA_c_2), 
            .DO3(FT601_DATA_c_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
    FIFO8KB async_fifo_7_0 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_326), .ORE(tx_active_N_326), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_4), .DO1(FT601_DATA_c_5), .DO2(FT601_DATA_c_6), 
            .DO3(FT601_DATA_c_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
    FIFO8KB async_fifo_0_7 (.DI0(\send_data[0] ), .DI1(\send_data[1] ), 
            .DI2(\send_data[2] ), .DI3(\send_data[3] ), .DI4(GND_net), 
            .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), .DI8(GND_net), 
            .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), .DI12(GND_net), 
            .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), .DI16(GND_net), 
            .DI17(GND_net), .FULLI(full), .EMPTYI(fifo_emp), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(fifo_wr_en), 
            .RE(tx_active_N_326), .ORE(tx_active_N_326), .CLKW(sclk), 
            .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), .DO0(FT601_DATA_c_24), 
            .DO1(FT601_DATA_c_25), .DO2(FT601_DATA_c_26), .DO3(FT601_DATA_c_27), 
            .EF(fifo_emp), .FF(full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=193, LSE_RLINE=193 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top.vhd(193[21:31])
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
