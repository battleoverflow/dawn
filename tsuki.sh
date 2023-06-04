#!/bin/bash

# Tsuki is a free and open source script for adding security tools to Asahi Linux, a distribution created for silicon-based (M1) Macbook devices. Tsuki is focused on offering security packages and tools.

NAME="Tsuki"
VERSION="0.1.1"
METADATA=$(echo "$NAME | $VERSION")
LOG=/tmp/tsuki.log

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
    # You can search available packages here: https://archlinux.org/packages/
    packages=(
        nmap
    )

    echo "The following packages will be installed:"
    echo ""

    for i in "${packages[@]}"
    do
        echo "$i"
    done

    echo ""
    read -p "Continue? " continue_install

    if [[ "$continue_install" == "yes" ]] || [[ "$continue_install" == "y" ]]; then
        pacman_install=$(pacman -S $i)

        echo ""

        for i in "${packages[@]}"
        do
            echo "Installing: $i"
            $pacman_install

            # Checking that packages are installed and in the PATH
            if type -p "$i" &> /dev/null
            then
                echo "$i installed successfully"
            fi
            
            if ! type -p "$i" &> /dev/null
            then
                echo "$i was not installed; skipping"
                echo "[$(date +"%B %d, %Y %H:%M:%S")] $i was not installed; skipping" >> $LOG
            fi

            echo ""

        done
    elif [[ "$continue_install" == "no" ]] || [[ "$continue_install" == "n" ]]; then
        echo "Exiting installer..."
        exit 0
    elif [[ -z "$continue_install" ]]
    then
        echo "Empty string provided. Try again."
        echo "[$(date +"%B %d, %Y %H:%M:%S")] $i was not installed" >> $LOG
        exit 1
    else
        echo "Unable to process statement. Please type yes or no."
        echo "[$(date +"%B %d, %Y %H:%M:%S")] $i was not installed" >> $LOG
        exit 1
    fi
}

function complete() {
    echo "Thank you for installing the Tsuki configuration for Asahi Linux."
    echo "A log file is available under '/tmp/tsuki.log' if you ran into any issues or problems during the installation."
}

install_basic_pkgs
complete
