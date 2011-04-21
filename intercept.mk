# Inherit device configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_NAME         := intercept
PRODUCT_BRAND        := samsung
PRODUCT_DEVICE       := intercept
PRODUCT_MODEL        := intercept
PRODUCT_MANUFACTURER := SAMSUNG

# Used by BusyBox
KERNEL_MODULES_DIR   :=/lib/modules

# Use edify for otapackage
PRODUCT_SPECIFIC_DEFINES += TARGET_OTA_SCRIPT_MODE=amend

# Tiny toolbox
#TINY_TOOLBOX         :=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA   :=true

PRODUCT_PACKAGES += \
    FileManager \
    Superuser

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=90

## Get proprietary configuration if available
$(call inherit-product-if-exists, vendor/samsung/intercept/intercept-vendor.mk)

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Install 3rd party apks
PRODUCT_COPY_FILES += \
    device/samsung/intercept/prebuilt/app/linpack.apk:system/app/linpack.apk \
    device/samsung/intercept/prebuilt/app/Superuser.apk:system/app/Superuser.apk
