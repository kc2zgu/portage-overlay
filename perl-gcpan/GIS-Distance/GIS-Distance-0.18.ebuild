# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="BLUEFEET"
MODULE_VERSION="0.18"


inherit perl-module

DESCRIPTION="Calculate geographic distances."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-perl/namespace-clean-0.270.0
	>=dev-perl/Const-Fast-0.14.0
	dev-perl/strictures
	dev-perl/Module-Build
	perl-gcpan/Class-Measure
	dev-perl/Test2-Suite
	>=dev-perl/Module-Build-Tiny-0.39.0
	dev-lang/perl"