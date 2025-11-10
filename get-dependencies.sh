#!/bin/sh

set -eux

ARCH="$(uname -m)"
DEBLOATED_PKGS_INSTALLER="https://raw.githubusercontent.com/pkgforge-dev/Anylinux-AppImages/refs/heads/main/useful-tools/get-debloated-pkgs.sh"

echo "Installing build dependencies for sharun & AppImage integration..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm \
	base-devel \
	curl \
	desktop-file-utils \
	git \
	libxtst \
	wget \
	xorg-server-xvfb \
	zsync
echo "Building the app & it's dependencies..."
echo "---------------------------------------------------------------"
sed -i 's|EUID == 0|EUID == 69|g' /usr/bin/makepkg
git clone https://aur.archlinux.org/gapless.git/ ./gapless && (
	cd ./gapless
        makepkg -fs --noconfirm
	ls -la .
	pacman --noconfirm -U *.pkg.tar.*
        pacman -Syu --noconfirm \
	gst-plugins-bad \
	gst-plugins-base \
	gst-plugins-good \
	gst-plugins-ugly \
	pipewire-jack
)

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
wget --retry-connrefused --tries=30 "$DEBLOATED_PKGS_INSTALLER" -O ./get-debloated-pkgs.sh
chmod +x ./get-debloated-pkgs.sh
./get-debloated-pkgs.sh libxml2-mini mesa-nano gtk4-mini gdk-pixbuf2-mini librsvg-mini opus-mini

echo "Extracting the app version into a version file"
echo "---------------------------------------------------------------"
pacman -Q gapless | awk '{print $2; exit}' > ~/version
