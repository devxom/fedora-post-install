#!/usr/bin/env bash
#
# Author: Ilya Reshetnikov <devxom@gmail.com>
#
# Description:
#   Post-instalation scripts for Fedora 25+

# Define based variable
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DISTRO="$(awk -F'=' '/^NAME=/{print$2}' /etc/os-release)"

# Import Functions
source "$DIR/function/log-helpers"

# block run script with `sudo` privileges.
if [ "$(whoami)" = "root" ]; then
  log_error "Please DO NOT execute there script from user who have \`root\` privilege"
  exit 1
fi

# Block run script on unmaintained distributive
if [ "${DISTRO}" != "Fedora" ]; then
  log_error "Sorry, this script was written for Fedora only"
  exit 1
fi