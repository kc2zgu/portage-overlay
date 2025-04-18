# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_{8..9})
inherit cmake desktop python-single-r1 xdg

MY_PN=Cura

DESCRIPTION="A 3D model slicing application for 3D printing"
HOMEPAGE="https://github.com/Ultimaker/Cura"
SRC_URI="https://github.com/Ultimaker/${MY_PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"
IUSE="debug +usb zeroconf"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

BDEPEND="sys-devel/gettext"
RDEPEND="${PYTHON_DEPS}
	~dev-libs/libarcus-${PV}:=[python,${PYTHON_SINGLE_USEDEP}]
	~dev-libs/libcharon-${PV}[${PYTHON_SINGLE_USEDEP}]
	~dev-libs/libsavitar-${PV}:=[python,${PYTHON_SINGLE_USEDEP}]
	~dev-python/pynest2d-${PV}[${PYTHON_SINGLE_USEDEP}]
	~dev-python/uranium-${PV}[${PYTHON_SINGLE_USEDEP}]
	~media-gfx/curaengine-${PV}
	~media-gfx/fdm-materials-4.9.1
	dev-qt/qtquickcontrols[widgets]
	$(python_gen_cond_dep '
			dev-python/importlib_metadata[${PYTHON_USEDEP}]
			dev-python/keyring[${PYTHON_USEDEP}]
			dev-python/mypy[${PYTHON_USEDEP}]
			dev-python/numpy[${PYTHON_USEDEP}]
			dev-python/PyQt5[-debug,${PYTHON_USEDEP}]
			dev-python/PyQt5-sip[${PYTHON_USEDEP}]
			dev-python/requests[${PYTHON_USEDEP}]
			dev-python/sentry-sdk[${PYTHON_USEDEP}]
			sci-libs/shapely[${PYTHON_USEDEP}]
			usb? ( dev-python/pyserial[${PYTHON_USEDEP}] )
			zeroconf? ( dev-python/zeroconf[${PYTHON_USEDEP}] )
	')"
DEPEND="${RDEPEND}"

DOCS=(README.md)
S="${WORKDIR}/${MY_PN}-${PV}"

src_prepare() {
	sed -i -e "s:lib\${LIB_SUFFIX}/python\${Python3_VERSION_MAJOR}.\${Python3_VERSION_MINOR}/site-packages:$(python_get_sitedir):g" CMakeLists.txt || die

	cmake_src_prepare
}

src_configure() {
	# trimesh not available in portage
	local PLUGINS_DISABLED="AMFReader;TrimeshReader"
	if use !usb; then
		PLUGINS_DISABLED="${PLUGINS_DISABLED};USBPrinting"
	fi

	local mycmakeargs=(
	  -DCURA_BUILDTYPE="ebuild"
	  -DCURA_VERSION=${PV}
		-DCURA_NO_INSTALL_PLUGINS=${PLUGINS_DISABLED}
		-DCURA_DEBUGMODE=$(usex debug)
	)
	cmake_src_configure
}

src_install() {
	cmake_src_install
	doicon icons/*.png
	python_fix_shebang "${D}/usr/bin/cura"
	python_optimize "${D}${get_libdir}"
}
