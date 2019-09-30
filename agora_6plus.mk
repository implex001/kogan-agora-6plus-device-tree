# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/kogan/agora_6plus/device.mk)

TARGET_PREBUILT_KERNEL := device/kogan/agora_6plus-kernel/Image.gz-dtb

PRODUCT_NAME := agora_6plus
PRODUCT_DEVICE := agora_6plus
PRODUCT_BRAND := Kogan
PRODUCT_MODEL := Kogan Agora 6Plus
PRODUCT_MANUFACTURER := Kogan
PRODUCT_RESTRICT_VENDOR_FILES := false

