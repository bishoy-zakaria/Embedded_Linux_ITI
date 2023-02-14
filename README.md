# Embedded_Linux_ITI

Build an image for raspberrypi3 using Yocto project

## steps 
1. download dependencies 
2. download poky
3. download recepies 
4. initialize the project
5. configure the image 
6. build the image
7. extract the image to the SD-card

 > ## download dependencies stage
 First you need to install the following dependencies
```
sudo apt-get install build-essential bison flex make libncurses5-dev chrpath diffstat gawk git zstd python3-distutils lz4
```

make directory for all the files (for example)"sources"
```
mkdir sources
cd sources
```

 > ## download poky stage
you need to clone poky
```
git clone git://git.yoctoproject.org/poky.git -b dunfell
```

 > ## download recepies stage
you need to clone meta-raspberrypi recipe 
```
git clone git://git.yoctoproject.org/meta-raspberrypi.git -b dunfell
```
and clone meta-openembedded recipe 
```
git clone git://git.openembedded.org/meta-openembedded -b dunfell
```

Now get inside "poky" directory
```
cd poky
```

 > ## initialize the project stage
 you need to initialize the enviroment of the project to generate "build" directory
 ```
 source oe-init-build-env
 ```
 
 then you must add the other layers to your project by adding their apsolute path to "bblayers.conf" file
 ```
 gedit conf/bblayers.conf
 ```
 
 ```
 BBLAYERS ?= " \
  /home/bishoy/Desktop/sources/poky/meta \
  /home/bishoy/Desktop/sources/poky/meta-poky \
  /home/bishoy/Desktop/sources/poky/meta-yocto-bsp \
  /home/bishoy/Desktop/sources/meta-raspberrypi \
  /home/bishoy/Desktop/sources/meta-openembedded/meta-oe \
  /home/bishoy/Desktop/sources/meta-openembedded/meta-python \
  /home/bishoy/Desktop/sources/meta-openembedded/meta-multimedia \
  /home/bishoy/Desktop/sources/meta-openembedded/meta-networking \
  "
 ```
 
then configure the machine to "raspberrypi3" in "local.conf" file

```
gedit conf/local.conf
```

```
MACHINE ?= "raspberrypi3"
```

finally configure the output file system type to "sd-image" to generate image for your SD-card 
```
IMAGE_FSTYPES = "tar.xz ext3 rpi-sdimg"
```

 > ## build the image stage
 Now you are ready to build your image
 ```
 bitbake core-image-base
 ```
 
 > ## extract the image to the SD-card
 After the build of the project finish successfully you will find your image in path "/home/bishoy/Desktop/sources/poky/build/tmp/deploy/images/raspberrypi3/"  
 to extract it to your SD card you simply can use "dd" comand but firstly you must get your sd-card id carfully and this is important to not remove another partion or disk
 
```
cd /home/bishoy/Desktop/sources/poky/build/tmp/deploy/images/raspberrypi3/
```
 
to know your sd-card id you can use command
```
lsblk
```
 
```
 sudo dd if=core-image-minimal-raspberrypi3.rpi-sdimg of=/dev/sdb
```
