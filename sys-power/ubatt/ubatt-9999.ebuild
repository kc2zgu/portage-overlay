# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="Display battery information from UPower"
EGIT_REPO_URI="https://github.com/kc2zgu/ubatt"
HOMEPAGE="https://github.com/kc2zgu/ubatt"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="sys-power/upower"
