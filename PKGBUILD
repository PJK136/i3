# Maintainer: Paul Du <du.paul136@gmail.com>
# Contributor: Jelle van der Waa <jelle@vdwaa.nl>
# Contributor: Levente Polyak <anthraxx@archlinux.org>
# Contributor: Daniel M. Capella <polyzen@archlinux.org>
# Contributor: Thorsten Töpper <atsutane-tu@freethoughts.de>

pkgname=i3-kde-git
pkgver=4.24
pkgrel=1
pkgdesc='Improved dynamic tiling window manager (with KDE patches)'
arch=('x86_64')
url=https://github.com/PJK136/i3
license=('BSD')
groups=('i3')
depends=('libev' 'libxkbcommon-x11' 'pango' 'startup-notification'
         'xcb-util-cursor' 'xcb-util-keysyms' 'xcb-util-wm' 'xcb-util-xrm'
         'yajl')
makedepends=('meson' 'xmlto')
optdepends=('dmenu: for the default program launcher'
            'rofi: for a modern dmenu replacement'
            'i3lock: for the default screen locker'
            'xss-lock: for the default screen locker'
            'i3status: for the default status bar generator'
            'perl: for i3-save-tree and i3-dmenu-desktop'
            'perl-anyevent-i3: for i3-save-tree'
            'perl-json-xs: for i3-save-tree')
replaces=('i3' 'i3-wm' 'i3bar' 'i3-git' 'i3bar-git')
provides=('i3-wm')
backup=('etc/i3/config')
source=('git+https://github.com/PJK136/i3.git#branch=kde-wm-icons-master')
sha1sums=('SKIP')

_gitname='i3'

pkgver() {
  cd "$_gitname"
  git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

build() {
  cd "$_gitname"
  arch-meson build
  ninja -C build
}

package() {
  cd "$_gitname"
  DESTDIR="$pkgdir" ninja -C build install
  install -Dm644 -t "$pkgdir"/usr/share/licenses/$pkgname LICENSE
}

# vim:set ts=2 sw=2 et:
