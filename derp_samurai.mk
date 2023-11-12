#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/samurai/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# GMS
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := realme
PRODUCT_DEVICE := samurai
PRODUCT_MANUFACTURER := realme
PRODUCT_MODEL := realme X2 Pro
PRODUCT_NAME := derp_samurai
PRODUCT_SYSTEM_NAME := RMX1931
PRODUCT_SYSTEM_DEVICE := RMX1931

# DerpFest
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true
TARGET_NOT_USES_BLUR := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

BUILD_FINGERPRINT := "realme/RMX1931/RMX1931L1:11/RKQ1.200928.002/1625457120608:user/release-keys"

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1931-user 11 RKQ1.200928.002 1625457120608 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oppo
