#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from jasmine_sprout device
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

PRODUCT_DEVICE := jasmine_sprout
PRODUCT_NAME := omni_jasmine_sprout
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Mi A2
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 10 QKQ1.190910.002 V11.0.28.0.QDIMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/jasmine/jasmine_sprout:10/QKQ1.190910.002/V11.0.28.0.QDIMIXM:user/release-keys
