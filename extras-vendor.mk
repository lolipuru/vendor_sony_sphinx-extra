PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extras

PRODUCT_PACKAGES += \
    SomcPhotoPro \
    com.sony.device \
    com.sony.idd_dummy

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/privapp-permissions-sony.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-sony.xml

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/sony
