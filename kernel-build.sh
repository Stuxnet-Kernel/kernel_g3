#!/bin/bash

clear

echo ""
echo "****************************************************"
echo "* Im not responsible of what you do to your device.*"
echo "* You know the consequences upon changing stuff. *"
echo "* Its your responsibility upon building my kernel. *"
echo "****************************************************"
echo ""

git checkout L-master

make clean
make mrproper
export CCACHE=1
export ARCH=arm
export CROSS_COMPILE=~/Stuxnet/arm-eabi-4.8/bin/arm-eabi-
make cyanogenmod_d855_defconfig
time make -j8 2>&1 | tee kernel.log
mv kernel.log ../

echo ""
echo "****************************************************"
echo "* Kernel building successful unless it errors out. *"
echo "* Check the errors and fix them if you changed it. *"
echo "* Otherwise flash it and jerk off with your iPhone!*"
echo "****************************************************"
echo ""
