# Copyright (C) 2010 The Android Open Source Project
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

TARGET_CPU_ABI               := armeabi
TARGET_ARCH_VARIANT          := armv5te-vfp
TARGET_ARCH_VARIANT_CPU      := arm1176jzf-s

TARGET_GLOBAL_CFLAGS += -mtune=arm1176jzf-s -mfpu=vfp
TARGET_GLOBAL_CPPFLAGS += -mtune=arm1176jzf-s -mfpu=vfp

TARGET_NO_RECOVERY           := true
TARGET_NO_BOOTLOADER         := true
TARGET_NO_KERNEL             := true
TARGET_NO_RADIOIMAGE         := true

#TARGET_BOOTLOADER_BOARD_NAME := SPH-M910
TARGET_BOARD_PLATFORM        := s3c6410

USE_CAMERA_STUB              := false
BOARD_USES_ECLAIR_LIBCAMERA  := true

BOARD_HAS_NO_MISC_PARTITION  := true

BOARD_USES_GENERIC_AUDIO     := false
BOARD_USES_ALSA_AUDIO        := true
BUILD_WITH_ALSA_UTILS        := true

BOARD_WPA_SUPPLICANT_DRIVER  := WEXT
WPA_SUPPLICANT_VERSION       := VER_0_6_X
BOARD_WLAN_DEVICE            := eth0
WIFI_DRIVER_MODULE_PATH      := "/system/libmodules/dhd.ko"
WIFI_DRIVER_MODULE_ARG       := "firmware_path=/system/etc/wifi/bcm4329_aps.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_NAME      := "dhd"

BOARD_GPS_LIBRARIES          := libsecgps libsecril-client

BOARD_HAVE_BLUETOOTH         := true
BT_USE_BTL_IF                := true
BT_ALT_STACK                 := true
BRCM_BTL_INCLUDE_A2DP        := true
BRCM_BT_USE_BTL_IF           := true

BUILD_PV_VIDEO_ENCODERS      := true
# inherit from the proprietary version
-include vendor/samsung/intercept/BoardConfigVendor.mk

