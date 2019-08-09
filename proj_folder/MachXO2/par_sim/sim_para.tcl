lappend auto_path "/usr/local/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {par_sim}
set ::bali::simulation::Para(PROJECTPATH) {/home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/proj_folder/MachXO2}
set ::bali::simulation::Para(FILELIST) {"/home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/src/MachXO2/top_tb.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/proj_folder/MachXO2/impl1/data_transfer_impl1_vho.vho" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "" "" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "none" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {}
set ::bali::simulation::Para(SDFPATH)  {/home/apurvan/GSoC/usb-plug-mod-working/data_transfer_gearwork/proj_folder/MachXO2/impl1/data_transfer_impl1_vho.sdf}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {0}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
