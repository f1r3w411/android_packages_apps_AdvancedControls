LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PROGUARD_FLAG_FILES := proguard.flags 

LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.preference_preference

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := AdvancedControls
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_OVERRIDES_PACKAGES := MusicFX
LOCAL_USE_AAPT2 := true

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_DEX_PREOPT := false

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))