# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=5

MODULE_AUTHOR="SYBER"
MODULE_VERSION="3.0.4"


inherit perl-module

DESCRIPTION="Replacement for Exporter.pm + const.pm in XS, with C++ API."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Test-Exception
	>=perl-gcpan/next-XS-1.0.7
	>=perl-gcpan/XS-Install-1.2.16
	>=perl-gcpan/XS-libpanda-1.3.14
	>=perl-gcpan/XS-Framework-1.3.1
	dev-perl/Test-Deep
	dev-lang/perl"