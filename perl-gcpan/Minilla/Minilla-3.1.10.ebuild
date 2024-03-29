# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="SKAJI"
DIST_VERSION="v3.1.10"


inherit perl-module

DESCRIPTION="CPAN module authoring tool"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/JSON
	dev-perl/Test-Output
	dev-perl/Module-Runtime
	dev-perl/Test-CPAN-Meta
	>=perl-gcpan/Test-MinimumVersion-Fast-0.04
	dev-perl/Module-Build
	dev-perl/CPAN-Uploader
	dev-perl/App-cpanminus
	>=perl-gcpan/Data-Section-Simple-0.07
	dev-perl/File-Which
	perl-gcpan/Config-Identity
	dev-perl/Try-Tiny
	>=perl-gcpan/Text-MicroTemplate-0.24
	dev-perl/Moo
	>=dev-perl/Module-CPANfile-1.100.400
	perl-gcpan/Test-PAUSE-Permissions
	dev-perl/URI
	>=perl-gcpan/TOML-0.97
	dev-perl/File-pushd
	dev-perl/File-Copy-Recursive
	dev-perl/Version-Next
	dev-perl/Pod-Markdown
	>=perl-gcpan/Spellunker-0.4.0
	dev-perl/Test-Pod
	>=dev-perl/Module-Build-Tiny-0.39.0
	dev-perl/Software-License
	dev-perl/Test-Requires
	dev-lang/perl"
