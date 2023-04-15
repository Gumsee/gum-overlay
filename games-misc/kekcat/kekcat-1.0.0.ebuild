# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="lolcat but written in C++"
HOMEPAGE="https://github.com/Gumsee/kekcat"
SRC_URI="https://github.com/Gumsee/kekcat/releases/download/$PV/$P.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	./build.sh || die "build.sh failed"
}

src_install() {
	cd build
	emake DESTDIR=${D} install || die "Install Failed"
}
