#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/infinix/X6833B/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionAOSP Bringup
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true

AXION_CAMERA_REAR_INFO := 64,2
AXION_CAMERA_FRONT_INFO := 16

AXION_MAINTAINER := Apichat_chata
AXION_PROCESSOR := Mediatek_Helio_G99

BYPASS_CHARGE_SUPPORTED ?= false

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil

# Enable activity open override fix for low-end devices or devices affected by activity open/exit freezing issue 
PERF_ANIM_OVERRIDE := true

BOARD_VENDOR := Infinix
PRODUCT_NAME := lineage_X6833B
PRODUCT_DEVICE := X6833B
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6833B

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=X6833B \
    BuildFingerprint=Infinix/X6833B-GL/Infinix-X6833B:14/UP1A.231005.007/240703V808:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

