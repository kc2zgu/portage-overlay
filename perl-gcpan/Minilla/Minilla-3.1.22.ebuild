# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="SYOHEX"
DIST_VERSION="v3.1.22"


inherit perl-module

DESCRIPTION="CPAN module authoring tool"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/CPAN-Uploader
	dev-perl/Try-Tiny
	>=perl-gcpan/Test-MinimumVersion-Fast-0.04
	perl-gcpan/Test-PAUSE-Permissions
	>=perl-gcpan/Data-Section-Simple-0.07
	dev-perl/File-pushd
	dev-perl/File-Which
	dev-perl/Test-CPAN-Meta
	dev-perl/Test-Output
	dev-perl/Moo
	dev-perl/Module-Build
	>=dev-perl/Module-Build-Tiny-0.46.0
	dev-perl/JSON
	dev-perl/Test-Requires
	>=dev-perl/Module-CPANfile-1.100.400
	dev-perl/Module-Runtime
	dev-perl/URI
	>=dev-perl/App-cpanminus-1.704.600
	dev-perl/Test-Pod
	dev-perl/File-Copy-Recursive
	dev-perl/Version-Next
	>=dev-perl/Pod-Markdown-3.300.0
	>=perl-gcpan/Text-MicroTemplate-0.24
	dev-perl/Software-License
	>=perl-gcpan/Spellunker-0.4.0
	dev-lang/perl"