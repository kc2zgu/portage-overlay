# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="PEVANS"
DIST_VERSION="0.43"


inherit perl-module

DESCRIPTION="C<Devel::MAT> - Perl Memory Analysis Tool"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Module-Pluggable
	dev-perl/Heap
	>=dev-perl/File-ShareDir-1.116.0
	>=perl-gcpan/Commandable-0.04
	>=perl-gcpan/String-Tagged-0.16
	dev-perl/Syntax-Keyword-Try
	dev-perl/Module-Build
	dev-perl/List-UtilsBy
	>=perl-gcpan/String-Tagged-Terminal-0.04
	perl-gcpan/Test-Identity
	>=perl-gcpan/Devel-MAT-Dumper-0.42
	>=perl-gcpan/Struct-Dumb-0.12
	dev-lang/perl"
