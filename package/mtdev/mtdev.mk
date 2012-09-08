#############################################################
#
# mtdev
#
#############################################################

MTDEV_VERSION = 1.1.3
MTDEV_SOURCE = mtdev-$(MTDEV_VERSION).tar.gz
MTDEV_SITE = http://bitmath.org/code/mtdev/$(MTDEV-SOURCE)
MTDEV_INSTALL_STAGING = YES


$(eval $(call AUTOTARGETS))
