TERMUX_PKG_HOMEPAGE=https://gitlab.gnome.org/GNOME/gtk-doc
TERMUX_PKG_DESCRIPTION="GTK+ DocBook Documentation Generator"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION=1.34.0
TERMUX_PKG_SRCURL=https://gitlab.gnome.org/GNOME/gtk-doc/-/archive/${TERMUX_PKG_VERSION}/gtk-doc-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e1d544fa70ae60014a241b674c9d989f4ad6a96554652ebf73bbe94b4da1aa35
TERMUX_PKG_BUILD_DEPENDS="glib-glibc, docbook-xml-glibc, docbook-xsl-glibc"
