#!/bin/bash

echo
echo "Clean Build Directory"
echo 

rm -rf out
make clean && make mrproper

echo
echo "Issue Build Commands"
echo

mkdir -p out


echo
echo "Set DEFCONFIG"
echo 
make ARCH=arm64 CROSS_COMPILE=/NAS/Software/Github/Android_Build/GCC_Google_Arm64/aarch64-linux-android-4.9/bin/aarch64-linux-android- CROSS_COMPILE_ARM32=/NAS/Software/Github/Android_Build/GCC_Google_Arm64/aarch64-linux-android-4.9/bin/arm-linux-androideabi- O=out kirisakura_defconfig

echo
echo "Build The Good Stuff"
echo
make ARCH=arm64 CROSS_COMPILE=/NAS/Software/Github/Android_Build/GCC_Google_Arm64/aarch64-linux-android-4.9/bin/aarch64-linux-android- CROSS_COMPILE_ARM32=/NAS/Software/Github/Android_Build/GCC_Google_Arm64/aarch64-linux-android-4.9/bin/arm-linux-androideabi- O=out -j24
