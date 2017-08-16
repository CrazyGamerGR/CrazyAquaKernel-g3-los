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
export CROSS_COMPILE=/home/francesco/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
##########################################
mkdir outputd850
mkdir outputd851
mkdir outputd855
mkdir outputf400
mkdir outputls990
mkdir outputvs985
##########################################
make -C $(pwd) O=outputd850 lineageos_d850_defconfig 
make -j64 -C $(pwd) O=outputd850

make -C $(pwd) O=outputd851 lineageos_d851_defconfig 
make -j64 -C $(pwd) O=outputd851

make -C $(pwd) O=outputd855 lineageos_d855_defconfig 
make -j64 -C $(pwd) O=outputd855

make -C $(pwd) O=outputf400 lineageos_f400_defconfig 
make -j64 -C $(pwd) O=outputf400

make -C $(pwd) O=outputls990 lineageos_ls990_defconfig 
make -j64 -C $(pwd) O=outputls990

make -C $(pwd) O=outputvs985 lineageos_vs985_defconfig 
make -j64 -C $(pwd) O=outputvs985
##########################################
cp outputd850/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd851/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd855/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputf400/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputls990/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputvs985/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
##########################################
chmod 777 tools_crazy/dtbToolCM
##########################################
tools_crazy/dtbToolCM -2 -o outputd850/arch/arm/boot/dt.img -s 2048 -p outputd850/scripts/dtc/ outputd850/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd851/arch/arm/boot/dt.img -s 2048 -p outputd851/scripts/dtc/ outputd851/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd855/arch/arm/boot/dt.img -s 2048 -p outputd855/scripts/dtc/ outputd855/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputf400/arch/arm/boot/dt.img -s 2048 -p outputf400/scripts/dtc/ outputf400/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputls990/arch/arm/boot/dt.img -s 2048 -p outputls990/scripts/dtc/ outputls990/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputvs985/arch/arm/boot/dt.img -s 2048 -p outputvs985/scripts/dtc/ outputvs985/arch/arm/boot/
##########################################
cp outputd850/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D850/zImage

cp outputd850/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D850/dtb

cp outputd851/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D851/zImage

cp outputd851/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D851/dtb

cp outputd855/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D855/zImage

cp outputd855/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D855/dtb

cp outputf400/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-F400/zImage

cp outputf400/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-F400/dtb

cp outputls990/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-LS990/zImage

cp outputls990/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-LS990/dtb

cp outputvs985/arch/arm/boot/zImage /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-VS985/zImage

cp outputvs985/arch/arm/boot/dt.img /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-VS985/dtb
##########################################
cd /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D850
zip -r9 CrazyAquaKernel-CM14.1-V1.0-D850.zip * -x CrazyAquaKernel-CM14.1-V1.0-D850.zip

cd /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D851
zip -r9 CrazyAquaKernel-CM14.1-V1.0-D851.zip * -x CrazyAquaKernel-CM14.1-V1.0-D851.zip

cd /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-D855
zip -r9 CrazyAquaKernel-CM14.1-V1.0-D855.zip * -x CrazyAquaKernel-CM14.1-V1.0-D855.zip

cd /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-F400
zip -r9 CrazyAquaKernel-CM14.1-V1.0-F400.zip * -x CrazyAquaKernel-CM14.1-V1.0-F400.zip

cd /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-LS990
zip -r9 CrazyAquaKernel-CM14.1-V1.0-LS990.zip * -x CrazyAquaKernel-CM14.1-V1.0-LS990.zip

cd /home/francesco/CrazyAquaKernel_g3_CM14/CrazyAquaKernel-CM14.1-V1.0-VS985
zip -r9 CrazyAquaKernel-CM14.1-V1.0-VS985.zip * -x CrazyAquaKernel-CM14.1-V1.0-VS985.zip
