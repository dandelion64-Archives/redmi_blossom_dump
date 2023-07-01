#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from blossom device
$(call inherit-product, device/xiaomi/blossom/device.mk)

PRODUCT_DEVICE := blossom
PRODUCT_NAME := lineage_blossom
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006C3LI
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_blossom-userdebug 13 TQ3A.230605.012 eng.luci.20230627.150156 test-keys"

BUILD_FINGERPRINT := Redmi/lineage_blossom/blossom:13/TQ3A.230605.012/luci06271457:userdebug/test-keys
