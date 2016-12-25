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
mkdir outputd850
mkdir outputd851
mkdir outputd852
mkdir outputd855
mkdir outputf400
mkdir outputls990
mkdir outputvs985
##########################################
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
##########################################
cp outputd850/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd851/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd852/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputd855/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputf400/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputls990/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
cp outputvs985/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
##########################################
chmod 777 tools_crazy/dtbToolCM
##########################################
tools_crazy/dtbToolCM -2 -o outputd850/arch/arm/boot/dt.img -s 2048 -p outputd850/scripts/dtc/ outputd850/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd851/arch/arm/boot/dt.img -s 2048 -p outputd851/scripts/dtc/ outputd851/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd852/arch/arm/boot/dt.img -s 2048 -p outputd852/scripts/dtc/ outputd852/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputd855/arch/arm/boot/dt.img -s 2048 -p outputd855/scripts/dtc/ outputd855/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputf400/arch/arm/boot/dt.img -s 2048 -p outputf400/scripts/dtc/ outputf400/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputls990/arch/arm/boot/dt.img -s 2048 -p outputls990/scripts/dtc/ outputls990/arch/arm/boot/

tools_crazy/dtbToolCM -2 -o outputvs985/arch/arm/boot/dt.img -s 2048 -p outputvs985/scripts/dtc/ outputvs985/arch/arm/boot/
##########################################
cp outputd850/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D850/zImage

cp outputd850/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D850/dtb

cp outputd851/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D851/zImage

cp outputd851/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D851/dtb

cp outputd852/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D852/zImage

cp outputd852/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D852/dtb

cp outputd855/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D855/zImage

cp outputd855/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D855/dtb

cp outputf400/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-F400/zImage

cp outputf400/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-F400/dtb

cp outputls990/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-LS990/zImage

cp outputls990/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-LS990/dtb

cp outputvs985/arch/arm/boot/zImage /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-VS985/zImage

cp outputvs985/arch/arm/boot/dt.img /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-VS985/dtb
##########################################
cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D850
zip -r9 CrazySuperKernel-CM14.1-V6.0-D850.zip * -x CrazySuperKernel-CM14.1-V6.0-D850.zip

cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D851
zip -r9 CrazySuperKernel-CM14.1-V6.0-D851.zip * -x CrazySuperKernel-CM14.1-V6.0-D851.zip

cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D852
zip -r9 CrazySuperKernel-CM14.1-V6.0-D852.zip * -x CrazySuperKernel-CM14.1-V6.0-D852.zip

cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-D855
zip -r9 CrazySuperKernel-CM14.1-V6.0-D855.zip * -x CrazySuperKernel-CM14.1-V6.0-D855.zip

cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-F400
zip -r9 CrazySuperKernel-CM14.1-V6.0-F400.zip * -x CrazySuperKernel-CM14.1-V6.0-F400.zip

cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-LS990
zip -r9 CrazySuperKernel-CM14.1-V6.0-LS990.zip * -x CrazySuperKernel-CM14.1-V6.0-LS990.zip

cd /home/francesco/CrazySuperKernel_g3_CM14/CrazySuperKernel-CM14.1-V1.0-VS985
zip -r9 CrazySuperKernel-CM14.1-V6.0-VS985.zip * -x CrazySuperKernel-CM14.1-V6.0-VS985.zip
