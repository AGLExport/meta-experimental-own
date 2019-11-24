FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
                   file://0002-fixed-invalid-conversion-from-EGLNativeDisplayType-to-void.patch \
                 "

PACKAGECONFIG_WAYLAND = "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
PACKAGECONFIG_GL = "${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'gles2', '', d)}"
PACKAGECONFIG_append = " ${PACKAGECONFIG_WAYLAND} icu accessibility"
PACKAGECONFIG_append = " fontconfig"
PACKAGECONFIG_append = " sql-sqlite"
PACKAGECONFIG_append = " eglfs kms"
PACKAGECONFIG_append = " examples"

EXTRA_OECONF_append = ""

# '-qpa wayland-egl' set wayland-egl as default of platform plagins
PACKAGECONFIG[wayland]="-qpa wayland-egl -no-qpa-platform-guard"
