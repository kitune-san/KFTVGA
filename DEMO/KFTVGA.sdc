create_clock -name CLK -period 20.000 [get_ports {CLK}]
create_clock -name CLK_25MHZ -period 40.000
derive_pll_clocks
derive_clock_uncertainty
set_input_delay -clock {CLK_25MHZ} -max 10 [all_inputs]
set_input_delay -clock {CLK_25MHZ} -min 5 [all_inputs]
set_output_delay -clock {CLK_25MHZ} -max 10 [all_outputs]
set_output_delay -clock {CLK_25MHZ} -min 5 [all_outputs]
