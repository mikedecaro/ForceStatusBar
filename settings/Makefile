include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ForceStatusBarSettings
ForceStatusBarSettings_FILES = ForceStatusBarSettings.mm
ForceStatusBarSettings_INSTALL_PATH = /Library/PreferenceBundles
ForceStatusBarSettings_FRAMEWORKS = UIKit
ForceStatusBarSettings_PRIVATE_FRAMEWORKS = Preferences

include $(FW_MAKEDIR)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(FW_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(FW_STAGING_DIR)/Library/PreferenceLoader/Preferences/ForceStatusBarSettings.plist$(ECHO_END)
