# Inherit full device configuration
$(call inherit-product, device/samsung/c2q/full_c2q.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Product IDs
PRODUCT_NAME := lineage_c2q

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="c2quew-user 10 QP1A.190711.020 N986U1UEU1ATI5 release-keys"

BUILD_FINGERPRINT := samsung/c2quew/c2q:10/QP1A.190711.020/N986U1UEU1ATI5:user/release-keys