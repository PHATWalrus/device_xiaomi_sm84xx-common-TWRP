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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Inherit from common
-include $(COMMON_PATH)/BoardConfigCommon.mk

# TWRP specific build flags
TW_LOAD_VENDOR_MODULES := "adsp_loader_dlkm.ko asus_battery_charger_AI2202.ko ax88179_178a.ko dwc3-msm.ko focaltech_fts_3658u.ko leds-qpnp-vibrator-ldo.ko qcom-hv-haptics.ko qseecom-mod.ko qti_battery_charge_notify.ko qti_battery_charger.ko ssusb-redriver-nb7vpq904m.ko synaptics_dsx.ko texfat.ko tfs_linux.ko tntfs.ko usb_bam.ko usb_f_ccid.ko usb_f_cdev.ko usb_f_diag.ko usb_f_gsi.ko usb_f_qdss.ko"
TW_NO_SCREEN_BLANK := true

#
# For local builds only
#
# Custom TWRP Versioning
ifneq ($(wildcard device/common/version-info/.),)
    # device version is optional - the default value is "0" if nothing is set in device tree
    CUSTOM_TWRP_DEVICE_VERSION := 0
endif
#
# end local build flags
#