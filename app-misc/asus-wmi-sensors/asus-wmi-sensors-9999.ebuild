# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit linux-mod toolchain-funcs git-r3

DESCRIPTION="Kernel module for ASUS motherboard sensors"
HOMEPAGE="https://github.com/electrified/asus-wmi-sensors"
EGIT_REPO_URI="https://github.com/electrified/asus-wmi-sensors"

LICENSE="GPL-2"
SLOT="0"

KEYWORDS="~amd64"
IUSE=""
RDEPEND="sys-apps/lm-sensors"
CONFIG_CHECK="HWMON ACPI_WMI"
MODULE_NAMES="asus-wmi-sensors(misc:${S})"
BUILD_TARGETS="modules"

pkg_setup() {
	linux-mod_pkg_setup
	BUILD_PARAMS="KERNEL_BUILD=${KERNEL_DIR} TARGET=${KV_FULL} V=1 KBUILD_VERBOSE=1"
}

src_install() {
	linux-mod_src_install
}
