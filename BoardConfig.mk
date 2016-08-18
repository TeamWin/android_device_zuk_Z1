#
# Copyright (C) 2015 The CyanogenMod Project
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

DEVICE_PATH := device/zuk/ham

# TODO: shouldn't be here
BOARD_VENDOR := zuk

#Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_DTBTOOL_ARGS := -2
TARGET_KERNEL_ARCH := arm
BOARD_KERNEL_CMDLINE := console=tty60,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 vmalloc=480M
TARGET_KERNEL_SOURCE := kernel/cyanogen/msm8974
TARGET_KERNEL_CONFIG := cyanogenmod_k9_defconfig

# Enable DIAG on debug builds
ifneq ($(TARGET_BUILD_VARIANT),user)
TARGET_KERNEL_ADDITIONAL_CONFIG:= cyanogenmod_debug_config
endif

# QCOM
BOARD_USES_QCOM_HARDWARE := true

# Audio
USE_CUSTOM_AUDIO_POLICY := 1
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_SMD_TTY := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USE_COMPAT_GRALLOC_ALIGN := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CM Hardware
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS := \
    hardware/cyanogen/cmhw \
    $(DEVICE_PATH)/cmhw

# Tap to wake
TARGET_TAP_TO_WAKE_NODE := /sys/devices/virtual/touch/tp_dev/gesture_on

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 20971520
BOARD_CACHEIMAGE_PARTITION_SIZE    := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12815659008
BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 59718467072
BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G
BOARD_OEMIMAGE_PARTITION_SIZE      := 133169152

# Graphics
USE_OPENGL_RENDERER := true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE:= false
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
TARGET_USES_WCNSS_CTRL           := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_MAC_ADDR_REV   := true

# Wifi - EAP-SIM
CONFIG_EAP_PROXY                 := qmi
CONFIG_EAP_PROXY_DUAL_SIM        := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_OEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# No old RPC for prop
TARGET_NO_RPC := true

# GPS HAL lives here
USE_DEVICE_SPECIFIC_GPS := true
USE_DEVICE_SPECIFIC_LOC_API := true

# PowerHAL
TARGET_POWERHAL_VARIANT := qcom

# QCRIL
TARGET_RIL_VARIANT := caf

# Recovery
#TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# TWRP Settings
DEVICE_RESOLUTION := 1080x1920
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_FLASH_FROM_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true

COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_SUPPRESS_EMMC_WIPE := true

PRODUCT_COPY_FILES += device/zuk/ham/twrp.fstab:recovery/root/etc/twrp.fstab

ifneq ($(TARGET_RECOVERY_ROOT_OUT),)
    $(shell mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/firmware/image)
    $(shell mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/hw)
    $(shell ln -s /sbin $(TARGET_RECOVERY_ROOT_OUT)/system/bin)
endif

PRODUCT_COPY_FILES += \
    vendor/zuk/ham/proprietary/bin/qseecomd:recovery/root/system/bin/qseecomd \
    vendor/zuk/ham/proprietary/bin/linker:recovery/root/system/bin/linker \
    vendor/zuk/ham/proprietary/vendor/lib/libssd.so:recovery/root/vendor/lib/libssd.so \
    vendor/zuk/ham/proprietary/vendor/lib/librpmb.so:recovery/root/vendor/lib/librpmb.so \
    vendor/zuk/ham/proprietary/vendor/lib/libdiag.so:recovery/root/vendor/lib/libdiag.so \
    vendor/zuk/ham/proprietary/vendor/lib/libdrmfs.so:recovery/root/vendor/lib/libdrmfs.so \
    vendor/zuk/ham/proprietary/vendor/lib/libQSEEComAPI.so:recovery/root/vendor/lib/libQSEEComAPI.so \
    vendor/zuk/ham/proprietary/vendor/lib/libdrmtime.so:recovery/root/vendor/lib/libdrmtime.so \
    vendor/zuk/ham/proprietary/lib/hw/keystore.msm8974.so:recovery/root/vendor/lib/hw/keystore.msm8974.so \
    vendor/zuk/ham/proprietary/firmware/image/keymaste.b00:recovery/root/firmware/image/keymaste.b00 \
    vendor/zuk/ham/proprietary/firmware/image/keymaste.b01:recovery/root/firmware/image/keymaste.b01 \
    vendor/zuk/ham/proprietary/firmware/image/keymaste.b02:recovery/root/firmware/image/keymaste.b02 \
    vendor/zuk/ham/proprietary/firmware/image/keymaste.b03:recovery/root/firmware/image/keymaste.b03 \
    vendor/zuk/ham/proprietary/firmware/image/keymaste.mdt:recovery/root/firmware/image/keymaste.mdt \
    vendor/zuk/ham/proprietary/firmware/image/cmnlib.b00:recovery/root/firmware/image/cmnlib.b00 \
    vendor/zuk/ham/proprietary/firmware/image/cmnlib.b01:recovery/root/firmware/image/cmnlib.b01 \
    vendor/zuk/ham/proprietary/firmware/image/cmnlib.b02:recovery/root/firmware/image/cmnlib.b02 \
    vendor/zuk/ham/proprietary/firmware/image/cmnlib.b03:recovery/root/firmware/image/cmnlib.b03 \
    vendor/zuk/ham/proprietary/firmware/image/cmnlib.mdt:recovery/root/firmware/image/cmnlib.mdt

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Use HW crypto for ODE
TARGET_HW_DISK_ENCRYPTION := true

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

# ANT+ - TODO: Confirm this - TODO: Confirm this - TODO: Confirm this - TODO: Confirm this
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

ifeq ($(HOST_OS),linux)
  ifeq ($(call match-word-in-list,$(TARGET_BUILD_VARIANT),user),true)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# inherit from the proprietary version
ifneq ($(QCPATH),)
-include $(QCPATH)/common/msm8974/BoardConfigVendor.mk
endif

BOARD_USES_QCNE := true

ifeq ($(BOARD_USES_QCNE),true)
TARGET_LDPRELOAD := libNimsWrap.so
endif

# SELinux policies
# qcom sepolicy
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy

-include vendor/zuk/ham/BoardConfigVendor.mk
