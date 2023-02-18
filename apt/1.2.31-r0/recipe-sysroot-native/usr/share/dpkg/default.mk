# Include all the Makefiles that define variables that can be useful
# within debian/rules

dpkg_datadir = /home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0/recipe-sysroot-native/usr/share/dpkg
include $(dpkg_datadir)/architecture.mk
include $(dpkg_datadir)/buildflags.mk
include $(dpkg_datadir)/pkg-info.mk
include $(dpkg_datadir)/vendor.mk
