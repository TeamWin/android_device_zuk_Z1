## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Z1

# Inherit device configuration
$(call inherit-product, device/zuk/Z1/device_Z1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Z1
PRODUCT_NAME := omni_Z1
PRODUCT_BRAND := zuk
PRODUCT_MODEL := Z1
PRODUCT_MANUFACTURER := zuk
