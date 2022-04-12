# Minimal Raspberrypi3b image

This the minimal boot file system built from scratch 

## steps 
1. build u-boot
2. build kernel
3. build rootfilesystem
  
> ## u-boot stage 

First of all need to install dependencies for u-boot 
 
```
sudo apt -y install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf
sudo apt-get -y install bison flex bc libssl-dev make gcc 
```

then go through download source code 

`
git clone https://github.com/u-boot/u-boot.git
`
then got through directory 

` cd u-boot
`

go to configs file and check the version you have and apply the default for example in my case for raspberry pi3-b 

```
make rpi_3_32b_defconfig ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-

```

Adjust your settings through menuconfig 
---

```
make menuconfig ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
```

Then run make to build the binary 
---

```
make -j 6 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-

```



