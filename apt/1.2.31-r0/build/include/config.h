/* include/config.h.  Generated from config.h.in by configure.  */
/* Define if your processor stores words with the most significant
   byte first (like Motorola and SPARC, unlike Intel and VAX).  */
/* #undef WORDS_BIGENDIAN */

/* Define if we have the timegm() function */
#define HAVE_TIMEGM 1

/* Define if we have the zlib library for gzip */
#define HAVE_ZLIB 1

/* Define if we have the bz2 library for bzip2 */
/* #undef HAVE_BZ2 */

/* Define if we have the lzma library for lzma/xz */
#define HAVE_LZMA 1

/* Define if we have the lz4 library for lz4 */
/* #undef HAVE_LZ4 */

/* These two are used by the statvfs shim for glibc2.0 and bsd */
/* Define if we have sys/vfs.h */
/* #undef HAVE_VFS_H */
#define HAVE_STRUCT_STATFS_F_TYPE 1

/* Define if we have sys/mount.h */
/* #undef HAVE_MOUNT_H */

/* Define if we have enabled pthread support */
/* #undef HAVE_PTHREAD */

/* If there is no socklen_t, define this for the netdb shim */
/* #undef NEED_SOCKLEN_T_DEFINE */

/* Check for getresuid() function and similar ones */
#define HAVE_GETRESUID 1
#define HAVE_GETRESGID 1
#define HAVE_SETRESUID 1
#define HAVE_SETRESGID 1

/* Check for ptsname_r() */
/* #undef HAVE_PTSNAME_R */

/* Define to the size of the filesize containing structures */
#define _FILE_OFFSET_BITS 64

/* Define the arch name string */
#define COMMON_ARCH "arm"

/* The package name string */
#define PACKAGE "apt"

/* The version number string */
#define PACKAGE_VERSION "1.2.31"

/* The mail address to reach upstream */
#define PACKAGE_MAIL "APT Development Team <deity@lists.debian.org>"

#define APT_8_CLEANER_HEADERS
#define APT_9_CLEANER_HEADERS
#define APT_10_CLEANER_HEADERS

/* unrolling is faster combined with an optimizing compiler */
#define SHA2_UNROLL_TRANSFORM
