## Common FML Config ##

SUPERUSER_PACKAGE_PREFIX := com.fml.superuser

# Superuser
PRODUCT_PACKAGES += \
    Superuser \
    su

# FML init.rc
PRODUCT_COPY_FILES += \
    vendor/fml/prebuilt/common/etc/init.fml.rc:root/init.fml.rc
