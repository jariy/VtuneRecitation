#!/bin/sh

# Set compiler environment variables
source /opt/intel/compilers_and_libraries_2018/linux/bin/compilervars.sh -arch intel64 -platform linux

# Set Vtune environment variables
source /opt/intel/vtune_amplifier_2018/amplxe-vars.sh

# Run Vtune
/opt/intel/vtune_amplifier_2018/bin64/amplxe-gui
