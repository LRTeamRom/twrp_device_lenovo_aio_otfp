$(call inherit-product, device/lenovo/aio_otfp/device_aio_otfp.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Release name
PRODUCT_RELEASE_NAME := aio_otfp

PRODUCT_DEVICE := aio_otfp
PRODUCT_NAME := cm_aio_otfp
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo K50-T5
PRODUCT_MANUFACTURER := lenovo
PRODUCT_RESTRICT_VENDOR_FILES := false

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

