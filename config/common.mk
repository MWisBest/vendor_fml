## Common FML Config ##

SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.fml.superuser

# FML init.rc
PRODUCT_COPY_FILES += \
    vendor/fml/prebuilt/common/etc/init.fml.rc:root/init.fml.rc

ifneq ($(TARGET_BUILD_VARIANT),user)
# Superuser
PRODUCT_PACKAGES += \
    Superuser \
    su

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

else

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=0

endif

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif
