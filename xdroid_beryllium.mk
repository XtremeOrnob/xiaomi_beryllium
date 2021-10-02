#
# Copyright (C) 2021 xdroid-CAF
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common xdroid-CAF stuff.
$(call inherit-product, vendor/xdroid/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
XDROID_BOOT_DARK := true
XDROID_UI_BLUR := true

# GApps
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xdroid_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM845
# TARGET_USE_GAPPS := true

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys"
BUILD_DESCRIPTION := redfin-user 11 RQ3A.210905.001 7511028 release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryllium-user 10 QKQ1.190828.002 V12.0.3.0.QEJMIXM release-keys" \
    PRODUCT_NAME="beryllium"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
