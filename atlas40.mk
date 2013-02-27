$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/atlas40/atlas40-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/atlas40/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x27a \
    audio.primary.msm7x27a \
    audio_policy.conf \
    libaudioutils

# GPS
PRODUCT_PACKAGES += \
    gps.atlas40

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    make_ext4fs \
    setup_fs

PRODUCT_COPY_FILES += \
    device/zte/atlas40/ramdisk/init.atlas40.rc:root/init.atlas40.rc \
    device/zte/atlas40/ramdisk/init.atlas40.usb.rc:root/init.atlas40.usb.rc \
    device/zte/atlas40/ramdisk/ueventd.atlas40.rc:root/ueventd.atlas40.rc

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_COPY_FILES += \
    device/zte/atlas40/prebuilt/system/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/zte/atlas40/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/atlas40/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

PRODUCT_COPY_FILES += \
    device/zte/atlas40/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/zte/atlas40/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/atlas40/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/zte/atlas40/prebuilt/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/zte/atlas40/prebuilt/system/usr/idc/Fts-touchscreen.idc:system/usr/idc/Fts-touchscreen.idc \
    device/zte/atlas40/prebuilt/system/usr/idc/syna-touchscreen.idc:system/usr/idc/syna-touchscreen.idc \
    device/zte/atlas40/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/atlas40/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/zte/atlas40/prebuilt/system/usr/keylayout/atlas40_keypad.kl:system/usr/keylayout/atlas40_keypad.kl \
    device/zte/atlas40/prebuilt/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/zte/atlas40/prebuilt/system/usr/keylayout/Fts-touchscreen.kl:system/usr/keylayout/Fts-touchscreen.kl \
    device/zte/atlas40/prebuilt/system/usr/keylayout/syna-touchscreen.kl:system/usr/keylayout/syna-touchscreen.kl \
    device/zte/atlas40/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_atlas40
PRODUCT_DEVICE := atlas40
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Blade III
