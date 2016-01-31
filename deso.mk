# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Desolation stuff.
$(call inherit-product, vendor/deso/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/deso/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

# Setup device specific product configuration.
PRODUCT_NAME := deso_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT="google/angler/angler:6.0.1/MMB29P/2473553:user/release-keys" \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29P 2473553 release-keys"
