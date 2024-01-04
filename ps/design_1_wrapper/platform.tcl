# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\data\vivado\project_1_hello\ps\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\data\vivado\project_1_hello\ps\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {D:\data\vivado\project_1_hello\pl\design_1_wrapper.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/data/vivado/project_1_hello/ps}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
platform config -updatehw {D:/data/vivado/project_1_hello/pl/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/BaiduNetdiskDownload/zynq/AXU4EV-P/course_s2/course_s2/01_ps_hello/vivado/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/BaiduNetdiskDownload/zynq/AXU4EV-P/course_s2/course_s2/01_ps_hello/vitis/design_1_wrapper.xsa}
platform clean
platform generate
platform config -updatehw {D:/data/vivado/project_1_hello/pl/design_1_wrapper.xsa}
platform generate -domains 