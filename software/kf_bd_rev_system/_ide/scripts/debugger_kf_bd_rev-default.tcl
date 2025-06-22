# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\mulla\Documents\thesis\softwareC\kf_bd_rev_system\_ide\scripts\debugger_kf_bd_rev-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\mulla\Documents\thesis\softwareC\kf_bd_rev_system\_ide\scripts\debugger_kf_bd_rev-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Cora Z7 - 7007S 210370B9F33FA" && level==0 && jtag_device_ctx=="jsn-Cora Z7 - 7007S-210370B9F33FA-13723093-0"}
fpga -file C:/Users/mulla/Documents/thesis/softwareC/kf_bd_rev/_ide/bitstream/kf_bd_double.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/mulla/Documents/thesis/softwareC/kf_bd_double/export/kf_bd_double/hw/kf_bd_double.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/mulla/Documents/thesis/softwareC/kf_bd_rev/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/mulla/Documents/thesis/softwareC/kf_bd_rev/Debug/kf_bd_rev.elf
configparams force-mem-access 0
bpadd -addr &main
