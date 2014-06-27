# CM Stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device Stuff
$(call inherit-product, device/htc/glacier/glacier.mk)

# Release Name
PRODUCT_RELEASE_NAME := glacier

# Bootanimation
TARGET_BOOTANIMATION_NAME := 480

# Device Naming
PRODUCT_DEVICE := glacier
PRODUCT_NAME := cm_glacier
PRODUCT_BRAND := htc
PRODUCT_MODEL := MyTouch 4G
PRODUCT_MANUFACTURER := HTC

# Set Build Bingerprint / ID / Product Name
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_glacier BUILD_FINGERPRINT=tmous/htc_glacier/glacier:4.2.2/JDQ39/95282.1:user/release-keys PRIVATE_BUILD_DESC="2.19.531.1 CL95282 release-keys"
