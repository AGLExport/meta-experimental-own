SUMMARY = "Wayland base image"
LICENSE = "MIT"

REQUIRED_DISTRO_FEATURES = "wayland"

IMAGE_FEATURES += "splash package-management ssh-server-dropbear hwcodecs"
IMAGE_FEATURES += " debug-tweaks "

inherit core-image distro_features_check

require poc-image-renesas-base.inc

IMAGE_FEATURES += " \
    tools-debug debug-tweaks \
    ssh-server-openssh \
"

IMAGE_INSTALL_append = " \
    kernel-modules \
    linux-firmware-rtl8192cu \
    linux-firmware-ralink \
    "

# wayland/weston
IMAGE_INSTALL_append = " weston weston-init pulseaudio-server "

IMAGE_INSTALL_append = " connman connman-client connman-tools "

# qt5
IMAGE_INSTALL_append = " \
    qtbase qtbase-plugins \
    qt3d qt3d-plugins qt3d-qmlplugins \
    qt3d-runtime qt3d-runtime-plugins qt3d-runtime-qmlplugins \
    qtwayland  qtwayland-plugins qtwayland-qmlplugins \
    qtlocation qtlocation-plugins qtlocation-qmlplugins \
    qtmultimedia qtmultimedia-plugins qtmultimedia-qmlplugins \
    qtquickcontrols qtquickcontrols-plugins \
    qtquickcontrols-qmlplugins qtquickcontrols-qmldesigner \
    qtquickcontrols2 qtquickcontrols2-plugins \
    qtquickcontrols2-qmlplugins qtquickcontrols2-qmldesigner \
    "
