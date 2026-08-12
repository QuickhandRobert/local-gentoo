EAPI=8

inherit git-r3
DSCRIPTION="Mount Android phones on Linux with adb. No root required"
HOMEPAGE="https://github.com/spion/adbfs-rootless"
EGIT_REPO_URI="https://github.com/spion/adbfs-rootless.git"


LICENSE="BSD-2"
SLOT="0"
KEYWORDS="-* amd64 x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

DEPEND=""
RDEPEND="
	dev-util/android-tools
	sys-fs/fuse
"

src_prepare() {
	default_src_prepare
}

src_compile() {
        emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
