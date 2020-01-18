# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit epatch qmake-utils xdg

DESCRIPTION="Video effects library based on web technologies"
HOMEPAGE="https://www.shotcut.org/ https://github.com/mltframework/webvfx/"

SRC_URI="https://github.com/mltframework/${PN}/releases/download/${PV}/${P}.txz"

KEYWORDS="~amd64"
LICENSE="BSD-3"
SLOT="0"
IUSE=""

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgraphicaleffects:5
	dev-qt/qtgui:5
	dev-qt/qtmultimedia:5
	dev-qt/qtnetwork:5
	dev-qt/qtopengl:5
	dev-qt/qtquickcontrols:5[widgets]
	dev-qt/qtwebkit:5
	dev-qt/qtwebsockets:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
	dev-qt/qt3d:5
	>=media-libs/mlt-6.10.0-r1[ffmpeg,frei0r,qt5,sdl,xml]
"
DEPEND="${RDEPEND}"

src_configure() {
	epatch "${FILESDIR}/webvfx_libdir.patch"
	econf=(
		--enable-gpl
		--enable-gpl3
		--enable-motion-est
		--target-arch=$(tc-arch)
		)

	eqmake5 PREFIX="${EPREFIX}/usr" LIBDIR=$(get_libdir)

}

src_install() {
	emake INSTALL_ROOT="${D}" install
	einstalldocs
}
