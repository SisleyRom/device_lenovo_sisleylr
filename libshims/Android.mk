#
# Copyright (C) 2018 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    flp/flp.c

LOCAL_MODULE := libshims_flp
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    get_process_name/get_process_name.c

LOCAL_MODULE := libshims_get_process_name
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := lenovo_atomic.cpp
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE := libshim_atomic
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

EVP_FILES := \
    boringssl-compat/p_dec.c \
    boringssl-compat/p_enc.c \
    boringssl-compat/p_open.c \
    boringssl-compat/p_seal.c

RSA_FILES := boringssl-compat/rsa_pss.c

B64_FILES := boringssl-compat/bio_b64.c

LOCAL_SRC_FILES := $(EVP_FILES) $(RSA_FILES)

ifeq ($(TARGET_REQUIRES_B64_COMPAT),true)
LOCAL_SRC_FILES += $(B64_FILES)
endif

LOCAL_SHARED_LIBRARIES := liblog libcrypto
LOCAL_MODULE := libboringssl-compat
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)