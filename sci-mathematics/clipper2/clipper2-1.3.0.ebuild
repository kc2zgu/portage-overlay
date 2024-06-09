EAPI=8

inherit cmake

DESCRIPTION="A Polygon Clipping and Offsetting library"
HOMEPAGE="https://www.angusj.com/clipper2/"
SRC_URI="https://github.com/AngusJohnson/Clipper2/archive/refs/tags/Clipper2_${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="test"

S="${WORKDIR}/Clipper2-Clipper2_${PV}/CPP"

src_configure() {
	local mycmakeargs=(
		-DBUILD_SHARED_LIBS=ON
		-DCLIPPER2_EXAMPLES=OFF
		-DCLIPPER2_TESTS=OFF
		-DCLIPPER2_UTILS=OFF
	)

	cmake_src_configure
}
