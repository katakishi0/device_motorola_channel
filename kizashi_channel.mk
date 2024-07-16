#
# Copyright (C) 2019 The LineageOS Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/kizashi/config/common_full_phone.mk)

# Inherit from channel device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := channel
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := kizashi_channel
PRODUCT_MODEL := moto g(7) play

# Kizashi flags
LINEAGE_BUILDTYPE := UNNOFICIAL
KIZASHI_BUILD_TYPE := vanilla
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
KIZASHI_SHIP_ADAWAY := true
#Gcam GO
KIZASHI_INCLUDE_GCGOP := true

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=channel \
        PRIVATE_BUILD_DESC="channel_retail-user 10 QPYS30.85-23-8-2 c00f57 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "motorola/channel_retail/channel:10/QPYS30.85-23-8-2/c00f57:user/release-keys"
