# Inherit some common stuff.
$(call inherit-product, vendor/deso/config/common_full_phone.mk)
$(call inherit-product, vendor/deso/config/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/deso/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := angler
PRODUCT_NAME := deso_angler
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Angler
PRODUCT_MANUFACTURER := huawei

TARGET_GCC_VERSION_ARM64 := 4.9
# TARGET_GCC_VERSION_EXP := 4.9
