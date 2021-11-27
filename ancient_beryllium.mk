#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# ArrowOS Stuff
ANCIENT_OFFICIAL := true
FORCE_OTA := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
ANCIENT_GAPPS := true
TARGET_GAPPS_ARCH := arm64

TARGET_BOOT_ANIMATION_RES := 1080

# GApps
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:12/SPB5.210812.002/7671067:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 12 SPB5.210812.002 7671067 release-keys" \
    PRODUCT_NAME="beryllium"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:12/SPB5.210812.002/7671067:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
