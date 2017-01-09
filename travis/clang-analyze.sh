#!/bin/sh

set -e
set -x

mkdir -p deb/DIST-clang
tar xf *.tar.bz2 -C deb/DIST-clang --strip-components=1
(cd deb/DIST-clang && scan-build -o ../CLANG --html-title="Analysis of i3 v$(git describe --tags)" make -j8)
mv deb/CLANG/*/* deb/CLANG
