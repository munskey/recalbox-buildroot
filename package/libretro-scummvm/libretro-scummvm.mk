################################################################################
#
# SCUMMVM
#
################################################################################
LIBRETRO_SCUMMVM_VERSION = master
LIBRETRO_SCUMMVM_SITE = $(call github,libretro,scummvm,master)

define LIBRETRO_SCUMMVM_BUILD_CMDS
	CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" LD="$(TARGET_LD)" RANLIB="$(TARGET_RANLIB)" AR="$(TARGET_AR) cru"  \
	 -C $(@D)/backends/platform/libretro/build platform="armv6-hardfloat"
endef

define LIBRETRO_SCUMMVM_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/backends/platform/libretro/build/scummvm_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/scummvm_libretro.so
endef

$(eval $(generic-package))