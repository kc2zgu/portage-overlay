# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit autotools eutils xdg-utils gnome2-utils toolchain-funcs desktop

DESCRIPTION="A flexible, modular Printed Circuit Board editor"
HOMEPAGE="http://repo.hu/projects/pcb-rnd/"
SRC_URI="http://repo.hu/projects/${PN}/releases/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="dbus debug doc gcode gif gtk jpeg m4lib-png motif nelma opengl png
test tk toporouter xrender"
# toporouter-output USE flag removed, there seems to be no result

CDEPEND="dev-libs/glib:2
	gif? ( media-libs/gd )
	gtk? ( x11-libs/gtk+:2
		x11-libs/pango
		x11-libs/gtkglext
		dbus? ( sys-apps/dbus ) )
	jpeg? ( media-libs/gd[jpeg] )
	motif? ( !gtk? (
		>=x11-libs/motif-2.3:0
		dbus? ( sys-apps/dbus )
		xrender? ( >=x11-libs/libXrender-0.9 ) ) )
	nelma? ( media-libs/gd[png] )
	opengl? ( virtual/opengl )
	gcode? ( media-libs/gd[png] )
	virtual/libintl
	png? ( media-libs/gd[png] )
	m4lib-png? ( media-libs/gd[png] )
	tk? ( >=dev-lang/tk-8:0 )
	>=sci-libs/librnd-3.1.0"
#toporouter-output? ( x11-libs/cairo )

DEPEND="${CDEPEND}
	test? (
		sci-electronics/gerbv
		virtual/imagemagick-tools
	)
	>=dev-util/intltool-0.35
	virtual/pkgconfig
	sys-devel/gettext"

RDEPEND="${CDEPEND}
	sci-electronics/electronics-menu"

DOCS="AUTHORS README"

pkg_setup() {
	if use gtk && use motif; then
		elog "Can only build for GTK+ or Motif/Lesstif GUI. GTK+ has priority."
	fi
	if !(use gtk || use motif); then
		elog "Building without GUI, make sure you know what you are doing."
	fi
	if use dbus && !(use gtk || use motif); then
		elog "dbus needs GTK or Motif/Lesstif GUI. Try USE=-dbus or USE=gtk or USE=motif."
	fi
	if use opengl && !(use gtk); then
		elog "GL drawing needs GTK"
	fi
	if (use gtk || (! use gtk && ! use motif)) &&  (use xrender); then
		elog "The XRender extension is only usable with the Motif/Lesstif GUI."
	fi
}

src_prepare() {
	default

	if use test; then
		# adapt the list of tests to run according to USE flag settings
		if ! use png; then
			sed -i '/^hid_png/d' tests/tests.list || die
		fi
		if ! use gcode; then
			sed -i '/^hid_gcode/d' tests/tests.list || die
		fi
		# fix wrong accounting of skipped and passed tests
		epatch "${FILESDIR}"/${P}-tests.diff
	fi
	sed -i "s/make/make ${MAKEOPTS}/" configure || die
}

src_configure() {
	local myconf
	#if ! use gtk ; then
	#	myconf="--disable-hid_gtk2_gdk --disable-hid_gtk2_gl --disable-hid_gtk3_cairo"
	#	fi
	#if ! use motif ; then
	#	myconf="--disable-hid_lesstif"
	#fi

	local exporters="bom gerber ps ipcd356"
	if (use png || use jpeg || use gif) ; then
		exporters="${exporters} png"
	else
		myconf="${myconf} --disable-gd"
	fi
	use nelma && exporters="${exporters} nelma"
	use gcode && exporters="${exporters} gcode"
	use tk || export WISH="${EPREFIX}/bin/true"

	./configure \
		--prefix=/usr ${myconf} --libarchdir=$(get_libdir)
}
# toporouter-output USE flag removed, there seems to be no result
#		$(use_enable toporouter-output) \

src_compile() {
	emake AR="$(tc-getAR)"
}

src_install() {
	default

	# move doc files to the right directory (FHS policy warning)
	#if [ -d "${D}/usr/share/doc/${PN}" ]; then
	#	mv "${D}/usr/share/doc/${PN}/*" "${D}/usr/share/doc/${PF}/" || die
	#	rmdir "${D}/usr/share/doc/${PN}" || die
	#fi

	make_desktop_entry pcb-rnd PCB-rnd pcb "Engineering;Electronics"
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}
