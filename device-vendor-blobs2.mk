# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so

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

# Audio
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
    device/htc/glacier/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so

# Misc
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/lib/libwvdrm_L3.so:system/lib/libwvdrm_L3.so \
    device/htc/glacier/prebuilt/lib/libwvm.so:system/lib/libwvm.so \
    device/htc/glacier/prebuilt/lib/libwebkitaccel.so:system/lib/libwebkitaccel.so \
    device/htc/glacier/prebuilt/lib/libWVStreamControlAPI_L3.so:system/lib/libWVStreamControlAPI_L3.so

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/glacier/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/glacier/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/htc/glacier/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/glacier/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw
