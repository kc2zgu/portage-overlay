# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Dynamic DNS client"
EGIT_REPO_URI="https://github.com/kc2zgu/dhost"
HOMEPAGE="https://github.com/kc2zgu/dhost"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-lang/perl
	dev-perl/libwww-perl"

src_install() {
	dosbin dhost-update.pl
	dodoc README.md
}
