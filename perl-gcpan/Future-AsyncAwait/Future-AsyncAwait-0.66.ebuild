# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="PEVANS"
DIST_VERSION="0.66"

inherit perl-module

DESCRIPTION="C<Future::AsyncAwait> - deferred subroutine syntax for futures"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-perl/XS-Parse-Keyword-0.42
	dev-perl/Future
	dev-perl/Module-Build
	virtual/perl-Test2-Suite
	>=dev-perl/XS-Parse-Sublike-0.21
	dev-lang/perl"