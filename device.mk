# Copyright (C) 2011 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Support files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Media configuration xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media_profiles.xml:/system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.buzz.rc:root/init.buzz.rc \
    $(LOCAL_PATH)/init.buzz.usb.rc:root/init.buzz.usb.rc \
    $(LOCAL_PATH)/ueventd.buzz.rc:root/ueventd.buzz.rc \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/FileManager.apk:system/app/FileManager.apk

# Input device calibration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    $(LOCAL_PATH)/curcial-oj.idc:system/usr/idc/curcial-oj.idc \
    $(LOCAL_PATH)/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    $(LOCAL_PATH)/keyfiles/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
    $(LOCAL_PATH)/keyfiles/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/keyfiles/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
    $(LOCAL_PATH)/keyfiles/buzz-keypad.kl:system/usr/keylayout/buzz-keypad.kl \
    $(LOCAL_PATH)/keyfiles/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl

# BCM4329 firmware and module
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    $(LOCAL_PATH)/prebuilt/bcm4329.ko:root/lib/modules/bcm4329.ko

PRODUCT_PACKAGES += \
    librs_jni \
    lights.buzz \
    sensors.buzz \
    gralloc.buzz \
    copybit.buzz \
    gps.buzz \
    audio.primary.buzz \
    audio_policy.buzz \
    audio.a2dp.default \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    Torch

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

PRODUCT_LOCALES += mdpi
