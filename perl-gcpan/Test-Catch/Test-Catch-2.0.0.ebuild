# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="SYBER"
DIST_VERSION="2.0.0"


inherit perl-module

DESCRIPTION="Run C++ catch tests from perl test file"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Test-Deep
	>=perl-gcpan/XS-Install-1.2.16
	perl-gcpan/XS-libcatch
	dev-lang/perl"