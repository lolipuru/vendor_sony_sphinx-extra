$(call inherit-product, vendor/sony/extras/camera/camera-vendor.mk)

PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extras

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += vendor/sony/extras/sepolicy/private
