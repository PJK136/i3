![Logo](docs/logo-30.png) i3: A tiling window manager
=====================================================

[![Build Status](https://github.com/i3/i3/actions/workflows/main.yml/badge.svg)](https://github.com/i3/i3/actions/workflows/main.yml)
[![Issue Stats](https://img.shields.io/github/issues/i3/i3.svg)](https://github.com/i3/i3/issues)
[![Pull Request Stats](https://img.shields.io/github/issues-pr/i3/i3.svg)](https://github.com/i3/i3/pulls)

[![Packages](https://repology.org/badge/latest-versions/i3.svg)](https://repology.org/metapackage/i3/versions)
[![Packages](https://repology.org/badge/tiny-repos/i3.svg)](https://repology.org/metapackage/i3/versions)

i3 is a tiling window manager for X11.

For more information about i3, please see [the project's website](https://i3wm.org/) and [online documentation](https://i3wm.org/docs/).

For information about contributing to i3, please see [CONTRIBUTING.md](.github/CONTRIBUTING.md).

## Purpose of this repo

Vanilla i3 doesn't play that well with KDE/Plasma, that's why I'm maintaining this repo.

### Branches

* **stable**: the stable branch of the official i3 repo which the patches are applied to.

* **kde-master**: that's what you want if you want to use i3 with KDE/Plasma (forked from https://github.com/sLite/i3 and maintained here by me).

* **kde-wm-icons-master**: my personal branch with some extra stuff like PKGBUILD for Arch packaging.

I will sometimes **rebase** `kde-master` and `kde-wm-icons-master` to update with the official i3 repo.

### Features

* Proper handling of KDE/Plasma desktop (_NET_WM_WINDOW_TYPE_DESKTOP)
* Proper handling of KDE/Plasma popups and floating panels (mostly widget stuff) (_NET_WM_STATE_STAYS_ON_TOP)

### Configuration

Please see https://github.com/heckelson/i3-and-kde-plasma

Almost everything applies except "Killing the existing window that covers everything" because this fork enables us to keep the Plasma Desktop window from plasmashell in the background.

You may find the following i3 config lines interesting for more integration:

```
# Kill the KDE system tray if you want another system tray
exec --no-startup-id killall xembedsniproxy

# Better integration for spectacle
for_window [class="spectacle"] floating enable
no_focus [class="spectacle"]
```

### Credits

* Michael Stapelberg for this awesome project, and all the contributors for their work.
* Marius Muja for his KDE fixes on earlier versions of i3.
* sLite for his KDE patches on current versions of i3.
