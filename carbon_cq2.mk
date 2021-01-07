#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from c2q device
$(call inherit-product, device/samsung/c2q/device.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := carbon_c2q
PRODUCT_DEVICE := c2q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-N986U
PRODUCT_MANUFACTURER := Samsung

# Resolution
TARGET_SCREEN_HEIGHT := 3088
TARGET_SCREEN_WIDTH := 1440

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=c2q \
    PRIVATE_BUILD_DESC="c2quew-user 10 QP1A.190711.020 N986U1UEU1ATI5 release-keys"

BUILD_FINGERPRINT := samsung/c2quew/c2q:10/QP1A.190711.020/N986U1UEU1ATI5:user/release-keys