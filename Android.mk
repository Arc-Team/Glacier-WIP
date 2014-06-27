
ifeq ($(TARGET_DEVICE),glacier)
    include $(call all-makefiles-under,$(call my-dir))
endif
