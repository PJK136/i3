# Maintainer: Paul Du <du.paul136@gmail.com>
# Contributor: Thorsten Toepper <atsutane at freethoughts dot de>
# Contributor: William Giokas <1007380@gmail.com>

pkgname=i3-kde-git
pkgver=4.18.3
pkgrel=1
pkgdesc='An improved dynamic tiling window manager (with KDE patches)'
url="https://github.com/PJK136/i3"
arch=(x86_64)
license=(BSD)
depends=(xcb-util-cursor xcb-util-keysyms xcb-util-wm xcb-util-xrm libev yajl startup-notification
         pango libxkbcommon-x11)
makedepends=(git bison flex asciidoc xmlto)
optdepends=('dmenu: As menu.'
            'i3lock: For locking your screen.'
            'i3status: To display systeminformation with a bar.'
            'perl: i3-save-tree and i3-dmenu-desktop'
            'perl-anyevent-i3: Features like saving the layout.'
            'perl-json-xs: Features like saving the layout.')
backup=(etc/i3/config)
groups=(i3)
provides=(i3-wm)
replaces=(i3-wm i3bar i3-git i3bar-git)
options=(docs)
source=('git+https://github.com/PJK136/i3.git#branch=kde-wm-icons-master')
sha1sums=('SKIP')

_gitname='i3'

pkgver() {
  cd "$_gitname"
  git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

prepare() {
  mkdir build
  cd "$_gitname"
  autoreconf -fvi
}

build() {
  cd build

  "../$_gitname/configure" --prefix=/usr --sysconfdir=/etc
  make
}

package() {
  cd build

  make DESTDIR="$pkgdir" install
  install -Dt "$pkgdir/usr/share/man/man1" -m644 man/*.1
  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 ../$_gitname/LICENSE
}

# vim:set ts=2 sw=2 et:
