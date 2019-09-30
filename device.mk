LOCAL_PATH := device/kogan/agora_6plus

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += $(TARGET_PREBUILT_KERNEL):kernel


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)


#TODO
# Audio
USE_XML_AUDIO_POLICY_CONF := 1
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml

#TODO: Add media hal definition
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.common.rc \
    $(LOCAL_PATH)/rootdir/init.common.rc:root/init.mt6755.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6755.usb.rc:root/init.mt6755.usb.rc \
    $(LOCAL_PATH)/rootdir/fstab.mt6755:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6755 \
    $(LOCAL_PATH)/rootdir/fstab.mt6755:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.mt6755 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6755.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.mt6755.usb.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/meta_init.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6755.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.mt6755.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.recovery.common.rc:recovery/root/init.recovery.mt6755.rc


# Gatekeeper
#PRODUCT_PACKAGES += \
#    android.hardware.gatekeeper@1.0-impl

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

#TODO
# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Common stuff
$(call inherit-product, $(LOCAL_PATH)/platform/common.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/permissions.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/media.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/wifi.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/telephony.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/google_override.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/debug_boot.mk)

#TODO: Add vendor files
# Vendor
$(call inherit-product, vendor/kogan/agora_6plus/agora_6plus-vendor.mk)
