EAPI=8


DSCRIPTION="Jalali calendar library"
HOMEPAGE="http://nongnu.org/jcal"
SRC_URI="https://github.com/persiancal/jcal/archive/refs/tags/v${PV}.tar.gz"


LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="-* amd64 x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}/${P}/sources

src_prepare() {
	default_src_prepare
	./autogen.sh -a
}

src_configure() {
	econf
}

src_compile() {
        emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
