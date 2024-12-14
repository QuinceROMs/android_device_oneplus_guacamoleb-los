#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelage_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1901
PRODUCT_BRAND := OnePlus

# Boot animation
TARGET_SCREEN_HEIGHT := 2240
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# arcore
TARGET_INCLUDE_STOCK_ARCORE := true

# AICore
TARGET_INCLUDE_STOCK_AICORE := false

# Live Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# NGA
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7-user 12 SKQ1.211113.001 P.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202303230244:user/release-keys \
    DeviceName=guacamoleb \
    DeviceProduct=OnePlus7 \
    SystemDevice=OnePlus7 \
    SystemName=OnePlus7
