#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Fingerprint
TARGET_HAS_UDFPS := true

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# A/B
TARGET_IS_VAB := true

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Camera
PRODUCT_PACKAGES += \
    libpiex_shim

# DSP Volume Synchronizer
PRODUCT_PACKAGES += \
    DSPVolumeSynchronizer

# Nfc
PRODUCT_PACKAGES += NfcTargetOverlay

# Overlays
PRODUCT_PACKAGES += \
    ApertureTargetOverlay \
    FrameworksTargetOverlay \
    SettingsProviderTargetOverlay \
    SettingsTargetOverlay \
    SettingsTargetRegInfoOverlay \
    SystemUITargetOverlay

PRODUCT_PACKAGES += \
    xiaomi_thyme_hwlevel_default_overlay \
    xiaomi_thyme_hwlevel_p01_overlay \
    xiaomi_thyme_hwlevel_p1_overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.default

# Rootdir
PRODUCT_PACKAGES += \
    init.device.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# WiFi
PRODUCT_PACKAGES += \
    TargetWifiOverlay

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/thyme/thyme-vendor.mk)
