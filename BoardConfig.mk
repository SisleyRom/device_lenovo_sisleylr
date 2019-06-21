#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/lenovo/sisleylr

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Assertions
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Camera
BOARD_CAMERA_SENSORS := ov13850_p13v01n ov5693
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_NON_TREBLE_CAMERA := true
#TARGET_USE_VENDOR_CAMERA_EXT := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
	/system/vendor/lib/libarcsoft_flawless_face_hal.so=23 \
	/system/vendor/lib/libmmcamera_faceproc.so=23 \
	/system/bin/mediaserver=22 \
	/system/vendor/bin/mm-qcamera-daemon=23

# Dex optimizion
ifeq ($(HOST_OS),linux)
 ifneq ($(TARGET_BUILD_VARIANT),eng)
   WITH_DEXPREOPT := true
   WITH_DEXPREOPT_DEBUG_INFO := false
   USE_DEX2OAT_DEBUG := false
   DONT_DEXPREOPT_PREBUILTS := true
   WITH_DEXPREOPT_PIC := true
   WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
 endif
endif
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_DEXPREOPT_SPEED_APPS += SystemUI

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true


# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Exclude serif fonts for saving system.img size.
EXCLUDE_SERIF_FONTS := true

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33553920
BOARD_CACHEIMAGE_PARTITION_SIZE := 157285888
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33553920
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33553920
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612224
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13295385600
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Healthd
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/charging_enabled"
WITH_LINEAGE_CHARGER := true
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "usb_cable"

# HWUI
HWUI_COMPILE_FOR_PERF := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8916
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8916

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_KERNEL_CONFIG := lineageos_sisleylr_defconfig
TARGET_KERNEL_SOURCE := kernel/lenovo/sisley

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lineage hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(DEVICE_PATH)/lineagehw|**/*.java

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
PRODUCT_ENFORCE_RRO_TARGETS := framework-res

# Power
TARGET_HAS_NO_POWER_STATS := true
TARGET_HAS_LEGACY_POWER_STATS := true
TARGET_HAS_NO_WLAN_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# QCOM
BOARD_USES_QCOM_HARDWARE := true

# Radio
MALLOC_SVELTE := true
TARGET_RIL_VARIANT := caf
#TARGET_USES_OLD_MNC_FORMAT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_cm

# Releasetools
TARGET_DISABLE_OTA_ASSERT := true

# Render
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# SELinux
include device/qcom/sepolicy-legacy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Shipping API level (for CTS backward compatibility)
PRODUCT_SHIPPING_API_LEVEL := 21

# SDCLANG
TARGET_USE_SDCLANG := false
SDCLANG := false

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib64/libflp.so|libshims_flp.so \
    /system/vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/lib/libflp.so|libshims_flp.so \
    /system/vendor/lib/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/bin/mm-qcamera-daemon|libshim_atomic.so \
    /system/vendor/lib/libmmcamera2_imglib_modules.so|libshim_atomic.so \
    /system/vendor/lib/libqomx_jpegenc.so|libshim_atomic.so \
    /system/vendor/lib/libmmcamera2_stats_modules.so|libshim_atomic.so \
    /system/vendor/lib/hw/camera.vendor.msm8916.so|libshim_atomic.so \
    /system/vendor/lib/hw/camera.vendor.msm8916.so|libboringssl-compat.so \
    /system/vendor/lib/libqomx_jpegenc.so|libboringssl-compat.so \
    /system/lib/libcrypto.so|libboringssl-compat.so

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn

PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
TARGET_USES_QCOM_WCNSS_QMI := true

WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from proprietary files
include vendor/lenovo/sisleyr/BoardConfigVendor.mk
