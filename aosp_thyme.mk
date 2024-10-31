#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelOs stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device Specific Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080

# Environment Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Inherit from thyme device
$(call inherit-product, device/xiaomi/thyme/device.mk)

PRODUCT_NAME := aosp_thyme
PRODUCT_DEVICE := thyme
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2102J2SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="thyme-user 13 RKQ1.211001.001 V816.0.4.0.TGACNXM release-keys" \
    BuildFingerprint=Xiaomi/thyme/thyme:13/RKQ1.211001.001/V816.0.4.0.TGACNXM:user/release-keys \
    DeviceName=thyme \
    DeviceProduct=thyme \
    SystemDevice=thyme \
    SystemName=thyme
