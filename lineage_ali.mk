# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_base.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device
$(call inherit-product, device/motorola/ali/device.mk)

TARGET_RECOVERY_FSTAB := device/motorola/ali/rootdir/etc/fstab.qcom

# Device identifiers
PRODUCT_DEVICE := ali
PRODUCT_NAME := lineage_ali
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto g(6)
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := ali

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=ali

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920


PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := ali
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 9 PPSS29.118-15-11-2 76e712 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 9/PPSS29.118-15-11-2/76e712:user/release-keys

PRODUCT_PACKAGES += \
    libmemalloc
