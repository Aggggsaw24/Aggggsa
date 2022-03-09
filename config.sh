#!/bin/bash

# Device
export FOX_BRANCH="fox_11.0"
<<<<<<< HEAD
export DT_LINK="https://github.com/Johx22/device_oppo_OP4F2F -b fox_11.0"
=======
export DT_LINK="https://github.com/Johx22/device_oppo_A54 -b fox_11.0"
>>>>>>> 418852af6a1d4348db4e14374fd652558f21a58e

export DEVICE="OP4F2F"
export OEM="oppo"
export TARGET="recoveryimage"

export OUTPUT="OrangeFox*.zip"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
#export KERNEL_SOURCE="https://gitlab.com/OrangeFox/kernel/mojito.git"
#export PLATFORM="sm6150" # Leave it commented if you want to clone the kernel to kernel/$OEM/$DEVICE

# Extra Command
export EXTRA_CMD="git clone https://github.com/OrangeFoxRecovery/Avatar.git misc"

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
