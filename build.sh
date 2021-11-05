#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
export GCC5_ARM_PREFIX=arm-none-eabi-
build -a ARM -p lumia830/Lumia830.dsc -t GCC5 -s -n 0
$GCC5_ARM_PREFIX\objcopy -I binary -O elf32-littlearm --binary-architecture arm workspace/Build/Lumia830-ARM/DEBUG_GCC5/FV/MSM8926_EFI.fd MSM8926_EFI.fd.elf
$GCC5_ARM_PREFIX\ld MSM8926_EFI.fd.elf -T lumia830/FvWrapper.ld -o emmc_appsboot.mbn
rm MSM8926_EFI.fd.elf
rm -rf workspace/*
exit
