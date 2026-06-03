###############################################################################
# Created by write_sdc
###############################################################################
current_design sram
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {col_addr[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {col_addr[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cs}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rd_n}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {row_addr[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {row_addr[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {wr_n}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out_bar}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0060 [get_ports {data_out}]
set_load -pin_load 0.0060 [get_ports {data_out_bar}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cs}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rd_n}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wr_n}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {col_addr[1]}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {col_addr[0]}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {row_addr[1]}]
set_driving_cell -lib_cell sg13g2_buf_4 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {row_addr[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
