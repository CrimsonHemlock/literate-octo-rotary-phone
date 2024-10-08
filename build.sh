#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#rpm-ostree install screen
rpm-ostree install btop wireguard-tools zstd
rpm-ostree install distrobox virt-manager
rpm-ostree install dconf-editor gnome-tweaks guake gnome-console
rpm-ostree install gnome-shell-extension-appindicator gnome-shell-extension-blur-my-shell gnome-shell-extension-caffeine gnome-shell-extension-dash-to-dock
rpm-ostree install vim bat zsh zsh-autosuggestions zsh-syntax-highlighting
rpm-ostree install https://launchpad.net/veracrypt/trunk/1.26.14/+download/veracrypt-1.26.14-CentOS-8-x86_64.rpm

# Package removal
rpm-ostree uninstall gnome-tour

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket
