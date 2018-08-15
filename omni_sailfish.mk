# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/marlin/device-omni.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:8.1.0/OPM1.171019.016/4503492:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM1.171019.016 4503492 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
