# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="PEVANS"
DIST_VERSION="0.23"


inherit perl-module

DESCRIPTION="C<String::Tagged> - string buffers with value tags on extents"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="virtual/perl-Test2-Suite
	dev-perl/Module-Build
	dev-lang/perl"