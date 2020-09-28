LOCAL_PATH := $(call my-dir)

ifneq ($(filter c2q, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
