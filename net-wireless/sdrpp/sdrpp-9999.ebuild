# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

MY_PN=SDRPlusPlus

DESCRIPTION="SDR++, Cross-Platform SDR Software"
HOMEPAGE="https://github.com/AlexandreRouma/SDRPlusPlus"
EGIT_REPO_URI="https://github.com/AlexandreRouma/SDRPlusPlus"

LICENSE="GPL-3"
SLOT=0
KEYWORDS="~amd64"
IUSE="airspy bladerf hackrf limesdr plutosdr portaudio rtaudio rtlsdr sdrplay soapysdr"

RDEPEND="sci-libs/fftw:3.0
	media-libs/glfw
	media-libs/glew:0
	sci-libs/volk
	app-arch/zstd
	airspy? ( net-wireless/airspy )
	bladerf? ( net-wireless/bladerf )
	hackrf? ( net-libs/libhackrf )
	limesdr? ( net-wireless/limesuite )
	plutosdr? ( net-libs/libiio net-libs/libad9361-iio )
	portaudio? ( media-libs/portaudio )
	rtaudio? ( media-libs/rtaudio )
	rtlsdr? ( net-wireless/rtl-sdr )
	soapysdr? ( net-wireless/soapysdr )"

PATCHES=(
	"${FILESDIR}/${PN}-cmake-libfec-static.patch"
	"${FILESDIR}/${PN}-modules-libdir.patch"
)

src_configure() {
	local mycmakeargs=(
		-DOPT_BUILD_AIRSPY_SOURCE=$(usex airspy ON OFF)
		-DOPT_BUILD_AIRSPYHF_SOURCE=$(usex airspy ON OFF)
		-DOPT_BUILD_BLADERF_SOURCE=$(usex bladerf ON OFF)
		-DOPT_BUILD_HACKRF_SOURCE=$(usex hackrf ON OFF)
		-DOPT_BUILD_LIMESDR_SOURCE=$(usex limesdr ON OFF)
		-DOPT_BUILD_RTL_SDR_SOURCE=$(usex rtlsdr ON OFF)
		-DOPT_BUILD_SDRPLAY_SOURCE=$(usex sdrplay ON OFF)
		-DOPT_BUILD_SOAPY_SOURCE=$(usex soapysdr ON OFF)
		-DOPT_BUILD_PLUTOSDR_SOURCE=$(usex plutosdr ON OFF)
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install

	einfo "Moving libraries to ${EPREFIX}usr/$(get_libdir)"

	mv "${D}/${EPREFIX}usr/lib" "${D}/${EPREFIX}usr/$(get_libdir)"
}
