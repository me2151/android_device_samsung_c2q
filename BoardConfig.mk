#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit common board flags
-include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/c2q

#WITH_GMS := true

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true
#TARGET_FLATTEN_APEX := true

# APN (imported from stock)
CUSTOM_APNS_FILE := $(DEVICE_PATH)/configs/sprint_apns.xml

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.c2q

TARGET_KERNEL_CONFIG := vendor/c2q_usa_singlew_defconfig
# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

TARGET_COPY_OUT_PRODUCT := system/product

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Root
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_c2q
TARGET_RECOVERY_DEVICE_MODULES := libinit_c2q
