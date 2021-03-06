# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

ETYPE=sources
K_DEFCONFIG="bcmrpi_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-r3 eapi7-ver
EGIT_REPO_URI="https://gitlab.com/pine64-org/linux.git"
EGIT_CHECKOUT_DIR="${WORKDIR}/linux-${PV}-pine64"
EGIT_BRANCH="pine64-kernel-$(ver_cut 1-2).y"
EGIT_CLONE_TYPE="shallow"

DESCRIPTION="Pine64 kernel sources"
HOMEPAGE="https://gitlab.com/pine64-org/linux"

KEYWORDS="~arm64"

src_unpack() {
	git-r3_src_unpack
	unpack_set_extraversion
}

