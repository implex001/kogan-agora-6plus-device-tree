LOCAL_PATH := device/kogan/agora_6plus/platform

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/prebuilt/etc/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/prebuilt/etc/spn-conf.xml:system/etc/spn-conf.xml

# Messaging
PRODUCT_PACKAGES += \
    messaging
