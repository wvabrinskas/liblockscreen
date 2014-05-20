TARGET = iPhone:7.1:2.0
ARCHS = armv7 arm64

THEOS_DEVICE_IP = 192.168.1.4
THEOS_DEVICE_PORT = 22
THEOS_PACKAGE_DIR_NAME = debs
ADDITIONAL_OBJCFLAGS = -fobjc-arc

include theos/makefiles/common.mk

TWEAK_NAME = libLockScreen
libLockScreen_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
