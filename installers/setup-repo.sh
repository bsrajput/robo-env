#!/usr/bin/env bash

# Author: Abhishek Anand Amralkar
# This script add the Debian Buster repo

set -o errexit
set -o pipefail
set -o nounset

unset CDPATH
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SOURCE_DIR=/etc/apt
SOURCE_FILE=${SOURCE_DIR}/sources.list

update_repo() {
sudo mv ${SOURCE_FILE} ${SOURCE_FILE.bk}
sudo cat >>${SOURCE_FILE} <<EOF
deb http://httpredir.debian.org/debian buster main
deb http://httpredir.debian.org/debian buster-updates main
deb http://security.debian.org buster/updates main
deb http://httpredir.debian.org/debian/ buster main contrib non-free
EOF
}

main (){
    update_repo
}
