#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common ConquerOS stuff.
$(call inherit-product, vendor/kangos/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# GApps
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kangos_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi
CONQUER_BUILD_TYPE := OFFICIAL
TARGET_USE_GAPPS := true

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryllium-user 10 QKQ1.190828.002 V12.0.3.0.QEJMIXM release-keys" \
    PRODUCT_NAME="beryllium"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
