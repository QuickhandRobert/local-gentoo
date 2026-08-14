EAPI=8

inherit git-r3
EGIT_REPO_URI="https://codeberg.org/sewn/mew.git"
DESCRIPTION="Dynamic menu for Wayland"
HOMEPAGE="https://codeberg.org/sewn/mew"

LICENSE="MIT"
KEYWORDS="-* amd64 x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x64-macos"
SLOT="0"
IUSE=""

RDEPEND="
		media-libs/fcft
		x11-libs/pixman
		dev-libs/tllist
		dev-libs/wayland
		x11-libs/libxkbcommon
"
DEPEND="
		virtual/pkgconfig
		dev-libs/wayland-protocols
"
src_prepare() {
	default_src_prepare
}

src_compile() {
	emake || die
}

src_install() {
	emake PREFIX="" DESTDIR="${D}" MANPREFIX="/usr/share/man" install || die
}
