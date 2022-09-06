#
# Copyright (C) 2019 Potato Open Sauce Project
# Copyright (C) 2021 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/alldocube/Smile_X/device.mk)

# Inherit some common Pixel-Experience stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Smile_X
PRODUCT_NAME := lineage_T1028
PRODUCT_BRAND := ALLDOCUBE
PRODUCT_MODEL := Smile_X
PRODUCT_MANUFACTURER := alldocube

PRODUCT_GMS_CLIENTID_BASE := android-alldocube

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums512_lwfq_1h10_Natv-user 11 RP1A.201005.001 10338 release-keys"

BUILD_FINGERPRINT := UNISOC/ums512_lwfq_1h10_Natv/ums512_1h10:11/RP1A.201005.001/10338:user/release-keys