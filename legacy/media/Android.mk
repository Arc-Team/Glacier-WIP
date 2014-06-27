ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),glacier)
	ifeq ($(filter qsd8k,$(TARGET_BOARD_PLATFORM)),)
	        include $(call all-subdir-makefiles)
	endif
endif
