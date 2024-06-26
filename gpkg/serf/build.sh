TERMUX_PKG_HOMEPAGE=https://serf.apache.org/
TERMUX_PKG_DESCRIPTION="High performance C-based HTTP client library"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION=1.3.10
TERMUX_PKG_SRCURL=https://archive.apache.org/dist/serf/serf-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=be81ef08baa2516ecda76a77adf7def7bc3227eeb578b9a33b45f7b41dc064e6
TERMUX_PKG_DEPENDS="apr-util-glibc"
TERMUX_PKG_PYTHON_COMMON_DEPS="scons"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make_install() {
	scons -j$TERMUX_MAKE_PROCESSES \
		APR=$TERMUX_PREFIX \
		APU=$TERMUX_PREFIX \
		CC="$(command -v $CC)" \
		CFLAGS="$CFLAGS" \
		CPPFLAGS="$CPPFLAGS" \
		LINKFLAGS="$LDFLAGS" \
		OPENSSL=$TERMUX_PREFIX \
		PREFIX=$TERMUX_PREFIX \
		ZLIB=$TERMUX_PREFIX \
		install
}
