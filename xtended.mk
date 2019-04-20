#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/RMX1801/device.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Bootanimation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX1801
PRODUCT_NAME := xtended_RMX1801
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Realme 2 Pro
PRODUCT_MANUFACTURER := Oppo

TARGET_VENDOR := oppo
TARGET_VENDOR_PRODUCT_NAME := RMX1801
TARGET_VENDOR_DEVICE_NAME := RMX1801

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1.171019.011 eng.root.20181228.004601 release-keys" \
    PRODUCT_NAME="RMX1801" \
    TARGET_DEVICE="RMX1801"