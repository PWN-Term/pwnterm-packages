TERMUX_PKG_HOMEPAGE=https://gitlab.com/pwn-hunter/packages/base
TERMUX_PKG_DESCRIPTION="Just for neofetch and other possible things "
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=1.0.5
TERMUX_PKG_SRCURL=https://gitlab.com/pwn-hunter/packages/base/-/archive/master/base-master.tar.gz
TERMUX_PKG_SHA256=c1c68afe982dc6091a7d92fcecb1363d993a8f99f2bdf442ebc3217d47990791
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_post_make_install() {
	make install
}

