require experimental-image-weston.bb

IMAGE_FEATURES_append = " dev-pkgs"

inherit populate_sdk populate_sdk_qt5


TOOLCHAIN_HOST_TASK_append = " nativesdk-wayland nativesdk-wayland-dev"

TOOLCHAIN_HOST_TASK_append = " nativesdk-perl-modules "
