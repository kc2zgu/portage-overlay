# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="BARTB"
MODULE_VERSION="v3.6"


inherit perl-module

DESCRIPTION="C<Crypt::HSXKPasswd> - A secure memorable password generator inspired by Steve Gibson's Passord Haystacks (L<https://www.grc.com/haystack.htm>), and the famous XKCD password cartoon (L<https://xkcd.com/936/>)."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Math-Random-Secure
	dev-perl/File-Share
	dev-perl/Text-Unidecode
	dev-perl/Type-Tiny
	dev-perl/List-MoreUtils
	>=dev-perl/File-ShareDir-1.104.0
	dev-perl/File-HomeDir
	dev-perl/Email-Valid
	dev-perl/Devel-StackTrace
	dev-perl/libwww-perl
	dev-perl/Clone
	dev-perl/URI
	dev-perl/Mozilla-CA
	dev-perl/JSON
	dev-perl/Module-Build
	dev-perl/DateTime
	dev-perl/Math-Round
	perl-gcpan/Data-Entropy
	dev-perl/Readonly
	dev-lang/perl"