# Camera
PRODUCT_PACKAGES += \
    libion \
    Snap

# IMS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService

# Pixel Experience
PRODUCT_COPY_FILES += \
    device/google/marlin/nexus.xml:system/etc/sysconfig/nexus.xml

# Update engine
PRODUCT_PACKAGES += brillo_update_payload
