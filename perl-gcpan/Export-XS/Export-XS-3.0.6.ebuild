# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="SYBER"
DIST_VERSION="3.0.6"


inherit perl-module

DESCRIPTION="Replacement for Exporter.pm + const.pm in XS, with C++ API."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Test-Exception
	>=perl-gcpan/XS-Framework-1.5.5
	>=perl-gcpan/XS-Install-1.3.5
	>=perl-gcpan/next-XS-1.0.7
	dev-perl/Test-Deep
	>=perl-gcpan/XS-libpanda-1.5.10
	dev-lang/perl"