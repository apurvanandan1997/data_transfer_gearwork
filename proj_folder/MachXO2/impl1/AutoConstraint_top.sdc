
#Begin clock constraint
define_clock -name {ddrx4|sclk_inferred_clock} {n:ddrx4|sclk_inferred_clock} -period 5.402 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 2.701 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {top|FT601_CLK} {p:top|FT601_CLK} -period 4.613 -clockgroup Autoconstr_clkgroup_1 -rise 0.000 -fall 2.306 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {top|clk_int_inferred_clock} {n:top|clk_int_inferred_clock} -period 480.769 -clockgroup Autoconstr_clkgroup_2 -rise 0.000 -fall 240.385 -route 0.000 
#End clock constraint
