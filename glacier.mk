# Inherit
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    libaudioutils

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30

# OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc

# MSM7x30
PRODUCT_PACKAGES += \
    lights.msm7x30 \
    sensors.msm7x30 \
    power.msm7x30 \
    gps.glacier

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    libnetcmdiface \
    com.android.future.usb.accessory \
    libsurfaceflinger_client

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Prebuilt
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
    device/htc/glacier/prebuilt/lib/libqc-opt.so:obj/lib/libqc-opt.so \
    device/htc/glacier/prebuilt/lib/libv8.so:obj/lib/libv8.so

# Binary
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/bin/akmd:system/bin/akmd \
    device/htc/glacier/prebuilt/bin/awb_camera:system/bin/awb_camera \
    device/htc/glacier/prebuilt/bin/lsc_camera:system/bin/lsc_camera \
    device/htc/glacier/prebuilt/bin/rmt_storage:system/bin/rmt_storage

# GPS / MEDIA
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/htc/glacier/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/glacier/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Sound Configs
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/etc/A1026_CFG.csv:system/etc/A1026_CFG.csv \
    device/htc/glacier/prebuilt/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/glacier/prebuilt/etc/AdieHWCodec_WA.csv:system/etc/AdieHWCodec_WA.csv \
    device/htc/glacier/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/glacier/prebuilt/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/glacier/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/glacier/prebuilt/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/etc/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/glacier/prebuilt/etc/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/glacier/prebuilt/etc/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/glacier/prebuilt/etc/firmware/default_org_WA.acdb:system/etc/firmware/default_org_WA.acdb \
    device/htc/glacier/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/glacier/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/glacier/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Adreno
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/glacier/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/glacier/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/glacier/prebuilt/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/glacier/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/glacier/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/glacier/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/glacier/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/glacier/prebuilt/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/htc/glacier/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/htc/glacier/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so

# Audio
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
    device/htc/glacier/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so

# Camera
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/htc/glacier/prebuilt/lib/libcameraface.so:system/lib/libcameraface.so \
    device/htc/glacier/prebuilt/lib/libposteffect.so:system/lib/libposteffect.so \
    device/htc/glacier/prebuilt/lib/libcamerapp.so:system/lib/libcamerapp.so \
    device/htc/glacier/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/htc/glacier/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/htc/glacier/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/htc/glacier/prebuilt/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    device/htc/glacier/prebuilt/lib/hw/camera.default.so:system/lib/hw/camera.default.so

# Misc
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \
    device/htc/glacier/prebuilt/lib/libDivxDrm.so:system/lib/libDivxDrm.so \
    device/htc/glacier/prebuilt/lib/libWVStreamControlAPI_L3.so:system/lib/libWVStreamControlAPI_L3.so \
    device/htc/glacier/prebuilt/lib/libchromatix_s5k4e1gx_default_video.so:system/lib/libchromatix_s5k4e1gx_default_video.so \
    device/htc/glacier/prebuilt/lib/libchromatix_s5k4e1gx_preview.so:system/lib/libchromatix_s5k4e1gx_preview.so \
    device/htc/glacier/prebuilt/lib/libcneapiclient.so:system/lib/libcneapiclient.so \
    device/htc/glacier/prebuilt/lib/libcneqmiutils.so:system/lib/libcneqmiutils.so \
    device/htc/glacier/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/htc/glacier/prebuilt/lib/libdnshostprio.so:system/lib/libdnshostprio.so \
    device/htc/glacier/prebuilt/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/glacier/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/htc/glacier/prebuilt/lib/libmmosal.so:system/lib/libmmosal.so \
    device/htc/glacier/prebuilt/lib/libmmparser.so:system/lib/libmmparser.so \
    device/htc/glacier/prebuilt/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    device/htc/glacier/prebuilt/lib/libnetmonitor.so:system/lib/libnetmonitor.so \
    device/htc/glacier/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/htc/glacier/prebuilt/lib/libtcpfinaggr.so:system/lib/libtcpfinaggr.so \
    device/htc/glacier/prebuilt/lib/libv8.so:system/lib/libv8.so \
    device/htc/glacier/prebuilt/lib/libwebkitaccel.so:system/lib/libwebkitaccel.so \
    device/htc/glacier/prebuilt/lib/libwvdrm_L3.so:system/lib/libwvdrm_L3.so \
    device/htc/glacier/prebuilt/lib/libwvm.so:system/lib/libwvm.so \
    device/htc/glacier/prebuilt/lib/pp_proc_plugin.so:system/lib/pp_proc_plugin.so \
    device/htc/glacier/prebuilt/lib/qnet-plugin.so:system/lib/qnet-plugin.so \
    device/htc/glacier/prebuilt/lib/tcp-connections.so:system/lib/tcp-connections.so

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/usr/keychars/glacier-keypad.kcm.bin:system/usr/keychars/glacier-keypad.kcm.bin \
    device/htc/glacier/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/glacier/prebuilt/usr/keylayout/glacier-keypad.kl:system/usr/keylayout/glacier-keypad.kl

# Input Device Config
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/glacier/prebuilt/usr/idc/glacier-keypad.idc:system/usr/idc/glacier-keypad.idc \
    device/htc/glacier/prebuilt/usr/idc/curcial-oj.idc:system/usr/idc/curcial-oj.idc

# Device Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=4.0_r1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.zygote.disable_gl_preload=true \
    ro.config.low_ram=true \
    persist.sys.usb.config=mass_storage,adb \
    ro.sys.fw.bg_apps_limit=12 \
    com.qc.hardware=true \
    ro.sf.lcd_density=240 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=255 \
    debug.egl.hw=1 \
    debug.sf.hw=1 \
    debug.mdpcomp.logs=0 \
    dev.pm.dyn_samplingrate=1 \
    ro.opengles.version=131072 \
    ro.telephony.ril.v3=signalstrengthgsm \
    ro.vold.umsdirtyratio=20 \
    ro.zram.default=18 \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=0 \
    media.a1026.nsForVoiceRec=0 \
    media.a1026.enableA1026=1

# Device Tags
PRODUCT_TAGS += dalvik.gc.type-precise

# Device Density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
