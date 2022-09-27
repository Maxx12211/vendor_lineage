# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# PalyrimOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.palyrim.maintainer=$(PALYRIM_MAINTAINER) \
    ro.palyrim.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.palyrim.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.palyrim.version=$(LINEAGE_VERSION) \
    ro.modversion=$(PALYRIM_CODE) \
    ro.palyrim.packagetype=$(PALYRIM_VARIANT) \
    ro.palyrim.releasetype=$(PALYRIM_BUILD_TYPE) \
    ro.lineagelegal.url=https://lineageos.org/legal
    
# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
