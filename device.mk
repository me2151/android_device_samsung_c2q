#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, device/samsung/sm8250-common/common.mk)

# Dalvik-Config
$(call inherit-product, frameworks/native/build/phone-xhdpi-12288-dalvik-heap.mk)

DEVICE_PATH := device/samsung/c2q

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
