#!/usr/bin/env bash
#
# Author: Ilya Reshetnikov <devxom@gmail.com>
#
# Description:
#   Post-instalation scripts for Fedora 25+

# Define based variable
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Import Functions
source "$DIR/function/log-helpers"

# block run script with `sudo` privileges.
if [ "$(whoami)" = "root" ]; then
  log_error "Please DO NOT execute there script from user who have \`root\` privilege"
  exit 1
fi
