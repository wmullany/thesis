vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/processing_system7_vip_v1_0_21
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_33
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_iic_v2_1_9
vlib modelsim_lib/msim/fifo_generator_v13_2_11
vlib modelsim_lib/msim/lib_fifo_v1_0_20
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/axi_datamover_v5_1_35
vlib modelsim_lib/msim/axi_sg_v4_1_19
vlib modelsim_lib/msim/axi_dma_v7_1_34

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 modelsim_lib/msim/processing_system7_vip_v1_0_21
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 modelsim_lib/msim/axi_register_slice_v2_1_33
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_iic_v2_1_9 modelsim_lib/msim/axi_iic_v2_1_9
vmap fifo_generator_v13_2_11 modelsim_lib/msim/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 modelsim_lib/msim/lib_fifo_v1_0_20
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_35 modelsim_lib/msim/axi_datamover_v5_1_35
vmap axi_sg_v4_1_19 modelsim_lib/msim/axi_sg_v4_1_19
vmap axi_dma_v7_1_34 modelsim_lib/msim/axi_dma_v7_1_34

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_processing_system7_0_0/sim/kf_bd_processing_system7_0_0.v" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/sim/bd_b51c.v" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_b51c_one_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_b51c_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_b51c_arinsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_b51c_rinsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_b51c_awinsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_b51c_winsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_b51c_binsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_b51c_aroutsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_b51c_routsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_b51c_awoutsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_b51c_woutsw_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_b51c_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_b51c_arni_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_b51c_rni_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_b51c_awni_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_b51c_wni_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_b51c_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_b51c_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_b51c_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_b51c_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_b51c_s00a2s_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_b51c_sarn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_b51c_srn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_b51c_sawn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_b51c_swn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_b51c_sbn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_b51c_s01mmu_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_b51c_s01tr_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_b51c_s01sic_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_b51c_s01a2s_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_b51c_sarn_1.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_b51c_srn_1.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_b51c_s02mmu_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_b51c_s02tr_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_b51c_s02sic_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_b51c_s02a2s_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_b51c_sawn_1.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_b51c_swn_1.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_b51c_sbn_1.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_b51c_m00s2a_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_b51c_m00arn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_b51c_m00rn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_b51c_m00awn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_b51c_m00wn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_b51c_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_b51c_m00e_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_b51c_m01s2a_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_b51c_m01arn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_b51c_m01rn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_b51c_m01awn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_b51c_m01wn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_b51c_m01bn_0.sv" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_b51c_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_33  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ip/kf_bd_smartconnect_0_0/sim/kf_bd_smartconnect_0_0.v" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_9  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/2eec/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/kf_bd/ip/kf_bd_axi_iic_0_0/sim/kf_bd_axi_iic_0_0.vhd" \
"../../../bd/kf_bd/ip/kf_bd_rst_ps7_0_50M_0/sim/kf_bd_rst_ps7_0_50M_0.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_35  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/4277/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_19  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/fc5d/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_34  -93  \
"../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/70ff/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/kf_bd/ip/kf_bd_axi_dma_0_0/sim/kf_bd_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/ec67/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/86fe/hdl" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../kalman_vivado.gen/sources_1/bd/kf_bd/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kf_bd/ipshared/7149/hdl/KF_slave_stream_v1_0_S01_AXIS.v" \
"../../../bd/kf_bd/ipshared/7149/hdl/KF_master_stream_v1_0_M00_AXIS.v" \
"../../../bd/kf_bd/ipshared/7149/src/gain.v" \
"../../../bd/kf_bd/ipshared/7149/src/kalman.v" \
"../../../bd/kf_bd/ipshared/7149/src/kalman_predict.v" \
"../../../bd/kf_bd/ipshared/7149/src/kalman_update.v" \
"../../../bd/kf_bd/ipshared/7149/src/matrix_add.v" \
"../../../bd/kf_bd/ipshared/7149/src/matrix_inverse.v" \
"../../../bd/kf_bd/ipshared/7149/src/matrix_multiplication.v" \
"../../../bd/kf_bd/ipshared/7149/src/matrix_subtract.v" \
"../../../bd/kf_bd/ipshared/7149/src/matrix_transpose.v" \
"../../../bd/kf_bd/ipshared/7149/src/vector_add_sub.v" \
"../../../bd/kf_bd/ipshared/7149/hdl/KF.v" \
"../../../bd/kf_bd/ip/kf_bd_KF_0_0/sim/kf_bd_KF_0_0.v" \
"../../../bd/kf_bd/sim/kf_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

