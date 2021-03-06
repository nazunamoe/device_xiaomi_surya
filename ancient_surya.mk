#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Ancient OS stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Gapps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Some Extra's
ANCIENT_OFFICIAL=false

# Inherit Gapps
$(call inherit-product-if-exists, vendor/gapps/config.mk)
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

