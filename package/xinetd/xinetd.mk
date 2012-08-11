#############################################################
#
# xinetd
#
#############################################################
XINETD_VERSION = 2.3.15
XINETD_SOURCE  = xinetd-$(XINETD_VERSION).tar.gz
XINETD_SITE    = http://www.xinetd.org

XINETD_CFLAGS = $(TARGET_CFLAGS)

ifeq ($(BR2_RPC_SUPPORT_AVAILABLE),y)
XINETD_DEPENDENCIES += libtirpc
XINETD_CFLAGS += -I$(STAGING_DIR)/usr/include/tirpc/
XINETD_LIBS += -ltirpc
else
XINETD_CFLAGS += -DNO_RPC
endif

XINETD_CONF_ENV += \
	CFLAGS="$(XINETD_CFLAGS)" \
	LIBS="$(XINETD_LIBS)"

XINETD_MAKE_OPT = AR="$(TARGET_AR)"

$(eval $(call AUTOTARGETS))
