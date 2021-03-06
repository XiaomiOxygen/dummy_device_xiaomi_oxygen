# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oxygen device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := oxygen
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_oxygen
PRODUCT_MODEL := MI MAX 2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := oxygen
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="QQ3A.200705.002"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/oxygen/oxygen:7.1.1/NMF26F/V9.5.4.0.NDDMIFA:user/release-keys
