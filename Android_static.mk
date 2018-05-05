LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE    := liblmbench

#LOCAL_SHARED_LIBRARIES := libc libcutils
LOCAL_CFLAGS := $(L_CFLAGS)
LOCAL_C_INCLUDES := $(INCLUDES)

LOCAL_SRC_FILES := \
	src/lib_timing.c 		\
	src/lib_unix.c  		\
	src/lib_mem.c 			\
	src/lib_stats.c 		\
	src/lib_debug.c 		\
	src/getopt.c  			\
	src/lib_sched.c 

LOCAL_PRELINK_MODULE := false
LOCAL_STATIC_LIBRARIES := libc libcutils
LOCAL_MODULE_PATH := $(TARGET_OUT)../system/lmbench/bin/armv7-linux
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_CFLAGS := -O0 -fmessage-length=0 -mlittle-endian -march=armv7-a -mtune=cortex-a9
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := bw_file_rd 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := src/bw_file_rd.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := liblmbench libc libm libcutils
LOCAL_MODULE_PATH := $(TARGET_OUT)/lmbench/bin/armv7-linux
include $(BUILD_EXECUTABLE)



include $(CLEAR_VARS)

LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE    := lmstream 
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := src/stream.c
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := liblmbench libc libm libcutils
LOCAL_MODULE_PATH := $(TARGET_OUT)/lmbench/bin/armv7-linux
include $(BUILD_EXECUTABLE)



include $(CLEAR_VARS)
LMB_MODULES := lat_cmd 	lat_usleep  	lat_rand  	lat_pmake 	lat_dram_page \
			cache    par_ops  			par_mem 		tlb  				line  lat_ops \
			lat_unix_connect 		disk  			lat_fcntl					\
			lat_fifo		loop_o  	msleep			enough		timing_o		lmdd  \
			lat_sig  lat_mem_rd  lat_ctx  memsize   lat_unix  lat_proc  lat_pagefault \
			lat_fs  lat_syscall  lat_mmap  mhz  lat_pipe \
			hello bw_unix bw_pipe  bw_mmap_rd  bw_mem    				
$(foreach LMBAPP, $(LMB_MODULES),$(eval include $(LOCAL_PATH)/module.mk))
