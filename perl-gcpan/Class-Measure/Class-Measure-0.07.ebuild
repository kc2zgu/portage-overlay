# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="BLUEFEET"
MODULE_VERSION="0.07"


inherit perl-module

DESCRIPTION="Calculate measurements of length."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Test2-Suite
	dev-perl/Module-Build
	>=dev-perl/Sub-Exporter-0.987.0
	>=dev-perl/Module-Build-Tiny-0.39.0
	dev-lang/perl"