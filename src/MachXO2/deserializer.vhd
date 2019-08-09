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

entity deserializer is
    port (
        eclk     : in std_logic;
        clk_s    : in std_logic;
        reset    : in  std_logic;
        sclk     : out std_logic;
        datain   : in  std_logic_vector(4 downto 0);
        link_rdy : out std_logic := '0';
        q_valid  : out std_logic := '0';  
        q        : out std_logic_vector(9 downto 0)
    );
end entity deserializer;

architecture rtl of deserializer is
    
    component ddrx4
    port (
        alignwd      : in  std_logic;
        clk          : in  std_logic;
        clk_s        : in  std_logic;
        dqsdll_reset : in  std_logic;
        freeze       : in  std_logic;
        init         : in  std_logic;
        lock         : out std_logic;
        reset        : in  std_logic;
        rx_ready     : out std_logic;
        sclk         : out std_logic;
        uddcntln     : in  std_logic;
        datain       : in  std_logic_vector(4 downto 0);
        q            : out std_logic_vector(7 downto 0)
    );
    end component;

    signal q10_buf  : std_logic_vector(9 downto 0) := (others => '0');
    signal q8_buf   : std_logic_vector(7 downto 0) := (others => '0');
    signal q_tmp    : std_logic_vector(7 downto 0) := (others => '0');
    signal counter  : std_logic_vector(2 downto 0) := (others => '0');
   
    signal bit_slip : std_logic := '0';
    signal sclk_buf : std_logic := '0';
    signal locked   : std_logic := '0';
    signal lnk_trnd : std_logic := '0';
    signal rx_rdy   : std_logic := '0';
    
    signal lnk_trnd_buf : std_logic_vector(3 downto 0) := (others => '0');
    signal hold_slip    : std_logic_vector(2 downto 0) := (others => '0');

begin

    ddrx4_inst : ddrx4
        port map (
            clk          => eclk,
            clk_s        => clk_s,
            alignwd      => bit_slip,
            dqsdll_reset => reset,
            freeze       => lnk_trnd,
            init         => locked,
            reset        => reset,
            uddcntln     => lnk_trnd,
            datain       => datain,
            lock         => locked,
            rx_ready     => rx_rdy,
            sclk         => sclk_buf,
            q            => q8_buf
        );

    lnk_trnd <= lnk_trnd_buf(0) and lnk_trnd_buf(1) and lnk_trnd_buf(2) and lnk_trnd_buf(3);
    link_rdy <= lnk_trnd;
    sclk <= sclk_buf;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                q10_buf  <= (others => '0');
                q <= (others => '0');
                q_valid <= '0';
            
            else
                if rx_rdy = '1' then
                    case counter is
                        when "000"  => q_tmp(7 downto 0)   <= q8_buf(7 downto 0);
                        
                        when "001"  => q_tmp(5 downto 0)   <= q8_buf(7 downto 2);
                                       q10_buf(9 downto 0) <= q8_buf(1 downto 0) & q_tmp(7 downto 0);
                        
                        when "010"  => q_tmp(3 downto 0)   <= q8_buf(7 downto 4);
                                       q10_buf(9 downto 0) <= q8_buf(3 downto 0) & q_tmp(5 downto 0);
                        
                        when "011"  => q_tmp(1 downto 0)   <= q8_buf(7 downto 6);
                                       q10_buf(9 downto 0) <= q8_buf(5 downto 0) & q_tmp(3 downto 0);
                        
                        when "100"  => q10_buf(9 downto 0) <= q8_buf(7 downto 0) & q_tmp(1 downto 0);
                        
                        when others => null;
                    
                    end case;
                    
                    if lnk_trnd = '1' then
                        q <= q10_buf;

                    else
                        q <= (others => '0');
                        
                    end if;

                    if counter /= "010" then
                        q_valid <= lnk_trnd;
                    
                    else 
                        q_valid <= '0';

                    end if;
                else
                    q10_buf  <= (others => '0');
                    q <= (others => '0');
                    q_valid <= '0';

                end if;

            end if;
        end if;
    end process;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                counter <= (others => '0');

            else
                if rx_rdy = '1' then
                    --if bit_slip = '1' then
                    --    counter <= counter;

                    --else
                        if counter = "100" then
                            counter <= (others => '0');

                        else
                            counter <= counter + '1';

                        end if;
                    --end if;
                else
                    counter <= (others => '0');

                end if;
            end if;
        end if;
    end process;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                bit_slip <= '0';
                hold_slip <= (others => '0');

            else
                if rx_rdy = '1' and lnk_trnd = '0' then
                    if counter = "000" then
                        hold_slip <= hold_slip + '1';
                        if hold_slip = "111"  then
                            if q10_buf /= "0110111100" and q10_buf /= "1001000011" then
                                bit_slip <= '1';
                                lnk_trnd_buf(0) <= '0';

                            else
                                bit_slip <= '0';
                                lnk_trnd_buf(0) <= '1';
                            
                            end if;
                            lnk_trnd_buf(3 downto 1) <= lnk_trnd_buf(2 downto 0);
                        
                        else
                            bit_slip <= '0';

                        end if;
                    elsif counter = "001" then
                        bit_slip <= '0';

                    end if;
                else
                    bit_slip <= '0';
                    hold_slip <= (others => '0');

                end if;
            end if;
        end if;
    end process;

end architecture rtl;