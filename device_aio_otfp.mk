$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/aio_otfp/overlay

LOCAL_PATH := device/lenovo/aio_otfp

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# AAPT
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_COPY_FILES += \
   $(LOCAL_KERNEL):kernel

# twrp.fstab
PRODUCT_COPY_FILES += device/lenovo/aio_otfp/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.zygote=zygote64_32 \
    camera.disable_zsl_mode=1 \
    ro.mount.fs=EXT4 \
    persist.service.acm.enable=0 \
    persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
    persist.call_recording.enabled=true \
    persist.call_recording.src=4 \
    persist.debug.wfd.enable=1



PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8
