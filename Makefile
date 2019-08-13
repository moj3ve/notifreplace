INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = notifreplace

notifreplace_FILES = Tweak.xm
notifreplace_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
