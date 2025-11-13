ifneq (,$(wildcard vendor/custom/signing/keys))
ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/custom/signing/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/custom/signing/keys/releasekey
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard vendor/custom/signing/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/custom/signing/keys/otakey.x509.pem
endif
endif
endif
