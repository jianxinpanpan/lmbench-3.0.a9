include $(CLEAR_VARS)
LOCAL_CFLAGS := $(L_CFLAGS) 
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE := $(LMBAPP)
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := src/$(LMBAPP).c
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := liblmbench libc libm libcutils
#LOCAL_SHARED_LIBRARIES := libc libcutils liblmbench
LOCAL_MODULE_PATH := $(TARGET_OUT)/../system/lmbench/bin/armv7-linux
include $(BUILD_EXECUTABLE)
