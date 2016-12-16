#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
#
export ARCH=arm
export CROSS_COMPILE=/home/francesco/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
mkdir outputd850
mkdir outputd851
mkdir outputd852
mkdir outputd855
mkdir outputf400
mkdir outputls990
mkdir outputvs985

make -C $(pwd) O=outputd850 cyanogenmod_d850_defconfig 
make -C $(pwd) O=outputd850

make -C $(pwd) O=outputd851 cyanogenmod_d851_defconfig 
make -C $(pwd) O=outputd851

make -C $(pwd) O=outputd852 cyanogenmod_d852_defconfig 
make -C $(pwd) O=outputd852

make -C $(pwd) O=outputd855 cyanogenmod_d855_defconfig 
make -C $(pwd) O=outputd855

make -C $(pwd) O=outputf400 cyanogenmod_f400_defconfig 
make -C $(pwd) O=outputf400

make -C $(pwd) O=outputls990 cyanogenmod_ls990_defconfig 
make -C $(pwd) O=outputls990

make -C $(pwd) O=outputvs985 cyanogenmod_vs985_defconfig 
make -C $(pwd) O=outputvs985

cp outputd850/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd851/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd852/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd855/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputf400/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputls990/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputvs985/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

./tools_crazy/dtbToolCM -o outputd850/arch/arm/boot/dt.img -s 2048 -p outputd850/scripts/dtc/ outputd850/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputd851/arch/arm/boot/dt.img -s 2048 -p outputd851/scripts/dtc/ outputd851/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputd852/arch/arm/boot/dt.img -s 2048 -p outputd852/scripts/dtc/ outputd852/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputd855/arch/arm/boot/dt.img -s 2048 -p outputd855/scripts/dtc/ outputd855/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputf400/arch/arm/boot/dt.img -s 2048 -p outputf400/scripts/dtc/ outputf400/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputls990/arch/arm/boot/dt.img -s 2048 -p outputls990/scripts/dtc/ outputls990/arch/arm/boot/

./tools_crazy/dtbToolCM -o outputvs985/arch/arm/boot/dt.img -s 2048 -p outputvs985/scripts/dtc/ outputvs985/arch/arm/boot/
