
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.10.0.111.2

-- ldbanno -n VHDL -o data_transfer_impl1_vho.vho -w -neg -gui -msgset /home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/proj_folder/MachXO2/promote.xml data_transfer_impl1.ncd 
-- Netlist created on Fri Aug  9 01:07:05 2019
-- Netlist written on Fri Aug  9 01:07:27 2019
-- Design is for device LCMXO2-2000HC
-- Design is for package TQFP100
-- Design is for performance grade 6

-- entity vmuxregsre
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre : ENTITY IS TRUE;

  end vmuxregsre;

  architecture Structure of vmuxregsre is
  begin
    INST01: FL1P3DX
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity vcc
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity ccu2B0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ccu2B0 is
    port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
          D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
          C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
          S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ccu2B0 : ENTITY IS TRUE;

  end ccu2B0;

  architecture Structure of ccu2B0 is
  begin
    inst1: CCU2D
      generic map (INIT0 => X"faaa", INIT1 => X"faaa", INJECT1_0 => "NO", 
                   INJECT1_1 => "NO")
      port map (CIN=>CI, A0=>A0, B0=>B0, C0=>C0, D0=>D0, A1=>A1, B1=>B1, 
                C1=>C1, D1=>D1, S0=>S0, S1=>S1, COUT=>CO1);
  end Structure;

-- entity prng_inst_SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_0";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_0 : ENTITY IS TRUE;

  end prng_inst_SLICE_0;

  architecture Structure of prng_inst_SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i6: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i5: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_7: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_1";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_1 : ENTITY IS TRUE;

  end prng_inst_SLICE_1;

  architecture Structure of prng_inst_SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i4: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i3: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_5: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_2";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_2 : ENTITY IS TRUE;

  end prng_inst_SLICE_2;

  architecture Structure of prng_inst_SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i20: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i19: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_21: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_3";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_3 : ENTITY IS TRUE;

  end prng_inst_SLICE_3;

  architecture Structure of prng_inst_SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i14: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i13: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_15: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_4";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_4 : ENTITY IS TRUE;

  end prng_inst_SLICE_4;

  architecture Structure of prng_inst_SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i24: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i23: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_25: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_5";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_5 : ENTITY IS TRUE;

  end prng_inst_SLICE_5;

  architecture Structure of prng_inst_SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i18: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i17: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_19: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_6";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_6 : ENTITY IS TRUE;

  end prng_inst_SLICE_6;

  architecture Structure of prng_inst_SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i22: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i21: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_23: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_7";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_7 : ENTITY IS TRUE;

  end prng_inst_SLICE_7;

  architecture Structure of prng_inst_SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i12: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i11: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_13: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_8
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_8 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_8";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_8 : ENTITY IS TRUE;

  end prng_inst_SLICE_8;

  architecture Structure of prng_inst_SLICE_8 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i10: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i9: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_11: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_9
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_9 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_9";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_9 : ENTITY IS TRUE;

  end prng_inst_SLICE_9;

  architecture Structure of prng_inst_SLICE_9 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i2: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i1: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_3: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ccu20001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ccu20001 is
    port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
          D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
          C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
          S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ccu20001 : ENTITY IS TRUE;

  end ccu20001;

  architecture Structure of ccu20001 is
  begin
    inst1: CCU2D
      generic map (INIT0 => X"faaa", INIT1 => X"0000", INJECT1_0 => "NO", 
                   INJECT1_1 => "NO")
      port map (CIN=>CI, A0=>A0, B0=>B0, C0=>C0, D0=>D0, A1=>A1, B1=>B1, 
                C1=>C1, D1=>D1, S0=>S0, S1=>S1, COUT=>CO1);
  end Structure;

-- entity prng_inst_SLICE_10
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_10 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_10";

      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          FCI: in Std_logic; F0: out Std_logic; Q0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_10 : ENTITY IS TRUE;

  end prng_inst_SLICE_10;

  architecture Structure of prng_inst_SLICE_10 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20001
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i31: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_add_4_33: ccu20001
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>GNDI, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>open, 
                CO1=>open);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A0_ipd, DI0_dly, CLK_dly, FCI_ipd, F0_out, Q0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_11
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_11 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_11";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_11 : ENTITY IS TRUE;

  end prng_inst_SLICE_11;

  architecture Structure of prng_inst_SLICE_11 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i30: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i29: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_31: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_12
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_12 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_12";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_12 : ENTITY IS TRUE;

  end prng_inst_SLICE_12;

  architecture Structure of prng_inst_SLICE_12 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i28: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i27: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_29: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_13
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_13 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_13";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_13 : ENTITY IS TRUE;

  end prng_inst_SLICE_13;

  architecture Structure of prng_inst_SLICE_13 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i8: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i7: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_9: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_14
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_14 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_14";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_14 : ENTITY IS TRUE;

  end prng_inst_SLICE_14;

  architecture Structure of prng_inst_SLICE_14 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i16: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i15: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_17: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity prng_inst_SLICE_15
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_15 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_15";

      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_FCI  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_FCI_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic; FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_15 : ENTITY IS TRUE;

  end prng_inst_SLICE_15;

  architecture Structure of prng_inst_SLICE_15 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal FCI_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu2B0
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i26: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_i25: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    prng_inst_sr_i31_50_add_4_27: ccu2B0
      port map (A0=>A0_ipd, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>GNDI, 
                C1=>GNDI, D1=>GNDI, CI=>FCI_ipd, S0=>F0_out, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
      VitalWireDelay(FCI_ipd, FCI, tipd_FCI);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (A1_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, 
      FCI_ipd, F0_out, Q0_out, F1_out, Q1_out, FCO_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_FCO,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => FCI_ipd'last_event,
                           PathDelay => tpd_FCI_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ccu20002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ccu20002 is
    port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
          D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
          C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
          S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ccu20002 : ENTITY IS TRUE;

  end ccu20002;

  architecture Structure of ccu20002 is
  begin
    inst1: CCU2D
      generic map (INIT0 => X"F000", INIT1 => X"a999", INJECT1_0 => "NO", 
                   INJECT1_1 => "NO")
      port map (CIN=>CI, A0=>A0, B0=>B0, C0=>C0, D0=>D0, A1=>A1, B1=>B1, 
                C1=>C1, D1=>D1, S0=>S0, S1=>S1, COUT=>CO1);
  end Structure;

-- entity prng_inst_SLICE_16
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity prng_inst_SLICE_16 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "prng_inst_SLICE_16";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_FCO	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; DI1: in Std_logic; 
          CLK: in Std_logic; F1: out Std_logic; Q1: out Std_logic; 
          FCO: out Std_logic);

    ATTRIBUTE Vital_Level0 OF prng_inst_SLICE_16 : ENTITY IS TRUE;

  end prng_inst_SLICE_16;

  architecture Structure of prng_inst_SLICE_16 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';
    signal FCO_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component ccu20002
      port (A0: in Std_logic; B0: in Std_logic; C0: in Std_logic; 
            D0: in Std_logic; A1: in Std_logic; B1: in Std_logic; 
            C1: in Std_logic; D1: in Std_logic; CI: in Std_logic; 
            S0: out Std_logic; S1: out Std_logic; CO1: out Std_logic);
    end component;
  begin
    prng_inst_sr_i31_50_i0: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    prng_inst_sr_i31_50_add_4_1: ccu20002
      port map (A0=>GNDI, B0=>GNDI, C0=>GNDI, D0=>GNDI, A1=>A1_ipd, B1=>B1_ipd, 
                C1=>GNDI, D1=>GNDI, CI=>GNDI, S0=>open, S1=>F1_out, 
                CO1=>FCO_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, DI1_dly, CLK_dly, F1_out, Q1_out, 
      FCO_out)
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;
    VARIABLE FCO_zd         	: std_logic := 'X';
    VARIABLE FCO_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;
    FCO_zd 	:= FCO_out;

    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FCO, OutSignalName => "FCO", OutTemp => FCO_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_FCO,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_FCO,
                           PathCondition => TRUE)),
      GlitchData => FCO_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0404")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"A0B1")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity ft601_comp_SLICE_17
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ft601_comp_SLICE_17 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ft601_comp_SLICE_17";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ft601_comp_SLICE_17 : ENTITY IS TRUE;

  end ft601_comp_SLICE_17;

  architecture Structure of ft601_comp_SLICE_17 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    ft601_comp_i1_3_lut: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    ft601_comp_tx_active_I_77_4_lut: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    ft601_comp_tx_active_24: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40005 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40005 : ENTITY IS TRUE;

  end lut40005;

  architecture Structure of lut40005 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0F0F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_18
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_18 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_18";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_18 : ENTITY IS TRUE;

  end SLICE_18;

  architecture Structure of SLICE_18 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i2: lut40004
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    ft601_comp_fifo_rd_en_I_0_1_lut: lut40005
      port map (A=>GNDI, B=>GNDI, C=>C0_ipd, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1 	<= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity FT601_DATA_17_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_17_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_17_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA17	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_17_B : ENTITY IS TRUE;

  end FT601_DATA_17_B;

  architecture Structure of FT601_DATA_17_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA17_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_17: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA17_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA17_out)
    VARIABLE FT601DATA17_zd         	: std_logic := 'X';
    VARIABLE FT601DATA17_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA17_zd 	:= FT601DATA17_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA17, OutSignalName => "FT601DATA17", OutTemp => FT601DATA17_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA17,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA17_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_18_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_18_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_18_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA18	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA18: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_18_B : ENTITY IS TRUE;

  end FT601_DATA_18_B;

  architecture Structure of FT601_DATA_18_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA18_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_18: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA18_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA18_out)
    VARIABLE FT601DATA18_zd         	: std_logic := 'X';
    VARIABLE FT601DATA18_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA18_zd 	:= FT601DATA18_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA18, OutSignalName => "FT601DATA18", OutTemp => FT601DATA18_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA18,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA18_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_19_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_19_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_19_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA19	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA19: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_19_B : ENTITY IS TRUE;

  end FT601_DATA_19_B;

  architecture Structure of FT601_DATA_19_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA19_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_19: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA19_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA19_out)
    VARIABLE FT601DATA19_zd         	: std_logic := 'X';
    VARIABLE FT601DATA19_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA19_zd 	:= FT601DATA19_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA19, OutSignalName => "FT601DATA19", OutTemp => FT601DATA19_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA19,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA19_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_20_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_20_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_20_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA20	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA20: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_20_B : ENTITY IS TRUE;

  end FT601_DATA_20_B;

  architecture Structure of FT601_DATA_20_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA20_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_20: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA20_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA20_out)
    VARIABLE FT601DATA20_zd         	: std_logic := 'X';
    VARIABLE FT601DATA20_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA20_zd 	:= FT601DATA20_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA20, OutSignalName => "FT601DATA20", OutTemp => FT601DATA20_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA20,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA20_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_21_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_21_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_21_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA21	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA21: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_21_B : ENTITY IS TRUE;

  end FT601_DATA_21_B;

  architecture Structure of FT601_DATA_21_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA21_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_21: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA21_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA21_out)
    VARIABLE FT601DATA21_zd         	: std_logic := 'X';
    VARIABLE FT601DATA21_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA21_zd 	:= FT601DATA21_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA21, OutSignalName => "FT601DATA21", OutTemp => FT601DATA21_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA21,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA21_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_22_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_22_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_22_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA22	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA22: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_22_B : ENTITY IS TRUE;

  end FT601_DATA_22_B;

  architecture Structure of FT601_DATA_22_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA22_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_22: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA22_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA22_out)
    VARIABLE FT601DATA22_zd         	: std_logic := 'X';
    VARIABLE FT601DATA22_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA22_zd 	:= FT601DATA22_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA22, OutSignalName => "FT601DATA22", OutTemp => FT601DATA22_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA22,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA22_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_23_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_23_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_23_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA23	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA23: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_23_B : ENTITY IS TRUE;

  end FT601_DATA_23_B;

  architecture Structure of FT601_DATA_23_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA23_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_23: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA23_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA23_out)
    VARIABLE FT601DATA23_zd         	: std_logic := 'X';
    VARIABLE FT601DATA23_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA23_zd 	:= FT601DATA23_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA23, OutSignalName => "FT601DATA23", OutTemp => FT601DATA23_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA23,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA23_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_24_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_24_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_24_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA24	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA24: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_24_B : ENTITY IS TRUE;

  end FT601_DATA_24_B;

  architecture Structure of FT601_DATA_24_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA24_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_24: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA24_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA24_out)
    VARIABLE FT601DATA24_zd         	: std_logic := 'X';
    VARIABLE FT601DATA24_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA24_zd 	:= FT601DATA24_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA24, OutSignalName => "FT601DATA24", OutTemp => FT601DATA24_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA24,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA24_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_25_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_25_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_25_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA25	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA25: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_25_B : ENTITY IS TRUE;

  end FT601_DATA_25_B;

  architecture Structure of FT601_DATA_25_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA25_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_25: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA25_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA25_out)
    VARIABLE FT601DATA25_zd         	: std_logic := 'X';
    VARIABLE FT601DATA25_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA25_zd 	:= FT601DATA25_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA25, OutSignalName => "FT601DATA25", OutTemp => FT601DATA25_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA25,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA25_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_26_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_26_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_26_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA26	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA26: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_26_B : ENTITY IS TRUE;

  end FT601_DATA_26_B;

  architecture Structure of FT601_DATA_26_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA26_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_26: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA26_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA26_out)
    VARIABLE FT601DATA26_zd         	: std_logic := 'X';
    VARIABLE FT601DATA26_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA26_zd 	:= FT601DATA26_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA26, OutSignalName => "FT601DATA26", OutTemp => FT601DATA26_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA26,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA26_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_27_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_27_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_27_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA27	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA27: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_27_B : ENTITY IS TRUE;

  end FT601_DATA_27_B;

  architecture Structure of FT601_DATA_27_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA27_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_27: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA27_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA27_out)
    VARIABLE FT601DATA27_zd         	: std_logic := 'X';
    VARIABLE FT601DATA27_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA27_zd 	:= FT601DATA27_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA27, OutSignalName => "FT601DATA27", OutTemp => FT601DATA27_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA27,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA27_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_16_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_16_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_16_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA16	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA16: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_16_B : ENTITY IS TRUE;

  end FT601_DATA_16_B;

  architecture Structure of FT601_DATA_16_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA16_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_16: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA16_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA16_out)
    VARIABLE FT601DATA16_zd         	: std_logic := 'X';
    VARIABLE FT601DATA16_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA16_zd 	:= FT601DATA16_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA16, OutSignalName => "FT601DATA16", OutTemp => FT601DATA16_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA16,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA16_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_28_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_28_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_28_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA28	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA28: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_28_B : ENTITY IS TRUE;

  end FT601_DATA_28_B;

  architecture Structure of FT601_DATA_28_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA28_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_28: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA28_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA28_out)
    VARIABLE FT601DATA28_zd         	: std_logic := 'X';
    VARIABLE FT601DATA28_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA28_zd 	:= FT601DATA28_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA28, OutSignalName => "FT601DATA28", OutTemp => FT601DATA28_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA28,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA28_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_29_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_29_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_29_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA29	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA29: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_29_B : ENTITY IS TRUE;

  end FT601_DATA_29_B;

  architecture Structure of FT601_DATA_29_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA29_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_29: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA29_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA29_out)
    VARIABLE FT601DATA29_zd         	: std_logic := 'X';
    VARIABLE FT601DATA29_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA29_zd 	:= FT601DATA29_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA29, OutSignalName => "FT601DATA29", OutTemp => FT601DATA29_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA29,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA29_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_30_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_30_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_30_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA30	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA30: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_30_B : ENTITY IS TRUE;

  end FT601_DATA_30_B;

  architecture Structure of FT601_DATA_30_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA30_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_30: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA30_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA30_out)
    VARIABLE FT601DATA30_zd         	: std_logic := 'X';
    VARIABLE FT601DATA30_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA30_zd 	:= FT601DATA30_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA30, OutSignalName => "FT601DATA30", OutTemp => FT601DATA30_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA30,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA30_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_31_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_31_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_31_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA31	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA31: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_31_B : ENTITY IS TRUE;

  end FT601_DATA_31_B;

  architecture Structure of FT601_DATA_31_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA31_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_31: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA31_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA31_out)
    VARIABLE FT601DATA31_zd         	: std_logic := 'X';
    VARIABLE FT601DATA31_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA31_zd 	:= FT601DATA31_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA31, OutSignalName => "FT601DATA31", OutTemp => FT601DATA31_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA31,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA31_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_RST_NB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_RST_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_RST_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601RSTN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601RSTN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_RST_NB : ENTITY IS TRUE;

  end FT601_RST_NB;

  architecture Structure of FT601_RST_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601RSTN_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_RST_N_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601RSTN_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601RSTN_out)
    VARIABLE FT601RSTN_zd         	: std_logic := 'X';
    VARIABLE FT601RSTN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601RSTN_zd 	:= FT601RSTN_out;

    VitalPathDelay01 (
      OutSignal => FT601RSTN, OutSignalName => "FT601RSTN", OutTemp => FT601RSTN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601RSTN,
                           PathCondition => TRUE)),
      GlitchData => FT601RSTN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity LEDB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity LEDB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LEDB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_LEDS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; LEDS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LEDB : ENTITY IS TRUE;

  end LEDB;

  architecture Structure of LEDB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal LEDS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    LED_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>LEDS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, LEDS_out)
    VARIABLE LEDS_zd         	: std_logic := 'X';
    VARIABLE LEDS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LEDS_zd 	:= LEDS_out;

    VitalPathDelay01 (
      OutSignal => LEDS, OutSignalName => "LEDS", OutTemp => LEDS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_LEDS,
                           PathCondition => TRUE)),
      GlitchData => LEDS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_15_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_15_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA15	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA15: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_15_B : ENTITY IS TRUE;

  end FT601_DATA_15_B;

  architecture Structure of FT601_DATA_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA15_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_15: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA15_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA15_out)
    VARIABLE FT601DATA15_zd         	: std_logic := 'X';
    VARIABLE FT601DATA15_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA15_zd 	:= FT601DATA15_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA15, OutSignalName => "FT601DATA15", OutTemp => FT601DATA15_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA15,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA15_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_14_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_14_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA14	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA14: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_14_B : ENTITY IS TRUE;

  end FT601_DATA_14_B;

  architecture Structure of FT601_DATA_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA14_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_14: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA14_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA14_out)
    VARIABLE FT601DATA14_zd         	: std_logic := 'X';
    VARIABLE FT601DATA14_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA14_zd 	:= FT601DATA14_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA14, OutSignalName => "FT601DATA14", OutTemp => FT601DATA14_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA14,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA14_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_13_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_13_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA13	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA13: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_13_B : ENTITY IS TRUE;

  end FT601_DATA_13_B;

  architecture Structure of FT601_DATA_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA13_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_13: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA13_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA13_out)
    VARIABLE FT601DATA13_zd         	: std_logic := 'X';
    VARIABLE FT601DATA13_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA13_zd 	:= FT601DATA13_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA13, OutSignalName => "FT601DATA13", OutTemp => FT601DATA13_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA13,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA13_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_12_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_12_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA12	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_12_B : ENTITY IS TRUE;

  end FT601_DATA_12_B;

  architecture Structure of FT601_DATA_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA12_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_12: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA12_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA12_out)
    VARIABLE FT601DATA12_zd         	: std_logic := 'X';
    VARIABLE FT601DATA12_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA12_zd 	:= FT601DATA12_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA12, OutSignalName => "FT601DATA12", OutTemp => FT601DATA12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA12,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_11_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_11_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA11	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_11_B : ENTITY IS TRUE;

  end FT601_DATA_11_B;

  architecture Structure of FT601_DATA_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA11_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_11: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA11_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA11_out)
    VARIABLE FT601DATA11_zd         	: std_logic := 'X';
    VARIABLE FT601DATA11_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA11_zd 	:= FT601DATA11_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA11, OutSignalName => "FT601DATA11", OutTemp => FT601DATA11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA11,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_10_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_10_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA10	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_10_B : ENTITY IS TRUE;

  end FT601_DATA_10_B;

  architecture Structure of FT601_DATA_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA10_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_10: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA10_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA10_out)
    VARIABLE FT601DATA10_zd         	: std_logic := 'X';
    VARIABLE FT601DATA10_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA10_zd 	:= FT601DATA10_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA10, OutSignalName => "FT601DATA10", OutTemp => FT601DATA10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA10,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_9_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_9_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA9	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_9_B : ENTITY IS TRUE;

  end FT601_DATA_9_B;

  architecture Structure of FT601_DATA_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA9_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_9: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA9_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA9_out)
    VARIABLE FT601DATA9_zd         	: std_logic := 'X';
    VARIABLE FT601DATA9_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA9_zd 	:= FT601DATA9_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA9, OutSignalName => "FT601DATA9", OutTemp => FT601DATA9_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA9,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA9_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_8_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA8	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_8_B : ENTITY IS TRUE;

  end FT601_DATA_8_B;

  architecture Structure of FT601_DATA_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_8: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA8_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA8_out)
    VARIABLE FT601DATA8_zd         	: std_logic := 'X';
    VARIABLE FT601DATA8_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA8_zd 	:= FT601DATA8_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA8, OutSignalName => "FT601DATA8", OutTemp => FT601DATA8_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA8,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA8_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_7_B : ENTITY IS TRUE;

  end FT601_DATA_7_B;

  architecture Structure of FT601_DATA_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_7: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA7_out)
    VARIABLE FT601DATA7_zd         	: std_logic := 'X';
    VARIABLE FT601DATA7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA7_zd 	:= FT601DATA7_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA7, OutSignalName => "FT601DATA7", OutTemp => FT601DATA7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA7,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_6_B : ENTITY IS TRUE;

  end FT601_DATA_6_B;

  architecture Structure of FT601_DATA_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_6: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA6_out)
    VARIABLE FT601DATA6_zd         	: std_logic := 'X';
    VARIABLE FT601DATA6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA6_zd 	:= FT601DATA6_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA6, OutSignalName => "FT601DATA6", OutTemp => FT601DATA6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA6,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_5_B : ENTITY IS TRUE;

  end FT601_DATA_5_B;

  architecture Structure of FT601_DATA_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_5: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA5_out)
    VARIABLE FT601DATA5_zd         	: std_logic := 'X';
    VARIABLE FT601DATA5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA5_zd 	:= FT601DATA5_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA5, OutSignalName => "FT601DATA5", OutTemp => FT601DATA5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA5,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_4_B : ENTITY IS TRUE;

  end FT601_DATA_4_B;

  architecture Structure of FT601_DATA_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_4: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA4_out)
    VARIABLE FT601DATA4_zd         	: std_logic := 'X';
    VARIABLE FT601DATA4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA4_zd 	:= FT601DATA4_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA4, OutSignalName => "FT601DATA4", OutTemp => FT601DATA4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA4,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_3_B : ENTITY IS TRUE;

  end FT601_DATA_3_B;

  architecture Structure of FT601_DATA_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA3_out)
    VARIABLE FT601DATA3_zd         	: std_logic := 'X';
    VARIABLE FT601DATA3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA3_zd 	:= FT601DATA3_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA3, OutSignalName => "FT601DATA3", OutTemp => FT601DATA3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA3,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_2_B : ENTITY IS TRUE;

  end FT601_DATA_2_B;

  architecture Structure of FT601_DATA_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA2_out)
    VARIABLE FT601DATA2_zd         	: std_logic := 'X';
    VARIABLE FT601DATA2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA2_zd 	:= FT601DATA2_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA2, OutSignalName => "FT601DATA2", OutTemp => FT601DATA2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA2,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_1_B : ENTITY IS TRUE;

  end FT601_DATA_1_B;

  architecture Structure of FT601_DATA_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA1_out)
    VARIABLE FT601DATA1_zd         	: std_logic := 'X';
    VARIABLE FT601DATA1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA1_zd 	:= FT601DATA1_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA1, OutSignalName => "FT601DATA1", OutTemp => FT601DATA1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA1,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_DATA_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_DATA_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_DATA_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601DATA0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601DATA0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_DATA_0_B : ENTITY IS TRUE;

  end FT601_DATA_0_B;

  architecture Structure of FT601_DATA_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601DATA0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_DATA_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601DATA0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601DATA0_out)
    VARIABLE FT601DATA0_zd         	: std_logic := 'X';
    VARIABLE FT601DATA0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601DATA0_zd 	:= FT601DATA0_out;

    VitalPathDelay01 (

        OutSignal => FT601DATA0, OutSignalName => "FT601DATA0", OutTemp => FT601DATA0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601DATA0,
                           PathCondition => TRUE)),
      GlitchData => FT601DATA0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_BE_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_BE_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_BE_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601BE3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601BE3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_BE_3_B : ENTITY IS TRUE;

  end FT601_BE_3_B;

  architecture Structure of FT601_BE_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601BE3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_BE_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601BE3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601BE3_out)
    VARIABLE FT601BE3_zd         	: std_logic := 'X';
    VARIABLE FT601BE3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601BE3_zd 	:= FT601BE3_out;

    VitalPathDelay01 (
      OutSignal => FT601BE3, OutSignalName => "FT601BE3", OutTemp => FT601BE3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601BE3,
                           PathCondition => TRUE)),
      GlitchData => FT601BE3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_BE_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_BE_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_BE_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601BE2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601BE2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_BE_2_B : ENTITY IS TRUE;

  end FT601_BE_2_B;

  architecture Structure of FT601_BE_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601BE2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_BE_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601BE2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601BE2_out)
    VARIABLE FT601BE2_zd         	: std_logic := 'X';
    VARIABLE FT601BE2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601BE2_zd 	:= FT601BE2_out;

    VitalPathDelay01 (
      OutSignal => FT601BE2, OutSignalName => "FT601BE2", OutTemp => FT601BE2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601BE2,
                           PathCondition => TRUE)),
      GlitchData => FT601BE2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_BE_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_BE_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_BE_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601BE1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601BE1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_BE_1_B : ENTITY IS TRUE;

  end FT601_BE_1_B;

  architecture Structure of FT601_BE_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601BE1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_BE_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601BE1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601BE1_out)
    VARIABLE FT601BE1_zd         	: std_logic := 'X';
    VARIABLE FT601BE1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601BE1_zd 	:= FT601BE1_out;

    VitalPathDelay01 (
      OutSignal => FT601BE1, OutSignalName => "FT601BE1", OutTemp => FT601BE1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601BE1,
                           PathCondition => TRUE)),
      GlitchData => FT601BE1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_BE_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_BE_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_BE_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601BE0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601BE0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_BE_0_B : ENTITY IS TRUE;

  end FT601_BE_0_B;

  architecture Structure of FT601_BE_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601BE0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_BE_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601BE0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601BE0_out)
    VARIABLE FT601BE0_zd         	: std_logic := 'X';
    VARIABLE FT601BE0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601BE0_zd 	:= FT601BE0_out;

    VitalPathDelay01 (
      OutSignal => FT601BE0, OutSignalName => "FT601BE0", OutTemp => FT601BE0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601BE0,
                           PathCondition => TRUE)),
      GlitchData => FT601BE0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_WR_NB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_WR_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_WR_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601WRN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601WRN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_WR_NB : ENTITY IS TRUE;

  end FT601_WR_NB;

  architecture Structure of FT601_WR_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601WRN_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_WR_N_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601WRN_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601WRN_out)
    VARIABLE FT601WRN_zd         	: std_logic := 'X';
    VARIABLE FT601WRN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601WRN_zd 	:= FT601WRN_out;

    VitalPathDelay01 (
      OutSignal => FT601WRN, OutSignalName => "FT601WRN", OutTemp => FT601WRN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601WRN,
                           PathCondition => TRUE)),
      GlitchData => FT601WRN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_SIWU_NB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_SIWU_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_SIWU_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601SIWUN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601SIWUN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_SIWU_NB : ENTITY IS TRUE;

  end FT601_SIWU_NB;

  architecture Structure of FT601_SIWU_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601SIWUN_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_SIWU_N_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601SIWUN_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601SIWUN_out)
    VARIABLE FT601SIWUN_zd         	: std_logic := 'X';
    VARIABLE FT601SIWUN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601SIWUN_zd 	:= FT601SIWUN_out;

    VitalPathDelay01 (

        OutSignal => FT601SIWUN, OutSignalName => "FT601SIWUN", OutTemp => FT601SIWUN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601SIWUN,
                           PathCondition => TRUE)),
      GlitchData => FT601SIWUN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_RD_NB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_RD_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_RD_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601RDN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601RDN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_RD_NB : ENTITY IS TRUE;

  end FT601_RD_NB;

  architecture Structure of FT601_RD_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601RDN_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_RD_N_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601RDN_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601RDN_out)
    VARIABLE FT601RDN_zd         	: std_logic := 'X';
    VARIABLE FT601RDN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601RDN_zd 	:= FT601RDN_out;

    VitalPathDelay01 (
      OutSignal => FT601RDN, OutSignalName => "FT601RDN", OutTemp => FT601RDN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601RDN,
                           PathCondition => TRUE)),
      GlitchData => FT601RDN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_OE_NB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_OE_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_OE_NB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_FT601OEN	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; FT601OEN: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_OE_NB : ENTITY IS TRUE;

  end FT601_OE_NB;

  architecture Structure of FT601_OE_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal FT601OEN_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    FT601_OE_N_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>FT601OEN_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, FT601OEN_out)
    VARIABLE FT601OEN_zd         	: std_logic := 'X';
    VARIABLE FT601OEN_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    FT601OEN_zd 	:= FT601OEN_out;

    VitalPathDelay01 (
      OutSignal => FT601OEN, OutSignalName => "FT601OEN", OutTemp => FT601OEN_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_FT601OEN,
                           PathCondition => TRUE)),
      GlitchData => FT601OEN_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0006 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0006 : ENTITY IS TRUE;

  end xo2iobuf0006;

  architecture Structure of xo2iobuf0006 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity FT601_CLKB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_CLKB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_CLKB";

      tipd_FT601CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_FT601CLK_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_FT601CLK 	: VitalDelayType := 0 ns;
      tpw_FT601CLK_posedge	: VitalDelayType := 0 ns;
      tpw_FT601CLK_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; FT601CLK: in Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_CLKB : ENTITY IS TRUE;

  end FT601_CLKB;

  architecture Structure of FT601_CLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal FT601CLK_ipd 	: std_logic := 'X';

    component xo2iobuf0006
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    FT601_CLK_pad: xo2iobuf0006
      port map (Z=>PADDI_out, PAD=>FT601CLK_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(FT601CLK_ipd, FT601CLK, tipd_FT601CLK);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, FT601CLK_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_FT601CLK_FT601CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_FT601CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => FT601CLK_ipd,
        TestSignalName => "FT601CLK",
        Period => tperiod_FT601CLK,
        PulseWidthHigh => tpw_FT601CLK_posedge,
        PulseWidthLow => tpw_FT601CLK_negedge,
        PeriodData => periodcheckinfo_FT601CLK,
        Violation => tviol_FT601CLK_FT601CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => FT601CLK_ipd'last_event,
                           PathDelay => tpd_FT601CLK_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FT601_TXE_NB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FT601_TXE_NB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "FT601_TXE_NB";

      tipd_FT601TXEN  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_FT601TXEN_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_FT601TXEN 	: VitalDelayType := 0 ns;
      tpw_FT601TXEN_posedge	: VitalDelayType := 0 ns;
      tpw_FT601TXEN_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; FT601TXEN: in Std_logic);

    ATTRIBUTE Vital_Level0 OF FT601_TXE_NB : ENTITY IS TRUE;

  end FT601_TXE_NB;

  architecture Structure of FT601_TXE_NB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal FT601TXEN_ipd 	: std_logic := 'X';

    component xo2iobuf0006
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    FT601_TXE_N_pad: xo2iobuf0006
      port map (Z=>PADDI_out, PAD=>FT601TXEN_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(FT601TXEN_ipd, FT601TXEN, tipd_FT601TXEN);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, FT601TXEN_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_FT601TXEN_FT601TXEN          	: x01 := '0';
    VARIABLE periodcheckinfo_FT601TXEN	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => FT601TXEN_ipd,
        TestSignalName => "FT601TXEN",
        Period => tperiod_FT601TXEN,
        PulseWidthHigh => tpw_FT601TXEN_posedge,
        PulseWidthLow => tpw_FT601TXEN_negedge,
        PeriodData => periodcheckinfo_FT601TXEN,
        Violation => tviol_FT601TXEN_FT601TXEN,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => FT601TXEN_ipd'last_event,
                           PathDelay => tpd_FT601TXEN_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FIFO8KBB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FIFO8KBB is
    port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
          DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
          DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
          DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
          DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
          DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
          FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
          EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
          WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
          CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
          RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
          DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
          DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
          DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
          DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
          DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
          DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
          AFF: out Std_logic; FF: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FIFO8KBB : ENTITY IS TRUE;

  end FIFO8KBB;

  architecture Structure of FIFO8KBB is
  begin
    INST10: FIFO8KB
      generic map (AEPOINTER => "0b11111111111000", 
                   AEPOINTER1 => "0b00000000000000", 
                   AFPOINTER => "0b11111111111000", 
                   AFPOINTER1 => "0b00000000000000", 
                   ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b11", 
                   CSDECODE_W => "0b11", DATA_WIDTH_R => 9, DATA_WIDTH_W => 9, 
                   FULLPOINTER => "0b11111111111000", 
                   FULLPOINTER1 => "0b00000000000000", GSR => "DISABLED", 
                   REGMODE => "NOREG", RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, FULLI=>FULLI, EMPTYI=>EMPTYI, CSW1=>CSW1, 
                CSW0=>CSW0, CSR1=>CSR1, CSR0=>CSR0, WE=>WE, RE=>RE, ORE=>ORE, 
                CLKW=>CLKW, CLKR=>CLKR, RST=>RST, RPRST=>RPRST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, EF=>EF, AEF=>AEF, AFF=>AFF, FF=>FF);
  end Structure;

-- entity inverter
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity inverter is
    port (I: in Std_logic; Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF inverter : ENTITY IS TRUE;

  end inverter;

  architecture Structure of inverter is
  begin
    INST1: INV
      port map (A=>I, Z=>Z);
  end Structure;

-- entity cdc_fifo_inst_async_fifo_1_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity cdc_fifo_inst_async_fifo_1_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "cdc_fifo_inst_async_fifo_1_2";

      tipd_DIA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSB2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_OCEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB8	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CSA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CSB2_CLKB	: VitalDelayType := 0 ns;
      tsetup_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_OCEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DIA8: in Std_logic; DIA7: in Std_logic; DIA6: in Std_logic; 
          DIA5: in Std_logic; DIA4: in Std_logic; DIA3: in Std_logic; 
          DIA2: in Std_logic; DIA1: in Std_logic; DIA0: in Std_logic; 
          CEA: in Std_logic; CLKA: in Std_logic; CSA2: in Std_logic; 
          CSB2: in Std_logic; CLKB: in Std_logic; OCEB: in Std_logic; 
          CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          DOB8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cdc_fifo_inst_async_fifo_1_2 : ENTITY IS TRUE;

  end cdc_fifo_inst_async_fifo_1_2;

  architecture Structure of cdc_fifo_inst_async_fifo_1_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA8_ipd 	: std_logic := 'X';
    signal DIA8_dly 	: std_logic := 'X';
    signal DIA7_ipd 	: std_logic := 'X';
    signal DIA7_dly 	: std_logic := 'X';
    signal DIA6_ipd 	: std_logic := 'X';
    signal DIA6_dly 	: std_logic := 'X';
    signal DIA5_ipd 	: std_logic := 'X';
    signal DIA5_dly 	: std_logic := 'X';
    signal DIA4_ipd 	: std_logic := 'X';
    signal DIA4_dly 	: std_logic := 'X';
    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal CEA_ipd 	: std_logic := 'X';
    signal CEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal CSA2_ipd 	: std_logic := 'X';
    signal CSA2_dly 	: std_logic := 'X';
    signal CSB2_ipd 	: std_logic := 'X';
    signal CSB2_dly 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal OCEB_ipd 	: std_logic := 'X';
    signal OCEB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal DOB8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    signal CEA_NOTIN: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component FIFO8KBB
      port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
            DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
            DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
            DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
            DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
            DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
            FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
            EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
            WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
            CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
            RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
            DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
            DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
            DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
            DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
            DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
            DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
            AFF: out Std_logic; FF: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    cdc_fifo_inst_async_fifo_1_2_FIFO8KB: FIFO8KBB
      port map (DI0=>DIA0_dly, DI1=>DIA1_dly, DI2=>DIA2_dly, DI3=>DIA3_dly, 
                DI4=>DIA4_dly, DI5=>DIA5_dly, DI6=>DIA6_dly, DI7=>DIA7_dly, 
                DI8=>DIA8_dly, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                FULLI=>CSA2_dly, CSW0=>VCCI, CSW1=>VCCI, EMPTYI=>CSB2_dly, 
                CSR0=>VCCI, CSR1=>VCCI, WE=>CEA_NOTIN, RE=>CEB_dly, 
                ORE=>OCEB_dly, CLKW=>CLKA_dly, CLKR=>CLKB_dly, RST=>GNDI, 
                RPRST=>GNDI, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>DOB8_out, DO9=>open, DO10=>open, 
                DO11=>open, DO12=>open, DO13=>open, DO14=>open, DO15=>open, 
                DO16=>open, DO17=>open, EF=>open, AEF=>open, AFF=>open, 
                FF=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    CEA_INVERTERIN: inverter
      port map (I=>CEA_dly, Z=>CEA_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA8_ipd, DIA8, tipd_DIA8);
      VitalWireDelay(DIA7_ipd, DIA7, tipd_DIA7);
      VitalWireDelay(DIA6_ipd, DIA6, tipd_DIA6);
      VitalWireDelay(DIA5_ipd, DIA5, tipd_DIA5);
      VitalWireDelay(DIA4_ipd, DIA4, tipd_DIA4);
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(CEA_ipd, CEA, tipd_CEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(CSA2_ipd, CSA2, tipd_CSA2);
      VitalWireDelay(CSB2_ipd, CSB2, tipd_CSB2);
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(OCEB_ipd, OCEB, tipd_OCEB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA8_dly, DIA8_ipd, tisd_DIA8_CLKA);
      VitalSignalDelay(DIA7_dly, DIA7_ipd, tisd_DIA7_CLKA);
      VitalSignalDelay(DIA6_dly, DIA6_ipd, tisd_DIA6_CLKA);
      VitalSignalDelay(DIA5_dly, DIA5_ipd, tisd_DIA5_CLKA);
      VitalSignalDelay(DIA4_dly, DIA4_ipd, tisd_DIA4_CLKA);
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(CEA_dly, CEA_ipd, tisd_CEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
      VitalSignalDelay(CSA2_dly, CSA2_ipd, tisd_CSA2_CLKA);
      VitalSignalDelay(CSB2_dly, CSB2_ipd, tisd_CSB2_CLKB);
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(OCEB_dly, OCEB_ipd, tisd_OCEB_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DIA8_dly, DIA7_dly, DIA6_dly, DIA5_dly, DIA4_dly, 
      DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, CEA_dly, CLKA_dly, CSA2_dly, 
      CSB2_dly, CLKB_dly, OCEB_dly, CEB_dly, DOB0_out, DOB1_out, DOB2_out, 
      DOB3_out, DOB4_out, DOB5_out, DOB6_out, DOB7_out, DOB8_out)
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB8_zd         	: std_logic := 'X';
    VARIABLE DOB8_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA8_CLKA       	: x01 := '0';
    VARIABLE DIA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA7_CLKA       	: x01 := '0';
    VARIABLE DIA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA6_CLKA       	: x01 := '0';
    VARIABLE DIA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA5_CLKA       	: x01 := '0';
    VARIABLE DIA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA4_CLKA       	: x01 := '0';
    VARIABLE DIA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEA_CLKA       	: x01 := '0';
    VARIABLE CEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSA2_CLKA       	: x01 := '0';
    VARIABLE CSA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSB2_CLKB       	: x01 := '0';
    VARIABLE CSB2_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_OCEB_CLKB       	: x01 := '0';
    VARIABLE OCEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA8_dly,
        TestSignalName => "DIA8",
        TestDelay => tisd_DIA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA8_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA8_CLKA_noedge_posedge,
        HoldHigh => thold_DIA8_CLKA_noedge_posedge,
        HoldLow => thold_DIA8_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA8_CLKA_TimingDatash,
        Violation => tviol_DIA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA7_dly,
        TestSignalName => "DIA7",
        TestDelay => tisd_DIA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA7_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA7_CLKA_noedge_posedge,
        HoldHigh => thold_DIA7_CLKA_noedge_posedge,
        HoldLow => thold_DIA7_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA7_CLKA_TimingDatash,
        Violation => tviol_DIA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA6_dly,
        TestSignalName => "DIA6",
        TestDelay => tisd_DIA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA6_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA6_CLKA_noedge_posedge,
        HoldHigh => thold_DIA6_CLKA_noedge_posedge,
        HoldLow => thold_DIA6_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA6_CLKA_TimingDatash,
        Violation => tviol_DIA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA5_dly,
        TestSignalName => "DIA5",
        TestDelay => tisd_DIA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA5_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA5_CLKA_noedge_posedge,
        HoldHigh => thold_DIA5_CLKA_noedge_posedge,
        HoldLow => thold_DIA5_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA5_CLKA_TimingDatash,
        Violation => tviol_DIA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA4_dly,
        TestSignalName => "DIA4",
        TestDelay => tisd_DIA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA4_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA4_CLKA_noedge_posedge,
        HoldHigh => thold_DIA4_CLKA_noedge_posedge,
        HoldLow => thold_DIA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA4_CLKA_TimingDatash,
        Violation => tviol_DIA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_posedge,
        HoldHigh => thold_DIA3_CLKA_noedge_posedge,
        HoldLow => thold_DIA3_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_posedge,
        HoldHigh => thold_DIA2_CLKA_noedge_posedge,
        HoldLow => thold_DIA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_posedge,
        HoldHigh => thold_DIA1_CLKA_noedge_posedge,
        HoldLow => thold_DIA1_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_posedge,
        HoldHigh => thold_DIA0_CLKA_noedge_posedge,
        HoldLow => thold_DIA0_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEA_dly,
        TestSignalName => "CEA",
        TestDelay => tisd_CEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CEA_CLKA_noedge_posedge,
        SetupLow => tsetup_CEA_CLKA_noedge_posedge,
        HoldHigh => thold_CEA_CLKA_noedge_posedge,
        HoldLow => thold_CEA_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEA_CLKA_TimingDatash,
        Violation => tviol_CEA_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSA2_dly,
        TestSignalName => "CSA2",
        TestDelay => tisd_CSA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CSA2_CLKA_noedge_posedge,
        SetupLow => tsetup_CSA2_CLKA_noedge_posedge,
        HoldHigh => thold_CSA2_CLKA_noedge_posedge,
        HoldLow => thold_CSA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSA2_CLKA_TimingDatash,
        Violation => tviol_CSA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSB2_dly,
        TestSignalName => "CSB2",
        TestDelay => tisd_CSB2_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CSB2_CLKB_noedge_posedge,
        SetupLow => tsetup_CSB2_CLKB_noedge_posedge,
        HoldHigh => thold_CSB2_CLKB_noedge_posedge,
        HoldLow => thold_CSB2_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSB2_CLKB_TimingDatash,
        Violation => tviol_CSB2_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => OCEB_dly,
        TestSignalName => "OCEB",
        TestDelay => tisd_OCEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_OCEB_CLKB_noedge_posedge,
        SetupLow => tsetup_OCEB_CLKB_noedge_posedge,
        HoldHigh => thold_OCEB_CLKB_noedge_posedge,
        HoldLow => thold_OCEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => OCEB_CLKB_TimingDatash,
        Violation => tviol_OCEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;
    DOB8_zd 	:= DOB8_out;

    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB8, OutSignalName => "DOB8", OutTemp => DOB8_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB8,
                           PathCondition => TRUE)),
      GlitchData => DOB8_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FIFO8KB0007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FIFO8KB0007 is
    port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
          DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
          DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
          DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
          DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
          DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
          FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
          EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
          WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
          CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
          RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
          DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
          DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
          DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
          DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
          DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
          DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
          AFF: out Std_logic; FF: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FIFO8KB0007 : ENTITY IS TRUE;

  end FIFO8KB0007;

  architecture Structure of FIFO8KB0007 is
  begin
    INST10: FIFO8KB
      generic map (AEPOINTER => "0b11111111111000", 
                   AEPOINTER1 => "0b00000000000000", 
                   AFPOINTER => "0b11111111111000", 
                   AFPOINTER1 => "0b00000000000000", 
                   ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b11", 
                   CSDECODE_W => "0b11", DATA_WIDTH_R => 9, DATA_WIDTH_W => 9, 
                   FULLPOINTER => "0b11111111111000", 
                   FULLPOINTER1 => "0b00000000000000", GSR => "DISABLED", 
                   REGMODE => "NOREG", RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, FULLI=>FULLI, EMPTYI=>EMPTYI, CSW1=>CSW1, 
                CSW0=>CSW0, CSR1=>CSR1, CSR0=>CSR0, WE=>WE, RE=>RE, ORE=>ORE, 
                CLKW=>CLKW, CLKR=>CLKR, RST=>RST, RPRST=>RPRST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, EF=>EF, AEF=>AEF, AFF=>AFF, FF=>FF);
  end Structure;

-- entity cdc_fifo_inst_async_fifo_2_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity cdc_fifo_inst_async_fifo_2_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "cdc_fifo_inst_async_fifo_2_1";

      tipd_DIA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSB2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_OCEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB8	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CSA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CSB2_CLKB	: VitalDelayType := 0 ns;
      tsetup_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_OCEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DIA8: in Std_logic; DIA7: in Std_logic; DIA6: in Std_logic; 
          DIA5: in Std_logic; DIA4: in Std_logic; DIA3: in Std_logic; 
          DIA2: in Std_logic; DIA1: in Std_logic; DIA0: in Std_logic; 
          CEA: in Std_logic; CLKA: in Std_logic; CSA2: in Std_logic; 
          CSB2: in Std_logic; CLKB: in Std_logic; OCEB: in Std_logic; 
          CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
          DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
          DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
          DOB8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cdc_fifo_inst_async_fifo_2_1 : ENTITY IS TRUE;

  end cdc_fifo_inst_async_fifo_2_1;

  architecture Structure of cdc_fifo_inst_async_fifo_2_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA8_ipd 	: std_logic := 'X';
    signal DIA8_dly 	: std_logic := 'X';
    signal DIA7_ipd 	: std_logic := 'X';
    signal DIA7_dly 	: std_logic := 'X';
    signal DIA6_ipd 	: std_logic := 'X';
    signal DIA6_dly 	: std_logic := 'X';
    signal DIA5_ipd 	: std_logic := 'X';
    signal DIA5_dly 	: std_logic := 'X';
    signal DIA4_ipd 	: std_logic := 'X';
    signal DIA4_dly 	: std_logic := 'X';
    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal CEA_ipd 	: std_logic := 'X';
    signal CEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal CSA2_ipd 	: std_logic := 'X';
    signal CSA2_dly 	: std_logic := 'X';
    signal CSB2_ipd 	: std_logic := 'X';
    signal CSB2_dly 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal OCEB_ipd 	: std_logic := 'X';
    signal OCEB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal DOB8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    signal CEA_NOTIN: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
    component FIFO8KB0007
      port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
            DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
            DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
            DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
            DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
            DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
            FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
            EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
            WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
            CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
            RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
            DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
            DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
            DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
            DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
            DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
            DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
            AFF: out Std_logic; FF: out Std_logic);
    end component;
  begin
    cdc_fifo_inst_async_fifo_2_1_FIFO8KB: FIFO8KB0007
      port map (DI0=>DIA0_dly, DI1=>DIA1_dly, DI2=>DIA2_dly, DI3=>DIA3_dly, 
                DI4=>DIA4_dly, DI5=>DIA5_dly, DI6=>DIA6_dly, DI7=>DIA7_dly, 
                DI8=>DIA8_dly, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                FULLI=>CSA2_dly, CSW0=>VCCI, CSW1=>VCCI, EMPTYI=>CSB2_dly, 
                CSR0=>VCCI, CSR1=>VCCI, WE=>CEA_NOTIN, RE=>CEB_dly, 
                ORE=>OCEB_dly, CLKW=>CLKA_dly, CLKR=>CLKB_dly, RST=>GNDI, 
                RPRST=>GNDI, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>DOB8_out, DO9=>open, DO10=>open, 
                DO11=>open, DO12=>open, DO13=>open, DO14=>open, DO15=>open, 
                DO16=>open, DO17=>open, EF=>open, AEF=>open, AFF=>open, 
                FF=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    CEA_INVERTERIN: inverter
      port map (I=>CEA_dly, Z=>CEA_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA8_ipd, DIA8, tipd_DIA8);
      VitalWireDelay(DIA7_ipd, DIA7, tipd_DIA7);
      VitalWireDelay(DIA6_ipd, DIA6, tipd_DIA6);
      VitalWireDelay(DIA5_ipd, DIA5, tipd_DIA5);
      VitalWireDelay(DIA4_ipd, DIA4, tipd_DIA4);
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(CEA_ipd, CEA, tipd_CEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(CSA2_ipd, CSA2, tipd_CSA2);
      VitalWireDelay(CSB2_ipd, CSB2, tipd_CSB2);
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(OCEB_ipd, OCEB, tipd_OCEB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA8_dly, DIA8_ipd, tisd_DIA8_CLKA);
      VitalSignalDelay(DIA7_dly, DIA7_ipd, tisd_DIA7_CLKA);
      VitalSignalDelay(DIA6_dly, DIA6_ipd, tisd_DIA6_CLKA);
      VitalSignalDelay(DIA5_dly, DIA5_ipd, tisd_DIA5_CLKA);
      VitalSignalDelay(DIA4_dly, DIA4_ipd, tisd_DIA4_CLKA);
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(CEA_dly, CEA_ipd, tisd_CEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
      VitalSignalDelay(CSA2_dly, CSA2_ipd, tisd_CSA2_CLKA);
      VitalSignalDelay(CSB2_dly, CSB2_ipd, tisd_CSB2_CLKB);
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(OCEB_dly, OCEB_ipd, tisd_OCEB_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DIA8_dly, DIA7_dly, DIA6_dly, DIA5_dly, DIA4_dly, 
      DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, CEA_dly, CLKA_dly, CSA2_dly, 
      CSB2_dly, CLKB_dly, OCEB_dly, CEB_dly, DOB0_out, DOB1_out, DOB2_out, 
      DOB3_out, DOB4_out, DOB5_out, DOB6_out, DOB7_out, DOB8_out)
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB8_zd         	: std_logic := 'X';
    VARIABLE DOB8_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA8_CLKA       	: x01 := '0';
    VARIABLE DIA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA7_CLKA       	: x01 := '0';
    VARIABLE DIA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA6_CLKA       	: x01 := '0';
    VARIABLE DIA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA5_CLKA       	: x01 := '0';
    VARIABLE DIA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA4_CLKA       	: x01 := '0';
    VARIABLE DIA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEA_CLKA       	: x01 := '0';
    VARIABLE CEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSA2_CLKA       	: x01 := '0';
    VARIABLE CSA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSB2_CLKB       	: x01 := '0';
    VARIABLE CSB2_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_OCEB_CLKB       	: x01 := '0';
    VARIABLE OCEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA8_dly,
        TestSignalName => "DIA8",
        TestDelay => tisd_DIA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA8_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA8_CLKA_noedge_posedge,
        HoldHigh => thold_DIA8_CLKA_noedge_posedge,
        HoldLow => thold_DIA8_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA8_CLKA_TimingDatash,
        Violation => tviol_DIA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA7_dly,
        TestSignalName => "DIA7",
        TestDelay => tisd_DIA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA7_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA7_CLKA_noedge_posedge,
        HoldHigh => thold_DIA7_CLKA_noedge_posedge,
        HoldLow => thold_DIA7_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA7_CLKA_TimingDatash,
        Violation => tviol_DIA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA6_dly,
        TestSignalName => "DIA6",
        TestDelay => tisd_DIA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA6_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA6_CLKA_noedge_posedge,
        HoldHigh => thold_DIA6_CLKA_noedge_posedge,
        HoldLow => thold_DIA6_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA6_CLKA_TimingDatash,
        Violation => tviol_DIA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA5_dly,
        TestSignalName => "DIA5",
        TestDelay => tisd_DIA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA5_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA5_CLKA_noedge_posedge,
        HoldHigh => thold_DIA5_CLKA_noedge_posedge,
        HoldLow => thold_DIA5_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA5_CLKA_TimingDatash,
        Violation => tviol_DIA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA4_dly,
        TestSignalName => "DIA4",
        TestDelay => tisd_DIA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA4_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA4_CLKA_noedge_posedge,
        HoldHigh => thold_DIA4_CLKA_noedge_posedge,
        HoldLow => thold_DIA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA4_CLKA_TimingDatash,
        Violation => tviol_DIA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_posedge,
        HoldHigh => thold_DIA3_CLKA_noedge_posedge,
        HoldLow => thold_DIA3_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_posedge,
        HoldHigh => thold_DIA2_CLKA_noedge_posedge,
        HoldLow => thold_DIA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_posedge,
        HoldHigh => thold_DIA1_CLKA_noedge_posedge,
        HoldLow => thold_DIA1_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_posedge,
        HoldHigh => thold_DIA0_CLKA_noedge_posedge,
        HoldLow => thold_DIA0_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEA_dly,
        TestSignalName => "CEA",
        TestDelay => tisd_CEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CEA_CLKA_noedge_posedge,
        SetupLow => tsetup_CEA_CLKA_noedge_posedge,
        HoldHigh => thold_CEA_CLKA_noedge_posedge,
        HoldLow => thold_CEA_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEA_CLKA_TimingDatash,
        Violation => tviol_CEA_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSA2_dly,
        TestSignalName => "CSA2",
        TestDelay => tisd_CSA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CSA2_CLKA_noedge_posedge,
        SetupLow => tsetup_CSA2_CLKA_noedge_posedge,
        HoldHigh => thold_CSA2_CLKA_noedge_posedge,
        HoldLow => thold_CSA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSA2_CLKA_TimingDatash,
        Violation => tviol_CSA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSB2_dly,
        TestSignalName => "CSB2",
        TestDelay => tisd_CSB2_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CSB2_CLKB_noedge_posedge,
        SetupLow => tsetup_CSB2_CLKB_noedge_posedge,
        HoldHigh => thold_CSB2_CLKB_noedge_posedge,
        HoldLow => thold_CSB2_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSB2_CLKB_TimingDatash,
        Violation => tviol_CSB2_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => OCEB_dly,
        TestSignalName => "OCEB",
        TestDelay => tisd_OCEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_OCEB_CLKB_noedge_posedge,
        SetupLow => tsetup_OCEB_CLKB_noedge_posedge,
        HoldHigh => thold_OCEB_CLKB_noedge_posedge,
        HoldLow => thold_OCEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => OCEB_CLKB_TimingDatash,
        Violation => tviol_OCEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;
    DOB8_zd 	:= DOB8_out;

    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB8, OutSignalName => "DOB8", OutTemp => DOB8_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB8,
                           PathCondition => TRUE)),
      GlitchData => DOB8_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FIFO8KB0008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FIFO8KB0008 is
    port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
          DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
          DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
          DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
          DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
          DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
          FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
          EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
          WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
          CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
          RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
          DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
          DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
          DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
          DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
          DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
          DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
          AFF: out Std_logic; FF: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FIFO8KB0008 : ENTITY IS TRUE;

  end FIFO8KB0008;

  architecture Structure of FIFO8KB0008 is
  begin
    INST10: FIFO8KB
      generic map (AEPOINTER => "0b11111111111000", 
                   AEPOINTER1 => "0b00000000000000", 
                   AFPOINTER => "0b11111111111000", 
                   AFPOINTER1 => "0b00000000000000", 
                   ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b11", 
                   CSDECODE_W => "0b11", DATA_WIDTH_R => 9, DATA_WIDTH_W => 9, 
                   FULLPOINTER => "0b11111111111000", 
                   FULLPOINTER1 => "0b00000000000000", GSR => "DISABLED", 
                   REGMODE => "NOREG", RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, FULLI=>FULLI, EMPTYI=>EMPTYI, CSW1=>CSW1, 
                CSW0=>CSW0, CSR1=>CSR1, CSR0=>CSR0, WE=>WE, RE=>RE, ORE=>ORE, 
                CLKW=>CLKW, CLKR=>CLKR, RST=>RST, RPRST=>RPRST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, EF=>EF, AEF=>AEF, AFF=>AFF, FF=>FF);
  end Structure;

-- entity cdc_fifo_inst_async_fifo_3_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity cdc_fifo_inst_async_fifo_3_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "cdc_fifo_inst_async_fifo_3_0";

      tipd_DIA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSB2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_OCEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CSA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CSB2_CLKB	: VitalDelayType := 0 ns;
      tsetup_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_OCEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DIA4: in Std_logic; DIA3: in Std_logic; DIA2: in Std_logic; 
          DIA1: in Std_logic; DIA0: in Std_logic; CEA: in Std_logic; 
          CLKA: in Std_logic; CSA2: in Std_logic; CSB2: in Std_logic; 
          CLKB: in Std_logic; OCEB: in Std_logic; CEB: in Std_logic; 
          DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
          DOB3: out Std_logic; DOB4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cdc_fifo_inst_async_fifo_3_0 : ENTITY IS TRUE;

  end cdc_fifo_inst_async_fifo_3_0;

  architecture Structure of cdc_fifo_inst_async_fifo_3_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA4_ipd 	: std_logic := 'X';
    signal DIA4_dly 	: std_logic := 'X';
    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal CEA_ipd 	: std_logic := 'X';
    signal CEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal CSA2_ipd 	: std_logic := 'X';
    signal CSA2_dly 	: std_logic := 'X';
    signal CSB2_ipd 	: std_logic := 'X';
    signal CSB2_dly 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal OCEB_ipd 	: std_logic := 'X';
    signal OCEB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    signal CEA_NOTIN: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
    component FIFO8KB0008
      port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
            DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
            DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
            DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
            DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
            DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
            FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
            EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
            WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
            CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
            RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
            DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
            DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
            DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
            DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
            DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
            DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
            AFF: out Std_logic; FF: out Std_logic);
    end component;
  begin
    cdc_fifo_inst_async_fifo_3_0_FIFO8KB: FIFO8KB0008
      port map (DI0=>DIA0_dly, DI1=>DIA1_dly, DI2=>DIA2_dly, DI3=>DIA3_dly, 
                DI4=>DIA4_dly, DI5=>GNDI, DI6=>GNDI, DI7=>GNDI, DI8=>GNDI, 
                DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, DI13=>GNDI, 
                DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                FULLI=>CSA2_dly, CSW0=>VCCI, CSW1=>VCCI, EMPTYI=>CSB2_dly, 
                CSR0=>VCCI, CSR1=>VCCI, WE=>CEA_NOTIN, RE=>CEB_dly, 
                ORE=>OCEB_dly, CLKW=>CLKA_dly, CLKR=>CLKB_dly, RST=>GNDI, 
                RPRST=>GNDI, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>open, DO6=>open, DO7=>open, 
                DO8=>open, DO9=>open, DO10=>open, DO11=>open, DO12=>open, 
                DO13=>open, DO14=>open, DO15=>open, DO16=>open, DO17=>open, 
                EF=>open, AEF=>open, AFF=>open, FF=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    CEA_INVERTERIN: inverter
      port map (I=>CEA_dly, Z=>CEA_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA4_ipd, DIA4, tipd_DIA4);
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(CEA_ipd, CEA, tipd_CEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(CSA2_ipd, CSA2, tipd_CSA2);
      VitalWireDelay(CSB2_ipd, CSB2, tipd_CSB2);
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(OCEB_ipd, OCEB, tipd_OCEB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA4_dly, DIA4_ipd, tisd_DIA4_CLKA);
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(CEA_dly, CEA_ipd, tisd_CEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
      VitalSignalDelay(CSA2_dly, CSA2_ipd, tisd_CSA2_CLKA);
      VitalSignalDelay(CSB2_dly, CSB2_ipd, tisd_CSB2_CLKB);
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(OCEB_dly, OCEB_ipd, tisd_OCEB_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DIA4_dly, DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, 
      CEA_dly, CLKA_dly, CSA2_dly, CSB2_dly, CLKB_dly, OCEB_dly, CEB_dly, 
      DOB0_out, DOB1_out, DOB2_out, DOB3_out, DOB4_out)
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA4_CLKA       	: x01 := '0';
    VARIABLE DIA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEA_CLKA       	: x01 := '0';
    VARIABLE CEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSA2_CLKA       	: x01 := '0';
    VARIABLE CSA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSB2_CLKB       	: x01 := '0';
    VARIABLE CSB2_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_OCEB_CLKB       	: x01 := '0';
    VARIABLE OCEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA4_dly,
        TestSignalName => "DIA4",
        TestDelay => tisd_DIA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA4_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA4_CLKA_noedge_posedge,
        HoldHigh => thold_DIA4_CLKA_noedge_posedge,
        HoldLow => thold_DIA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA4_CLKA_TimingDatash,
        Violation => tviol_DIA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_posedge,
        HoldHigh => thold_DIA3_CLKA_noedge_posedge,
        HoldLow => thold_DIA3_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_posedge,
        HoldHigh => thold_DIA2_CLKA_noedge_posedge,
        HoldLow => thold_DIA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_posedge,
        HoldHigh => thold_DIA1_CLKA_noedge_posedge,
        HoldLow => thold_DIA1_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_posedge,
        HoldHigh => thold_DIA0_CLKA_noedge_posedge,
        HoldLow => thold_DIA0_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEA_dly,
        TestSignalName => "CEA",
        TestDelay => tisd_CEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CEA_CLKA_noedge_posedge,
        SetupLow => tsetup_CEA_CLKA_noedge_posedge,
        HoldHigh => thold_CEA_CLKA_noedge_posedge,
        HoldLow => thold_CEA_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEA_CLKA_TimingDatash,
        Violation => tviol_CEA_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSA2_dly,
        TestSignalName => "CSA2",
        TestDelay => tisd_CSA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CSA2_CLKA_noedge_posedge,
        SetupLow => tsetup_CSA2_CLKA_noedge_posedge,
        HoldHigh => thold_CSA2_CLKA_noedge_posedge,
        HoldLow => thold_CSA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSA2_CLKA_TimingDatash,
        Violation => tviol_CSA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSB2_dly,
        TestSignalName => "CSB2",
        TestDelay => tisd_CSB2_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CSB2_CLKB_noedge_posedge,
        SetupLow => tsetup_CSB2_CLKB_noedge_posedge,
        HoldHigh => thold_CSB2_CLKB_noedge_posedge,
        HoldLow => thold_CSB2_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSB2_CLKB_TimingDatash,
        Violation => tviol_CSB2_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => OCEB_dly,
        TestSignalName => "OCEB",
        TestDelay => tisd_OCEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_OCEB_CLKB_noedge_posedge,
        SetupLow => tsetup_OCEB_CLKB_noedge_posedge,
        HoldHigh => thold_OCEB_CLKB_noedge_posedge,
        HoldLow => thold_OCEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => OCEB_CLKB_TimingDatash,
        Violation => tviol_OCEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;

    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity FIFO8KB0009
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity FIFO8KB0009 is
    port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
          DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
          DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
          DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
          DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
          DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
          FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
          EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
          WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
          CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
          RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
          DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
          DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
          DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
          DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
          DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
          DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
          AFF: out Std_logic; FF: out Std_logic);

    ATTRIBUTE Vital_Level0 OF FIFO8KB0009 : ENTITY IS TRUE;

  end FIFO8KB0009;

  architecture Structure of FIFO8KB0009 is
  begin
    INST10: FIFO8KB
      generic map (AEPOINTER => "0b00100000000000", 
                   AEPOINTER1 => "0b00100000001000", 
                   AFPOINTER => "0b01100000000000", 
                   AFPOINTER1 => "0b01011111111000", 
                   ASYNC_RESET_RELEASE => "SYNC", CSDECODE_R => "0b11", 
                   CSDECODE_W => "0b11", DATA_WIDTH_R => 9, DATA_WIDTH_W => 9, 
                   FULLPOINTER => "0b10000000000000", 
                   FULLPOINTER1 => "0b01111111111000", GSR => "DISABLED", 
                   REGMODE => "NOREG", RESETMODE => "ASYNC")
      port map (DI0=>DI0, DI1=>DI1, DI2=>DI2, DI3=>DI3, DI4=>DI4, DI5=>DI5, 
                DI6=>DI6, DI7=>DI7, DI8=>DI8, DI9=>DI9, DI10=>DI10, DI11=>DI11, 
                DI12=>DI12, DI13=>DI13, DI14=>DI14, DI15=>DI15, DI16=>DI16, 
                DI17=>DI17, FULLI=>FULLI, EMPTYI=>EMPTYI, CSW1=>CSW1, 
                CSW0=>CSW0, CSR1=>CSR1, CSR0=>CSR0, WE=>WE, RE=>RE, ORE=>ORE, 
                CLKW=>CLKW, CLKR=>CLKR, RST=>RST, RPRST=>RPRST, DO0=>DO0, 
                DO1=>DO1, DO2=>DO2, DO3=>DO3, DO4=>DO4, DO5=>DO5, DO6=>DO6, 
                DO7=>DO7, DO8=>DO8, DO9=>DO9, DO10=>DO10, DO11=>DO11, 
                DO12=>DO12, DO13=>DO13, DO14=>DO14, DO15=>DO15, DO16=>DO16, 
                DO17=>DO17, EF=>EF, AEF=>AEF, AFF=>AFF, FF=>FF);
  end Structure;

-- entity cdc_fifo_inst_async_fifo_0_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity cdc_fifo_inst_async_fifo_0_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "cdc_fifo_inst_async_fifo_0_3";

      tipd_DIA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CSB2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_OCEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CEB  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_AF	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_FF	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_AE	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_EF	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB4	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB5	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB6	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB7	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKB_DOB8	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA8_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA7_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA6_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA5_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA4_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEA_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CSA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSA2_CLKA_noedge_posedge	: VitalDelayType := 0 ns;
      ticd_CLKB	: VitalDelayType := 0 ns;
      tisd_CSB2_CLKB	: VitalDelayType := 0 ns;
      tsetup_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CSB2_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_OCEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_OCEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CEB_CLKB	: VitalDelayType := 0 ns;
      tsetup_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CEB_CLKB_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      tperiod_CLKB 	: VitalDelayType := 0 ns;
      tpw_CLKB_posedge	: VitalDelayType := 0 ns;
      tpw_CLKB_negedge	: VitalDelayType := 0 ns);

    port (DIA8: in Std_logic; DIA7: in Std_logic; DIA6: in Std_logic; 
          DIA5: in Std_logic; DIA4: in Std_logic; DIA3: in Std_logic; 
          DIA2: in Std_logic; DIA1: in Std_logic; DIA0: in Std_logic; 
          CEA: in Std_logic; CLKA: in Std_logic; CSA2: in Std_logic; 
          AF: out Std_logic; FF: out Std_logic; AE: out Std_logic; 
          EF: out Std_logic; CSB2: in Std_logic; CLKB: in Std_logic; 
          OCEB: in Std_logic; CEB: in Std_logic; DOB0: out Std_logic; 
          DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
          DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
          DOB7: out Std_logic; DOB8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF cdc_fifo_inst_async_fifo_0_3 : ENTITY IS TRUE;

  end cdc_fifo_inst_async_fifo_0_3;

  architecture Structure of cdc_fifo_inst_async_fifo_0_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA8_ipd 	: std_logic := 'X';
    signal DIA8_dly 	: std_logic := 'X';
    signal DIA7_ipd 	: std_logic := 'X';
    signal DIA7_dly 	: std_logic := 'X';
    signal DIA6_ipd 	: std_logic := 'X';
    signal DIA6_dly 	: std_logic := 'X';
    signal DIA5_ipd 	: std_logic := 'X';
    signal DIA5_dly 	: std_logic := 'X';
    signal DIA4_ipd 	: std_logic := 'X';
    signal DIA4_dly 	: std_logic := 'X';
    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal CEA_ipd 	: std_logic := 'X';
    signal CEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal CSA2_ipd 	: std_logic := 'X';
    signal CSA2_dly 	: std_logic := 'X';
    signal AF_out 	: std_logic := 'X';
    signal FF_out 	: std_logic := 'X';
    signal AE_out 	: std_logic := 'X';
    signal EF_out 	: std_logic := 'X';
    signal CSB2_ipd 	: std_logic := 'X';
    signal CSB2_dly 	: std_logic := 'X';
    signal CLKB_ipd 	: std_logic := 'X';
    signal CLKB_dly 	: std_logic := 'X';
    signal OCEB_ipd 	: std_logic := 'X';
    signal OCEB_dly 	: std_logic := 'X';
    signal CEB_ipd 	: std_logic := 'X';
    signal CEB_dly 	: std_logic := 'X';
    signal DOB0_out 	: std_logic := 'X';
    signal DOB1_out 	: std_logic := 'X';
    signal DOB2_out 	: std_logic := 'X';
    signal DOB3_out 	: std_logic := 'X';
    signal DOB4_out 	: std_logic := 'X';
    signal DOB5_out 	: std_logic := 'X';
    signal DOB6_out 	: std_logic := 'X';
    signal DOB7_out 	: std_logic := 'X';
    signal DOB8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    signal CEA_NOTIN: Std_logic;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
    component FIFO8KB0009
      port (DI0: in Std_logic; DI1: in Std_logic; DI2: in Std_logic; 
            DI3: in Std_logic; DI4: in Std_logic; DI5: in Std_logic; 
            DI6: in Std_logic; DI7: in Std_logic; DI8: in Std_logic; 
            DI9: in Std_logic; DI10: in Std_logic; DI11: in Std_logic; 
            DI12: in Std_logic; DI13: in Std_logic; DI14: in Std_logic; 
            DI15: in Std_logic; DI16: in Std_logic; DI17: in Std_logic; 
            FULLI: in Std_logic; CSW0: in Std_logic; CSW1: in Std_logic; 
            EMPTYI: in Std_logic; CSR0: in Std_logic; CSR1: in Std_logic; 
            WE: in Std_logic; RE: in Std_logic; ORE: in Std_logic; 
            CLKW: in Std_logic; CLKR: in Std_logic; RST: in Std_logic; 
            RPRST: in Std_logic; DO0: out Std_logic; DO1: out Std_logic; 
            DO2: out Std_logic; DO3: out Std_logic; DO4: out Std_logic; 
            DO5: out Std_logic; DO6: out Std_logic; DO7: out Std_logic; 
            DO8: out Std_logic; DO9: out Std_logic; DO10: out Std_logic; 
            DO11: out Std_logic; DO12: out Std_logic; DO13: out Std_logic; 
            DO14: out Std_logic; DO15: out Std_logic; DO16: out Std_logic; 
            DO17: out Std_logic; EF: out Std_logic; AEF: out Std_logic; 
            AFF: out Std_logic; FF: out Std_logic);
    end component;
  begin
    cdc_fifo_inst_async_fifo_0_3_FIFO8KB: FIFO8KB0009
      port map (DI0=>DIA0_dly, DI1=>DIA1_dly, DI2=>DIA2_dly, DI3=>DIA3_dly, 
                DI4=>DIA4_dly, DI5=>DIA5_dly, DI6=>DIA6_dly, DI7=>DIA7_dly, 
                DI8=>DIA8_dly, DI9=>GNDI, DI10=>GNDI, DI11=>GNDI, DI12=>GNDI, 
                DI13=>GNDI, DI14=>GNDI, DI15=>GNDI, DI16=>GNDI, DI17=>GNDI, 
                FULLI=>CSA2_dly, CSW0=>VCCI, CSW1=>VCCI, EMPTYI=>CSB2_dly, 
                CSR0=>VCCI, CSR1=>VCCI, WE=>CEA_NOTIN, RE=>CEB_dly, 
                ORE=>OCEB_dly, CLKW=>CLKA_dly, CLKR=>CLKB_dly, RST=>GNDI, 
                RPRST=>GNDI, DO0=>DOB0_out, DO1=>DOB1_out, DO2=>DOB2_out, 
                DO3=>DOB3_out, DO4=>DOB4_out, DO5=>DOB5_out, DO6=>DOB6_out, 
                DO7=>DOB7_out, DO8=>DOB8_out, DO9=>open, DO10=>open, 
                DO11=>open, DO12=>open, DO13=>open, DO14=>open, DO15=>open, 
                DO16=>open, DO17=>open, EF=>EF_out, AEF=>AE_out, AFF=>AF_out, 
                FF=>FF_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    CEA_INVERTERIN: inverter
      port map (I=>CEA_dly, Z=>CEA_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA8_ipd, DIA8, tipd_DIA8);
      VitalWireDelay(DIA7_ipd, DIA7, tipd_DIA7);
      VitalWireDelay(DIA6_ipd, DIA6, tipd_DIA6);
      VitalWireDelay(DIA5_ipd, DIA5, tipd_DIA5);
      VitalWireDelay(DIA4_ipd, DIA4, tipd_DIA4);
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(CEA_ipd, CEA, tipd_CEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(CSA2_ipd, CSA2, tipd_CSA2);
      VitalWireDelay(CSB2_ipd, CSB2, tipd_CSB2);
      VitalWireDelay(CLKB_ipd, CLKB, tipd_CLKB);
      VitalWireDelay(OCEB_ipd, OCEB, tipd_OCEB);
      VitalWireDelay(CEB_ipd, CEB, tipd_CEB);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA8_dly, DIA8_ipd, tisd_DIA8_CLKA);
      VitalSignalDelay(DIA7_dly, DIA7_ipd, tisd_DIA7_CLKA);
      VitalSignalDelay(DIA6_dly, DIA6_ipd, tisd_DIA6_CLKA);
      VitalSignalDelay(DIA5_dly, DIA5_ipd, tisd_DIA5_CLKA);
      VitalSignalDelay(DIA4_dly, DIA4_ipd, tisd_DIA4_CLKA);
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(CEA_dly, CEA_ipd, tisd_CEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
      VitalSignalDelay(CSA2_dly, CSA2_ipd, tisd_CSA2_CLKA);
      VitalSignalDelay(CSB2_dly, CSB2_ipd, tisd_CSB2_CLKB);
      VitalSignalDelay(CLKB_dly, CLKB_ipd, ticd_CLKB);
      VitalSignalDelay(OCEB_dly, OCEB_ipd, tisd_OCEB_CLKB);
      VitalSignalDelay(CEB_dly, CEB_ipd, tisd_CEB_CLKB);
    END BLOCK;

    VitalBehavior : PROCESS (DIA8_dly, DIA7_dly, DIA6_dly, DIA5_dly, DIA4_dly, 
      DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, CEA_dly, CLKA_dly, CSA2_dly, 
      AF_out, FF_out, AE_out, EF_out, CSB2_dly, CLKB_dly, OCEB_dly, CEB_dly, 
      DOB0_out, DOB1_out, DOB2_out, DOB3_out, DOB4_out, DOB5_out, DOB6_out, 
      DOB7_out, DOB8_out)
    VARIABLE AF_zd         	: std_logic := 'X';
    VARIABLE AF_GlitchData 	: VitalGlitchDataType;
    VARIABLE FF_zd         	: std_logic := 'X';
    VARIABLE FF_GlitchData 	: VitalGlitchDataType;
    VARIABLE AE_zd         	: std_logic := 'X';
    VARIABLE AE_GlitchData 	: VitalGlitchDataType;
    VARIABLE EF_zd         	: std_logic := 'X';
    VARIABLE EF_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB0_zd         	: std_logic := 'X';
    VARIABLE DOB0_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB1_zd         	: std_logic := 'X';
    VARIABLE DOB1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB2_zd         	: std_logic := 'X';
    VARIABLE DOB2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB3_zd         	: std_logic := 'X';
    VARIABLE DOB3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB4_zd         	: std_logic := 'X';
    VARIABLE DOB4_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB5_zd         	: std_logic := 'X';
    VARIABLE DOB5_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB6_zd         	: std_logic := 'X';
    VARIABLE DOB6_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB7_zd         	: std_logic := 'X';
    VARIABLE DOB7_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOB8_zd         	: std_logic := 'X';
    VARIABLE DOB8_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA8_CLKA       	: x01 := '0';
    VARIABLE DIA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA7_CLKA       	: x01 := '0';
    VARIABLE DIA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA6_CLKA       	: x01 := '0';
    VARIABLE DIA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA5_CLKA       	: x01 := '0';
    VARIABLE DIA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA4_CLKA       	: x01 := '0';
    VARIABLE DIA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEA_CLKA       	: x01 := '0';
    VARIABLE CEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSA2_CLKA       	: x01 := '0';
    VARIABLE CSA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CSB2_CLKB       	: x01 := '0';
    VARIABLE CSB2_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_OCEB_CLKB       	: x01 := '0';
    VARIABLE OCEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CEB_CLKB       	: x01 := '0';
    VARIABLE CEB_CLKB_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;
    VARIABLE tviol_CLKB_CLKB          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA8_dly,
        TestSignalName => "DIA8",
        TestDelay => tisd_DIA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA8_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA8_CLKA_noedge_posedge,
        HoldHigh => thold_DIA8_CLKA_noedge_posedge,
        HoldLow => thold_DIA8_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA8_CLKA_TimingDatash,
        Violation => tviol_DIA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA7_dly,
        TestSignalName => "DIA7",
        TestDelay => tisd_DIA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA7_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA7_CLKA_noedge_posedge,
        HoldHigh => thold_DIA7_CLKA_noedge_posedge,
        HoldLow => thold_DIA7_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA7_CLKA_TimingDatash,
        Violation => tviol_DIA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA6_dly,
        TestSignalName => "DIA6",
        TestDelay => tisd_DIA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA6_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA6_CLKA_noedge_posedge,
        HoldHigh => thold_DIA6_CLKA_noedge_posedge,
        HoldLow => thold_DIA6_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA6_CLKA_TimingDatash,
        Violation => tviol_DIA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA5_dly,
        TestSignalName => "DIA5",
        TestDelay => tisd_DIA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA5_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA5_CLKA_noedge_posedge,
        HoldHigh => thold_DIA5_CLKA_noedge_posedge,
        HoldLow => thold_DIA5_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA5_CLKA_TimingDatash,
        Violation => tviol_DIA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA4_dly,
        TestSignalName => "DIA4",
        TestDelay => tisd_DIA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA4_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA4_CLKA_noedge_posedge,
        HoldHigh => thold_DIA4_CLKA_noedge_posedge,
        HoldLow => thold_DIA4_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA4_CLKA_TimingDatash,
        Violation => tviol_DIA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_posedge,
        HoldHigh => thold_DIA3_CLKA_noedge_posedge,
        HoldLow => thold_DIA3_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_posedge,
        HoldHigh => thold_DIA2_CLKA_noedge_posedge,
        HoldLow => thold_DIA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_posedge,
        HoldHigh => thold_DIA1_CLKA_noedge_posedge,
        HoldLow => thold_DIA1_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_posedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_posedge,
        HoldHigh => thold_DIA0_CLKA_noedge_posedge,
        HoldLow => thold_DIA0_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEA_dly,
        TestSignalName => "CEA",
        TestDelay => tisd_CEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CEA_CLKA_noedge_posedge,
        SetupLow => tsetup_CEA_CLKA_noedge_posedge,
        HoldHigh => thold_CEA_CLKA_noedge_posedge,
        HoldLow => thold_CEA_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEA_CLKA_TimingDatash,
        Violation => tviol_CEA_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSA2_dly,
        TestSignalName => "CSA2",
        TestDelay => tisd_CSA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_CSA2_CLKA_noedge_posedge,
        SetupLow => tsetup_CSA2_CLKA_noedge_posedge,
        HoldHigh => thold_CSA2_CLKA_noedge_posedge,
        HoldLow => thold_CSA2_CLKA_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSA2_CLKA_TimingDatash,
        Violation => tviol_CSA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CSB2_dly,
        TestSignalName => "CSB2",
        TestDelay => tisd_CSB2_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CSB2_CLKB_noedge_posedge,
        SetupLow => tsetup_CSB2_CLKB_noedge_posedge,
        HoldHigh => thold_CSB2_CLKB_noedge_posedge,
        HoldLow => thold_CSB2_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CSB2_CLKB_TimingDatash,
        Violation => tviol_CSB2_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => OCEB_dly,
        TestSignalName => "OCEB",
        TestDelay => tisd_OCEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_OCEB_CLKB_noedge_posedge,
        SetupLow => tsetup_OCEB_CLKB_noedge_posedge,
        HoldHigh => thold_OCEB_CLKB_noedge_posedge,
        HoldLow => thold_OCEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => OCEB_CLKB_TimingDatash,
        Violation => tviol_OCEB_CLKB,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CEB_dly,
        TestSignalName => "CEB",
        TestDelay => tisd_CEB_CLKB,
        RefSignal => CLKB_dly,
        RefSignalName => "CLKB",
        RefDelay => ticd_CLKB,
        SetupHigh => tsetup_CEB_CLKB_noedge_posedge,
        SetupLow => tsetup_CEB_CLKB_noedge_posedge,
        HoldHigh => thold_CEB_CLKB_noedge_posedge,
        HoldLow => thold_CEB_CLKB_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CEB_CLKB_TimingDatash,
        Violation => tviol_CEB_CLKB,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKB_ipd,
        TestSignalName => "CLKB",
        Period => tperiod_CLKB,
        PulseWidthHigh => tpw_CLKB_posedge,
        PulseWidthLow => tpw_CLKB_negedge,
        PeriodData => periodcheckinfo_CLKB,
        Violation => tviol_CLKB_CLKB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    AF_zd 	:= AF_out;
    FF_zd 	:= FF_out;
    AE_zd 	:= AE_out;
    EF_zd 	:= EF_out;
    DOB0_zd 	:= DOB0_out;
    DOB1_zd 	:= DOB1_out;
    DOB2_zd 	:= DOB2_out;
    DOB3_zd 	:= DOB3_out;
    DOB4_zd 	:= DOB4_out;
    DOB5_zd 	:= DOB5_out;
    DOB6_zd 	:= DOB6_out;
    DOB7_zd 	:= DOB7_out;
    DOB8_zd 	:= DOB8_out;

    VitalPathDelay01 (
      OutSignal => AF, OutSignalName => "AF", OutTemp => AF_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_AF,
                           PathCondition => TRUE)),
      GlitchData => AF_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => FF, OutSignalName => "FF", OutTemp => FF_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_FF,
                           PathCondition => TRUE)),
      GlitchData => FF_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => AE, OutSignalName => "AE", OutTemp => AE_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_AE,
                           PathCondition => TRUE)),
      GlitchData => AE_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => EF, OutSignalName => "EF", OutTemp => EF_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_EF,
                           PathCondition => TRUE)),
      GlitchData => EF_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB0, OutSignalName => "DOB0", OutTemp => DOB0_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB0,
                           PathCondition => TRUE)),
      GlitchData => DOB0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB1, OutSignalName => "DOB1", OutTemp => DOB1_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB1,
                           PathCondition => TRUE)),
      GlitchData => DOB1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB2, OutSignalName => "DOB2", OutTemp => DOB2_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB2,
                           PathCondition => TRUE)),
      GlitchData => DOB2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB3, OutSignalName => "DOB3", OutTemp => DOB3_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB3,
                           PathCondition => TRUE)),
      GlitchData => DOB3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB4, OutSignalName => "DOB4", OutTemp => DOB4_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB4,
                           PathCondition => TRUE)),
      GlitchData => DOB4_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB5, OutSignalName => "DOB5", OutTemp => DOB5_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB5,
                           PathCondition => TRUE)),
      GlitchData => DOB5_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB6, OutSignalName => "DOB6", OutTemp => DOB6_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB6,
                           PathCondition => TRUE)),
      GlitchData => DOB6_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB7, OutSignalName => "DOB7", OutTemp => DOB7_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB7,
                           PathCondition => TRUE)),
      GlitchData => DOB7_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOB8, OutSignalName => "DOB8", OutTemp => DOB8_zd,
      Paths      => (0 => (InputChangeTime => CLKB_dly'last_event,
                           PathDelay => tpd_CLKB_DOB8,
                           PathCondition => TRUE)),
      GlitchData => DOB8_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity top is
    port (LED: out Std_logic; DATA_LANE: in Std_logic_vector (4 downto 0); 
          CLK_LANE: in Std_logic; FT601_CLK: in Std_logic; 
          FT601_RST_N: out Std_logic; 
          FT601_DATA: out Std_logic_vector (31 downto 0); 
          FT601_BE: out Std_logic_vector (3 downto 0); 
          FT601_RXF_N: in Std_logic; FT601_TXE_N: in Std_logic; 
          FT601_WR_N: out Std_logic; FT601_SIWU_N: out Std_logic; 
          FT601_RD_N: out Std_logic; FT601_OE_N: out Std_logic);



  end top;

  architecture Structure of top is
    signal send_data_6: Std_logic;
    signal send_data_5: Std_logic;
    signal prng_inst_n159: Std_logic;
    signal prng_inst_n160: Std_logic;
    signal FT601_CLK_c: Std_logic;
    signal prng_inst_n579: Std_logic;
    signal prng_inst_n580: Std_logic;
    signal send_data_4: Std_logic;
    signal send_data_3: Std_logic;
    signal prng_inst_n161: Std_logic;
    signal prng_inst_n162: Std_logic;
    signal prng_inst_n578: Std_logic;
    signal send_data_20: Std_logic;
    signal send_data_19: Std_logic;
    signal prng_inst_n145: Std_logic;
    signal prng_inst_n146: Std_logic;
    signal prng_inst_n586: Std_logic;
    signal prng_inst_n587: Std_logic;
    signal send_data_14: Std_logic;
    signal send_data_13: Std_logic;
    signal prng_inst_n151: Std_logic;
    signal prng_inst_n152: Std_logic;
    signal prng_inst_n583: Std_logic;
    signal prng_inst_n584: Std_logic;
    signal send_data_24: Std_logic;
    signal send_data_23: Std_logic;
    signal prng_inst_n141: Std_logic;
    signal prng_inst_n142: Std_logic;
    signal prng_inst_n588: Std_logic;
    signal prng_inst_n589: Std_logic;
    signal send_data_18: Std_logic;
    signal send_data_17: Std_logic;
    signal prng_inst_n147: Std_logic;
    signal prng_inst_n148: Std_logic;
    signal prng_inst_n585: Std_logic;
    signal send_data_22: Std_logic;
    signal send_data_21: Std_logic;
    signal prng_inst_n143: Std_logic;
    signal prng_inst_n144: Std_logic;
    signal send_data_12: Std_logic;
    signal send_data_11: Std_logic;
    signal prng_inst_n153: Std_logic;
    signal prng_inst_n154: Std_logic;
    signal prng_inst_n582: Std_logic;
    signal send_data_10: Std_logic;
    signal send_data_9: Std_logic;
    signal prng_inst_n155: Std_logic;
    signal prng_inst_n156: Std_logic;
    signal prng_inst_n581: Std_logic;
    signal send_data_2: Std_logic;
    signal send_data_1: Std_logic;
    signal prng_inst_n163: Std_logic;
    signal prng_inst_n164: Std_logic;
    signal prng_inst_n577: Std_logic;
    signal send_data_31: Std_logic;
    signal prng_inst_n134: Std_logic;
    signal prng_inst_n592: Std_logic;
    signal send_data_30: Std_logic;
    signal send_data_29: Std_logic;
    signal prng_inst_n135: Std_logic;
    signal prng_inst_n136: Std_logic;
    signal prng_inst_n591: Std_logic;
    signal send_data_28: Std_logic;
    signal send_data_27: Std_logic;
    signal prng_inst_n137: Std_logic;
    signal prng_inst_n138: Std_logic;
    signal prng_inst_n590: Std_logic;
    signal send_data_8: Std_logic;
    signal send_data_7: Std_logic;
    signal prng_inst_n157: Std_logic;
    signal prng_inst_n158: Std_logic;
    signal send_data_16: Std_logic;
    signal send_data_15: Std_logic;
    signal prng_inst_n149: Std_logic;
    signal prng_inst_n150: Std_logic;
    signal send_data_26: Std_logic;
    signal send_data_25: Std_logic;
    signal prng_inst_n139: Std_logic;
    signal prng_inst_n140: Std_logic;
    signal send_data_0: Std_logic;
    signal fifo_almst_full: Std_logic;
    signal prng_inst_n165: Std_logic;
    signal FT601_TXE_N_c: Std_logic;
    signal LED_c: Std_logic;
    signal fifo_emp: Std_logic;
    signal fifo_almst_emp: Std_logic;
    signal tx_active_N_389: Std_logic;
    signal ft601_comp_tx_active_N_388: Std_logic;
    signal FT601_WR_N_c: Std_logic;
    signal VCC_net: Std_logic;
    signal FT601_DATA_c_17: Std_logic;
    signal FT601_DATA_c_18: Std_logic;
    signal FT601_DATA_c_19: Std_logic;
    signal FT601_DATA_c_20: Std_logic;
    signal FT601_DATA_c_21: Std_logic;
    signal FT601_DATA_c_22: Std_logic;
    signal FT601_DATA_c_23: Std_logic;
    signal FT601_DATA_c_24: Std_logic;
    signal FT601_DATA_c_25: Std_logic;
    signal FT601_DATA_c_26: Std_logic;
    signal FT601_DATA_c_27: Std_logic;
    signal FT601_DATA_c_16: Std_logic;
    signal FT601_DATA_c_28: Std_logic;
    signal FT601_DATA_c_29: Std_logic;
    signal FT601_DATA_c_30: Std_logic;
    signal FT601_DATA_c_31: Std_logic;
    signal FT601_DATA_c_15: Std_logic;
    signal FT601_DATA_c_14: Std_logic;
    signal FT601_DATA_c_13: Std_logic;
    signal FT601_DATA_c_12: Std_logic;
    signal FT601_DATA_c_11: Std_logic;
    signal FT601_DATA_c_10: Std_logic;
    signal FT601_DATA_c_9: Std_logic;
    signal FT601_DATA_c_8: Std_logic;
    signal FT601_DATA_c_7: Std_logic;
    signal FT601_DATA_c_6: Std_logic;
    signal FT601_DATA_c_5: Std_logic;
    signal FT601_DATA_c_4: Std_logic;
    signal FT601_DATA_c_3: Std_logic;
    signal FT601_DATA_c_2: Std_logic;
    signal FT601_DATA_c_1: Std_logic;
    signal FT601_DATA_c_0: Std_logic;
    signal cdc_fifo_inst_full: Std_logic;
    signal VCCI: Std_logic;
    component prng_inst_SLICE_0
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_1
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_2
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_3
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_4
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_5
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_6
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_7
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_8
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_9
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_10
      port (A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            FCI: in Std_logic; F0: out Std_logic; Q0: out Std_logic);
    end component;
    component prng_inst_SLICE_11
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_12
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_13
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_14
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_15
      port (A1: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; FCI: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic; FCO: out Std_logic);
    end component;
    component prng_inst_SLICE_16
      port (B1: in Std_logic; A1: in Std_logic; DI1: in Std_logic; 
            CLK: in Std_logic; F1: out Std_logic; Q1: out Std_logic; 
            FCO: out Std_logic);
    end component;
    component ft601_comp_SLICE_17
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_18
      port (C0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component FT601_DATA_17_B
      port (PADDO: in Std_logic; FT601DATA17: out Std_logic);
    end component;
    component FT601_DATA_18_B
      port (PADDO: in Std_logic; FT601DATA18: out Std_logic);
    end component;
    component FT601_DATA_19_B
      port (PADDO: in Std_logic; FT601DATA19: out Std_logic);
    end component;
    component FT601_DATA_20_B
      port (PADDO: in Std_logic; FT601DATA20: out Std_logic);
    end component;
    component FT601_DATA_21_B
      port (PADDO: in Std_logic; FT601DATA21: out Std_logic);
    end component;
    component FT601_DATA_22_B
      port (PADDO: in Std_logic; FT601DATA22: out Std_logic);
    end component;
    component FT601_DATA_23_B
      port (PADDO: in Std_logic; FT601DATA23: out Std_logic);
    end component;
    component FT601_DATA_24_B
      port (PADDO: in Std_logic; FT601DATA24: out Std_logic);
    end component;
    component FT601_DATA_25_B
      port (PADDO: in Std_logic; FT601DATA25: out Std_logic);
    end component;
    component FT601_DATA_26_B
      port (PADDO: in Std_logic; FT601DATA26: out Std_logic);
    end component;
    component FT601_DATA_27_B
      port (PADDO: in Std_logic; FT601DATA27: out Std_logic);
    end component;
    component FT601_DATA_16_B
      port (PADDO: in Std_logic; FT601DATA16: out Std_logic);
    end component;
    component FT601_DATA_28_B
      port (PADDO: in Std_logic; FT601DATA28: out Std_logic);
    end component;
    component FT601_DATA_29_B
      port (PADDO: in Std_logic; FT601DATA29: out Std_logic);
    end component;
    component FT601_DATA_30_B
      port (PADDO: in Std_logic; FT601DATA30: out Std_logic);
    end component;
    component FT601_DATA_31_B
      port (PADDO: in Std_logic; FT601DATA31: out Std_logic);
    end component;
    component FT601_RST_NB
      port (PADDO: in Std_logic; FT601RSTN: out Std_logic);
    end component;
    component LEDB
      port (PADDO: in Std_logic; LEDS: out Std_logic);
    end component;
    component FT601_DATA_15_B
      port (PADDO: in Std_logic; FT601DATA15: out Std_logic);
    end component;
    component FT601_DATA_14_B
      port (PADDO: in Std_logic; FT601DATA14: out Std_logic);
    end component;
    component FT601_DATA_13_B
      port (PADDO: in Std_logic; FT601DATA13: out Std_logic);
    end component;
    component FT601_DATA_12_B
      port (PADDO: in Std_logic; FT601DATA12: out Std_logic);
    end component;
    component FT601_DATA_11_B
      port (PADDO: in Std_logic; FT601DATA11: out Std_logic);
    end component;
    component FT601_DATA_10_B
      port (PADDO: in Std_logic; FT601DATA10: out Std_logic);
    end component;
    component FT601_DATA_9_B
      port (PADDO: in Std_logic; FT601DATA9: out Std_logic);
    end component;
    component FT601_DATA_8_B
      port (PADDO: in Std_logic; FT601DATA8: out Std_logic);
    end component;
    component FT601_DATA_7_B
      port (PADDO: in Std_logic; FT601DATA7: out Std_logic);
    end component;
    component FT601_DATA_6_B
      port (PADDO: in Std_logic; FT601DATA6: out Std_logic);
    end component;
    component FT601_DATA_5_B
      port (PADDO: in Std_logic; FT601DATA5: out Std_logic);
    end component;
    component FT601_DATA_4_B
      port (PADDO: in Std_logic; FT601DATA4: out Std_logic);
    end component;
    component FT601_DATA_3_B
      port (PADDO: in Std_logic; FT601DATA3: out Std_logic);
    end component;
    component FT601_DATA_2_B
      port (PADDO: in Std_logic; FT601DATA2: out Std_logic);
    end component;
    component FT601_DATA_1_B
      port (PADDO: in Std_logic; FT601DATA1: out Std_logic);
    end component;
    component FT601_DATA_0_B
      port (PADDO: in Std_logic; FT601DATA0: out Std_logic);
    end component;
    component FT601_BE_3_B
      port (PADDO: in Std_logic; FT601BE3: out Std_logic);
    end component;
    component FT601_BE_2_B
      port (PADDO: in Std_logic; FT601BE2: out Std_logic);
    end component;
    component FT601_BE_1_B
      port (PADDO: in Std_logic; FT601BE1: out Std_logic);
    end component;
    component FT601_BE_0_B
      port (PADDO: in Std_logic; FT601BE0: out Std_logic);
    end component;
    component FT601_WR_NB
      port (PADDO: in Std_logic; FT601WRN: out Std_logic);
    end component;
    component FT601_SIWU_NB
      port (PADDO: in Std_logic; FT601SIWUN: out Std_logic);
    end component;
    component FT601_RD_NB
      port (PADDO: in Std_logic; FT601RDN: out Std_logic);
    end component;
    component FT601_OE_NB
      port (PADDO: in Std_logic; FT601OEN: out Std_logic);
    end component;
    component FT601_CLKB
      port (PADDI: out Std_logic; FT601CLK: in Std_logic);
    end component;
    component FT601_TXE_NB
      port (PADDI: out Std_logic; FT601TXEN: in Std_logic);
    end component;
    component cdc_fifo_inst_async_fifo_1_2
      port (DIA8: in Std_logic; DIA7: in Std_logic; DIA6: in Std_logic; 
            DIA5: in Std_logic; DIA4: in Std_logic; DIA3: in Std_logic; 
            DIA2: in Std_logic; DIA1: in Std_logic; DIA0: in Std_logic; 
            CEA: in Std_logic; CLKA: in Std_logic; CSA2: in Std_logic; 
            CSB2: in Std_logic; CLKB: in Std_logic; OCEB: in Std_logic; 
            CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            DOB8: out Std_logic);
    end component;
    component cdc_fifo_inst_async_fifo_2_1
      port (DIA8: in Std_logic; DIA7: in Std_logic; DIA6: in Std_logic; 
            DIA5: in Std_logic; DIA4: in Std_logic; DIA3: in Std_logic; 
            DIA2: in Std_logic; DIA1: in Std_logic; DIA0: in Std_logic; 
            CEA: in Std_logic; CLKA: in Std_logic; CSA2: in Std_logic; 
            CSB2: in Std_logic; CLKB: in Std_logic; OCEB: in Std_logic; 
            CEB: in Std_logic; DOB0: out Std_logic; DOB1: out Std_logic; 
            DOB2: out Std_logic; DOB3: out Std_logic; DOB4: out Std_logic; 
            DOB5: out Std_logic; DOB6: out Std_logic; DOB7: out Std_logic; 
            DOB8: out Std_logic);
    end component;
    component cdc_fifo_inst_async_fifo_3_0
      port (DIA4: in Std_logic; DIA3: in Std_logic; DIA2: in Std_logic; 
            DIA1: in Std_logic; DIA0: in Std_logic; CEA: in Std_logic; 
            CLKA: in Std_logic; CSA2: in Std_logic; CSB2: in Std_logic; 
            CLKB: in Std_logic; OCEB: in Std_logic; CEB: in Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic);
    end component;
    component cdc_fifo_inst_async_fifo_0_3
      port (DIA8: in Std_logic; DIA7: in Std_logic; DIA6: in Std_logic; 
            DIA5: in Std_logic; DIA4: in Std_logic; DIA3: in Std_logic; 
            DIA2: in Std_logic; DIA1: in Std_logic; DIA0: in Std_logic; 
            CEA: in Std_logic; CLKA: in Std_logic; CSA2: in Std_logic; 
            AF: out Std_logic; FF: out Std_logic; AE: out Std_logic; 
            EF: out Std_logic; CSB2: in Std_logic; CLKB: in Std_logic; 
            OCEB: in Std_logic; CEB: in Std_logic; DOB0: out Std_logic; 
            DOB1: out Std_logic; DOB2: out Std_logic; DOB3: out Std_logic; 
            DOB4: out Std_logic; DOB5: out Std_logic; DOB6: out Std_logic; 
            DOB7: out Std_logic; DOB8: out Std_logic);
    end component;
  begin
    prng_inst_SLICE_0I: prng_inst_SLICE_0
      port map (A1=>send_data_6, A0=>send_data_5, DI1=>prng_inst_n159, 
                DI0=>prng_inst_n160, CLK=>FT601_CLK_c, FCI=>prng_inst_n579, 
                F0=>prng_inst_n160, Q0=>send_data_5, F1=>prng_inst_n159, 
                Q1=>send_data_6, FCO=>prng_inst_n580);
    prng_inst_SLICE_1I: prng_inst_SLICE_1
      port map (A1=>send_data_4, A0=>send_data_3, DI1=>prng_inst_n161, 
                DI0=>prng_inst_n162, CLK=>FT601_CLK_c, FCI=>prng_inst_n578, 
                F0=>prng_inst_n162, Q0=>send_data_3, F1=>prng_inst_n161, 
                Q1=>send_data_4, FCO=>prng_inst_n579);
    prng_inst_SLICE_2I: prng_inst_SLICE_2
      port map (A1=>send_data_20, A0=>send_data_19, DI1=>prng_inst_n145, 
                DI0=>prng_inst_n146, CLK=>FT601_CLK_c, FCI=>prng_inst_n586, 
                F0=>prng_inst_n146, Q0=>send_data_19, F1=>prng_inst_n145, 
                Q1=>send_data_20, FCO=>prng_inst_n587);
    prng_inst_SLICE_3I: prng_inst_SLICE_3
      port map (A1=>send_data_14, A0=>send_data_13, DI1=>prng_inst_n151, 
                DI0=>prng_inst_n152, CLK=>FT601_CLK_c, FCI=>prng_inst_n583, 
                F0=>prng_inst_n152, Q0=>send_data_13, F1=>prng_inst_n151, 
                Q1=>send_data_14, FCO=>prng_inst_n584);
    prng_inst_SLICE_4I: prng_inst_SLICE_4
      port map (A1=>send_data_24, A0=>send_data_23, DI1=>prng_inst_n141, 
                DI0=>prng_inst_n142, CLK=>FT601_CLK_c, FCI=>prng_inst_n588, 
                F0=>prng_inst_n142, Q0=>send_data_23, F1=>prng_inst_n141, 
                Q1=>send_data_24, FCO=>prng_inst_n589);
    prng_inst_SLICE_5I: prng_inst_SLICE_5
      port map (A1=>send_data_18, A0=>send_data_17, DI1=>prng_inst_n147, 
                DI0=>prng_inst_n148, CLK=>FT601_CLK_c, FCI=>prng_inst_n585, 
                F0=>prng_inst_n148, Q0=>send_data_17, F1=>prng_inst_n147, 
                Q1=>send_data_18, FCO=>prng_inst_n586);
    prng_inst_SLICE_6I: prng_inst_SLICE_6
      port map (A1=>send_data_22, A0=>send_data_21, DI1=>prng_inst_n143, 
                DI0=>prng_inst_n144, CLK=>FT601_CLK_c, FCI=>prng_inst_n587, 
                F0=>prng_inst_n144, Q0=>send_data_21, F1=>prng_inst_n143, 
                Q1=>send_data_22, FCO=>prng_inst_n588);
    prng_inst_SLICE_7I: prng_inst_SLICE_7
      port map (A1=>send_data_12, A0=>send_data_11, DI1=>prng_inst_n153, 
                DI0=>prng_inst_n154, CLK=>FT601_CLK_c, FCI=>prng_inst_n582, 
                F0=>prng_inst_n154, Q0=>send_data_11, F1=>prng_inst_n153, 
                Q1=>send_data_12, FCO=>prng_inst_n583);
    prng_inst_SLICE_8I: prng_inst_SLICE_8
      port map (A1=>send_data_10, A0=>send_data_9, DI1=>prng_inst_n155, 
                DI0=>prng_inst_n156, CLK=>FT601_CLK_c, FCI=>prng_inst_n581, 
                F0=>prng_inst_n156, Q0=>send_data_9, F1=>prng_inst_n155, 
                Q1=>send_data_10, FCO=>prng_inst_n582);
    prng_inst_SLICE_9I: prng_inst_SLICE_9
      port map (A1=>send_data_2, A0=>send_data_1, DI1=>prng_inst_n163, 
                DI0=>prng_inst_n164, CLK=>FT601_CLK_c, FCI=>prng_inst_n577, 
                F0=>prng_inst_n164, Q0=>send_data_1, F1=>prng_inst_n163, 
                Q1=>send_data_2, FCO=>prng_inst_n578);
    prng_inst_SLICE_10I: prng_inst_SLICE_10
      port map (A0=>send_data_31, DI0=>prng_inst_n134, CLK=>FT601_CLK_c, 
                FCI=>prng_inst_n592, F0=>prng_inst_n134, Q0=>send_data_31);
    prng_inst_SLICE_11I: prng_inst_SLICE_11
      port map (A1=>send_data_30, A0=>send_data_29, DI1=>prng_inst_n135, 
                DI0=>prng_inst_n136, CLK=>FT601_CLK_c, FCI=>prng_inst_n591, 
                F0=>prng_inst_n136, Q0=>send_data_29, F1=>prng_inst_n135, 
                Q1=>send_data_30, FCO=>prng_inst_n592);
    prng_inst_SLICE_12I: prng_inst_SLICE_12
      port map (A1=>send_data_28, A0=>send_data_27, DI1=>prng_inst_n137, 
                DI0=>prng_inst_n138, CLK=>FT601_CLK_c, FCI=>prng_inst_n590, 
                F0=>prng_inst_n138, Q0=>send_data_27, F1=>prng_inst_n137, 
                Q1=>send_data_28, FCO=>prng_inst_n591);
    prng_inst_SLICE_13I: prng_inst_SLICE_13
      port map (A1=>send_data_8, A0=>send_data_7, DI1=>prng_inst_n157, 
                DI0=>prng_inst_n158, CLK=>FT601_CLK_c, FCI=>prng_inst_n580, 
                F0=>prng_inst_n158, Q0=>send_data_7, F1=>prng_inst_n157, 
                Q1=>send_data_8, FCO=>prng_inst_n581);
    prng_inst_SLICE_14I: prng_inst_SLICE_14
      port map (A1=>send_data_16, A0=>send_data_15, DI1=>prng_inst_n149, 
                DI0=>prng_inst_n150, CLK=>FT601_CLK_c, FCI=>prng_inst_n584, 
                F0=>prng_inst_n150, Q0=>send_data_15, F1=>prng_inst_n149, 
                Q1=>send_data_16, FCO=>prng_inst_n585);
    prng_inst_SLICE_15I: prng_inst_SLICE_15
      port map (A1=>send_data_26, A0=>send_data_25, DI1=>prng_inst_n139, 
                DI0=>prng_inst_n140, CLK=>FT601_CLK_c, FCI=>prng_inst_n589, 
                F0=>prng_inst_n140, Q0=>send_data_25, F1=>prng_inst_n139, 
                Q1=>send_data_26, FCO=>prng_inst_n590);
    prng_inst_SLICE_16I: prng_inst_SLICE_16
      port map (B1=>send_data_0, A1=>fifo_almst_full, DI1=>prng_inst_n165, 
                CLK=>FT601_CLK_c, F1=>prng_inst_n165, Q1=>send_data_0, 
                FCO=>prng_inst_n577);
    ft601_comp_SLICE_17I: ft601_comp_SLICE_17
      port map (C1=>FT601_TXE_N_c, B1=>LED_c, A1=>fifo_emp, D0=>fifo_almst_emp, 
                C0=>tx_active_N_389, B0=>FT601_TXE_N_c, A0=>LED_c, 
                DI0=>ft601_comp_tx_active_N_388, CLK=>FT601_CLK_c, 
                F0=>ft601_comp_tx_active_N_388, Q0=>LED_c, F1=>tx_active_N_389);
    SLICE_18I: SLICE_18
      port map (C0=>tx_active_N_389, F0=>FT601_WR_N_c, F1=>VCC_net);
    FT601_DATA_17_I: FT601_DATA_17_B
      port map (PADDO=>FT601_DATA_c_17, FT601DATA17=>FT601_DATA(17));
    FT601_DATA_18_I: FT601_DATA_18_B
      port map (PADDO=>FT601_DATA_c_18, FT601DATA18=>FT601_DATA(18));
    FT601_DATA_19_I: FT601_DATA_19_B
      port map (PADDO=>FT601_DATA_c_19, FT601DATA19=>FT601_DATA(19));
    FT601_DATA_20_I: FT601_DATA_20_B
      port map (PADDO=>FT601_DATA_c_20, FT601DATA20=>FT601_DATA(20));
    FT601_DATA_21_I: FT601_DATA_21_B
      port map (PADDO=>FT601_DATA_c_21, FT601DATA21=>FT601_DATA(21));
    FT601_DATA_22_I: FT601_DATA_22_B
      port map (PADDO=>FT601_DATA_c_22, FT601DATA22=>FT601_DATA(22));
    FT601_DATA_23_I: FT601_DATA_23_B
      port map (PADDO=>FT601_DATA_c_23, FT601DATA23=>FT601_DATA(23));
    FT601_DATA_24_I: FT601_DATA_24_B
      port map (PADDO=>FT601_DATA_c_24, FT601DATA24=>FT601_DATA(24));
    FT601_DATA_25_I: FT601_DATA_25_B
      port map (PADDO=>FT601_DATA_c_25, FT601DATA25=>FT601_DATA(25));
    FT601_DATA_26_I: FT601_DATA_26_B
      port map (PADDO=>FT601_DATA_c_26, FT601DATA26=>FT601_DATA(26));
    FT601_DATA_27_I: FT601_DATA_27_B
      port map (PADDO=>FT601_DATA_c_27, FT601DATA27=>FT601_DATA(27));
    FT601_DATA_16_I: FT601_DATA_16_B
      port map (PADDO=>FT601_DATA_c_16, FT601DATA16=>FT601_DATA(16));
    FT601_DATA_28_I: FT601_DATA_28_B
      port map (PADDO=>FT601_DATA_c_28, FT601DATA28=>FT601_DATA(28));
    FT601_DATA_29_I: FT601_DATA_29_B
      port map (PADDO=>FT601_DATA_c_29, FT601DATA29=>FT601_DATA(29));
    FT601_DATA_30_I: FT601_DATA_30_B
      port map (PADDO=>FT601_DATA_c_30, FT601DATA30=>FT601_DATA(30));
    FT601_DATA_31_I: FT601_DATA_31_B
      port map (PADDO=>FT601_DATA_c_31, FT601DATA31=>FT601_DATA(31));
    FT601_RST_NI: FT601_RST_NB
      port map (PADDO=>VCC_net, FT601RSTN=>FT601_RST_N);
    LEDI: LEDB
      port map (PADDO=>LED_c, LEDS=>LED);
    FT601_DATA_15_I: FT601_DATA_15_B
      port map (PADDO=>FT601_DATA_c_15, FT601DATA15=>FT601_DATA(15));
    FT601_DATA_14_I: FT601_DATA_14_B
      port map (PADDO=>FT601_DATA_c_14, FT601DATA14=>FT601_DATA(14));
    FT601_DATA_13_I: FT601_DATA_13_B
      port map (PADDO=>FT601_DATA_c_13, FT601DATA13=>FT601_DATA(13));
    FT601_DATA_12_I: FT601_DATA_12_B
      port map (PADDO=>FT601_DATA_c_12, FT601DATA12=>FT601_DATA(12));
    FT601_DATA_11_I: FT601_DATA_11_B
      port map (PADDO=>FT601_DATA_c_11, FT601DATA11=>FT601_DATA(11));
    FT601_DATA_10_I: FT601_DATA_10_B
      port map (PADDO=>FT601_DATA_c_10, FT601DATA10=>FT601_DATA(10));
    FT601_DATA_9_I: FT601_DATA_9_B
      port map (PADDO=>FT601_DATA_c_9, FT601DATA9=>FT601_DATA(9));
    FT601_DATA_8_I: FT601_DATA_8_B
      port map (PADDO=>FT601_DATA_c_8, FT601DATA8=>FT601_DATA(8));
    FT601_DATA_7_I: FT601_DATA_7_B
      port map (PADDO=>FT601_DATA_c_7, FT601DATA7=>FT601_DATA(7));
    FT601_DATA_6_I: FT601_DATA_6_B
      port map (PADDO=>FT601_DATA_c_6, FT601DATA6=>FT601_DATA(6));
    FT601_DATA_5_I: FT601_DATA_5_B
      port map (PADDO=>FT601_DATA_c_5, FT601DATA5=>FT601_DATA(5));
    FT601_DATA_4_I: FT601_DATA_4_B
      port map (PADDO=>FT601_DATA_c_4, FT601DATA4=>FT601_DATA(4));
    FT601_DATA_3_I: FT601_DATA_3_B
      port map (PADDO=>FT601_DATA_c_3, FT601DATA3=>FT601_DATA(3));
    FT601_DATA_2_I: FT601_DATA_2_B
      port map (PADDO=>FT601_DATA_c_2, FT601DATA2=>FT601_DATA(2));
    FT601_DATA_1_I: FT601_DATA_1_B
      port map (PADDO=>FT601_DATA_c_1, FT601DATA1=>FT601_DATA(1));
    FT601_DATA_0_I: FT601_DATA_0_B
      port map (PADDO=>FT601_DATA_c_0, FT601DATA0=>FT601_DATA(0));
    FT601_BE_3_I: FT601_BE_3_B
      port map (PADDO=>VCC_net, FT601BE3=>FT601_BE(3));
    FT601_BE_2_I: FT601_BE_2_B
      port map (PADDO=>VCC_net, FT601BE2=>FT601_BE(2));
    FT601_BE_1_I: FT601_BE_1_B
      port map (PADDO=>VCC_net, FT601BE1=>FT601_BE(1));
    FT601_BE_0_I: FT601_BE_0_B
      port map (PADDO=>VCC_net, FT601BE0=>FT601_BE(0));
    FT601_WR_NI: FT601_WR_NB
      port map (PADDO=>FT601_WR_N_c, FT601WRN=>FT601_WR_N);
    FT601_SIWU_NI: FT601_SIWU_NB
      port map (PADDO=>VCC_net, FT601SIWUN=>FT601_SIWU_N);
    FT601_RD_NI: FT601_RD_NB
      port map (PADDO=>VCC_net, FT601RDN=>FT601_RD_N);
    FT601_OE_NI: FT601_OE_NB
      port map (PADDO=>VCC_net, FT601OEN=>FT601_OE_N);
    FT601_CLKI: FT601_CLKB
      port map (PADDI=>FT601_CLK_c, FT601CLK=>FT601_CLK);
    FT601_TXE_NI: FT601_TXE_NB
      port map (PADDI=>FT601_TXE_N_c, FT601TXEN=>FT601_TXE_N);
    cdc_fifo_inst_async_fifo_1_2I: cdc_fifo_inst_async_fifo_1_2
      port map (DIA8=>send_data_17, DIA7=>send_data_16, DIA6=>send_data_15, 
                DIA5=>send_data_14, DIA4=>send_data_13, DIA3=>send_data_12, 
                DIA2=>send_data_11, DIA1=>send_data_10, DIA0=>send_data_9, 
                CEA=>fifo_almst_full, CLKA=>FT601_CLK_c, 
                CSA2=>cdc_fifo_inst_full, CSB2=>fifo_emp, CLKB=>FT601_CLK_c, 
                OCEB=>tx_active_N_389, CEB=>tx_active_N_389, 
                DOB0=>FT601_DATA_c_17, DOB1=>FT601_DATA_c_18, 
                DOB2=>FT601_DATA_c_19, DOB3=>FT601_DATA_c_20, 
                DOB4=>FT601_DATA_c_21, DOB5=>FT601_DATA_c_22, 
                DOB6=>FT601_DATA_c_23, DOB7=>FT601_DATA_c_8, 
                DOB8=>FT601_DATA_c_9);
    cdc_fifo_inst_async_fifo_2_1I: cdc_fifo_inst_async_fifo_2_1
      port map (DIA8=>send_data_26, DIA7=>send_data_25, DIA6=>send_data_24, 
                DIA5=>send_data_23, DIA4=>send_data_22, DIA3=>send_data_21, 
                DIA2=>send_data_20, DIA1=>send_data_19, DIA0=>send_data_18, 
                CEA=>fifo_almst_full, CLKA=>FT601_CLK_c, 
                CSA2=>cdc_fifo_inst_full, CSB2=>fifo_emp, CLKB=>FT601_CLK_c, 
                OCEB=>tx_active_N_389, CEB=>tx_active_N_389, 
                DOB0=>FT601_DATA_c_10, DOB1=>FT601_DATA_c_11, 
                DOB2=>FT601_DATA_c_12, DOB3=>FT601_DATA_c_13, 
                DOB4=>FT601_DATA_c_14, DOB5=>FT601_DATA_c_15, 
                DOB6=>FT601_DATA_c_0, DOB7=>FT601_DATA_c_1, 
                DOB8=>FT601_DATA_c_2);
    cdc_fifo_inst_async_fifo_3_0I: cdc_fifo_inst_async_fifo_3_0
      port map (DIA4=>send_data_31, DIA3=>send_data_30, DIA2=>send_data_29, 
                DIA1=>send_data_28, DIA0=>send_data_27, CEA=>fifo_almst_full, 
                CLKA=>FT601_CLK_c, CSA2=>cdc_fifo_inst_full, CSB2=>fifo_emp, 
                CLKB=>FT601_CLK_c, OCEB=>tx_active_N_389, CEB=>tx_active_N_389, 
                DOB0=>FT601_DATA_c_3, DOB1=>FT601_DATA_c_4, 
                DOB2=>FT601_DATA_c_5, DOB3=>FT601_DATA_c_6, 
                DOB4=>FT601_DATA_c_7);
    cdc_fifo_inst_async_fifo_0_3I: cdc_fifo_inst_async_fifo_0_3
      port map (DIA8=>send_data_8, DIA7=>send_data_7, DIA6=>send_data_6, 
                DIA5=>send_data_5, DIA4=>send_data_4, DIA3=>send_data_3, 
                DIA2=>send_data_2, DIA1=>send_data_1, DIA0=>send_data_0, 
                CEA=>fifo_almst_full, CLKA=>FT601_CLK_c, 
                CSA2=>cdc_fifo_inst_full, AF=>fifo_almst_full, 
                FF=>cdc_fifo_inst_full, AE=>fifo_almst_emp, EF=>fifo_emp, 
                CSB2=>fifo_emp, CLKB=>FT601_CLK_c, OCEB=>tx_active_N_389, 
                CEB=>tx_active_N_389, DOB0=>FT601_DATA_c_24, 
                DOB1=>FT601_DATA_c_25, DOB2=>FT601_DATA_c_26, 
                DOB3=>FT601_DATA_c_27, DOB4=>FT601_DATA_c_28, 
                DOB5=>FT601_DATA_c_29, DOB6=>FT601_DATA_c_30, 
                DOB7=>FT601_DATA_c_31, DOB8=>FT601_DATA_c_16);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCC_net);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of top is
    for Structure
    end for;
  end Structure_CON;


