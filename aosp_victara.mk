# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from victara device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := victara
PRODUCT_NAME := aosp_victara
PRODUCT_BRAND := motorola
PRODUCT_MODEL := victara
PRODUCT_RELEASE_NAME := MOTO X (2014)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/victara_tmo/victara:5.1/LPE23.32-21.3/5:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=victara \
    TARGET_DEVICE="victara"
    PRIVATE_BUILD_DESC="victara_tmo-user 5.1 LPE23.32-21.3 5 release-keys"

# Use Gapps
WITH_GAPPS := false
TARGET_GAPPS_ARCH := arm
IS_PHONE := true

# AospExtended-BuildType
EXTENDED_BUILD_TYPE := OFFICIAL
