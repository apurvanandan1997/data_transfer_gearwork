----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Create Date:    00:22:57 08/05/2019 
-- Design Name: 
-- Module Name:    ft601_top
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    FT601 Controller in FT245 mode
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is
    port (
        LED : out std_logic;

        DATA_LANE : in std_logic_vector(4 downto 0);
        CLK_LANE : in std_logic;

        FT601_CLK    : in    std_logic;
        FT601_RST_N  : out   std_logic;
        FT601_DATA   : inout std_logic_vector(31 downto 0);
        FT601_BE     : out   std_logic_vector(3 downto 0);
        FT601_RXF_N  : in    std_logic;
        FT601_TXE_N  : in    std_logic;
        FT601_WR_N   : out   std_logic;
        FT601_SIWU_N : out   std_logic;
        FT601_RD_N   : out   std_logic;
        FT601_OE_N   : out   std_logic

    );

end entity top;

architecture rtl_top of top is

    component dec_8b10b is
        port (
            reset : in std_logic ;  -- global asynchronous reset (ah)
            rbyteclk : in std_logic ;   -- master synchronous receive byte clock
            enc_data : in std_logic_vector(9 downto 0);
            dec_data : out std_logic_vector(7 downto 0);
            ctrl_ind : out std_logic
        );
    end component dec_8b10b;
    component prng_recv is
    generic(
        SEED : std_logic_vector(31 downto 0) := "10111100110011001111000001010011"
    );

    port(
        clk   : in std_logic;
        ce    : in std_logic;
        reset : in std_logic;
        rng   : out std_logic_vector (31 downto 0)
    );
    end component prng_recv;
    --component ft601 is
    --    port (
    --        clk : in  std_logic;
    --        rst : in  std_logic;
    --        led : out std_logic;

    --        -- To FT601 chip
    --        ft601_data   : inout std_logic_vector(31 downto 0);
    --        ft601_be     : out   std_logic_vector(3 downto 0);
    --        ft601_rxf_n  : in    std_logic;
    --        ft601_txe_n  : in    std_logic;
    --        ft601_wr_n   : out   std_logic;
    --        ft601_siwu_n : out   std_logic;
    --        ft601_rd_n   : out   std_logic;
    --        ft601_oe_n   : out   std_logic;

    --        -- From Internal FIFOs
    --        data_in     : in  std_logic_vector(31 downto 0);
    --        req_data    : out std_logic;
    --        fifo_in_emp : in  std_logic;
    --        data_wr_en  : in  std_logic
    --    );
    --end component ft601;

    component ilvds is
        port (
            a  : in  std_logic;
            an : in  std_logic;
            z  : out std_logic
        );
    end component ilvds;

    component async_fifo
        port (
            data        : in  std_logic_vector(31 downto 0);
            wr_clock    : in  std_logic;
            rd_clock    : in  std_logic;
            wr_en       : in  std_logic;
            rd_en       : in  std_logic;
            reset       : in  std_logic;
            rpreset     : in  std_logic;
            q           : out std_logic_vector(31 downto 0);
            empty       : out std_logic;
            full        : out std_logic;
            almost_empty : out std_logic;
            almost_full  : out std_logic
        );
    end component;

    component osch
        generic (
            nom_freq: string := "66.5"
            );
        port (
            stdby : in std_logic;
            osc: out std_logic;
            sedstdby: out std_logic
            );
        end component;

    attribute NOM_FREQ : string;
    attribute NOM_FREQ of OSCinst0 : label is "66.5";

    signal fifo_in         : std_logic_vector(31 downto 0) := (others => '0');
    signal fifo_wr_clk     : std_logic                     := '0';
    signal fifo_rd_clk     : std_logic                     := '0';
    signal fifo_wr_en      : std_logic                     := '0';
    signal fifo_rd_en      : std_logic                     := '0';
    signal fifo_rst        : std_logic                     := '0';
    signal fifo_rprst      : std_logic                     := '0';
    signal fifo_out        : std_logic_vector(31 downto 0);
    signal fifo_emp        : std_logic;
    signal fifo_full       : std_logic;
    signal fifo_almst_emp  : std_logic;
    signal fifo_almst_full : std_logic;
    signal rst             : std_logic;
    signal req_data        : std_logic;
    signal send_data       : std_logic_vector(31 downto 0);
    signal eclk            : std_logic;
    signal sclk            : std_logic;
    signal ce              : std_logic := '0';
    signal mode            : std_logic;
    signal link_rdy        : std_logic;
    signal ber             : std_logic_vector(31 downto 0);
    signal debug : std_logic_vector(9 downto 0);
    signal clk_int : std_logic;
    signal data_valid : std_logic;
    signal dec_data : std_logic_vector (7 downto 0);
    signal enc_data : std_logic_vector (9 downto 0);
    signal rng_num : std_logic_vector(31 downto 0);

begin

    FT601_RST_N <= '1';
    --LED <= link_rdy;
    rst <= '0';
    ce <= link_rdy when falling_edge(mode);
    fifo_rst <= not link_rdy;
    fifo_rprst <= not fifo_rd_en;
    fifo_wr_en <= ce and data_valid;
    fifo_rd_en <= '1' when rising_edge(fifo_almst_full);
    --send_data(31 downto 8) <= (others => '0');
    send_data(31 downto 0) <= rng_num(31 downto 0);
    --FT601_DATA <= gen_data;
    --FT601_SIWU_N <= ce;

    oscinst0: osch
    generic map (
        nom_freq => "66.5"
    )
    port map (
        stdby => '0',
        osc => clk_int,
        sedstdby => open
    );

    
    deser_inst : entity work.deserializer
    port map (
        eclk     => CLK_LANE,
        clk_s    => clk_int,
        reset    => rst,
        sclk     => sclk,
        link_rdy => link_rdy,
        q_valid  => data_valid,
        datain   => DATA_LANE,
        q        => enc_data
    );

    decoder_inst : dec_8b10b
    port map (
        reset    => rst,
        rbyteclk => sclk,
        enc_data => enc_data,
        dec_data => dec_data,
        ctrl_ind => mode
    );
   
    prng_inst : prng_recv
        generic map (
            SEED => "10111010110011001111000001010011"
        )
        port map (
            clk   => clk_int,
            ce    => '1',
            reset => rst,
            rng   => rng_num
        );

    cdc_fifo_inst : async_fifo
        port map (
            data     => send_data,
            wr_clock => clk_int,
            rd_clock => FT601_CLK,
            wr_en    => '1',
            rd_en    => req_data,
            reset    => rst,
            rpreset  => rst,
            q        => fifo_out,
            empty    => fifo_emp,
            full     => fifo_full,
            almost_empty => fifo_almst_emp,
            almost_full  => fifo_almst_full
        );

    ft601_comp : entity work.ft601 port map (
        clk => FT601_CLK,
        rst => rst,
        led => LED,
        ft601_data   => FT601_DATA,
        ft601_be     => FT601_BE,
        ft601_rxf_n  => FT601_RXF_N,
        ft601_txe_n  => FT601_TXE_N,
        ft601_wr_n   => FT601_WR_N,
        ft601_siwu_n => FT601_SIWU_N,
        ft601_rd_n   => FT601_RD_N,
        ft601_oe_n   => FT601_OE_N,
        data_in      => fifo_out,
        fifo_rd_en   => req_data,
        fifo_emp     => fifo_emp
        --fifo_aemp    => fifo_almst_emp
    );

end architecture rtl_top;