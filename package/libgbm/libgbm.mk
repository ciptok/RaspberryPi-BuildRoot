#############################################################
#
# libgbm
#
#############################################################

LIBGBM_VERSION = 1.0
LIBGBM_SOURCE = libgbm-$(LIBGBM_VERSION).tar.bz2
LIBGBM_SITE = http://dl.dropbox.com/u/31284393/$(LIBGBM-SOURCE)
LIBGBM_INSTALL_STAGING = YES

$(eval $(call AUTOTARGETS))
