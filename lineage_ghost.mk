# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ghost device
$(call inherit-product, device/motorola/ghost/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ghost
PRODUCT_NAME := lineage_ghost
PRODUCT_BRAND := motorola
PRODUCT_MODEL := ghost
PRODUCT_RELEASE_NAME := MOTO X
PRODUCT_MANUFACTURER := motorola

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/motorola/ghost/overlay

PRODUCT_GMS_CLIENTID_BASE := android-motorola


BUILD_FINGERPRINT := "motorola/ghost_retail/ghost:5.1/LPA23.12-15.5/4:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ghost \
    TARGET_DEVICE="ghost"
    PRIVATE_BUILD_DESC="ghost_retail-user 5.1 LPA23.12-15.5 4 release-keys"
