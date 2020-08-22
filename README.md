![Logo](docs/logo-30.png) i3: A tiling window manager
=====================================================

[![Build Status](https://travis-ci.org/i3/i3.svg?branch=next)](https://travis-ci.org/i3/i3)
[![Issue Stats](https://img.shields.io/github/issues/i3/i3.svg)](https://github.com/i3/i3/issues)
[![Pull Request Stats](https://img.shields.io/github/issues-pr/i3/i3.svg)](https://github.com/i3/i3/pulls)

i3 is a tiling window manager for X11.

For more information about i3, please see [the project's website](https://i3wm.org/) and [online documentation](https://i3wm.org/docs/).

For information about contributing to i3, please see [CONTRIBUTING.md](.github/CONTRIBUTING.md).

## Purpose of this repo

Vanilla i3 doesn't play that well with KDE/Plasma, that's why I'm maintaining this repo.

### Branches

* **stable**: the stable branch of the official i3 repo which the patches are applied to.

* **kde-master**: that's what you want if you want to use i3 with KDE/Plasma (forked from https://github.com/sLite/i3 and maintained here by me).

* **kde-wm-icons-master**: My personal branch with some extra stuff merged like window-icons patch from https://github.com/laur89/i3-extras or a PKGBUILD for Arch packaging.

I will sometimes **rebase** `kde-master` and `kde-wm-icons-master` to update with the official i3 repo.

### Features

* Proper handling of KDE/Plasma desktop (_NET_WM_WINDOW_TYPE_DESKTOP)
* Proper handling of KDE/Plasma popups and floating panels (mostly widget stuff) (_NET_WM_STATE_STAYS_ON_TOP)

### i3-config

No special settings needed according to my knowledge, it works OOTB.

You can find these following config lines interesting for more integration:

```
# KDE Logout prompt on $mod+Escape
bindsym $mod+Escape exec --no-startup-id "qdbus org.kde.ksmserver /KSMServer logout 1 2 3"

# Compositor
exec --no-startup-id picom

# Kill the KDE system tray if you want another system tray
exec --no-startup-id killall xembedsniproxy
```

### KDE config

Create `~/.config/plasma-workspace/env/wm.sh` and fill it with:

```
# Disable KWin and use i3 as WM
export KDEWM=/usr/bin/i3
```

Then `chmod +x ~/.config/plasma-workspace/env/wm.sh`

### Credits

* Michael Stapelberg for this awesome project, and all the contributors for their work.
* Marius Muja for his KDE fixes on earlier versions of i3.
* sLite for his KDE patches on current versions of i3.
* Mickaël Thomas for his window icons patch.
