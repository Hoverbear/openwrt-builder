#!/usr/bin/env bash
set -e
APT="apt-get -q -y"
PACKAGES="git subversion unzip gettext gawk libncurses5-dev zlib1g-dev build-essential"

# Update
$APT update
$APT upgrade

# Install Applications
$APT install $PACKAGES
