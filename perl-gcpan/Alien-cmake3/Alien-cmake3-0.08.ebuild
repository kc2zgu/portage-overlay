# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="PLICEASE"
DIST_VERSION="0.08"


inherit perl-module

DESCRIPTION="Find or download or build cmake 3 or better"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Path-Tiny
	dev-perl/File-Which
	dev-perl/Capture-Tiny
	>=dev-perl/Alien-Build-2.480.0
	dev-perl/Test2-Suite
	dev-lang/perl"