#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sunny device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Inherit some common OrionOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device Config
TARGET_ENABLE_BLUR := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := false

# Maintainer 
ORION_MAINTAINER := mnasibzade
ORION_MAINTAINER_LINK := t.me/mnasibzade
ORION_BUILD_TYPE := OFFICIAL

# GApps
ORION_GAPPS := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_sunny
PRODUCT_DEVICE := sunny
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7AG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := sunny

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
