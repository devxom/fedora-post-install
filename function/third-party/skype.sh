#!/usr/bin/env bash

function installSkypeRepo() {
    cd /tmp
    wget --trust-server-names https://go.skype.com/skypeforlinux-64.rpm
    sudo dnf -q -y install /tmp/skype/skypeforlinux-64.rpm
}