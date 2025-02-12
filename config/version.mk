PRODUCT_VERSION_MAJOR = 13
PRODUCT_VERSION_MINOR = 0

# Set all versions
PALYRIM_FLAVOR := Tiramisu
PALYRIM_CODE := 1.6
ANDROID_CODE := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# OFFICIAL_DEVICES
PALYRIM_BUILD_TYPE := community
  LIST = $(shell cat vendor/lineage/palyrim.devices)
    ifeq ($(filter $(LINEAGE_BUILD), $(LIST)), $(LINEAGE_BUILD))
      IS_OFFICIAL=true
      PALYRIM_BUILD_TYPE := official
    endif

# Internal version
LINEAGE_VERSION := PalyrimOS-$(PALYRIM_CODE)-$(LINEAGE_BUILD)-$(PALYRIM_BUILD_TYPE)-$(shell date +%Y%m%d)

# Display version

LINEAGE_DISPLAY_VERSION := $(PALYRIM_CODE)-$(LINEAGE_BUILD)-$(PALYRIM_BUILD_TYPE)-$(shell date +%Y%m%d)
