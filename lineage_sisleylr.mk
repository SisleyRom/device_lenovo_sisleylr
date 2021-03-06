# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, device/lenovo/sisleylr/full_sisleylr.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_NAME := lineage_sisleylr
BOARD_VENDOR := lenovo
PRODUCT_DEVICE := sisleylr

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo S60-A

PRODUCT_BRAND := Lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := sisleylr
TARGET_VENDOR_DEVICE_NAME := sisleylr

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sisleylr-user 5.0.2 LRX22G S60-a_S232_151021_ROW release-keys" \

BUILD_FINGERPRINT := Lenovo/sisleylr/sisleylr:5.0.2/LRX22G/S60-a_S232_151021_ROW:user/release-keys
