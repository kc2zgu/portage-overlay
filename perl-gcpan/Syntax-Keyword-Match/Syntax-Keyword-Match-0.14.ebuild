# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="PEVANS"
DIST_VERSION="0.14"

inherit perl-module

DESCRIPTION="C<Syntax::Keyword::Match> - a C<match/case> syntax for perl"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-perl/XS-Parse-Keyword-0.42
	dev-perl/Module-Build
	virtual/perl-Test2-Suite
	dev-lang/perl"