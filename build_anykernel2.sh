#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm
export CROSS_COMPILE=/home/francesco/arm-eabi-4.9-linaro/bin/arm-eabi-
##########################################
mkdir outputd852
##########################################
make -C $(pwd) O=outputd852 cyanogenmod_d852_defconfig 
make -C $(pwd) O=outputd852
##########################################
cp outputd852/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
##########################################
chmod 777 tools_crazy/dtbToolCM
##########################################
tools_crazy/dtbToolCM -2 -o outputd852/arch/arm/boot/dt.img -s 2048 -p outputd852/scripts/dtc/ outputd852/arch/arm/boot/
##########################################
cp outputd852/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D852/zImage

cp outputd852/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D852/dtb
##########################################
cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D852
zip -r9 CrazySuperKernel-CM14.1-V1.0-D852.zip * -x CrazySuperKernel-CM14.1-V1.0-D852.zip

