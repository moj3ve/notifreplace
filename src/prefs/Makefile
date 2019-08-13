include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = notifreplace

notifreplace_FILES = CNRRootListController.m
notifreplace_INSTALL_PATH = /Library/PreferenceBundles
notifreplace_FRAMEWORKS = UIKit
notifreplace_PRIVATE_FRAMEWORKS = Preferences
notifreplace_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/notifreplace.plist$(ECHO_END)
