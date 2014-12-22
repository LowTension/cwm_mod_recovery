LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := carliv
LOCAL_MODULE_TAGS := eng optional
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/res

ifdef DEVICE_SCREEN_WIDTH
	CARLIV_RES_LOC := $(commands_recovery_local_path)/devices/res-$(DEVICE_SCREEN_WIDTH)
else
	CARLIV_RES_LOC := $(commands_recovery_local_path)/devices/res-generic
endif
	
CARLIV_RES_GEN := $(intermediates)/carliv
$(CARLIV_RES_GEN):
	mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/res/images/
	cp -fr $(CARLIV_RES_LOC)/* $(TARGET_RECOVERY_ROOT_OUT)/res/images

LOCAL_GENERATED_SOURCES := $(CARLIV_RES_GEN)
LOCAL_SRC_FILES := carliv $(CARLIV_RES_GEN)
include $(BUILD_PREBUILT)
