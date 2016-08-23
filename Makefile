THEOS_DEVICE_IP = 192.168.0.8

TARGET = iphone:clang:latest:8.0

include /opt/theos/makefiles/common.mk

TWEAK_NAME = HideRecentContacts
HideRecentContacts_FILES = HideRecentContacts.xm
HideRecentContacts_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
