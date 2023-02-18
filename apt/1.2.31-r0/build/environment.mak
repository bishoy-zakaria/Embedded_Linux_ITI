# This file contains everything that autoconf guessed for your system.
# if you want you can edit it, just don't re-run configure.

PACKAGE = apt
PACKAGE_VERSION = 1.2.31
PACKAGE_MAIL = APT Development Team <deity@lists.debian.org>

# C++ compiler options
CC = arm-poky-linux-gnueabi-gcc  -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=/home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0/recipe-sysroot
CPPFLAGS+=  -DHAVE_CONFIG_H -D_REENTRANT -D_FORTIFY_SOURCE=2
CXX = arm-poky-linux-gnueabi-g++  -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=/home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0/recipe-sysroot
CXXSTD = -std=c++11
CXXFLAGS+=  -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=/home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0=/usr/src/debug/apt/1.2.31-r0                      -fdebug-prefix-map=/home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0=/usr/src/debug/apt/1.2.31-r0                      -fdebug-prefix-map=/home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0/recipe-sysroot=                      -fdebug-prefix-map=/home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0/recipe-sysroot-native=  -fvisibility-inlines-hidden -fno-strict-aliasing -Wall -Wextra
CXXFLAGS+= -Wcast-align -Wlogical-op -Wredundant-decls -Wmissing-declarations -Wunsafe-loop-optimizations
CXXFLAGS+= -Wctor-dtor-privacy -Wdisabled-optimization -Winit-self -Wmissing-include-dirs -Wnoexcept -Wsign-promo -Wundef
# suggests methods which already have such an attribute
#CXXFLAGS+= -Wsuggest-attribute=pure -Wsuggest-attribute=const -Wsuggest-attribute=noreturn
# sanitize options to be enabled for testing
#CXXFLAGS+= -fsanitize=address -fsanitize=undefined -fno-sanitize=vptr
# a bit too pedantic to be run by default
#CXXFLAGS+= -Wpedantic -Wno-long-long -Wno-vla -Wno-variadic-macros
NUM_PROCS = 16

# Linker stuff
PICFLAGS+= -fPIC -DPIC
LFLAGS+= -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -fstack-protector-strong -Wl,-z,relro,-z,now
LEFLAGS+= 
SOCKETLIBS:= 
AR:=arm-poky-linux-gnueabi-gcc-ar
RANLIB:=arm-poky-linux-gnueabi-gcc-ranlib

# Dep generation - this only works for gnu stuff
GCC3DEP = yes
INLINEDEPFLAG = -MD

DOXYGEN = 
W3M = 

# xsltproc for the man pages and documentation
XSLTPROC := 

# DocBook XML
DOCBOOK = $(XSLTPROC) --nonet --novalid --xinclude
DOCBOOK2TEXT = $(W3M) -o display_charset=UTF-8 -no-graph -T text/html \
	-cols 78 -dump

# po4a for the man pages
PO4A := 

# Gettext settings
GMSGFMT = /home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0/recipe-sysroot-native/usr/bin/msgfmt
XGETTEXT = /home/bishoy/Desktop/sources/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/apt/1.2.31-r0/recipe-sysroot-native/usr/bin/xgettext
MSGCOMM:=$(dir $(XGETTEXT))/msgcomm
MSGMERGE:=$(dir $(XGETTEXT))/msgmerge
BASH = /bin/bash

# Various library checks
PTHREADLIB = 
PYTHONLIB = @PYTHONLIB@
PYTHONVER = @PYTHONVER@
PYTHONPREFIX = @PYTHONPREFIX@
PYTHONEXECPREFIX = @PYTHONEXECPREFIX@
PYTHONINCLUDE = @PYTHONINCLUDE@
BDBLIB = -ldb
INTLLIBS = 

# Shim Headerfile control
HAVE_STATVFS = yes
HAVE_ZLIB = yes
HAVE_BZ2 = no
HAVE_LZMA = yes
HAVE_LZ4 = no
NEED_SOCKLEN_T_DEFINE = 

# Shared library things
HOST_OS = linux-gnueabi
ifneq ($(words $(filter gnu% linux-gnu% kfreebsd-gnu% %-gnu linux-musl%,$(HOST_OS))),0)
   SONAME_MAGIC=-Wl,-soname -Wl,
   LFLAGS_SO=
else
   # Do not know how to create shared libraries here.
   ONLYSTATICLIBS = yes
endif
