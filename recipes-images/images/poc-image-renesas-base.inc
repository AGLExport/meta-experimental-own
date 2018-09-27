# Basic packages
IMAGE_INSTALL_append = " \
    bash \
    v4l-utils \
    i2c-tools \
    coreutils \
"

# Support secure environment
IMAGE_INSTALL_append = " \
    optee-client \
"
# Installation for QoS packages
IMAGE_INSTALL_append = " \
    kernel-module-qos \
    qosif-user-module \
    qosif-tp-user-module \
"
