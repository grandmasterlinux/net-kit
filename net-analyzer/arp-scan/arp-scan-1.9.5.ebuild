# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools

DESCRIPTION="ARP scanning and fingerprinting tool"
HOMEPAGE="https://github.com/royhills/arp-scan"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	net-libs/libpcap
"
RDEPEND="
	${DEPEND}
	dev-lang/perl
"

src_prepare() {
	default
	eautoreconf
}