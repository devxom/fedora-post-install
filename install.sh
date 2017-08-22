#!/usr/bin/env bash
#
# Author: Ilya Reshetnikov <devxom@gmail.com>
#
# Description:
#   Post-instalation scripts for Fedora 25+

# Define based variable
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DO_INSTALL="sudo -E dnf install -y"
DO_UPDATE="sudo -E dnf update -y"

# Import Functions
source "$DIR/function/log-helpers"
source "$DIR/function/utils"
source "$DIR/function/add-repository"
source "$DIR/function/zsh"
source "$DIR/function/font"
source "$DIR/function/development"
source "$DIR/thirdparty"

# Block run script with `sudo` privileges.
if [ "$(whoami)" = "root" ]; then
  log_error "Please DO NOT execute there script from user who have \`root\` privilege"
  exit 1
fi
#
## Block run script on unmaintained distributive
#detect_distibutive
#
## Detect current running user home directory
#detect_home
#
## Detect architecture
#detect_architecture
#
## ensure we are running with latest dnf
#sudo dnf update -y dnf
#
## system update
#sudo -E dnf -q -y distro-sync
#
## enable sshd.service on boot
#sudo -E systemctl enable sshd
#sudo -E systemctl start sshd
#
#InstallPackages
#
#OhMyZshInstall

thirdparty

log_info "Bootstrap script execute end";
exit 0