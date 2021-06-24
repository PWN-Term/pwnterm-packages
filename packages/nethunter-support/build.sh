TERMUX_PKG_HOMEPAGE=https://github.com/PWN-Term/nethunter-support
TERMUX_PKG_DESCRIPTION="Adds support for nh when terminal gets called via modified nethunter-app"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.0.2
TERMUX_PKG_SRCURL=https://github.com/PWN-Term/nethunter-support/archive/refs/heads/master.tar.gz
TERMUX_PKG_SHA256=ebbe32047b9caca6359418fa3d23b8d8230f5451b07fcd264fc9fb800b9a86b2
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_post_make_install() {
	make install
}

