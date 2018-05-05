LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE    := liblmbench

#LOCAL_SHARED_LIBRARIES := libc libcutils
LOCAL_STATIC_LIBRARIES := libc libcutils 

# LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_C_INCLUDES := $(INCLUDES)

LOCAL_SRC_FILES := lib_timing.c 
# LOCAL_SRC_FILES += lib_tcp.c 
# LOCAL_SRC_FILES += lib_udp.c 
LOCAL_SRC_FILES += lib_unix.c 
LOCAL_SRC_FILES += lib_mem.c 
LOCAL_SRC_FILES += lib_stats.c 
LOCAL_SRC_FILES += lib_debug.c 
LOCAL_SRC_FILES += getopt.c 
LOCAL_SRC_FILES += lib_sched.c 

LOCAL_PRELINK_MODULE := false
#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_CFLAGS := -O0 -fmessage-length=0 -mlittle-endian -march=armv7-a -mtune=cortex-a9  --static
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := bw_file_rd 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := bw_file_rd.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := bw_mem 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := bw_mem.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := bw_mmap_rd 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := bw_mmap_rd.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := bw_pipe 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := bw_pipe.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


# include $(CLEAR_VARS)

# LOCAL_CFLAGS := $(L_CFLAGS) 
# LOCAL_C_INCLUDES := $(INCLUDES)
# LOCAL_MODULE    := bw_tcp 
# LOCAL_MODULE_TAGS := optional
# LOCAL_SRC_FILES := bw_tcp.c
# LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
# include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := bw_unix 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := bw_unix.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := hello 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := hello.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


#include $(CLEAR_VARS)

#LOCAL_CFLAGS := $(L_CFLAGS) 
#LOCAL_C_INCLUDES := $(INCLUDES)
#LOCAL_MODULE    := lat_select 
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := lat_select.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
#include $(BUILD_EXECUTABLE)


#include $(CLEAR_VARS)

#LOCAL_CFLAGS := $(L_CFLAGS) 
#LOCAL_C_INCLUDES := $(INCLUDES)
#LOCAL_MODULE    := lat_pipe 
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := lat_pipe.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
#include $(BUILD_EXECUTABLE)



include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_syscall 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_syscall.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


# include $(CLEAR_VARS)

# LOCAL_CFLAGS := $(L_CFLAGS) 
# LOCAL_C_INCLUDES := $(INCLUDES)
# LOCAL_MODULE    := lat_tcp 
# LOCAL_MODULE_TAGS := optional
# LOCAL_SRC_FILES := lat_tcp.c
# LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
# include $(BUILD_EXECUTABLE)


# include $(CLEAR_VARS)

# LOCAL_CFLAGS := $(L_CFLAGS) 
# LOCAL_C_INCLUDES := $(INCLUDES)
# LOCAL_MODULE    := lat_udp 
# LOCAL_MODULE_TAGS := optional
# LOCAL_SRC_FILES := lat_udp.c
# LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
# include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_mmap 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_mmap.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := mhz 
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := mhz.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_proc 
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := lat_proc.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_pagefault 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_pagefault.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


#include $(CLEAR_VARS)

#LOCAL_CFLAGS := $(L_CFLAGS) 
#LOCAL_C_INCLUDES := $(INCLUDES)
#LOCAL_MODULE    := lat_connect 
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := lat_connect.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
#include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_fs 
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := lat_fs.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_sig 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_sig.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_mem_rd 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_mem_rd.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_ctx 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_ctx.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := memsize 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := memsize.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_unix 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_unix.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lmdd 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lmdd.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := timing_o 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := timing_o.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := enough 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := enough.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := msleep 
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := msleep.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := loop_o 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := loop_o.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_fifo 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_fifo.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


#include $(CLEAR_VARS)

#LOCAL_CFLAGS := $(L_CFLAGS) 
#LOCAL_C_INCLUDES := $(INCLUDES)
#LOCAL_MODULE    := lmhttp 
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := lmhttp.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
#include $(BUILD_EXECUTABLE)


#include $(CLEAR_VARS)

#LOCAL_CFLAGS := $(L_CFLAGS) 
#LOCAL_C_INCLUDES := $(INCLUDES)
#LOCAL_MODULE    := lat_http 
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := lat_http.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
#include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_fcntl 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_fcntl.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := disk 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := disk.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_unix_connect 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_unix_connect.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


#include $(CLEAR_VARS)

#LOCAL_CFLAGS := $(L_CFLAGS) 
#LOCAL_C_INCLUDES := $(INCLUDES)
#LOCAL_MODULE    := flushdisk 
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := flushdisk.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
#include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_ops 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_ops.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := line 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := line.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := tlb 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := tlb.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := par_mem 
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := par_mem.c
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := par_ops 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := par_ops.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lmstream 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := stream.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := cache 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := cache.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_dram_page 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_dram_page.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_pmake 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_pmake.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_rand 
LOCAL_MODULE_TAGS := lat_rand
LOCAL_SRC_FILES := stream.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_usleep 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_usleep.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lat_cmd 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lat_cmd.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_STATIC_LIBRARIES := libc libcutils liblmbench
include $(BUILD_EXECUTABLE)

