#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from motorola sdm450-common
-include device/motorola/sdm450-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/ali

# Assertions
TARGET_OTA_ASSERT_DEVICE := ali

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := ali_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/ali
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
# TARGET_KERNEL_CLANG_COMPILE := true

# NFC
BOARD_NFC_CHIPSET := pn553

# Partitions

BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672        #    22528 * 1024 mmcblk0p36
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456      #   262144 * 1024 mmcblk0p51
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23171072    #    22628 * 1024 mmcblk0p37
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3271557120    #  3194880 * 1024 mmcblk0p52
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26419903488 # 25800687 * 1024 mmcblk0p53
BOARD_VENDORIMAGE_PARTITION_SIZE := 671088640     #   655360 * 1024 mmcblk0p50

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Treble
PRODUCT_SHIPPING_API_LEVEL := 27

# Power
TARGET_HAS_NO_WLAN_STATS := true

# inherit from the proprietary version
# -include vendor/motorola/ali/BoardConfigVendor.mk


# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
#WIFI_DRIVER_FW_PATH_AP := "ap"
#WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_PATH := "/vendor/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X
