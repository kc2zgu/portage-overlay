# Copyright 2020 Stephen Cavilia

EAPI=7

inherit git-r3 cmake

DESCRIPTION="Display battery information from UPower"
EGIT_REPO_URI="https://github.com/kc2zgu/ubatt"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="sys-power/upower"
