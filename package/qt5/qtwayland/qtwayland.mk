QTWAYLAND_VERSION = 0c8b7103017c11689fb4dd9ad4e5a6902f2fc158
QTWAYLAND_SITE = git://gitorious.org/qt/qtwayland.git
QTWAYLAND_SITE_METHOD = git
QTWAYLAND_DEPENDENCIES = qtbase qtxmlpatterns qtjsbackend qtdeclarative wayland
QTWAYLAND_INSTALL_STAGING = YES

define QTWAYLAND_CONFIGURE_CMDS
	-[ -f $(@D)/Makefile ] && $(MAKE) -C $(@D) distclean
	#run qmake
	(cd $(@D) && $(HOST_DIR)/usr/bin/qmake )
endef

define QTWAYLAND_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define QTWAYLAND_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) install
endef

define QTWAYLAND_INSTALL_TARGET_CMDS
	cp -dpf $(STAGING_DIR)/usr/lib/libQtCompositor*.so.* $(TARGET_DIR)/usr/lib
	cp -dpf $(STAGING_DIR)/usr/plugins/platforms/libqwayland.so $(TARGET_DIR)/usr/plugins/platforms/
endef

define QTWAYLAND_UNINSTALL_TARGET_CMDS
	-rm $(TARGET_DIR)/usr/lib/libQtCompositor*.so.*
	-rm $(TARGET_DIR)/usr/plugins/platforms/libqwalynad.so
endef

$(eval $(call GENTARGETS))