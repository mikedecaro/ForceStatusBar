export GO_EASY_ON_ME=1

TWEAK_NAME = ForceStatusBar
APP_ID = com.decaro.forcestatusbar
ForceStatusBar_CFLAGS = -F$(SYSROOT)/System/Library/CoreServices -DAPP_ID=\"$(APP_ID)\"
ForceStatusBar_FILES = Tweak.xm
AppRadioExtensions_FRAMEWORKS = UIKit
SUBPROJECTS = settings

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS = settings
include $(FW_MAKEDIR)/aggregate.mk
