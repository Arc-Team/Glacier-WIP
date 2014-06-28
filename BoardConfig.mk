# Vendor
BOARD_VENDOR := htc
TARGET_SPECIFIC_HEADER_PATH := device/htc/glacier/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm7x30
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_LOWMEM := true
TARGET_CPU_VARIANT := scorpion

# Kernel
BOARD_KERNEL_BASE := 0x04000000
BOARD_KERNEL_PAGE_SIZE := 4096
BOARD_KERNEL_CMDLINE := no_console_suspend=1
TARGET_KERNEL_SOURCE := kernel/htc/glacier
TARGET_KERNEL_CONFIG := evervolv_glacier_defconfig
TARGET_KERNEL_NO_MODULES := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := glacier
TARGET_QCOM_GPS_VARIANT := glacier
#TARGET_QCOM_MEDIA_VARIANT := glacier
TARGET_PROVIDES_LIBLIGHT := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Audio
BOARD_HAVE_HTC_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/glacier/bluetooth/vnd_msm7x30.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/htc/glacier/bluetooth/include

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := glacier
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_ION := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_CFG := device/htc/glacier/prebuilt/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK 
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW

# Camera
BOARD_HAVE_HTC_FFC := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_PMEM_ADSP := true
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB 
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Wifi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Bootanimacion
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Recovery
USE_SET_METADATA := false
TARGET_RECOVERY_INITRC := device/htc/glacier/recovery/init.rc
ifeq ($(RECOVERY_BUILD),)
    TARGET_RECOVERY_FSTAB = device/htc/glacier/ramdisk/etc/fstab.glacier
else
    TARGET_RECOVERY_FSTAB = device/htc/glacier/recovery/recovery.fstab
endif

# CWM
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

# TWRP
DEVICE_RESOLUTION := 480x800
TW_NO_SCREEN_BLANK := true
#HAVE_SELINUX := true
#TW_INCLUDE_DUMLOCK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Libril
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_USES_LEGACY_RIL := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# OpenGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Trackpad
BOARD_USE_LEGACY_TRACKPAD := true

# SELinux
BOARD_SEPOLICY_DIRS += device/htc/glacier/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file.te \
    file_contexts \
    files \
    hci_init.te \
    healthd.te \
    init.te \
    init_shell.te \
    keystore.te \
    kickstart.te \
    mediaserver.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    untrusted_app.te \
    vold.te \
    wpa.te \
    wpa_socket.te

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/glacier/overlay

# Device-Settings
BOARD_DEVICE_SETTINGS := device/htc/glacier/DeviceSettings

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
