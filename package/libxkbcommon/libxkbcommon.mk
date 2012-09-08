#############################################################
#
# libxkbcommon
#
#############################################################

LIBXKBCOMMON_VERSION = 1.0
LIBXKBCOMMON_SOURCE = libxkbcommon-$(LIBXKBCOMMON_VERSION).tar.bz2
LIBXKBCOMMON_SITE = http://dl.dropbox.com/u/31284393/$(LIBXKBCOMMON-SOURCE)
LIBXKBCOMMON_INSTALL_STAGING = YES

LIBXKBCOMMON_CONF_OPT = --with-xkb-config-root=/usr/share/X11/xkb

$(eval $(call AUTOTARGETS))
