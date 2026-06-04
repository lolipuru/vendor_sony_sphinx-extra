#
# Automatically generated file. DO NOT MODIFY
#

PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extras/camera

PRODUCT_COPY_FILES += \
    vendor/sony/extras/camera/proprietary/product/etc/permissions/com.sonymobile.camera.addon.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.sonymobile.camera.addon.xml \
    vendor/sony/extras/camera/proprietary/system/etc/init/cacaoserver.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/cacaoserver.rc \
    vendor/sony/extras/camera/proprietary/system/etc/permissions/com.sony.device.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sony.device.xml \
    vendor/sony/extras/camera/proprietary/system/etc/permissions/com.sonyericsson.idd.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.idd.xml \
    vendor/sony/extras/camera/proprietary/system/etc/permissions/com.sonymobile.credentialmanager.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.credentialmanager.xml \
    vendor/sony/extras/camera/proprietary/system/etc/permissions/com.sonymobile.devicesecurity.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.devicesecurity.xml \
    vendor/sony/extras/camera/proprietary/system/etc/permissions/com.sonymobile.imageprocessor.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.imageprocessor.xml \
    vendor/sony/extras/camera/proprietary/system/etc/permissions/privapp-permissions-sony.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-sony.xml \
    vendor/sony/extras/camera/proprietary/system/framework/com.sony.device.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sony.device.jar \
    vendor/sony/extras/camera/proprietary/system/framework/com.sonyericsson.idd_impl.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.idd_impl.jar

PRODUCT_PACKAGES += \
    libcacao_client \
    libcacao_pal \
    libimageprocessorjni \
    libcacao_process_ctrl_gateway \
    libcacao_service \
    vendor.somc.hardware.camera.cacao@1.0-system \
    vendor.somc.hardware.camera.cacao@2.0-system \
    vendor.somc.hardware.camera.cacao@3.0-system \
    vendor.somc.hardware.camera.cacao@3.1-system \
    vendor.somc.hardware.camera.cacao@3.2-system \
    vendor.somc.hardware.camera.device@1.0-system \
    vendor.somc.hardware.camera.provider@1.0-system \
    SomcCinemaPro-xxhdpi-release \
    ArtFilterCamera-xxhdpi-release \
    CameraPanorama-release \
    SemcCameraUI-xxhdpi-release \
    CameraAddonPermission \
    CameraCommonPermission \
    CameraExtensionPermission \
    CameraCommon \
    com.sonymobile.credentialmanager_impl \
    com.sonymobile.devicesecurity_impl \
    com.sonymobile.imageprocessor.bypasscamera_impl \
    com.sonymobile.camera.addon_impl \
    cacaoserver
