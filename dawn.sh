#!/bin/bash

################################################
# Author: azazelm3dj3d                         #
# GitHub: https://github.com/azazelm3dj3d/dawn #
################################################

# Dawn is a free and open source script for adding security tools to Asahi Linux, a distribution created for silicon-based (M1) Macbook devices. Dawn is focused on offering security packages and tools.

NAME="Dawn"
VERSION="0.2.0"
METADATA=$(echo "$NAME | $VERSION")
LOG=/tmp/dawn.log

# Only errors will be logged. Normal messages will be printed to stdout.
if [[ ! -f $LOG ]]
then
    touch $LOG
fi

# Basic Packages
# These are some of the valuable packages/commands that don't require a lot of configuration or setup. Simply available under the package manager.
function install_basic_pkgs() {
    echo "$METADATA"
    echo ""
    echo "Starting installation process..."
    echo ""

    # You can remove/add packages as you see fit here. Just make sure they're available under pacman.
    # You can also add custom arguments via arguments. Example: "./dawn.sh tool1 tool2 tool3 ..."
    # You can search available packages here: https://archlinux.org/packages/
    if [[ $# -gt 0 ]]
    then
        packages=($@)
    else
        packages=(
            nmap
            hashcat
            hydra
        )
    fi

    echo "The following packages will be installed:"
    echo ""

    for i in "${packages[@]}"
    do
        echo "$i"
    done

    echo ""
    read -p "Continue? " continue_install

    if [[ "$continue_install" == "yes" ]] || [[ "$continue_install" == "y" ]]; then
        echo ""

        for i in "${packages[@]}"
        do
            echo "Installing: $i"
            pacman -S $i
            echo ""
        done
    elif [[ "$continue_install" == "no" ]] || [[ "$continue_install" == "n" ]]; then
        echo "Exiting installer..."
        exit 0
    else
        echo "Unable to process input."
        echo "[$(date +"%B %d, %Y %H:%M:%S")] $i was not installed" >> $LOG
        exit 1
    fi
}

function complete() {
    echo "Thank you for installing the Dawn configuration for Asahi Linux."
    echo "A log file is available under '/tmp/dawn.log' if you ran into any issues during the installation."
}

install_basic_pkgs
complete
