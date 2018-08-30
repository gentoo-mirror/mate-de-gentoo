# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit mate

if [[ ${PV} != 9999 ]]; then
	KEYWORDS="~amd64 ~arm ~x86"
fi

DESCRIPTION="The MATE Terminal"
LICENSE="GPL-3"
SLOT="0"

IUSE=""

COMMON_DEPEND="dev-libs/atk:0
	>=dev-libs/glib-2.36:2
	>=gnome-base/dconf-0.13.4:0
	x11-libs/gdk-pixbuf:2
	x11-libs/libICE:0
	x11-libs/libSM:0
	x11-libs/libX11:0
	x11-libs/pango:0
	>=x11-libs/gtk+-3.14:3
	>=x11-libs/vte-0.48.4:2.91"


RDEPEND="${COMMON_DEPEND}"

DEPEND="${COMMON_DEPEND}
	app-text/rarian:0
	>=app-text/scrollkeeper-dtd-1:1.0
	app-text/yelp-tools:0
	>=dev-util/intltool-0.50.1:*
	sys-devel/gettext:*
	virtual/pkgconfig:*"
