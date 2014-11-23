#!/bin/bash
set -e

# Vars you can set
REPO="git://git.openwrt.org/14.07/openwrt.git"
LOCATION="openwrt"
CONFIG="/vagrant/router.config"

# Get the repo, or update.
# `-d` means "Is directory"
if [ ! -d $LOCATION ]; then
    # Not found, clone it.
    git clone $REPO $LOCATION
    cd $LOCATION
else
    # Already there, pull it.
    cd $LOCATION
    git pull
fi

# Build the image.
./scripts/feeds update -a
./scripts/feeds install -a

# Prereqs
make defconfig
make prereq

# Copy the config
cp $CONFIG .config

# Build
make
