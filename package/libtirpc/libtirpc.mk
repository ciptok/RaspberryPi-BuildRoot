#############################################################
#
# libtirpc
#
#############################################################

LIBTIRPC_VERSION = 0.2.2
LIBTIRPC_SOURCE = libtirpc-$(LIBTIRPC_VERSION).tar.bz2
LIBTIRPC_SITE = http://$(BR2_SOURCEFORGE_MIRROR).dl.sourceforge.net/project/libtirpc/libtirpc/$(LIBTIRPC_VERSION)
LIBTIRPC_LICENSE = BSD-3c
LIBTIRPC_LICENSE_FILES = COPYING

LIBTIRPC_INSTALL_STAGING = YES
LIBTIRPC_AUTORECONF = YES
LIBTIRPC_DEPENDENCIES = host-pkg-config

$(eval $(call autotools-package))
