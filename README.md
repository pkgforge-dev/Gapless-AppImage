# Gapless-AppImage 🐧

[![GitHub Downloads](https://img.shields.io/github/downloads/pkgforge-dev/Gapless-AppImage/total?logo=github&label=GitHub%20Downloads)](https://github.com/pkgforge-dev/Gapless-AppImage/releases/latest)
[![CI Build Status](https://github.com//pkgforge-dev/Gapless-AppImage/actions/workflows/blank.yml/badge.svg)](https://github.com/pkgforge-dev/Gapless-AppImage/releases/latest)

<p align="center">
  <img src="https://gitlab.gnome.org/neithern/g4music/-/raw/master/data/icons/hicolor/scalable/apps/app.svg?ref_type=heads" width="128" />
</p>

* [Latest Stable Release](https://github.com/pkgforge-dev/Gapless-AppImage/releases/latest)

---

AppImage made using [sharun](https://github.com/VHSgunzo/sharun), which makes it extremely easy to turn any binary into a portable package without using containers or similar tricks. 

**This AppImage bundles everything and should work on any linux distro, even on musl based ones.**

It is possible that this appimage may fail to work with appimagelauncher, I recommend these alternatives instead: 

* [AM](https://github.com/ivan-hc/AM) `am -i gapless` or `appman -i gapless`

* [dbin](https://github.com/xplshn/dbin) `dbin install gapless.appimage`

* [soar](https://github.com/pkgforge/soar) `soar install gapless`

This appimage works without fuse2 as it can use fuse3 instead, it can also work without fuse at all thanks to the [uruntime](https://github.com/VHSgunzo/uruntime)

<details>
  <summary><b><i>raison d'être</i></b></summary>
    <img src="https://github.com/user-attachments/assets/d40067a6-37d2-4784-927c-2c7f7cc6104b" alt="Inspiration Image">
  </a>
</details>

More at: [AnyLinux-AppImages](https://pkgforge-dev.github.io/Anylinux-AppImages/)
